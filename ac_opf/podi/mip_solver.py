######################################
# IMPORTS                            #
######################################


from podi import log_info
from gurobipy import Model, GRB, LinExpr, QuadExpr
from podi.mip_relaxation_builder import RELAXATION_SUFFIX, DELTA_METHOD_ERROR_KEY
from math import inf
from time import time
from podi.ac_opf_minlp_builder import GENERATOR_SWITCH_VARIABLE_NAME, TRANSMISSION_SWITCH_VARIABLE_NAME, FEED_IN_VARIABLE_NAME
from podi.ac_opf_minlp_builder import DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME



######################################
# CONSTANTS                          #
######################################


MIP_SOLVER_ID_PREFIX = 'solver_'
GUROBI_MIP_ID_PREFIX = 'gurobi_'
EPS = 1e-6
EPS_EPS = 0


######################################
# CLASSES                            #
######################################


class Mipsolver(object):
    
    def __init__(self, mip, parameters):
        self.id = MIP_SOLVER_ID_PREFIX + parameters['mip_solver'] + '_' + str(mip.id)
        self.incumbent_feedin = -1
        self.incumbent_min_cutoff = -1
                
        
    def build_mip_for_solver(self, mip, parameters, use_penalty=0, use_pool=0, no_good_cuts=0, use_objective_cuts=1, curt_info=None, no_heuristics=False, relaxation_as_mip_start=True):
        self.no_heuristics = no_heuristics
        if parameters['mip_solver'] == 'Gurobi':
            return self.build_gurobi_mip(mip, parameters, use_penalty, use_pool, no_good_cuts, use_objective_cuts, curt_info, relaxation_as_mip_start)
            
            
    def build_gurobi_mip(self, mip, parameters, use_penalty, use_pool, no_good_cuts, use_objective_cuts=1, curt_info=None, relaxation_as_mip_start=True):
        gurobi_mip = self.initialize_gurobi_mip(mip)
        self.set_gurobi_parameters(gurobi_mip, parameters, mip, use_pool)
        self.add_gurobi_vars(gurobi_mip, mip, parameters, no_good_cuts, relaxation_as_mip_start)
        self.add_gurobi_constr(gurobi_mip, mip, parameters)
        
        
        if use_penalty == 1:
            self.add_gurobi_penalty_vars_and_constr(gurobi_mip, mip, parameters)
        if no_good_cuts == 1:
            self.add_no_good_cuts(gurobi_mip, mip, parameters, curt_info)
            
        self.add_gurobi_objective(gurobi_mip, mip, parameters, use_penalty, use_objective_cuts) 
        
        gurobi_mip.update()
        
        return gurobi_mip
        
    
    def initialize_gurobi_mip(self, mip):
        gurobi_mip_id = create_gurobi_mip_id(mip.id)
        return Model( str(gurobi_mip_id) ) 


    def set_gurobi_parameters(self, gurobi_mip, parameters, mip, use_pool):
        gurobi_mip.Params.OutputFlag = parameters['gurobi_output']    #output
        
        gurobi_mip.Params.FeasibilityTol = parameters['FeasibilityTol']
        gurobi_mip.Params.Presolve = 2


        
        if mip.iteration_number == 1 or mip.iteration_number%parameters['frequency_global_optimality'] == 0:    #optimality gap
            gurobi_mip.Params.MIPGap = 0.0001

            if mip.iteration_number%(4*parameters['frequency_global_optimality']) == 0:
                gurobi_mip.Params.MIPGap = 0.0001
            if parameters['using_nonconvex_qp_in_adaptive_mip'] == 1 or parameters['using_nonconvex_qp_in_tight_mip'] == 1:
                gurobi_mip.Params.NonConvex = 2
        else:
            if mip.lower_obj_bound > -inf and mip.upper_obj_bound < inf:
                if mip.objective.orientation == 'min':
                    gap = abs(mip.upper_obj_bound-mip.lower_obj_bound)/max(1e-6, abs(mip.upper_obj_bound))
                elif mip.objective.orientation == 'max':
                    gap = abs(mip.upper_obj_bound-mip.lower_obj_bound)/max(1e-6, abs(mip.lower_obj_bound))
                gap_for_mip = max(0.5 * gap, 0.0001)
                gap_for_mip = min(parameters['big_gap_initial'], gap_for_mip)
                gurobi_mip.Params.MIPGap = gap_for_mip
            else:
                gurobi_mip.Params.MIPGap = parameters['big_gap_initial']
        
        if use_pool == 1:
            gurobi_mip.Params.PoolSearchMode = parameters['pool_search_mode_for_gurobi']
            gurobi_mip.Params.PoolSolutions = parameters['max_number_of_solutions_in_pool']
        
    
    def add_gurobi_vars(self, gurobi_mip, mip, parameters, no_good_cuts, relaxation_as_mip_start):

        for outer_key in mip.variables.keys():
            for inner_key in mip.variables[outer_key].keys():
                if outer_key.split('_')[-1] == RELAXATION_SUFFIX:
                    for relaxation_key in mip.variables[outer_key][inner_key].keys():
                        if relaxation_key == DELTA_METHOD_ERROR_KEY:
                            [lower_bound, upper_bound, var_type, var_name] = get_gurobi_data_from_var(mip.variables[outer_key][inner_key][relaxation_key])
                            var = gurobi_mip.addVar(lb=lower_bound, ub=upper_bound, vtype=var_type, name=var_name)
                            if parameters['using_mip_start'] == 1 and mip.objective.orientation == 'min' and mip.upper_obj_bound < inf and no_good_cuts == 0:
                                if relaxation_as_mip_start:
                                    if var_type == GRB.BINARY and mip.variables[outer_key][inner_key][relaxation_key].relaxation_value != -1:
                                        var.start = mip.variables[outer_key][inner_key][relaxation_key].relaxation_value
                                else:
                                    var.start = mip.variables[outer_key][inner_key][relaxation_key].solution_value
                            elif parameters['using_mip_start'] == 1 and mip.objective.orientation == 'max' and mip.lower_obj_bound > -inf and no_good_cuts == 0:
                                if relaxation_as_mip_start:
                                    if var_type == GRB.BINARY and mip.variables[outer_key][inner_key][relaxation_key].relaxation_value != -1:
                                        var.start = mip.variables[outer_key][inner_key][relaxation_key].relaxation_value
                                else:
                                    var.start = mip.variables[outer_key][inner_key][relaxation_key].solution_value

                        else:

                            for number in mip.variables[outer_key][inner_key][relaxation_key].keys():
                                [lower_bound, upper_bound, var_type, var_name] = get_gurobi_data_from_var(mip.variables[outer_key][inner_key][relaxation_key][number])
                                var = gurobi_mip.addVar(lb=lower_bound, ub=upper_bound, vtype=var_type, name=var_name)
                                if parameters['using_mip_start'] == 1 and mip.objective.orientation == 'min' and mip.upper_obj_bound < inf and no_good_cuts == 0:


                                    if relaxation_as_mip_start:
                                        if var_type == GRB.BINARY and mip.variables[outer_key][inner_key][relaxation_key][number].relaxation_value != -1 and relaxation_as_mip_start:
                                            var.start = mip.variables[outer_key][inner_key][relaxation_key][number].relaxation_value
                                    else:
                                        var.start = mip.variables[outer_key][inner_key][relaxation_key][number].solution_value

                                elif parameters['using_mip_start'] == 1 and mip.objective.orientation == 'max' and mip.lower_obj_bound > -inf and no_good_cuts == 0:

                                    if relaxation_as_mip_start:
                                        if var_type == GRB.BINARY and mip.variables[outer_key][inner_key][relaxation_key][number].relaxation_value != -1 and relaxation_as_mip_start:
                                            var.start = mip.variables[outer_key][inner_key][relaxation_key][number].relaxation_value
                                    else:
                                        var.start = mip.variables[outer_key][inner_key][relaxation_key][number].solution_value

                else:       
                    [lower_bound, upper_bound, var_type, var_name] = get_gurobi_data_from_var(mip.variables[outer_key][inner_key])
                    var = gurobi_mip.addVar(lb=lower_bound, ub=upper_bound, vtype=var_type, name=var_name)
                    if parameters['using_mip_start'] == 1 and mip.objective.orientation == 'min' and mip.upper_obj_bound < inf and no_good_cuts == 0:

                        if relaxation_as_mip_start:
                            if var_type == GRB.BINARY and mip.variables[outer_key][inner_key].relaxation_value != -1 and relaxation_as_mip_start:
                                var.start = mip.variables[outer_key][inner_key].relaxation_value
                        else:
                            var.start = mip.variables[outer_key][inner_key].solution_value
                    elif parameters['using_mip_start'] == 1 and mip.objective.orientation == 'max' and mip.lower_obj_bound > -inf and no_good_cuts == 0:

                        if relaxation_as_mip_start:
                            if var_type == GRB.BINARY and mip.variables[outer_key][inner_key].relaxation_value != -1 and relaxation_as_mip_start:
                                var.start = mip.variables[outer_key][inner_key].relaxation_value
                        else:
                            var.start = mip.variables[outer_key][inner_key].solution_value

        gurobi_mip.update()
    

    def add_gurobi_constr(self, gurobi_mip, mip, parameters=0):
        for outer_key in mip.constraints.keys():
            if outer_key.split('_')[-1] == RELAXATION_SUFFIX:
                for inner_key in mip.constraints[outer_key].keys():
                    if len(str(inner_key[-1]).split('sum'))  > 1:
                        constr = mip.constraints[outer_key][inner_key]
                        gurobi_expression = self.build_gurobi_expression(gurobi_mip, constr)
                        gurobi_mip.addConstr(gurobi_expression, name=str(constr.id))                        
                    else:
                        for relaxation_key in mip.constraints[outer_key][inner_key].keys():
                            constr = mip.constraints[outer_key][inner_key][relaxation_key]
                            gurobi_expression = self.build_gurobi_expression(gurobi_mip, constr)
                            gurobi_mip.addConstr(gurobi_expression, name=str(constr.id))
            
            elif str(outer_key) == 'socp_nonconvex' or str(outer_key) == 'trigonometric_nonconvex':
                
                for inner_key in mip.constraints[outer_key].keys():
                    constr = mip.constraints[outer_key][inner_key]
                    gurobi_expression = self.build_gurobi_expression(gurobi_mip, constr)
                    gurobi_mip.addConstr(gurobi_expression, name=str(constr.id))      
          

            elif str(outer_key) == 'socp':
                if mip.iteration_number==1 or mip.iteration_number%parameters['socp_frequence_in_adaptive_mip'] == 0:
                    for inner_key in mip.constraints[outer_key].keys():
                        constr = mip.constraints[outer_key][inner_key]
                        gurobi_expression = self.build_gurobi_expression(gurobi_mip, constr)
                        gurobi_mip.addConstr(gurobi_expression, name=str(constr.id))      
                else:
                    pass
            
            else:
                for inner_key in mip.constraints[outer_key].keys():
                    constr = mip.constraints[outer_key][inner_key]
                    gurobi_expression = self.build_gurobi_expression(gurobi_mip, constr)
                    gurobi_mip.addConstr(gurobi_expression, name=str(constr.id))
        gurobi_mip.update()       

                                  
    def build_gurobi_expression(self, gurobi_mip, constr):
        if constr.type == 'convex_quadratic':
            expression = constr.expression
            [left_expression, right_expression] = expression.args
            left_dic = left_expression.as_coefficients_dict()
            gurobi_expression = QuadExpr(0)
            for key in left_dic.keys():
                gurobi_expression = gurobi_expression + gurobi_mip.getVarByName(str(key.args[0]))*gurobi_mip.getVarByName(str(key.args[0]))
            gurobi_expression = QuadExpr.__le__(gurobi_expression, right_expression + EPS_EPS)

        elif constr.type == 'socp':
            left_expression = QuadExpr(0)
            left_expression = left_expression + gurobi_mip.getVarByName(constr.involved_vars[0].id)*gurobi_mip.getVarByName(constr.involved_vars[0].id)
            left_expression = left_expression + gurobi_mip.getVarByName(constr.involved_vars[1].id)*gurobi_mip.getVarByName(constr.involved_vars[1].id)            
            right_expression = QuadExpr(0)
            #print( constr.id, constr.involved_vars )
            right_expression = right_expression + gurobi_mip.getVarByName(constr.involved_vars[2].id)*gurobi_mip.getVarByName(constr.involved_vars[3].id)
            gurobi_expression = QuadExpr.__le__(left_expression, right_expression + EPS_EPS)

        elif constr.type == DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME:
            left_expression = QuadExpr(0)
            left_expression = left_expression + gurobi_mip.getVarByName(constr.involved_vars[0].id)          
            right_expression = QuadExpr(0)
            right_expression = right_expression + gurobi_mip.getVarByName(constr.involved_vars[1].id)*gurobi_mip.getVarByName(constr.involved_vars[2].id)
            gurobi_expression = QuadExpr.__eq__(left_expression, right_expression)
        
        elif constr.type == 'socp_nonconvex':
            left_expression = QuadExpr(0)
            left_expression = left_expression + gurobi_mip.getVarByName(constr.involved_vars[0].id)*gurobi_mip.getVarByName(constr.involved_vars[0].id)
            left_expression = left_expression + gurobi_mip.getVarByName(constr.involved_vars[1].id)*gurobi_mip.getVarByName(constr.involved_vars[1].id)            
            right_expression = QuadExpr(0)
            right_expression = right_expression + gurobi_mip.getVarByName(constr.involved_vars[2].id)*gurobi_mip.getVarByName(constr.involved_vars[3].id)
            gurobi_expression = QuadExpr.__eq__(left_expression, right_expression)
        
        elif constr.type == 'quadratic_nonconvex':
            left_expression = QuadExpr(0)
            left_expression = left_expression + gurobi_mip.getVarByName(constr.involved_vars[0].id)
            right_expression = QuadExpr(0)
            right_expression = right_expression + gurobi_mip.getVarByName(constr.involved_vars[1].id)*gurobi_mip.getVarByName(constr.involved_vars[1].id)
            gurobi_expression = QuadExpr.__eq__(left_expression, right_expression)            
        
        elif constr.type ==  'bilinear_nonconvex':
            expression = constr.expression
            [left_expression, right_expression] = expression.args
            right_dic = right_expression.as_coefficients_dict()
            gurobi_expression = QuadExpr(0)
            for key in right_dic.keys():
                gurobi_expression = gurobi_expression + gurobi_mip.getVarByName(str(key.args[0]))*gurobi_mip.getVarByName(str(key.args[1]))
            gurobi_expression = QuadExpr.__eq__(gurobi_expression,gurobi_mip.getVarByName(str(left_expression)))
    
        else:
            expression = constr.expression

            [left_expression, right_expression] = expression.args
            if left_expression.is_Number == False:
                left_coeff_dic = left_expression.as_coefficients_dict()
                gurobi_left = LinExpr(0)
                for var_name in left_coeff_dic.keys():
                    if var_name != 1:

                        gurobi_left.add( gurobi_mip.getVarByName(str(var_name))*float(left_coeff_dic[var_name]) )
                    else:
                        gurobi_left.add( float(left_coeff_dic[var_name]) )                 
            else:
                gurobi_left = LinExpr(left_expression)
            
            if right_expression.is_Number == False:  
                right_coeff_dic = right_expression.as_coefficients_dict()

                gurobi_right = LinExpr(0)
                for var_name in right_coeff_dic.keys():
                    if var_name != 1: 
                        gurobi_right.add( gurobi_mip.getVarByName(str(var_name))*float(right_coeff_dic[var_name]) )
                    else:
                        gurobi_right.add( float(right_coeff_dic[var_name]) )                 
            else:
                gurobi_right = LinExpr( right_expression )
                
            if expression.func == expression.ValidRelationOperator['<=']:
                gurobi_expression = LinExpr.__le__(gurobi_left, gurobi_right + EPS_EPS)
            elif expression.func == expression.ValidRelationOperator['>=']:
                gurobi_expression = LinExpr.__ge__(gurobi_left + EPS_EPS, gurobi_right)
            elif expression.func == expression.ValidRelationOperator['==']:
                gurobi_expression = LinExpr.__eq__(gurobi_left, gurobi_right)
        return gurobi_expression


    def add_gurobi_penalty_vars_and_constr(self, gurobi_mip, mip, parameters):
        
        upper_bound = 0
        change_summ = 0
        rhs = 0
        mip_start_value = 0
        
        if parameters['measure_discrete_var_change_for_every_solution'] == 1 and len(mip.memory_of_solutions) > 0:
            for solution_array in mip.memory_of_solutions:
                counter = 0
                if parameters['generator_switching'] == 1:
                    upper_bound = upper_bound + len( mip.variables['generator_switch'] )
                    for inner_key in mip.variables['generator_switch'].keys():
                        
                        switch_var = mip.variables['generator_switch'][inner_key]
                        gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                        if solution_array[counter] <= EPS:
                            change_summ = change_summ + gurobi_switch_var
                            
                        elif solution_array[counter] >= 1-EPS:
                            change_summ = change_summ -  gurobi_switch_var  
                            rhs = rhs + 1
                        mip_start_value = mip_start_value + abs(solution_array[counter] - switch_var.solution_value)
                        counter = counter + 1
                        
                    
                if parameters['transmission_switching'] == 1:
                    upper_bound = upper_bound + len( mip.variables['transmission_switch'] )
                    for inner_key in mip.variables['transmission_switch'].keys():
        
                        switch_var = mip.variables['transmission_switch'][inner_key]
                        gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                        if solution_array[counter] <= EPS:
                            change_summ = change_summ +  gurobi_switch_var
                        elif solution_array[counter] >= 1-EPS:
                            change_summ = change_summ -  gurobi_switch_var
                            rhs = rhs + 1
                        mip_start_value = mip_start_value + abs(solution_array[counter] - switch_var.solution_value)
                        counter = counter + 1
                    

                if parameters['discrete_curtailment'] == 1:
                    upper_bound = upper_bound + len( mip.variables['curtailment_binaries'] )
                    for inner_key in mip.variables['curtailment_binaries'].keys():
        
                        switch_var = mip.variables['curtailment_binaries'][inner_key]
                        gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                        if solution_array[counter] <= EPS:
                            change_summ = change_summ +  gurobi_switch_var
                        elif solution_array[counter] >= 1-EPS:
                            change_summ = change_summ -  gurobi_switch_var
                            rhs = rhs + 1
                        mip_start_value = mip_start_value + abs(solution_array[counter] - switch_var.solution_value)
                        counter = counter + 1


        
        
        elif parameters['measure_discrete_var_change_for_every_solution'] == 0 and len(mip.memory_of_solutions) > 0:  
            mip_start_value = 0
            if parameters['generator_switching'] == 1:
                upper_bound = upper_bound + len( mip.variables['generator_switch'] )
                for inner_key in mip.variables['generator_switch'].keys():
                    
                    switch_var = mip.variables['generator_switch'][inner_key]
                    gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                    if switch_var.solution_value <= EPS:
                        change_summ = change_summ + gurobi_switch_var
                    elif switch_var.solution_value >= 1-EPS:
                        change_summ = change_summ  - gurobi_switch_var
                        rhs = rhs + 1
                    if parameters['encourage_switching_in_var_change'] == 1:
                        change_summ = change_summ + parameters['factor_for_switching_encourage']*gurobi_switch_var
                
            if parameters['transmission_switching'] == 1:
                upper_bound = upper_bound + len( mip.variables['transmission_switch'] )
                for inner_key in mip.variables['transmission_switch'].keys():
                    
                    switch_var = mip.variables['transmission_switch'][inner_key]
                    gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                    if switch_var.solution_value <= EPS:
                        change_summ = change_summ + gurobi_switch_var
                    elif switch_var.solution_value >= 1-EPS:
                        change_summ = change_summ - gurobi_switch_var  
                        rhs = rhs + 1
            
            if 'curtailment_binaries' in mip.variables.keys():
                
                upper_bound = upper_bound + len( mip.variables['curtailment_binaries'] )
                for inner_key in mip.variables['curtailment_binaries'].keys():
                    
                    switch_var = mip.variables['curtailment_binaries'][inner_key]
                    gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                    if switch_var.solution_value <= EPS:
                        change_summ = change_summ + gurobi_switch_var
                    elif switch_var.solution_value >= 1-EPS:
                        change_summ = change_summ - gurobi_switch_var  
                        rhs = rhs + 1
                

        if parameters['measure_discrete_var_change_for_every_solution'] == 1 and len(mip.memory_of_solutions) > 0:
            if len(mip.memory_of_solutions)*len(solution_array) != upper_bound:
                print(len(mip.memory_of_solutions)*len(solution_array), upper_bound)
                print('Memory_of_solutions does not fit to Variables (in mip_solver!)')
        


        if parameters['encourage_switching_in_var_change'] == 1:
            if parameters['transmission_switching'] == 1:
                upper_bound = upper_bound + len( mip.variables['transmission_switch'] ) * parameters['factor_for_switching_encourage']/parameters['factor_for_discrete_var_change']
                for inner_key in mip.variables['transmission_switch'].keys():
                    
                    switch_var = mip.variables['transmission_switch'][inner_key]
                    gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                    
                    change_summ = change_summ + gurobi_switch_var * parameters['factor_for_switching_encourage']/parameters['factor_for_discrete_var_change']
                    mip_start_value = mip_start_value + switch_var.solution_value * parameters['factor_for_switching_encourage']/parameters['factor_for_discrete_var_change']
            
        
        penalty_var = gurobi_mip.addVar(lb=0, ub=max(upper_bound,1), vtype=GRB.CONTINUOUS, name='penalty_var')
        if parameters['using_mip_start'] == 1 and mip.objective.orientation == 'min' and mip.upper_obj_bound < inf:
            penalty_var.start = mip_start_value
        gurobi_mip.addConstr( penalty_var == change_summ + abs(rhs) , name='penalty_constr' )
        
        
            
        gurobi_mip.update()
        
    def add_no_good_cuts(self, gurobi_mip, mip, parameters, curt_info=None):
        
        change_summ = 0
        rhs = 0
        
        no_good_counter = 0
        
        
        if parameters['aggressive_no_good_cuts'] == 1:
            memory = mip.memory_of_incumbents
        else:
            memory = mip.memory_of_solutions
        
        if len(memory) > 0:
            
            for solution_array in memory:
                change_summ = 0
                rhs = 0
                no_good_counter = no_good_counter + 1
                counter = 0
                if parameters['generator_switching'] == 1:
                    for inner_key in mip.variables['generator_switch'].keys():

                        switch_var = mip.variables['generator_switch'][inner_key]
                        gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                        if solution_array[counter] <= EPS:
                            change_summ = change_summ + gurobi_switch_var

                        elif solution_array[counter] >= 1-EPS:
                            change_summ = change_summ -  gurobi_switch_var
                            rhs = rhs + 1

                        counter = counter + 1


                if parameters['transmission_switching'] == 1:
                    for inner_key in mip.variables['transmission_switch'].keys():

                        switch_var = mip.variables['transmission_switch'][inner_key]
                        gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                        if solution_array[counter] <= EPS:
                            change_summ = change_summ +  gurobi_switch_var
                        elif solution_array[counter] >= 1-EPS:
                            change_summ = change_summ -  gurobi_switch_var
                            rhs = rhs + 1
                        counter = counter + 1
   
                if parameters['discrete_curtailment'] == 1:
                    for inner_key in mip.variables['curtailment_binaries'].keys():
        
                        switch_var = mip.variables['curtailment_binaries'][inner_key]
                        gurobi_switch_var = gurobi_mip.getVarByName( switch_var.id )
                        if solution_array[counter] <= EPS:
                            change_summ = change_summ +  gurobi_switch_var
                        elif solution_array[counter] >= 1-EPS:
                            change_summ = change_summ -  gurobi_switch_var
                            rhs = rhs + 1
                        counter = counter + 1


        
                if counter != len(solution_array):
                    print('SOLUTION_ARRAY AND NO-GOOD-CUT POSSIBLY WRONG! (in mip_solver)')


                gurobi_mip.addConstr( 1 <= change_summ + abs(rhs) , name='no_good_cut_'+str(no_good_counter) )
            
            
            if no_good_counter != len(memory):
                print('DIFFERENT NUMBER OF NO-GOOD-CUTS AND MEMORY OF SOLUTIONS (in mip_solver)')


        if parameters['start_curtailment_cuts'] == 1 and self.no_heuristics == False and mip.upper_obj_bound < inf and parameters['discrete_curtailment'] == 1:

            rounds_feed_in_cut = 1
            if mip.iteration_number % rounds_feed_in_cut == 0:
                sum_of_feedins = 0
                accumulated_feedin = 0.0
                min_cuttoff_feedins = 100000.0
                min_cuttoff_feedins_second = 10000.0
                for node_id in curt_info.curtailment_nodes:
                    node_info = curt_info.get_curtailment_node_info(node_id)
                    sorted_curtailed = [t - s for s, t in zip(node_info.curtailment_options_absolute, node_info.curtailment_options_absolute[1:])]
                    sorted_curtailed.sort()
                    if sorted_curtailed[0] < min_cuttoff_feedins:
                        min_cuttoff_feedins = sorted_curtailed[0]
                    if sorted_curtailed[1] < min_cuttoff_feedins_second:
                        min_cuttoff_feedins_second = sorted_curtailed[1]
                    #accumulated_feedin = accumulated_feedin + mip.variables[FEED_IN_VARIABLE_NAME][node_id].relaxation_value
                    accumulated_feedin = accumulated_feedin + mip.variables['curtailed_feed_in'][node_id].solution_value
                    sum_of_feedins = sum_of_feedins + gurobi_mip.getVarByName(mip.variables[FEED_IN_VARIABLE_NAME][node_id].id)

                factor_cut = 1.0


                c1 = gurobi_mip.addConstr(sum_of_feedins >= accumulated_feedin + factor_cut * abs(min_cuttoff_feedins_second - min_cuttoff_feedins) / 100.0,
                                         name='feed_in_cut_' + str(no_good_counter) + "_1")

                self.incumbent_feedin = accumulated_feedin
                self.incumbent_min_cutoff = min_cuttoff_feedins_second - min_cuttoff_feedins
                self.incumbent_max_cutoff = min_cuttoff_feedins_second


        gurobi_mip.update()

        
                
 
    def add_gurobi_objective(self, gurobi_mip, mip, parameters='', use_penalty=0, use_objective_cuts=1):
        expression = mip.objective.expression
        if mip.objective.type == 'linear':
            gurobi_expression = LinExpr(0)
        elif mip.objective.type == 'polynomial':
            gurobi_expression = QuadExpr(0)
            
        if expression.is_Number == False:
            coeff_dic = expression.as_coefficients_dict()
            for var_name in coeff_dic.keys():
                if var_name != 1:
                    if var_name.is_Symbol == True:
                        #print(var_name)
                        gurobi_expression.add( gurobi_mip.getVarByName(str(var_name))*float(coeff_dic[var_name]) )
                    elif var_name.is_Pow == True:
                        args = var_name.args
                        if args[1] == 2:
                            gurobi_expression.add( gurobi_mip.getVarByName(str(args[0]))*gurobi_mip.getVarByName(str(args[0]))*float(coeff_dic[var_name]) )
                        
                else:
                    gurobi_expression.add( float(coeff_dic[var_name]) )                 
        else:
            gurobi_expression = LinExpr(expression)
            
        if use_penalty == 1:
            penalty_gurobi_var = gurobi_mip.getVarByName( 'penalty_var' )
            alpha = parameters['factor_for_discrete_var_change'] * mip.lower_obj_bound / penalty_gurobi_var.ub
            if mip.objective.orientation == 'min':
                gurobi_expression = gurobi_expression - alpha * penalty_gurobi_var
            if mip.objective.orientation == 'max':
                gurobi_expression = gurobi_expression + alpha * penalty_gurobi_var



        if mip.objective.orientation == 'min':
            gurobi_mip.setObjective(gurobi_expression, GRB.MINIMIZE)
        elif mip.objective.orientation == 'max':
            gurobi_mip.setObjective(gurobi_expression, GRB.MAXIMIZE)

        if parameters['objective_cuts'] == 1 and use_penalty == 0 and use_objective_cuts==1:  
            if mip.lower_obj_bound > -1e+90:
                gurobi_mip.addConstr( gurobi_expression + EPS_EPS >= mip.lower_obj_bound , name='objective_lower_bound')
            if mip.upper_obj_bound < 1e+90:
                gurobi_mip.addConstr( gurobi_expression <= mip.upper_obj_bound + EPS_EPS, name='objective_upper_bound')
        elif parameters['objective_cuts'] == 1 and use_penalty == 1:  
            if mip.objective.orientation == 'min':
                if mip.lower_obj_bound > -1e+90:
                    if parameters['factor_for_discrete_var_change'] >= 1:
                        gurobi_mip.addConstr( gurobi_expression + EPS_EPS >= mip.lower_obj_bound - parameters['factor_for_discrete_var_change'] * penalty_gurobi_var.ub, name='objective_lower_bound')
                    else:
                        gurobi_mip.addConstr( gurobi_expression + EPS_EPS >= (1.0 - parameters['factor_for_discrete_var_change']) * mip.lower_obj_bound, name='objective_lower_bound')
                    
                if mip.upper_obj_bound < 1e+90:
                    gurobi_mip.addConstr( gurobi_expression <= mip.upper_obj_bound + EPS_EPS , name='objective_upper_bound')
            elif mip.objective_orientation == 'max':    
                if mip.lower_obj_bound > -1e+90:
                    gurobi_mip.addConstr( gurobi_expression + EPS_EPS >= mip.lower_obj_bound , name='objective_lower_bound')
                if mip.upper_obj_bound < 1e+90:
                    gurobi_mip.addConstr( gurobi_expression <= mip.upper_obj_bound + EPS_EPS + parameters['factor_for_discrete_var_change'] * penalty_gurobi_var.ub, name='objective_upper_bound')
                  
            
    def solve_and_save_results(self, gurobi_mip, mip, callback='', use_penalty=0, no_good_cuts=0, time_limit=inf, relaxation_as_mip_start=True):
        
        #log_info('mip-start via relaxation value: '+str(relaxation_as_mip_start))
        if time_limit < inf and no_good_cuts == 1:
            gurobi_mip.Params.TimeLimit = time_limit


        if callback == '':
            gurobi_mip.optimize()
        else:
            gurobi_mip.optimize(callback)


    
        if gurobi_mip.SolCount == 0 and no_good_cuts == 1:
            log_info('STOP-NO-GOOD-CUTS (infeasible or to much runtime)')
            return str('stop_no_good_cuts')

        if gurobi_mip.SolCount == 0 and relaxation_as_mip_start and mip.upper_obj_bound < inf:
            log_info('TRY SOLUTION VALUE AS MIP START! (no incumbent and solution is known)')
            return str('try_different_mip_start')
    
        if use_penalty == 0 and no_good_cuts == 0:
            self.update_obj_bounds(gurobi_mip, mip)
        if gurobi_mip.ObjBound < 1e+100:
            try:
                self.save_relaxation_solution(gurobi_mip, mip)

            except:
                pass
            return 1
        else:
            if no_good_cuts == 1:
                log_info('STOP-NO-GOOD-CUTS (lead to infeasible models')
                return str('stop_no_good_cuts')
            log_info('INFEASIBILITY! in ' + str(mip.id))
            return 0
        

            
            
        
        
    def update_obj_bounds(self, gurobi_mip, mip):
        if mip.objective.orientation == 'min':
            mip.update_lower_obj_bound( gurobi_mip.objBound )    #update the best objBound from GUROBI
        elif mip.objective_orientation == 'max':
            mip.update_upper_obj_bound( gurobi_mip.objBound )    #uptdate the best objBound from GUROBI 
            
    
    def save_relaxation_solution(self, gurobi_mip, mip):
        
        old_switch = []
        if mip.iteration_number > 1:
            if GENERATOR_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[GENERATOR_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    old_switch.append(value)
            if TRANSMISSION_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    old_switch.append(value)
            if 'curtailment_binaries' in mip.variables.keys():
                for inner_key in mip.variables['curtailment_binaries'].keys():
                    value = mip.variables['curtailment_binaries'][inner_key].relaxation_value
                    old_switch.append(value)

        
        for outer_key in mip.variables.keys():
            for inner_key in mip.variables[outer_key].keys():
                if str(outer_key).split('_')[-1] != RELAXATION_SUFFIX:
                    var = mip.variables[outer_key][inner_key]
                    value = gurobi_mip.getVarByName(var.id).x
                    var.set_relaxation_solution_value(value)                 
                else:
                    for relaxation_key in mip.variables[outer_key][inner_key].keys():
                        if relaxation_key == DELTA_METHOD_ERROR_KEY:
                            var = mip.variables[outer_key][inner_key][relaxation_key]
                            value = gurobi_mip.getVarByName(var.id).x
                            var.set_relaxation_solution_value(value)
                        else:
                            for number in mip.variables[outer_key][inner_key][relaxation_key].keys():
                                var = mip.variables[outer_key][inner_key][relaxation_key][number]
                                value = gurobi_mip.getVarByName(var.id).x
                                if var.variable_type == 'binary':
                                    value = round(value)
                                var.set_relaxation_solution_value(value)

        max_error_abs = 0
        #max_error_abs_id = 0
        max_error_rel = 0
        max_error_abs_inner_key = 0
        max_error_abs_outer_key = 0
        for outer_key in mip.relaxation_infos.keys():
            for inner_key in mip.relaxation_infos[outer_key].keys():

                mip.relaxation_infos[outer_key][inner_key].compute_relaxation_errors()
                
                if mip.relaxation_infos[outer_key][inner_key].relaxation_error_abs > max_error_abs:
                    max_error_abs = mip.relaxation_infos[outer_key][inner_key].relaxation_error_abs

                    max_error_abs_outer_key = outer_key
                    max_error_abs_inner_key = inner_key

                if mip.relaxation_infos[outer_key][inner_key].relaxation_error_rel > max_error_rel:
                    max_error_rel = mip.relaxation_infos[outer_key][inner_key].relaxation_error_rel
        
        mip.update_max_relaxation_error_abs( max_error_abs )

        if max_error_abs_outer_key != 0 and max_error_abs_inner_key != 0:
            max_info = mip.relaxation_infos[max_error_abs_outer_key][max_error_abs_inner_key]
            if max_info.constr_type == 'bilinear':
                pass

            else:
                pass

        mip.update_max_relaxation_error_rel( max_error_rel )
        mip.update_max_relaxation_error_abs_outer_key( max_error_abs_outer_key )
        mip.update_max_relaxation_error_abs_inner_key( max_error_abs_inner_key )
        
        new_switch = []
        if mip.iteration_number > 1:
            if GENERATOR_SWITCH_VARIABLE_NAME in mip.variables.keys():
                
                for inner_key in mip.variables[GENERATOR_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    new_switch.append(value)
            if TRANSMISSION_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    new_switch.append(value)
            if 'curtailment_binaries' in mip.variables.keys():
                for inner_key in mip.variables['curtailment_binaries'].keys():
                    value = mip.variables['curtailment_binaries'][inner_key].relaxation_value
                    new_switch.append(value)
        
        mip.set_changed_binary_decission('no')
        if mip.iteration_number > 1:
            if old_switch != new_switch:
                mip.set_changed_binary_decission('yes')

        
        
    def save_relaxation_solution_from_incumbent(self, gurobi_mip, mip): 
        old_switch = []
        if mip.iteration_number > 1:
            if GENERATOR_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[GENERATOR_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    old_switch.append(value)
            if TRANSMISSION_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    old_switch.append(value)
            if 'curtailment_binaries' in mip.variables.keys():
                for inner_key in mip.variables['curtailment_binaries'].keys():
                    value = mip.variables['curtailment_binaries'][inner_key].relaxation_value
                    old_switch.append(value)        
        
        for outer_key in mip.variables.keys():
            for inner_key in mip.variables[outer_key].keys():
                if str(outer_key).split('_')[-1] != RELAXATION_SUFFIX:
                    var = mip.variables[outer_key][inner_key]
                    
                    value = gurobi_mip.cbGetSolution(gurobi_mip.getVarByName(var.id))
                    var.set_relaxation_solution_value(value)                 
                else:
                    for relaxation_key in mip.variables[outer_key][inner_key].keys():
                        if relaxation_key == DELTA_METHOD_ERROR_KEY:
                            var = mip.variables[outer_key][inner_key][relaxation_key]
                            value = gurobi_mip.cbGetSolution(gurobi_mip.getVarByName(var.id))
                            var.set_relaxation_solution_value(value)
                        else:
                            for number in mip.variables[outer_key][inner_key][relaxation_key].keys():
                                var = mip.variables[outer_key][inner_key][relaxation_key][number]
                                value = gurobi_mip.cbGetSolution(gurobi_mip.getVarByName(var.id))
                                if var.variable_type == 'binary':
                                    value = round(value)
                                var.set_relaxation_solution_value(value)

        max_error_abs = 0
        max_error_rel = 0
        for outer_key in mip.relaxation_infos.keys():
            for inner_key in mip.relaxation_infos[outer_key].keys():
                mip.relaxation_infos[outer_key][inner_key].compute_relaxation_errors()
                if mip.relaxation_infos[outer_key][inner_key].relaxation_error_abs > max_error_abs:
                    max_error_abs = mip.relaxation_infos[outer_key][inner_key].relaxation_error_abs
                if mip.relaxation_infos[outer_key][inner_key].relaxation_error_rel > max_error_rel:
                    max_error_rel = mip.relaxation_infos[outer_key][inner_key].relaxation_error_rel
        mip.update_max_relaxation_error_abs( max_error_abs )
        mip.update_max_relaxation_error_rel( max_error_rel )
        
        new_switch = []
        if mip.iteration_number > 1:
            if GENERATOR_SWITCH_VARIABLE_NAME in mip.variables.keys():
                
                for inner_key in mip.variables[GENERATOR_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    new_switch.append(value)
            if TRANSMISSION_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    new_switch.append(value)
            if 'curtailment_binaries' in mip.variables.keys():
                for inner_key in mip.variables['curtailment_binaries'].keys():
                    value = mip.variables['curtailment_binaries'][inner_key].relaxation_value
                    new_switch.append(value)
        
        mip.set_changed_binary_decission('no')
        if mip.iteration_number > 1:
            if old_switch != new_switch:
                mip.set_changed_binary_decission('yes')        


    def save_relaxation_solution_from_pool(self, gurobi_mip, mip, pool_number=0):
        gurobi_mip.Params.SolutionNumber = pool_number
        old_switch = []
        if mip.iteration_number > 1:
            for inner_key in mip.variables[GENERATOR_SWITCH_VARIABLE_NAME].keys():
                value = mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                old_switch.append(value)
            if TRANSMISSION_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    old_switch.append(value)
            if 'curtailment_binaries' in mip.variables.keys():
                for inner_key in mip.variables['curtailment_binaries'].keys():
                    value = mip.variables['curtailment_binaries'][inner_key].relaxation_value
                    old_switch.append(value)
        
        for outer_key in mip.variables.keys():
            for inner_key in mip.variables[outer_key].keys():
                if str(outer_key).split('_')[-1] != RELAXATION_SUFFIX:
                    var = mip.variables[outer_key][inner_key]
                    value = gurobi_mip.getVarByName(var.id).xn
                    var.set_relaxation_solution_value(value)                 
                else:
                    for relaxation_key in mip.variables[outer_key][inner_key].keys():
                        if relaxation_key == DELTA_METHOD_ERROR_KEY:
                            var = mip.variables[outer_key][inner_key][relaxation_key]
                            value = gurobi_mip.getVarByName(var.id).xn
                            var.set_relaxation_solution_value(value)
                        else:
                            for number in mip.variables[outer_key][inner_key][relaxation_key].keys():
                                var = mip.variables[outer_key][inner_key][relaxation_key][number]
                                value = gurobi_mip.getVarByName(var.id).xn
                                if var.variable_type == 'binary':
                                    value = round(value)
                                var.set_relaxation_solution_value(value)

        max_error_abs = 0
        max_error_rel = 0
        for outer_key in mip.relaxation_infos.keys():
            for inner_key in mip.relaxation_infos[outer_key].keys():
                mip.relaxation_infos[outer_key][inner_key].compute_relaxation_errors()
                if mip.relaxation_infos[outer_key][inner_key].relaxation_error_abs > max_error_abs:
                    max_error_abs = mip.relaxation_infos[outer_key][inner_key].relaxation_error_abs
                if mip.relaxation_infos[outer_key][inner_key].relaxation_error_rel > max_error_rel:
                    max_error_rel = mip.relaxation_infos[outer_key][inner_key].relaxation_error_rel
        mip.update_max_relaxation_error_abs( max_error_abs )
        mip.update_max_relaxation_error_rel( max_error_rel )
        
        new_switch = []
        if mip.iteration_number > 1:
            for inner_key in mip.variables[GENERATOR_SWITCH_VARIABLE_NAME].keys():
                value = mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                new_switch.append(value)
            if TRANSMISSION_SWITCH_VARIABLE_NAME in mip.variables.keys():
                for inner_key in mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME].keys():
                    value = mip.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][inner_key].relaxation_value
                    new_switch.append(value)
            if 'curtailment_binaries' in mip.variables.keys():
                for inner_key in mip.variables['curtailment_binaries'].keys():
                    value = mip.variables['curtailment_binaries'][inner_key].relaxation_value
                    new_switch.append(value)
        
        mip.set_changed_binary_decission('no')
        if mip.iteration_number > 1:
            if old_switch != new_switch:
                mip.set_changed_binary_decission('yes')


    def check_stopping_criteria(self, mip, parameters, time_start, log_file, length=0):
        flag = False
        
        if parameters['min_error_rel'] != -1 and mip.max_relaxation_error_rel <= parameters['min_error_rel']:
            log_info('FINISHED: under relative error tolerance')
            log_file.write('\nFINISHED: under relative error tolerance\n')
            flag = True
        if mip.max_relaxation_error_abs <= parameters['min_error_abs'] and parameters['min_error_abs'] != -1:
            log_info('FINISHED: under absolute error tolerance')
            log_file.write('\nFINISHED: under absolute error tolerance\n')
            flag = True
        if length == 0:
            if mip.iteration_number >= parameters['max_iter'] and parameters['max_iter'] != -1:
                log_info('FINISHED: over maximal iteration number')
                log_file.write('\nFINISHED: over maximal iteration number\n')
                flag = True
            if time()-time_start >= parameters['time_limit'] and parameters['time_limit'] != -1:
                log_info('FINISHED: over time limit')
                log_file.write('\nFINISHED: over time limit\n')
                flag = True
        elif length == 'short':
            if mip.iteration_number >= parameters['max_iter_short'] and parameters['max_iter_short'] != -1:
                log_info('FINISHED: over maximal iteration number')
                log_file.write('\nFINISHED: over maximal iteration number\n')
                flag = True
            if time()-time_start >= parameters['time_limit_short'] and parameters['time_limit_short'] != -1:
                log_info('FINISHED: over time limit')
                log_file.write('\nFINISHED: over time limit\n')
                flag = True

        
        if mip.objective.orientation == 'min':
            gap = abs(mip.upper_obj_bound-mip.lower_obj_bound)/max(1e-6,abs(mip.upper_obj_bound))
        elif mip.objective.orientation == 'max':
            gap = abs(mip.upper_obj_bound-mip.lower_obj_bound)/max(1e-6,abs(mip.lower_obj_bound))

        if mip.objective.orientation == 'min' and mip.lower_obj_bound >= 1e+90:
            flag = True
        elif mip.objective.orientation == 'max' and mip.upper_obj_bound <= -1e+90:
            flag = True
            
        if mip.lower_obj_bound >= mip.upper_obj_bound:
            flag = True

        
        if gap <= parameters['relative_opt_gap'] and parameters['relative_opt_gap'] != -1:
            flag = True
            log_info('FINISHED: optimal solution found')
            log_file.write('\nFINISHED: optimal solution found\n')       
        return flag
       
######################################
# FUNCTIONS                          #
######################################


def create_gurobi_mip_id(mip_id):
    return GUROBI_MIP_ID_PREFIX + str(mip_id)

def get_gurobi_data_from_var(variable):
    lower_bound = variable.lower_bound
    upper_bound = variable.upper_bound
    var_name = str(variable.id)
    if variable.variable_type == 'binary':
        var_type = GRB.BINARY
    elif variable.variable_type == 'continuous':
        var_type = GRB.CONTINUOUS
    return [lower_bound-EPS_EPS, upper_bound+EPS_EPS, var_type, var_name]

