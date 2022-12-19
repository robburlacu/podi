######################################ce
# IMPORTS                            #
######################################


from podi.ac_opf_minlp_builder import VOLTAGE_PRODUCT_REAL_VARIABLE_NAME, VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME, SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME, REAL_POWER_GEN_VARIABLE_NAME, REAL_FLOW_VARIABLE_NAME, REACTIVE_FLOW_VARIABLE_NAME, REAL_FLOW_VARIABLE_NAME, REACTIVE_FLOW_VARIABLE_NAME, REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME
from gurobipy import GRB 
from numpy import zeros
from sympy import solve
from podi.minlp_reformulation_builder import find_var_from_sympy_symbol
from math import ceil, floor
from podi.minlp_reformulation_builder import REFORMULATED_CONSTRAINT_SUFFIX
from time import time



######################################
# CONSTANTS                          #
######################################


VARIABLE_NAMES_FOR_FEASIBILITY_BASED_BOUND_TIGHTENING = [REAL_FLOW_VARIABLE_NAME, REACTIVE_FLOW_VARIABLE_NAME]

VARIABLE_NAMES_FOR_BOUND_TIGHTENING = [VOLTAGE_PRODUCT_REAL_VARIABLE_NAME, VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME, REAL_POWER_GEN_VARIABLE_NAME ]

VARIABLE_NAMES_FOR_BOUND_TIGHTENING_TRANSMISSION_SWITCHING = [VOLTAGE_PRODUCT_REAL_VARIABLE_NAME, VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME, REAL_POWER_GEN_VARIABLE_NAME]
   
NUM_TOL = 1e-6
MIN_RANGE_FOR_BOUND_TIGHTENING = 0.05
NUMBER_DIGITS = 4


######################################
# CLASSES                            #
######################################


class Preprocessor(object):
    
    def preprocessing(self, mip, mip_for_solver, parameters, log_file):                
        if parameters['feasibility_based_bound_tightening'] == 1:
            self.feasibility_based_bound_tightening(mip, mip_for_solver, log_file)
        if parameters['bound_tightening_using_mip'] == 1:
            self.bound_tightening_using_mip(mip, mip_for_solver, parameters, log_file)
        if parameters['feasibility_based_bound_tightening'] == 1:
            self.feasibility_based_bound_tightening(mip, mip_for_solver, log_file)
    
    def feasibility_based_bound_tightening(self, mip, mip_for_solver, log_file):
        counter = 0
        for var_name in VARIABLE_NAMES_FOR_FEASIBILITY_BASED_BOUND_TIGHTENING:
            for inner_key in mip.variables[var_name].keys():
                var = mip.variables[var_name][inner_key]
                if str(var_name).split('_')[0] == 'real':
                    if REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME in mip.constraints.keys():
                        constr = mip.constraints[REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME][inner_key]
                    elif REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME + '_' + REFORMULATED_CONSTRAINT_SUFFIX in mip.constraints.keys():
                        constr = mip.constraints[REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME + '_' + REFORMULATED_CONSTRAINT_SUFFIX][inner_key]
                elif str(var_name).split('_')[0] == 'reactive':
                    if REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME in mip.constraints.keys():
                        constr = mip.constraints[REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME][inner_key]
                    elif REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME + '_' + REFORMULATED_CONSTRAINT_SUFFIX in mip.constraints.keys():
                        constr = mip.constraints[REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME + '_' + REFORMULATED_CONSTRAINT_SUFFIX][inner_key]

                
                expression_dic = solve(constr.expression, var.sympy_symbol)[0].as_coefficients_dict()
                lower_bound = 0
                upper_bound = 0
                for key in expression_dic.keys():
                    sub_var = find_var_from_sympy_symbol_in_involved_vars( key, constr.involved_vars )
                    coeff = expression_dic[key]
                    if coeff >= 0:
                        lower_bound = lower_bound + coeff * sub_var.lower_bound
                        upper_bound = upper_bound + coeff * sub_var.upper_bound
                    elif coeff < 0:
                        lower_bound = lower_bound + coeff * sub_var.upper_bound
                        upper_bound = upper_bound + coeff * sub_var.lower_bound
                    
                if lower_bound > var.lower_bound:
                    counter = counter + 1
                    if abs(lower_bound-var.upper_bound) < MIN_RANGE_FOR_BOUND_TIGHTENING:    #avoid numerical issues
                        var.set_variable_lower_bound( floor(max([lower_bound - MIN_RANGE_FOR_BOUND_TIGHTENING, var.lower_bound])*1e4)/1e4 )
                    else:
                        var.set_variable_lower_bound( floor(lower_bound*1e4)/1e4 )
                if upper_bound < var.upper_bound:
                    counter = counter + 1
                    if abs(upper_bound-var.lower_bound) < MIN_RANGE_FOR_BOUND_TIGHTENING:
                        var.set_variable_upper_bound( ceil(min([upper_bound+MIN_RANGE_FOR_BOUND_TIGHTENING, var.upper_bound])*1e4)/1e4 )
                    else:
                        var.set_variable_upper_bound( ceil(upper_bound*1e4)/1e4 )
        print('FBBT improved', counter, 'Bounds')
        log_file.write('FBBT improved ' + str(counter) + ' Bounds \n')

                
            
    
    
    def bound_tightening_using_mip(self, mip, mip_for_solver, parameters, log_file):
        start_obbt = time()
        counter = 0    #count improvements
        counter_per_var = 0
        improvement_number = get_improvement_number(mip, parameters)
        improvement_abs = zeros(improvement_number)
        improvement_rel = zeros(improvement_number)
        if parameters['mip_solver'] == 'Gurobi':
            old_objective = mip_for_solver.getObjective()    #remind original objective
            old_time_limit = mip_for_solver.Params.TimeLimit
            old_output_flag = mip_for_solver.Params.OutputFlag
            node_limit_old = mip_for_solver.Params.NodeLimit
            optimality_tol_old = mip_for_solver.Params.OptimalityTol
            mip_gap_old = mip_for_solver.Params.MIPGap

            mip_for_solver.Params.NodeLimit = parameters['max_nodes_bound_tightening_using_mip']
            mip_for_solver.Params.OutputFlag = 0
            mip_for_solver.Params.TimeLimit = parameters['max_time_bound_tightening_using_mip']
            mip_for_solver.Params.FeasibilityTol = 0.01*parameters['FeasibilityTol']
            mip_for_solver.Params.OptimalityTol = parameters['relative_opt_gap']
            mip_for_solver.Params.MIPGap = 0
            
            i=0
            if parameters['transmission_switching'] == 1:
                var_names = VARIABLE_NAMES_FOR_BOUND_TIGHTENING_TRANSMISSION_SWITCHING
            else:
                var_names = VARIABLE_NAMES_FOR_BOUND_TIGHTENING
                
            max_time_for_one_var_name = parameters['max_time_bound_tightening_using_mip']/len(var_names)
                
            for var_name in var_names:
                
                time_for_one_var_name_start = time()
                
                max_improvement_per_var_abs = 0
                max_improvement_per_var_rel = 0
                counter_per_var = 0
                for inner_key in mip.variables[var_name].keys():
                    mip_var = mip.variables[var_name][inner_key]
                    
                    mip_for_solver.setObjective( mip_for_solver.getVarByName(mip_var.id), GRB.MINIMIZE)
                    mip_for_solver.update()

                    mip_for_solver.optimize()
                    ignore = 0
                    try:
                        if abs(mip_for_solver.ObjBound) > 1e10:
                            ignore = 1
                        
                        if abs(mip_for_solver.ConstrVio) > parameters['FeasibilityTol']:    
                            print('BOUND IGNORED : GUROBI IGNORES FEASIBILITY BY '+ str(mip_for_solver.ConstrVio))                                         
                            log_file.write('BOUND IGNORED : GUROBI IGNORES FEASIBILITY BY '+ str(mip_for_solver.ConstrVio))
                            ignore = 1
                    except:
                        pass
                        
                    
                    
                    
                    if mip_var.lower_bound + NUM_TOL < mip_for_solver.ObjBound and ignore == 0:
                        
                        improvement_abs[i] = abs(mip_var.lower_bound - mip_for_solver.ObjBound) 
                        if max(abs(mip_var.lower_bound),NUM_TOL) == NUM_TOL:
                            improvement_rel[i] = 0
                        else:
                            improvement_rel[i] = abs(mip_var.lower_bound - mip_for_solver.ObjBound)/max(abs(mip_var.lower_bound),NUM_TOL)
                        
                        max_improvement_per_var_abs = max( max_improvement_per_var_abs, improvement_abs[i] )
                        max_improvement_per_var_rel = max( max_improvement_per_var_rel, improvement_rel[i] )
                        
                        
                        lower_bound = floor(mip_for_solver.ObjBound/NUM_TOL)*NUM_TOL - MIN_RANGE_FOR_BOUND_TIGHTENING
                        
                        if abs(lower_bound-mip_var.upper_bound) < MIN_RANGE_FOR_BOUND_TIGHTENING:    #avoid numerical issues
                            lower_bound = max([lower_bound - MIN_RANGE_FOR_BOUND_TIGHTENING, mip_var.lower_bound]) 
                        
                        if lower_bound - NUM_TOL> mip_var.given_initial_value:
                            print('NEW LOWER BOUND OF',str(mip_var.id),' GREATER THAN INITIAL VALUE BY', abs(lower_bound-mip_var.given_initial_value) ,'CHECK!')
                        
                        if lower_bound > mip_var.lower_bound:
                            mip_var.set_variable_lower_bound( floor(lower_bound*1e4)/1e4 )
                            mip_for_solver.getVarByName(mip_var.id).setAttr('lb', lower_bound )
                            counter = counter + 1
                            counter_per_var = counter_per_var + 1
                    
                    if abs(time()-time_for_one_var_name_start) >= max_time_for_one_var_name:
                        print('OVER TIME-LIMIT: KILLED BOUND TIGHTEINING OF', str(var_name))
                        break
                    
                    i = i+1
                    mip_for_solver.setObjective( mip_for_solver.getVarByName(mip_var.id), GRB.MAXIMIZE)
                    mip_for_solver.update()
                    mip_for_solver.optimize()
                    
                    ignore = 0
                    try:
                        
                        if abs(mip_for_solver.ObjBound) > 1e10:
                            ignore = 1
                        
                        if abs(mip_for_solver.ConstrVio) > parameters['FeasibilityTol']:    
                            print('BOUND IGNORED : GUROBI IGNORES FEASIBILITY BY '+ str(mip_for_solver.ConstrVio))                                         
                            log_file.write('BOUND IGNORED : GUROBI IGNORES FEASIBILITY BY '+ str(mip_for_solver.ConstrVio)) 
                            ignore = 1
                    except:
                        pass
                        
                    
                    if mip_var.upper_bound > mip_for_solver.ObjBound + NUM_TOL and ignore == 0: 
                        improvement_abs[i] = abs(mip_var.upper_bound - mip_for_solver.ObjBound) 
                        if max(abs(mip_var.upper_bound),NUM_TOL) == NUM_TOL:
                            improvement_rel[i] = 0
                        else:
                            improvement_rel[i] = abs(mip_var.upper_bound - mip_for_solver.ObjBound)/max(abs(mip_var.upper_bound),NUM_TOL)   

                        max_improvement_per_var_abs = max( max_improvement_per_var_abs, improvement_abs[i] )
                        max_improvement_per_var_rel = max( max_improvement_per_var_rel, improvement_rel[i] )
                        
                        upper_bound = ceil(mip_for_solver.ObjBound/NUM_TOL)*NUM_TOL + MIN_RANGE_FOR_BOUND_TIGHTENING
                        if abs(upper_bound-mip_var.lower_bound) < MIN_RANGE_FOR_BOUND_TIGHTENING:
                            upper_bound =  min([upper_bound+MIN_RANGE_FOR_BOUND_TIGHTENING, mip_var.upper_bound]) 

                        if upper_bound + NUM_TOL < mip_var.given_initial_value:
                            print('NEW UPPER BOUND OF',str(mip_var.id),' LESS THAN INITIAL VALUE BY', abs(upper_bound-mip_var.given_initial_value) ,'CHECK!')

                        if upper_bound < mip_var.upper_bound:
                            mip_var.set_variable_upper_bound( ceil(upper_bound*1e4)/1e4)
                            mip_for_solver.getVarByName(mip_var.id).setAttr('ub', upper_bound)
                            counter = counter + 1
                            counter_per_var = counter_per_var + 1
                        
                    if abs(time()-time_for_one_var_name_start) >= max_time_for_one_var_name:
                        print('OVER TIME-LIMIT: KILLED BOUND TIGHTEINING OF', str(var_name))
                        break
                        
                    i=i+1
                print('OBBT for', var_name, 'improved', counter_per_var, 'with max improvement of ', max_improvement_per_var_abs, '(',max_improvement_per_var_rel*100,'%)')                                         
                log_file.write('OBBT for ' + str(var_name) + ' improved '+ str(counter_per_var) + ' with max improvement of ' + str(max_improvement_per_var_abs) + ' (' + str(max_improvement_per_var_rel*100) + '%)\n')
                                                         
            if mip.objective.orientation == 'min':
                mip_for_solver.setObjective( old_objective, GRB.MINIMIZE )
            elif mip.objective_orientation == 'max':
                mip_for_solver.setObjective( old_objective, GRB.MAXIMIZE)
            mip_for_solver.Params.TimeLimit = old_time_limit
            mip_for_solver.Params.OutputFlag = old_output_flag
            mip_for_solver.Params.NodeLimit = node_limit_old
            mip_for_solver.Params.OptimalityTol = optimality_tol_old 
            mip_for_solver.Params.MIPGap = mip_gap_old
            print('OBBT improved', counter, 'Bounds',' in', time()-start_obbt, 's' ,' with max improvement of ', max(improvement_abs), '(',max(improvement_rel)*100,'%)')
            log_file.write('OBBT improved ' + str(counter) + ' Bounds with max improvement of ' + str(max(improvement_abs)) + ' (' + str(max(improvement_rel)*100) + '%)\n')
                                                                            
        



######################################
# FUNCTIONS                          #
######################################


def get_improvement_number(mip, parameters):
    improvement_number = 0
    if parameters['transmission_switching'] == 1:
        var_names = VARIABLE_NAMES_FOR_BOUND_TIGHTENING_TRANSMISSION_SWITCHING
    else:
        var_names = VARIABLE_NAMES_FOR_BOUND_TIGHTENING
        
    for var_name in var_names:
        for inner_key in mip.variables[var_name].keys():
            improvement_number = improvement_number + 1
            
    return 2*improvement_number


def find_var_from_sympy_symbol_in_involved_vars( symbol, involved_vars ):
    for var in involved_vars:
        if var.sympy_symbol == symbol:
            return var
