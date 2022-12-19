######################################
# IMPORTS                            #
######################################


import gams
from podi.minlp_reformulation_builder import SUBSTITUTION_VARIABLES_SUFFIX, REFORMULATED_CONSTRAINT_SUFFIX
from podi.minlp_reformulation_builder import BILINEAR_CONSTRAINT_TYPE_NAME, QUADRATIC_CONSTRAINT_TYPE_NAME, SIN_CONSTRAINT_TYPE_NAME, COS_CONSTRAINT_TYPE_NAME, TAN_CONSTRAINT_TYPE_NAME
from podi.ac_opf_minlp_builder import  DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME
from podi.mip_relaxation_builder import RELAXATION_SUFFIX, DELTA_METHOD_BINARY_KEY, DELTA_METHOD_VARIABLE_KEY, DELTA_METHOD_ERROR_KEY
from podi.gams_writer import create_nlp_filename
import os
from math import sin, cos, tan, isnan
from numpy import array, zeros
from numpy.linalg import solve
from podi import log_info
from time import time



######################################
# CONSTANTS                          #
######################################


EPS = 1/(10**6)


######################################
# CLASSES                            #
######################################


class NlpSolver(object):
    
    def solve_and_save_result(self, file_path_local, mip=0, time_start=0, parameters=0):

        ws = gams.GamsWorkspace()

        job = ws.add_job_from_file( file_path_local )

        job.run()
        db = job.out_db
        
        self.save_result_in_vars(db, mip, file_path_local, time_start, parameters)
        
        
        
    def save_result_in_vars(self, db, mip, file_path_local='', time_start=0, parameters=0):
        ss = db.get_symbol(str('ss')).last_record().get_value()    #solver status
        ms = db.get_symbol(str('ms')).last_record().get_value()    #model status
        found_better_solution = 0
        if ss==1 and (ms == 1 or ms ==2):    #if local solution was found
            if mip.objective.orientation == 'min' and db.get_symbol('objval')[()].level  < mip.upper_obj_bound:
                found_better_solution = 1
                print('FOUND FEASIBLE SOLUTION IN ',   str(round(time()-time_start,2)), 's WITH OBJECTIVE: ', db.get_symbol('objval')[()].level, '('+file_path_local.split('/')[-1]+')')
            
                mip.update_upper_obj_bound( db.get_symbol('objval')[()].level )
            if mip.objective.orientation == 'max' and db.get_symbol('objval')[()].level > mip.lower_obj_bound:
                found_better_solution = 1
                print('FOUND FEASIBLE SOLUTION IN ',   str(round(time()-time_start,2)), 's WITH OBJECTIVE: ', db.get_symbol('objval')[()].level, '('+file_path_local.split('/')[-1]+')')
             
                mip.update_lower_obj_bound( db.get_symbol('objval')[()].level )
            if found_better_solution == 1:
                for outer_key in mip.variables.keys():
                    if len(str(outer_key).split(SUBSTITUTION_VARIABLES_SUFFIX)) == 1 and len(str(outer_key).split(RELAXATION_SUFFIX)) == 1 and len(str(outer_key).split('cuts')) == 1:    #vars are not in nlp solution
                        for inner_key in mip.variables[outer_key].keys():
                            var = mip.variables[outer_key][inner_key]
                            #print(var.id)
                            if var.lower_bound == var.upper_bound or var.variable_type == 'binary':
                                var.set_solution_value( db.get_symbol(str(var.sympy_symbol)).last_record().get_value() )
                            else:
                                var.set_solution_value( db.get_symbol(str(var.sympy_symbol))[()].level )
                                


            counter = 0
            keys_of_vars=[]
            if parameters['generator_switching'] == 1:
                keys_of_vars.append('generator_switch')
            
            if 'generator_switch' in mip.variables.keys():
                for inner_key in mip.variables['generator_switch'].keys():
                    var = mip.variables['generator_switch'][inner_key]
                    
                    if var.solution_value == 0:
                        counter = counter + 1
    
            if 'transmission_switch' in mip.variables.keys():
                keys_of_vars.append('transmission_switch')
                for inner_key in mip.variables['transmission_switch'].keys():
                    var = mip.variables['transmission_switch'][inner_key]
                    if var.solution_value == 0:
                        counter = counter + 1
            
            if 'curtailment' in mip.variables.keys():
                keys_of_vars.append('curtailment_binaries')
                
            
            if counter > 0 and found_better_solution == 1:
                print('Binaries off:', counter)

            if found_better_solution == 1:
                self.create_and_save_relaxation_values(mip, db)

                mip.remember_solution(keys_of_vars)

                            
                            
    def create_and_save_relaxation_values(self, mip, db=''):
 
        for outer_key in mip.variables.keys():
            if str(outer_key).split('_')[-1] == 'substitution':
                for inner_key in mip.variables[outer_key].keys():
                    subst_var = mip.variables[outer_key][inner_key]
                    if subst_var.lower_bound == subst_var.upper_bound:
                        subst_var.set_solution_value( subst_var.lower_bound)
                    if str(outer_key).replace(SUBSTITUTION_VARIABLES_SUFFIX, RELAXATION_SUFFIX) in mip.relaxation_infos.keys():
                        if len(inner_key)==3 and inner_key not in mip.relaxation_infos[str(outer_key).replace(SUBSTITUTION_VARIABLES_SUFFIX, RELAXATION_SUFFIX)].keys():
          
                            
                            if (inner_key[0],inner_key[1],str(inner_key[2]) +'_big_m_3') in mip.constraints[str(outer_key).replace(SUBSTITUTION_VARIABLES_SUFFIX, REFORMULATED_CONSTRAINT_SUFFIX)].keys():
                                constr = mip.constraints[str(outer_key).replace(SUBSTITUTION_VARIABLES_SUFFIX, REFORMULATED_CONSTRAINT_SUFFIX)][(inner_key[0],inner_key[1],str(inner_key[2])+'_big_m_3') ]
                                if constr.involved_vars[0].solution_value == 0:
                                    subst_var.set_solution_value( 0 )
                                else:
                                    var = constr.involved_vars[2]
                                    
                                    try:
                                        subst_var.set_solution_value( db.get_symbol(str(var.sympy_symbol))[()].level )
                                    except:
                                        subst_var.set_solution_value( 0.5*(subst_var.lower_bound+subst_var.upper_bound) )
    
        for outer_key in mip.variables.keys():
            if str(outer_key).split('_')[-1] == 'substitution':
                for inner_key in mip.variables[outer_key].keys():
  
                    if len( inner_key[-1].split('tan') ) > 1:
                        subst_var = mip.variables[outer_key][inner_key]
                        if subst_var.lower_bound == subst_var.upper_bound:
                            subst_var.set_solution_value( subst_var.lower_bound)
                        info = mip.relaxation_infos[outer_key.replace('substitution','relaxation')][inner_key]
                        subst_var.set_solution_value( tan(info.var.solution_value) )
                        
                    if len( inner_key[-1].split('sin') ) > 1:
                        subst_var = mip.variables[outer_key][inner_key]
                        if subst_var.lower_bound == subst_var.upper_bound:
                            subst_var.set_solution_value( subst_var.lower_bound)
                        info = mip.relaxation_infos[outer_key.replace('substitution','relaxation')][inner_key]
                        subst_var.set_solution_value( sin(info.var.solution_value) )
                        
                    if len( inner_key[-1].split('cos') ) > 1:
                        subst_var = mip.variables[outer_key][inner_key]
                        if subst_var.lower_bound == subst_var.upper_bound:
                            subst_var.set_solution_value( subst_var.lower_bound)
                        info = mip.relaxation_infos[outer_key.replace('substitution','relaxation')][inner_key]
                        subst_var.set_solution_value( cos(info.var.solution_value) )
                        
                    if len(str(inner_key[-1]).split('sum'))  > 1:
                        subst_var = mip.variables[outer_key][inner_key]
                        constr = mip.constraints[outer_key.replace('substitution','relaxation')][inner_key]
                        value = constr.expression.args[1]
                        number_of_vars = len(constr.involved_vars)
                        for iteration in range(1,number_of_vars):
                            var = constr.involved_vars[iteration]
                            #print(var.id)
                            #print(var.solution_value)
                            value = value.subs( var.sympy_symbol, var.solution_value)
                        subst_var.set_solution_value( value )     

                    if len( inner_key[-1].split('abs') ) > 1:
                        subst_var = mip.variables[outer_key][inner_key]
                        if subst_var.lower_bound == subst_var.upper_bound:
                            subst_var.set_solution_value( subst_var.lower_bound)
                        info = mip.relaxation_infos[outer_key.replace('substitution','relaxation')][inner_key]
                        subst_var.set_solution_value( abs(info.var.solution_value) )
        
                                         
        for outer_key in mip.relaxation_infos.keys():
            for inner_key in mip.relaxation_infos[outer_key].keys():
                info = mip.relaxation_infos[outer_key][inner_key]
                var = info.var
                subst_var = info.subst_var
                number_of_segments = info.triangulation.number_of_segments
                real_value = create_real_value_for_subst_var( info )
                subst_var.set_solution_value( real_value )    #save real_value of substitution
                
                if info.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:    #Constraint is 2D
                    if info.triangulation.number_of_segments == 1:
                        error_var = mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY]
                        error_var.set_solution_value( (var[0].solution_value * var[1].solution_value - subst_var.solution_value) )
                    else:
                        point = [var[0].solution_value, var[1].solution_value]
                        segment_number_of_var = info.triangulation.get_segment_number_of_point( point )
                        
                        
                        
                        delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
                        error_var = mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY]
                        
                        if segment_number_of_var == 0:    
                            error_var.set_solution_value( 0 )
                        
                        for i in range(1, number_of_segments+1):
                            if i < segment_number_of_var:
                                delta_vars[i,1].set_solution_value( 0 )
                                delta_vars[i,2].set_solution_value( 1 )
                            if i == segment_number_of_var:
                                [[delta_value1, delta_value2], error_value] = compute_delta_and_error_values_2d( info, segment_number_of_var, point )
    
                                if isnan(delta_value1) == False and abs(delta_value1) < EPS:
                                    delta_value1 = 0
                                if delta_value1 <= 0:
                                    delta_value1 = 0
                                if delta_value1 >= 1:
                                    delta_value1 = 1
    
                                if isnan(delta_value2) == False and abs(delta_value2) < EPS:
                                    delta_value2 = 0
                                if delta_value2 <= 0:
                                    delta_value2 = 0
                                if delta_value2 >= 1:
                                    delta_value2 = 1
    
                                delta_vars[i,1].set_solution_value( delta_value1 )
                                delta_vars[i,2].set_solution_value( delta_value2 )
                                error_var.set_solution_value( error_value )
                                
    
                                    
                                if isnan(delta_value1) == True or isnan(delta_value2) == True or delta_value1 < 0 or delta_value2 < 0:
                                    log_info('NUMERIC ERROR IN MIP_START ' + str(delta_vars[i,1].id) +'\n' +str(delta_vars[i,2].id))
                                
                                    print('delta: ', delta_value1, delta_value2)
                                    print('Triangulation: ', info.triangulation.vertices)
                                    print('point: ', point)
                                    print('segment_number: ', segment_number_of_var)                            
                                
                            if i > segment_number_of_var:
                                delta_vars[i,1].set_solution_value( 0 )
                                delta_vars[i,2].set_solution_value( 0 )
                            
                    
                else:    #Constraints is 1D
                    point = var.solution_value
                    segment_number_of_var = info.triangulation.get_segment_number_of_point( point )
                    
                    delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
                    if DELTA_METHOD_ERROR_KEY in mip.variables[outer_key][inner_key].keys():
                        error_var = mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY]
                    
                        if segment_number_of_var == 0:
                            error_var.set_solution_value( 0 )
                    
                    for i in range(1, number_of_segments+1):
                        if i < segment_number_of_var:
                            delta_vars[i].set_solution_value( 1 )
                        if i == segment_number_of_var:
                            delta_value = (point - info.triangulation.vertices[i-1])/(info.triangulation.vertices[i] - info.triangulation.vertices[i-1])

                            if isnan(delta_value) == False and abs(delta_value) < EPS:
                                delta_value = 0
                            if delta_value <= 0:
                                delta_value = 0
                            if delta_value >= 1:
                                delta_value = 1
                            
                            if isnan(delta_value) == True or delta_value < 0:
                                log_info('NUMERIC ERROR IN MIP-START ' + str(delta_vars[i].id))
                                print('delta: ', delta_value)
                                print('Triangulation: ', info.triangulation.vertices)
                                print('point: ', point)
                                print('segment_number: ', segment_number_of_var)
                            
                            delta_vars[i].set_solution_value( delta_value )
                            if DELTA_METHOD_ERROR_KEY in mip.variables[outer_key][inner_key].keys():
                                error_var.set_solution_value( compute_error_value_1d( info, segment_number_of_var, delta_value) )
                        if i > segment_number_of_var:
                            delta_vars[i].set_solution_value( 0 )
                
                
                if inner_key in mip.variables[outer_key].keys():
                    if DELTA_METHOD_BINARY_KEY in mip.variables[outer_key][inner_key].keys():
                        #save value of filling_var
                        filling_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_BINARY_KEY]
                        
                        if len(filling_vars)>0:
                            if segment_number_of_var == 1:    #first segment
                                for i in range(1 , number_of_segments):
                                    filling_vars[i].set_solution_value( 0 )
                            elif segment_number_of_var == number_of_segments:
                                for i in range(1, number_of_segments):
                                    filling_vars[i].set_solution_value( 1 )
                            elif segment_number_of_var == 0:
                                for i in range(1, number_of_segments):
                                    filling_vars[i].set_solution_value( 0 )
                            else:
                                for i in range(1, segment_number_of_var):
                                    filling_vars[i].set_solution_value( 1 )
                                for i in range(segment_number_of_var, number_of_segments):
                                    filling_vars[i].set_solution_value( 0 )         
                        
                        
        for outer_key in mip.variables.keys():
            if str(outer_key).split('_')[-1] == 'substitution':
                for inner_key in mip.variables[outer_key].keys():
                    #if len(str(inner_key[-1]).split('_neg')) > 1 or len():
                    #    pass
                    #else:   
                    subst_var = mip.variables[outer_key][inner_key]
                    if subst_var.lower_bound == subst_var.upper_bound:
                        subst_var.set_solution_value( subst_var.lower_bound)
      
                    if len(inner_key)==3 and inner_key not in mip.relaxation_infos[str(outer_key).replace(SUBSTITUTION_VARIABLES_SUFFIX, RELAXATION_SUFFIX)]:
                        if inner_key[-1] == 'sum':
                            subst_var = mip.variables[outer_key][inner_key]
                            constr = mip.constraints[outer_key.replace('substitution','relaxation')][inner_key]
                            value = constr.expression.args[1]
                            for var in constr.involved_vars:
                                value = value.subs( var.sympy_symbol, var.solution_value)
                            subst_var.set_solution_value( value )
                        if (inner_key[0],inner_key[1],str(inner_key[2])+'_big_m_3') in mip.constraints[str(outer_key).replace(SUBSTITUTION_VARIABLES_SUFFIX, REFORMULATED_CONSTRAINT_SUFFIX)].keys():
                            constr = mip.constraints[str(outer_key).replace(SUBSTITUTION_VARIABLES_SUFFIX, REFORMULATED_CONSTRAINT_SUFFIX)][(inner_key[0],inner_key[1],str(inner_key[2])+'_big_m_3') ]
                            if constr.involved_vars[0].solution_value == 0:
                                subst_var.set_solution_value( 0 )
                            else:
                                var = constr.involved_vars[2]
                                try:
                                    subst_var.set_solution_value( db.get_symbol(str(var.sympy_symbol))[()].level )
                                except:
                                    subst_var.set_solution_value( 0.5*(subst_var.lower_bound+subst_var.upper_bound) )          
        
        if 'trigonometric_nonconvex' in mip.constraints.keys():
            outer_key = 'trigonometric_substitution'
            for inner_key in mip.variables[outer_key].keys():
                if len(str(inner_key[2]).split('bilinear')) > 1:
                    var = mip.variables[outer_key][inner_key]
                    constr = mip.constraints['trigonometric_nonconvex'][inner_key]
                    value = constr.involved_vars[1].solution_value*constr.involved_vars[2].solution_value
                    var.set_solution_value(value)

                if len(str(inner_key[2]).split('quadratic')) > 1:
                    var = mip.variables[outer_key][inner_key]
                    constr = mip.constraints['trigonometric_nonconvex'][inner_key]
                    value = constr.involved_vars[1].solution_value**2
                    var.set_solution_value(value)


        if 'conic_quadratic_nonconvex' in mip.constraints.keys():
            outer_key = 'conic_quadratic_substitution'
            for inner_key in mip.variables[outer_key].keys():
                if len(str(inner_key[2]).split('quadratic')) > 1:
                    var = mip.variables[outer_key][inner_key]
                    constr = mip.constraints['conic_quadratic_nonconvex'][inner_key]
                    value = constr.involved_vars[1].solution_value**2
                    var.set_solution_value(value)


        if 'objective_nonconvex' in mip.constraints.keys():
            outer_key = 'objective_substitution'
            for inner_key in mip.variables[outer_key].keys():
                if len(str(inner_key[1]).split('quadratic')) > 1:
                    var = mip.variables[outer_key][inner_key]
                    constr = mip.constraints['objective_nonconvex'][inner_key]
                    value = constr.involved_vars[1].solution_value**2
                    var.set_solution_value(value)            
                            
        
        
    
    def write_and_solve_nlps_from_solution_pool(self, minlp, mip, mip_for_solver, mip_solver, nlp_writer, time_start=0, parameters=0):
        
        number_found_solutions = mip_for_solver.SolCount
        print('USE ', number_found_solutions ,' SOLUTION POOL FOR LOCAL SEARCH')
        pool_number = number_found_solutions - 2    #start with worst solution in pool
        for i in range( number_found_solutions-1): #for every pool_number
            mip_solver.save_relaxation_solution_from_pool(mip_for_solver, mip, pool_number)
            nlp_writer.write_nlp_from_relaxation_solution(minlp, mip,  parameters)
            file_path = create_nlp_file_path(minlp, mip)
            self.solve_and_save_result(file_path, mip, time_start, parameters) 
            mip.increase_number_of_solved_nlps()
            pool_number = pool_number - 1
            
            
        
  
    def write_and_solve_nlps_from_dc_solution_pool(self, minlp, mip, dc_mip, mip_for_solver, mip_solver, nlp_writer, time_start=0, parameters=0):
        number_found_solutions = mip_for_solver.SolCount
        print('USE ', number_found_solutions ,' SOLUTION POOL FOR LOCAL SEARCH')
        pool_number = number_found_solutions - 2    #start with worst solution in pool
        for i in range( number_found_solutions-1): #for every pool_number
        
            nlp_writer.write_nlp_from_dc_solution(minlp, mip, dc_mip, parameters)
            file_path = create_nlp_file_path(minlp, dc_mip)
   
            self.solve_and_save_result(file_path, mip, time_start, parameters) 
            mip.increase_number_of_solved_nlps()
            pool_number = pool_number - 1          
    
       
######################################
# FUNCTIONS                          #
######################################


def create_real_value_for_subst_var( info ):
    var = info.var
    if info.constr_type == 'abs':
        return abs(var.solution_value)
    if info.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
    
        return var[0].solution_value*var[1].solution_value
    if info.constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
        return var.solution_value**2
    if info.constr_type == SIN_CONSTRAINT_TYPE_NAME:
        return sin(var.solution_value)
    if info.constr_type == COS_CONSTRAINT_TYPE_NAME:
        return cos(var.solution_value)
    if info.constr_type == TAN_CONSTRAINT_TYPE_NAME:
        return tan(var.solution_value)
    
def compute_error_value_1d( info, segment_number, delta_value):
    vertices = info.triangulation.vertices
    i = segment_number
    constr_type = info.constr_type
    subst_var = info.subst_var
    
    if constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
        return subst_var.solution_value - (vertices[i-1]**2 +  (vertices[i]**2 - vertices[i-1]**2) * delta_value  ) 
    elif constr_type == SIN_CONSTRAINT_TYPE_NAME:
        return subst_var.solution_value - (sin(vertices[i-1]) +  (sin(vertices[i]) - sin(vertices[i-1])) * delta_value  )
    elif constr_type == COS_CONSTRAINT_TYPE_NAME:
        return subst_var.solution_value - (cos(vertices[i-1]) +  (cos(vertices[i]) - cos(vertices[i-1])) * delta_value  )
    elif constr_type == TAN_CONSTRAINT_TYPE_NAME:
        return subst_var.solution_value - (tan(vertices[i-1]) +  (tan(vertices[i]) - tan(vertices[i-1])) * delta_value  )
    elif constr_type == 'abs':
        return 0
    else:
        pass
    
def compute_delta_and_error_values_2d( info, segment_number_of_var, point ):
  
    points = info.triangulation.vertices[ segment_number_of_var-1 ]
    points = array(points, float)
    x0=points[0,0]
    y0=points[0,1]
    
    x1=points[1,0]
    y1=points[1,1]
    
    x2=points[2,0]
    y2=points[2,1]
    
    a11=x1-x0
    a21=y1-y0
    a12=x2-x0
    a22=y2-y0
    b1=point[0]-x0
    b2=point[1]-y0
    a=zeros((2,2))
    a[0,0]=a11
    a[0,1]=a12
    a[1,0]=a21
    a[1,1]=a22
    
    
    a = array(a,float)
    b=array([b1,b2], float)
    
    delta = solve(a, b) 

    
    wert0=x0*y0
    wert1=x1*y1
    wert2=x2*y2
    
    error = point[0]*point[1]-delta[0]*(wert1-wert0)-delta[1]*(wert2-wert0)-wert0     
    return [delta, error]


def create_nlp_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( mip.id )
