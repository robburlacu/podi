######################################
# IMPORTS                            #
######################################


from podi.mip_relaxation_builder import DELTA_METHOD_VARIABLE_KEY, compute_error_on_all_1d_segments, compute_error_on_all_2d_segments, create_delta_1d_id, create_delta_2d_id, create_binaray_id, DELTA_METHOD_BINARY_KEY, DELTA_METHOD_ERROR_KEY, THERMAL_LIMIT_APPROXIMATION_NAME, get_segment_with_max_error
from podi.mip_relaxation_builder import DELTA_METHOD_X_RELAXATION_KEY, DELTA_METHOD_Y_RELAXATION_KEY, DELTA_METHOD_X1_RELAXATION_KEY, DELTA_METHOD_X2_RELAXATION_KEY, DELTA_METHOD_FILLING_CONDITION_UNDER_KEY, DELTA_METHOD_FILLING_CONDITION_UPPER_KEY, DELTA_METHOD_ERROR_BOUND_UNDER_KEY, DELTA_METHOD_ERROR_BOUND_OVER_KEY, DELTA_METHOD_DELTA_UPPER_BOUND_KEY, create_1d_y_value_constraint_expression, create_error_bound_over_constraint_id, create_error_bound_under_constraint_id, create_filling_condition_under_id, create_filling_condition_upper_id, create_2d_y_value_constraint_expression, create_relaxation_delta_upper_id
from podi.mip_relaxation_builder import create_x1_value_constraint_id, create_x2_value_constraint_id, create_y_value_constraint_id, create_x_value_constraint_id
from podi.mip_relaxation_builder import create_abs_key, create_triangulation_id
from podi.minlp_reformulation_builder import BILINEAR_CONSTRAINT_TYPE_NAME
from podi.models import Variable, LinearConstraint
from podi.relaxation_info import RelaxationInfo
from podi.triangulation import create_triangulation1d_id, Triangulation1d
from podi.ac_opf_minlp_builder import THERMAL_LIMIT_CONSTRAINT_NAME
from sympy import Eq, Add, Le, Ge
from numpy import empty
from math import sqrt, tan, sin, cos, pi, inf
from time import time



######################################
# CONSTANTS                          #
######################################


NUMERIC_ERROR_CUTS = 1e-9
NUMERIC_ERROR_SIMPLEX = 1e-9


######################################
# CLASSES                            #
######################################


class RelaxationRefiner(object):
    
    def refine_mip_relaxation(self, mip, parameters, minlp):
        mip.increase_iteration_number()
        new_infos = []
        
        
        for outer_key in mip.relaxation_infos.keys():
            for inner_key in mip.relaxation_infos[outer_key].keys():
                use_cuts = 0
                relaxation_info = mip.relaxation_infos[outer_key][inner_key]
                if relaxation_info.relaxation_error_abs >= parameters['refinement_percentage_for_cuts'] * mip.max_relaxation_error_abs:
                    use_cuts = self.refinement_with_cut(mip, outer_key, inner_key, parameters)

                abs_relaxation_info = ''
                if use_cuts == 0 and relaxation_info.relaxation_error_abs >= parameters['refinement_percentage'] * mip.max_relaxation_error_abs:
                    abs_relaxation_info = self.refine_relaxation(mip, outer_key, inner_key, parameters)
                    if abs_relaxation_info != '':
                        new_infos.append(abs_relaxation_info)
                        
        for info in new_infos:
            mip.update_relaxation_infos( info, info.outer_key, info.inner_key )
        self.refine_thermal_limit_outer_approximation(mip, minlp)
    
    def refine_relaxation(self, mip, outer_key, inner_key, parameters):
        abs_relaxation_info = self.refine_relaxation_info(mip, outer_key, inner_key, parameters)
        self.refine_relaxation_variables(mip, outer_key, inner_key)
        self.refine_relaxation_constraints(mip, outer_key, inner_key)
        return abs_relaxation_info
        
    
    def refine_relaxation_info(self, mip, outer_key, inner_key, parameters):
        abs_relaxation_info = ''
        info= mip.relaxation_infos[outer_key][inner_key]
        
        if info.triangulation.number_of_segments > 1:
            simplex_number = get_simplex_number_from_binary_var(mip.variables[outer_key][inner_key][DELTA_METHOD_BINARY_KEY])
        else:
            simplex_number = 1
        
        
        info.triangulation.longest_edge_bisection( simplex_number )
        if info.constr_type != BILINEAR_CONSTRAINT_TYPE_NAME:
            point = info.var.relaxation_value
            value = info.subst_var.relaxation_value
            [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(info.constr_type, info.triangulation.vertices)            
            info.set_lower_errors(lower_error_on_segments)
            info.set_upper_errors(upper_error_on_segments)
            if parameters['refine_until_relaxation_solution_is_cut_off'] == 1:
                while info.point_is_in_envelope( point, value ) == True:
                    simplex_number = info.triangulation.get_segment_number_of_point( point )
                    info.triangulation.longest_edge_bisection( simplex_number )
                    [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(info.constr_type, info.triangulation.vertices)            
                    info.set_lower_errors(lower_error_on_segments)
                    info.set_upper_errors(upper_error_on_segments)
            
        flag_reduction = info.test_if_domain_reduction_would_reduce_binaries()
        if flag_reduction == 1 and parameters['adaptive_domain_reduction_adaptive_mip'] == 1 and (info.constr_type == 'quadratic' or info.constr_type == 'cos'):
            abs_relaxation_info = self.create_domain_reduction_symmetric(mip, info, outer_key, inner_key)
            self.refine_relaxation_variables(mip, abs_relaxation_info.outer_key, abs_relaxation_info.inner_key, abs_relaxation_info)
            self.refine_relaxation_constraints(mip, abs_relaxation_info.outer_key, abs_relaxation_info.inner_key, abs_relaxation_info)
            
            
        if info.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
            [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_2d_segments(info.constr_type, info.triangulation.vertices)
        else:
            [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(info.constr_type, info.triangulation.vertices)            
        info.set_lower_errors(lower_error_on_segments)
        info.set_upper_errors(upper_error_on_segments)
        return abs_relaxation_info    
        
    def refine_relaxation_variables(self, mip, outer_key, inner_key, info=''):
        if info == '':
            info = mip.relaxation_infos[outer_key][inner_key]
        number_of_segments = info.triangulation.number_of_segments
        
        if info.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
            if number_of_segments == 2:    #new linearization
                new_delta_id_1 = create_delta_2d_id(outer_key, inner_key, number_of_segments-1, 1)
                new_delta_id_2 = create_delta_2d_id(outer_key, inner_key, number_of_segments-1, 2)
                new_delta_1 = Variable(new_delta_id_1, 'continuous', 0, 1)
                new_delta_2 = Variable(new_delta_id_2, 'continuous', 0, 1)
                mip.update_variable_dic(new_delta_1, outer_key, inner_key, DELTA_METHOD_VARIABLE_KEY, (number_of_segments-1, 1))
                mip.update_variable_dic(new_delta_2, outer_key, inner_key, DELTA_METHOD_VARIABLE_KEY, (number_of_segments-1, 2))                
            new_delta_id_1 = create_delta_2d_id(outer_key, inner_key, number_of_segments, 1)
            new_delta_id_2 = create_delta_2d_id(outer_key, inner_key, number_of_segments, 2)
            new_delta_1 = Variable(new_delta_id_1, 'continuous', 0, 1)
            new_delta_2 = Variable(new_delta_id_2, 'continuous', 0, 1)
            mip.update_variable_dic(new_delta_1, outer_key, inner_key, DELTA_METHOD_VARIABLE_KEY, (number_of_segments, 1))
            mip.update_variable_dic(new_delta_2, outer_key, inner_key, DELTA_METHOD_VARIABLE_KEY, (number_of_segments, 2))

        else:
            new = 0
            if inner_key in mip.variables[outer_key].keys():
                if DELTA_METHOD_VARIABLE_KEY in mip.variables[outer_key][inner_key].keys():
                    number_of_delta = len(mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]) 
                    if number_of_delta == number_of_segments:
                        pass
                    elif number_of_delta < number_of_segments:
                        for i in  range(number_of_delta+1, number_of_segments+1):
                            new_delta_id = create_delta_1d_id(outer_key, inner_key, i)
                            new_delta = Variable(new_delta_id, 'continuous', 0, 1)
                            mip.update_variable_dic(new_delta, outer_key, inner_key, DELTA_METHOD_VARIABLE_KEY,  i)
                    elif number_of_delta > number_of_segments:
                        for i in range(number_of_segments+1, number_of_delta+1):
                            mip.delete_var(outer_key, inner_key, DELTA_METHOD_VARIABLE_KEY, i)
                else:
                    new = 1
            else:
                new = 1
            if new == 1:
                for i in  range(1, number_of_segments+1):
                    new_delta_id = create_delta_1d_id(outer_key, inner_key, i)
                    new_delta = Variable(new_delta_id, 'continuous', 0, 1)
                    mip.update_variable_dic(new_delta, outer_key, inner_key, DELTA_METHOD_VARIABLE_KEY, i)

        new = 0
        if inner_key in mip.variables[outer_key].keys():
            if DELTA_METHOD_BINARY_KEY in mip.variables[outer_key][inner_key].keys():
                number_of_binary = len(mip.variables[outer_key][inner_key][DELTA_METHOD_BINARY_KEY]) 
                if number_of_binary == number_of_segments-1:
                    pass
                elif number_of_binary < number_of_segments-1:
                    for i in  range(number_of_binary+1, number_of_segments-1+1):
                        new_binary_id = create_binaray_id(outer_key, inner_key, i)
                        new_binary = Variable(new_binary_id, 'binary')
                        mip.update_variable_dic(new_binary, outer_key, inner_key, DELTA_METHOD_BINARY_KEY, i)
                elif number_of_binary > number_of_segments-1:
                    for i in range(number_of_segments, number_of_binary+1):
                        mip.delete_var(outer_key, inner_key, DELTA_METHOD_BINARY_KEY, i)
            else:
                new = 1
        else:
            new = 1
        if new == 1:
            for i in  range(1,number_of_segments):
                new_binary_id = create_binaray_id(outer_key, inner_key, i)
                new_binary = Variable(new_binary_id, 'binary')
                mip.update_variable_dic(new_binary, outer_key, inner_key, DELTA_METHOD_BINARY_KEY, i)

        
        #update error_bounds
        if info.constr_type != 'abs' and DELTA_METHOD_ERROR_KEY in mip.variables[outer_key].keys():
            mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY].set_variable_lower_bound( - max(info.upper_errors) )
            mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY].set_variable_upper_bound( max(info.lower_errors) )
    
    
    def refine_relaxation_constraints(self, mip, outer_key, inner_key, info=''):
        if info == '':
            info = mip.relaxation_infos[outer_key][inner_key]
        if info.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
            self.refine_x_value_2d(mip, outer_key, inner_key)
            self.refine_y_value_2d(mip, outer_key, inner_key)
            self.refine_error_bound(mip, outer_key, inner_key)    #same as in 1d
            self.refine_filling_condition_2d(mip, outer_key, inner_key)
            self.refine_delta_upper_bound_2d(mip, outer_key, inner_key)
        else:
            self.refine_x_value_1d(mip, outer_key, inner_key, info)
            self.refine_y_value_1d(mip, outer_key, inner_key, info)
            if info.constr_type != 'abs':
                self.refine_error_bound(mip, outer_key, inner_key)
            self.refine_filling_condition(mip, outer_key, inner_key, info)
            
    
    def refine_x_value_2d(self, mip, outer_key, inner_key):
        relaxation_info = mip.relaxation_infos[outer_key][inner_key]
        number_segments = relaxation_info.triangulation.number_of_segments

        [var1, var2] = relaxation_info.var
        vertices = relaxation_info.triangulation.vertices

        delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
       
        not_existing = 0
        if inner_key in mip.constraints[outer_key].keys():
            if DELTA_METHOD_X1_RELAXATION_KEY not in mip.constraints[outer_key][inner_key].keys():
                not_existing = 1
        else:
            not_existing = 1
        
        if not_existing == 1:
            x1_value_constraint_id = create_x1_value_constraint_id(outer_key, inner_key)
            x2_value_constraint_id = create_x2_value_constraint_id(outer_key, inner_key)  
            x1_value_constraint = LinearConstraint(x1_value_constraint_id)
            x2_value_constraint = LinearConstraint(x2_value_constraint_id)
            mip.update_constraint_dic( x1_value_constraint, outer_key, inner_key, DELTA_METHOD_X1_RELAXATION_KEY )
            mip.update_constraint_dic( x2_value_constraint, outer_key, inner_key, DELTA_METHOD_X2_RELAXATION_KEY )     
        
        variables1 = empty(2*number_segments + 1, dtype='object')
        variables1[0] = var1

        for i in range(1,number_segments+1):
            variables1[2*i-1] =  delta_vars[i,1]
            variables1[2*i] = delta_vars[i,2]


        expression = Eq(var1.sympy_symbol, vertices[0][0][0]
                        + Add(*tuple(Add(*tuple((vertices[i-1][key[1]][0] - vertices[i-1][0][0]) * value.sympy_symbol
                                              for (key,value) in delta_vars.items() if key[0]==i))
                                    for i in range(1,number_segments+1))) )

        mip.constraints[outer_key][inner_key][DELTA_METHOD_X1_RELAXATION_KEY].build_linear_constraint_expression_direct(expression, variables1)
        
        variables2 = empty(2*number_segments + 1, dtype='object')
        variables2[0] = var2
        for i in range(1,number_segments+1):
            variables2[2*i-1] =  delta_vars[i,1]
            variables2[2*i] = delta_vars[i,2]


        expression = Eq(var2.sympy_symbol, vertices[0][0][1]
                        + Add(
            *tuple(Add(*tuple((vertices[i - 1][key[1]][1] - vertices[i - 1][0][1]) * value.sympy_symbol
                              for (key, value) in delta_vars.items() if key[0] == i))
                   for i in range(1, number_segments + 1))))

        mip.constraints[outer_key][inner_key][DELTA_METHOD_X2_RELAXATION_KEY].build_linear_constraint_expression_direct(expression, variables2)


    def refine_y_value_2d(self, mip, outer_key, inner_key):
        relaxation_info = mip.relaxation_infos[outer_key][inner_key]
        number_segments = relaxation_info.triangulation.number_of_segments

        [var1, var2] = relaxation_info.var
        subst_var = relaxation_info.subst_var
        vertices = relaxation_info.triangulation.vertices

        delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
        error_var = mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY]

        not_existing = 0
        if inner_key in mip.constraints[outer_key].keys():
            if DELTA_METHOD_Y_RELAXATION_KEY not in mip.constraints[outer_key][inner_key].keys():
                not_existing = 1
        else:
            not_existing = 1
        
        if not_existing == 1:
            y_value_constraint_id = create_y_value_constraint_id(outer_key, inner_key)
            y_value_constraint = LinearConstraint(y_value_constraint_id)

            mip.update_constraint_dic( y_value_constraint, outer_key, inner_key, DELTA_METHOD_Y_RELAXATION_KEY )
         
        variables = empty(2*number_segments + 2, dtype='object')
        variables[0] = subst_var
        for i in range(1,number_segments+1):
            variables[2*i-1] = delta_vars[i,1]
            variables[2*i] = delta_vars[i,2]
        variables[2*number_segments+1] = error_var
        expression = create_2d_y_value_constraint_expression(relaxation_info.constr_type, subst_var, vertices, delta_vars, error_var)
        mip.constraints[outer_key][inner_key][DELTA_METHOD_Y_RELAXATION_KEY].build_linear_constraint_expression_direct(expression, variables)
       

    def refine_filling_condition_2d(self, mip, outer_key, inner_key):
        relaxation_info = mip.relaxation_infos[outer_key][inner_key]        
        number_segments = relaxation_info.triangulation.number_of_segments

        delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
        binary_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_BINARY_KEY]

        filling_condition_under_id = create_filling_condition_under_id(outer_key, inner_key)
        filling_condition_upper_id = create_filling_condition_upper_id(outer_key, inner_key)
       
        i = number_segments - 1    #index of refinement
        variables = [binary_vars[i], delta_vars[i,2]]
        expression = binary_vars[i].sympy_symbol <= delta_vars[i,2].sympy_symbol
        filling_condition_under_constraint = LinearConstraint( filling_condition_under_id + '_' + str(i) )            
        filling_condition_under_constraint.build_linear_constraint_expression_direct(expression, variables)
        
        mip.update_constraint_dic(filling_condition_under_constraint, outer_key, inner_key, (DELTA_METHOD_FILLING_CONDITION_UNDER_KEY, i) )                   
        
        variables = [delta_vars[i+1,1], delta_vars[i+1,2], binary_vars[i]]
        expression = delta_vars[i+1,1].sympy_symbol + delta_vars[i+1,2].sympy_symbol  <= binary_vars[i].sympy_symbol
        filling_condition_upper_constraint = LinearConstraint( filling_condition_upper_id + '_' + str(i) )            
        filling_condition_upper_constraint.build_linear_constraint_expression_direct(expression, variables)
        
        mip.update_constraint_dic(filling_condition_upper_constraint, outer_key, inner_key, (DELTA_METHOD_FILLING_CONDITION_UPPER_KEY, i) )                   
    
    
    def refine_delta_upper_bound_2d(self, mip, outer_key, inner_key):
        relaxation_info = mip.relaxation_infos[outer_key][inner_key]           
        number_segments = relaxation_info.triangulation.number_of_segments
        
        delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
        
        relaxation_delta_upper_id = create_relaxation_delta_upper_id(outer_key, inner_key)

        i = number_segments - 1    #index of new segment
    
        variables = [delta_vars[i,1], delta_vars[i,2]]
        expression = delta_vars[i,1].sympy_symbol + delta_vars[i,2].sympy_symbol <= 1
        delta_upper_bound = LinearConstraint( relaxation_delta_upper_id + '_' + str(i) )            
        delta_upper_bound.build_linear_constraint_expression_direct(expression, variables)
        
        mip.update_constraint_dic(delta_upper_bound, outer_key, inner_key, (DELTA_METHOD_DELTA_UPPER_BOUND_KEY, i))
        
    
    def refine_x_value_1d(self, mip, outer_key, inner_key, info=''):
        if info == '':
            relaxation_info = mip.relaxation_infos[outer_key][inner_key]
        else:
            relaxation_info = info
        number_segments = relaxation_info.triangulation.number_of_segments

        var = relaxation_info.var
        vertices = relaxation_info.triangulation.vertices
        delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
        #print(relaxation_info.triangulation.vertices, number_segments, delta_vars)
        if len(delta_vars) != number_segments:
            print('ERROR in', relaxation_info.id,' TO MUCH DELTAS!!')
        variables = empty(number_segments + 1, dtype='object')
        variables[0] = var
        for i in range(1, number_segments+1):
            variables[i] = delta_vars[i]
        #print(number_segments, len(vertices))
        expression = Eq(var.sympy_symbol , vertices[0] + sum( (vertices[i] - vertices[i-1]) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) )
        new = 0
        if inner_key in mip.constraints[outer_key].keys():
            if DELTA_METHOD_X_RELAXATION_KEY in mip.constraints[outer_key][inner_key].keys():
                mip.constraints[outer_key][inner_key][DELTA_METHOD_X_RELAXATION_KEY].build_linear_constraint_expression_direct(expression, variables)         
            else:
                new = 1
        else:
            new = 1
        if new == 1:
            constraint_id = create_x_value_constraint_id(outer_key, inner_key)
            constr = LinearConstraint( constraint_id )
            constr.build_linear_constraint_expression_direct(expression, variables)
            mip.update_constraint_dic(constr, outer_key, inner_key, DELTA_METHOD_X_RELAXATION_KEY)
            #mip.constraints[outer_key][inner_key][DELTA_METHOD_X_RELAXATION_KEY].build_linear_constraint_expression_direct(expression, variables)


    def refine_y_value_1d(self, mip, outer_key, inner_key, relaxation_info=''):
        if relaxation_info == '':
            relaxation_info = mip.relaxation_infos[outer_key][inner_key]
        number_segments = relaxation_info.triangulation.number_of_segments

        subst_var = relaxation_info.subst_var
        vertices = relaxation_info.triangulation.vertices
        delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
        if relaxation_info.constr_type == 'abs':
            error_var = 0
        elif DELTA_METHOD_ERROR_KEY in mip.variables[outer_key][inner_key].keys():
            error_var = mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY]
        else:
            error_var = 0
         
        variables = empty(number_segments + 2, dtype='object')
        variables[0] = subst_var
        for i in range(1,number_segments+1):
            variables[i] = delta_vars[i]
        if error_var != 0:
            variables[number_segments] = error_var
        expression = create_1d_y_value_constraint_expression(relaxation_info.constr_type, subst_var, vertices, delta_vars, error_var)

        new = 0
        if inner_key in mip.constraints[outer_key].keys():
            if DELTA_METHOD_Y_RELAXATION_KEY in mip.constraints[outer_key][inner_key].keys():
                mip.constraints[outer_key][inner_key][DELTA_METHOD_Y_RELAXATION_KEY].build_linear_constraint_expression_direct(expression, variables)         
            else:
                new = 1
        else:
            new = 1
        if new == 1:
            constraint_id = create_y_value_constraint_id(outer_key, inner_key)
            constr = LinearConstraint( constraint_id )
            constr.build_linear_constraint_expression_direct(expression, variables)
            mip.update_constraint_dic(constr, outer_key, inner_key, DELTA_METHOD_Y_RELAXATION_KEY)

      
    def refine_error_bound(self, mip, outer_key, inner_key):
        relaxation_info = mip.relaxation_infos[outer_key][inner_key]
        number_segments = relaxation_info.triangulation.number_of_segments

        lower_error_on_segments = relaxation_info.lower_errors
        upper_error_on_segments = relaxation_info.upper_errors
        if DELTA_METHOD_ERROR_KEY in mip.variables[outer_key][inner_key].keys():
            error_var = mip.variables[outer_key][inner_key][DELTA_METHOD_ERROR_KEY]
            binary_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_BINARY_KEY]
            
            if len(binary_vars) != number_segments - 1:
                print('ERROR in', relaxation_info.id,' TO MUCH BINARIES!!')        
            variables = empty(number_segments, dtype='object')
            variables[0] = error_var
            for i in range(1,number_segments):
                variables[i] = binary_vars[i]
    
    
            expression_upper = - upper_error_on_segments[0] - sum( binary_vars[i+1].sympy_symbol * (upper_error_on_segments[i+1] - upper_error_on_segments[i]) for i in range(number_segments-1) )
            expression_upper = Le(expression_upper, error_var.sympy_symbol)
     
            expression_lower = lower_error_on_segments[0] + sum( binary_vars[i+1].sympy_symbol * (lower_error_on_segments[i+1] - lower_error_on_segments[i]) for i in range(number_segments-1) )
            expression_lower = Ge(expression_lower, error_var.sympy_symbol)        

        if max(upper_error_on_segments) > 0 and DELTA_METHOD_ERROR_BOUND_OVER_KEY in mip.variables[outer_key][inner_key].keys():        
            mip.constraints[outer_key][inner_key][DELTA_METHOD_ERROR_BOUND_OVER_KEY].build_linear_constraint_expression_direct(expression_upper, variables)

        if max(upper_error_on_segments) > 0 and DELTA_METHOD_ERROR_BOUND_OVER_KEY not in mip.variables[outer_key][inner_key].keys():
            error_bound_over_constraint_id = create_error_bound_over_constraint_id(outer_key, inner_key)
            error_bound_over_constraint = LinearConstraint(error_bound_over_constraint_id)
            error_bound_over_constraint.build_linear_constraint_expression_direct(expression_upper, variables)
            mip.update_constraint_dic( error_bound_over_constraint, outer_key, inner_key, DELTA_METHOD_ERROR_BOUND_OVER_KEY)

        if max(lower_error_on_segments) > 0 and DELTA_METHOD_ERROR_BOUND_UNDER_KEY in mip.variables[outer_key][inner_key].keys():        
            mip.constraints[outer_key][inner_key][DELTA_METHOD_ERROR_BOUND_UNDER_KEY].build_linear_constraint_expression_direct(expression_lower, variables)

        if max(lower_error_on_segments) > 0 and DELTA_METHOD_ERROR_BOUND_UNDER_KEY not in mip.variables[outer_key][inner_key].keys():
            error_bound_lower_constraint_id = create_error_bound_under_constraint_id(outer_key, inner_key)
            error_bound_lower_constraint = LinearConstraint(error_bound_lower_constraint_id)
            error_bound_lower_constraint.build_linear_constraint_expression_direct(expression_lower, variables)
            mip.update_constraint_dic( error_bound_lower_constraint, outer_key, inner_key, DELTA_METHOD_ERROR_BOUND_UNDER_KEY)

        if max(lower_error_on_segments) == 0 and DELTA_METHOD_ERROR_BOUND_UNDER_KEY in mip.variables[outer_key][inner_key].keys():
            mip.delete_constraint(outer_key, inner_key, DELTA_METHOD_ERROR_BOUND_UNDER_KEY)
        
        if max(upper_error_on_segments) == 0 and DELTA_METHOD_ERROR_BOUND_UNDER_KEY in mip.variables[outer_key][inner_key].keys():
            mip.delete_constraint(outer_key, inner_key, DELTA_METHOD_ERROR_BOUND_OVER_KEY)


    def refine_filling_condition(self, mip, outer_key, inner_key, relaxation_info=''):
        if relaxation_info == '':
            relaxation_info = mip.relaxation_infos[outer_key][inner_key]
            
        number_segments = relaxation_info.triangulation.number_of_segments
        
        filling_condition_under_id = create_filling_condition_under_id(outer_key, inner_key)
        filling_condition_upper_id = create_filling_condition_upper_id(outer_key, inner_key)
        
        counter = 0
        for key in mip.constraints[outer_key][inner_key].keys():
            if len(key) == 2:
                if key[0] == DELTA_METHOD_FILLING_CONDITION_UNDER_KEY:
                    counter = counter + 1
        

        if counter == number_segments - 1:
            pass
            
        elif counter < number_segments-1:
            for i in range(counter+1, number_segments-1+1):                
                
                binary_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_BINARY_KEY]
                delta_vars = mip.variables[outer_key][inner_key][DELTA_METHOD_VARIABLE_KEY]
                
                variables = [binary_vars[i], delta_vars[i]]
                expression = binary_vars[i].sympy_symbol <= delta_vars[i].sympy_symbol
                filling_condition_under_constraint = LinearConstraint( filling_condition_under_id + '_' + str(i) )            
                filling_condition_under_constraint.build_linear_constraint_expression_direct(expression, variables)

                mip.update_constraint_dic(filling_condition_under_constraint, outer_key, inner_key, (DELTA_METHOD_FILLING_CONDITION_UNDER_KEY, i) )
                
                variables = [delta_vars[i+1], binary_vars[i]]
                expression = delta_vars[i+1].sympy_symbol <= binary_vars[i].sympy_symbol
                filling_condition_upper_constraint = LinearConstraint( filling_condition_upper_id + '_' + str(i) )            
                filling_condition_upper_constraint.build_linear_constraint_expression_direct(expression, variables)

                mip.update_constraint_dic(filling_condition_upper_constraint, outer_key, inner_key, (DELTA_METHOD_FILLING_CONDITION_UPPER_KEY, i) )                   
        elif counter > number_segments -1 :
            for i in range(number_segments, counter+1):
                del(mip.constraints[outer_key][inner_key][DELTA_METHOD_FILLING_CONDITION_UNDER_KEY, i])
                del(mip.constraints[outer_key][inner_key][DELTA_METHOD_FILLING_CONDITION_UPPER_KEY, i])                   

        
        
    def refine_thermal_limit_outer_approximation(self, mip, minlp):
        for inner_key in minlp.constraints[THERMAL_LIMIT_CONSTRAINT_NAME].keys():
            [var1, var2] = minlp.constraints[THERMAL_LIMIT_CONSTRAINT_NAME][inner_key].involved_vars
            apparent_power = sqrt(var1.relaxation_value**2 + var2.relaxation_value**2)
            limit = sqrt(minlp.constraints[THERMAL_LIMIT_CONSTRAINT_NAME][inner_key].expression.args[1])

            
            if apparent_power > limit:    
                normal_vector = [var1.relaxation_value/(apparent_power), var2.relaxation_value/(apparent_power)]
                point_on_circle = [normal_vector[0]*limit, normal_vector[1]*limit]
                [new_key, constraint_id] = create_thermal_limit_outer_approximation_id_and_key( inner_key, mip )
                variables = [var1, var2]
                expression = normal_vector[0]*var1.sympy_symbol + normal_vector[1]*var2.sympy_symbol <= normal_vector[0]*point_on_circle[0] + normal_vector[1]*point_on_circle[1]

                new_constraint = LinearConstraint( constraint_id )
                new_constraint.build_linear_constraint_expression_direct( expression, variables )
                mip.update_constraint_dic(new_constraint, THERMAL_LIMIT_APPROXIMATION_NAME, '', new_key)


    def refine_tight_mip(self, tight_mip, number_segments, error, time_start, time_limit, parameters):
        new_info = []
        for outer_key in tight_mip.relaxation_infos.keys():
            for inner_key in tight_mip.relaxation_infos[outer_key].keys():
                info = tight_mip.relaxation_infos[outer_key][inner_key]
                
                if time()-time_start < time_limit:
                    while info.triangulation.number_of_segments < number_segments:
                        
                        segment_number = get_segment_with_max_error(info.lower_errors, info.upper_errors) 
                        info.triangulation.longest_edge_bisection( segment_number )    

                        if info.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
                            [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_2d_segments(info.constr_type, info.triangulation.vertices)
                        else:
                            [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(info.constr_type, info.triangulation.vertices)            
                        info.set_lower_errors(lower_error_on_segments)
                        info.set_upper_errors(upper_error_on_segments)    
                        self.refine_relaxation_variables(tight_mip, outer_key, inner_key, info)
                        self.refine_relaxation_constraints(tight_mip, outer_key, inner_key)  

                if time()-time_start < time_limit:
                    while max(info.upper_errors) > error or max(info.lower_errors) > error:
                        
                        segment_number = get_segment_with_max_error(info.lower_errors, info.upper_errors) 
                        info.triangulation.longest_edge_bisection( segment_number )    

                        if info.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
                            [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_2d_segments(info.constr_type, info.triangulation.vertices)
                        else:
                            [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(info.constr_type, info.triangulation.vertices)            
                        info.set_lower_errors(lower_error_on_segments)
                        info.set_upper_errors(upper_error_on_segments)    
                        self.refine_relaxation_variables(tight_mip, outer_key, inner_key, info)
                        self.refine_relaxation_constraints(tight_mip, outer_key, inner_key)  
 

                       
                    flag_reduction = info.test_if_domain_reduction_would_reduce_binaries()

                    abs_relaxation_info = ''
                    if flag_reduction == 1 and parameters['adaptive_domain_reduction_tight_mip'] == 1 and (info.constr_type == 'quadratic' or info.constr_type == 'cos'):
                        abs_relaxation_info = self.create_domain_reduction_symmetric(tight_mip, info, outer_key, inner_key)
                        self.refine_relaxation_variables(tight_mip, abs_relaxation_info.outer_key, abs_relaxation_info.inner_key, abs_relaxation_info)
                        self.refine_relaxation_constraints(tight_mip, abs_relaxation_info.outer_key, abs_relaxation_info.inner_key, abs_relaxation_info)

                     
                        
                    if abs_relaxation_info != '':
                        new_info.append(abs_relaxation_info)   
        
        for info in new_info:
            tight_mip.update_relaxation_infos( info, info.outer_key, info.inner_key)




    def refinement_with_cut(self, mip, outer_key, inner_key, parameters):
        use_cut = 0
        info = mip.relaxation_infos[outer_key][inner_key]
        if info.constr_type == 'quadratic':
            use_cut = self.refine_quadratic_with_cut(mip, outer_key, inner_key)
            
        elif info.constr_type == 'tan':
            pass

            
        elif info.constr_type == 'sin':
            pass

        elif info.constr_type == 'cos':
            pass

        if parameters['use_cut_instead_of_adding_point'] == 0:
            use_cut = 0
        return use_cut
    
    
    def refine_quadratic_with_cut(self, mip, outer_key, inner_key):
        info = mip.relaxation_infos[outer_key][inner_key]
        var_value = info.var.relaxation_value
        subst_value = info.subst_var.relaxation_value
        cut_flag = 0

        
        if var_value**2 > subst_value + NUMERIC_ERROR_CUTS:

            new_outer_key = outer_key.replace('relaxation','cuts')
            cut_number = len(mip.constraints[new_outer_key]) + 1
            new_inner_key = inner_key + (cut_number,)
            constr_id = str(new_outer_key) + '_' + str(new_inner_key) + '_' + 'cut'
            constr = LinearConstraint( constr_id )
            
            variables = [info.var, info.subst_var]
            m = 2 * var_value
            x0 = var_value
            y0 = var_value**2
            expression = info.subst_var.sympy_symbol >= m * (info.var.sympy_symbol - x0) + y0
            constr.build_linear_constraint_expression_direct(expression , variables)
            
            mip.update_constraint_dic(constr, new_outer_key, '', new_inner_key)
            cut_flag=1
        return cut_flag
            
    
    def refine_tan_with_cut(self, mip, outer_key, inner_key):
        
        info = mip.relaxation_infos[outer_key][inner_key]
        var_value = info.var.relaxation_value
        subst_value = info.subst_var.relaxation_value
        
        cut_flag=0
         
        if var_value <= 0 and tan(var_value) < subst_value - NUMERIC_ERROR_CUTS:
            new_outer_key = outer_key.replace('relaxation','cuts')


            cut_number = len(mip.constraints[new_outer_key]) + 1
            new_inner_key = inner_key + (cut_number,)
            constr_id = str(new_outer_key) + '_' + str(new_inner_key) + '_' + 'cut'
            constr = LinearConstraint( constr_id )
            
            
            
            m = 1 / cos(var_value)**2
            x0 = var_value
            y0 = tan(var_value)
            
            if tan(info.var.upper_bound) > m * (info.var.upper_bound - x0) + y0:

                if 0 in info.triangulation.vertices:
        
                    filling_var_number = get_indicator_var_number_for_vertix(info, 0 )
                    indicator = mip.variables[outer_key][inner_key]['filling_var'][filling_var_number]
                    variables = [info.var, info.subst_var, indicator]
                    M = m * (info.var.lower_bound - x0) + y0 - info.subst_var.upper_bound
                    expression = M * indicator.sympy_symbol <= m * (info.var.sympy_symbol - x0) + y0 - info.subst_var.sympy_symbol

                    constr.build_linear_constraint_expression_direct(expression , variables)
                    cut_flag = 1
                    mip.update_constraint_dic(constr, new_outer_key, '', new_inner_key)

            else:
                variables = [info.var, info.subst_var]

                expression = 0 <= m * (info.var.sympy_symbol - x0) + y0 - info.subst_var.sympy_symbol

                constr.build_linear_constraint_expression_direct(expression , variables)
                cut_flag = 1
                mip.update_constraint_dic(constr, new_outer_key, '', new_inner_key)

        if var_value >= 0 and tan(var_value) > subst_value + NUMERIC_ERROR_CUTS:

            new_outer_key = outer_key.replace('relaxation','cuts')


            cut_number = len(mip.constraints[new_outer_key]) + 1
            new_inner_key = inner_key + (cut_number,)
            constr_id = str(new_outer_key) + '_' + str(new_inner_key) + '_' + 'cut'
            constr = LinearConstraint( constr_id )
            

            m = 1 / cos(var_value)**2
            x0 = var_value
            y0 = tan(var_value)
            
            if tan(info.var.lower_bound) < m * (info.var.lower_bound - x0) + y0:

                if 0 in info.triangulation.vertices:
         
                    filling_var_number = get_indicator_var_number_for_vertix(info, 0 )
                    indicator = mip.variables[outer_key][inner_key]['filling_var'][filling_var_number]
                    variables = [info.var, info.subst_var, indicator]
                    variables = [info.var, info.subst_var, indicator]                
                        
                    M = m * (info.var.upper_bound - x0) + y0 - info.subst_var.lower_bound
                    expression = M * (1-indicator.sympy_symbol) >= m * (info.var.sympy_symbol - x0) + y0 - info.subst_var.sympy_symbol
                    constr.build_linear_constraint_expression_direct(expression , variables)
                    cut_flag=1
                    
                    mip.update_constraint_dic(constr, new_outer_key, '', new_inner_key)
            else:
                variables = [info.var, info.subst_var]                
                expression = 0 >= m * (info.var.sympy_symbol - x0) + y0 - info.subst_var.sympy_symbol
                

                constr.build_linear_constraint_expression_direct(expression , variables)
                cut_flag=1
                
                mip.update_constraint_dic(constr, new_outer_key, '', new_inner_key)
        return cut_flag

    def define_domain_decompostion_variables_and_constraints(self, mip, outer_key, inner_key):
        info = mip.relaxation_infos[outer_key][inner_key]
        var_value = info.var.relaxation_value
        new_outer_key = outer_key.replace('relaxation','cuts')        
        new_id = str(new_outer_key) + '_' + str(inner_key) + '_' + 'slack_for_domain_decomposition'
        var = Variable(new_id, 'binary')
        
        if var_value >= 0:
            var.set_relaxation_solution_value( 1 )
        else:
            var.set_relaxation_solution_value( 0 )
            
        if mip.lower_obj_bound > -inf and mip.upper_obj_bound < inf:
            if info.var.solution_value >= 0:
                var.set_solution_value( 1 )
            else:
                var.set_solution_value( 0 )
            
        constr_id_1 = str(new_outer_key) + '_' + str(inner_key) + '_' + 'cut_big_M_1'
        constr_1 = LinearConstraint( constr_id_1 )
        constr_id_2 = str(new_outer_key) + '_' + str(inner_key) + '_' + 'cut_big_M_2'
        constr_2 = LinearConstraint( constr_id_2 )
        
        variables = [info.var, var]
        expression_1 = info.var.sympy_symbol <= info.var.upper_bound * var.sympy_symbol
        expression_2 = info.var.sympy_symbol >= info.var.lower_bound * (1-var.sympy_symbol)
        constr_1.build_linear_constraint_expression_direct(expression_1 , variables)
        constr_2.build_linear_constraint_expression_direct(expression_2 , variables)
        
        mip.update_variable_dic(var, new_outer_key, '', '', inner_key)
        mip.update_constraint_dic(constr_1, new_outer_key, '', inner_key+('big_m_1',))
        mip.update_constraint_dic(constr_2, new_outer_key, '', inner_key+('big_m_2',))


        
    def refine_sin_with_cut(self, mip, outer_key, inner_key):
        info = mip.relaxation_infos[outer_key][inner_key]
        var_value = info.var.relaxation_value
        subst_value = info.subst_var.relaxation_value
        
        use_cut = 0
        
        if (-2*pi <= var_value and var_value <= -pi) or (0 <= var_value and var_value <= pi):
            if sin(var_value) < subst_value - NUMERIC_ERROR_CUTS:
                pass

        if (-pi <= var_value and var_value <= 0) or (pi <= var_value and var_value <= 2*pi):
            if sin(var_value) > subst_value + NUMERIC_ERROR_CUTS:
                pass
    
        return use_cut
        
    def refine_cos_with_cut(self, mip, outer_key, inner_key):
        info = mip.relaxation_infos[outer_key][inner_key]
        var_value = info.var.relaxation_value
        subst_value = info.subst_var.relaxation_value
        
        use_cut = 0
        
        if (-2*pi <= var_value and var_value <= -1.5*pi) or (-0.5*pi <= var_value and var_value <= 0.5*pi) or (1.5*pi <= var_value and var_value <= 2*pi):
            if cos(var_value) < subst_value - NUMERIC_ERROR_CUTS:
                pass

        if (-pi <= var_value and var_value <= 0) or (pi <= var_value and var_value <= 2*pi):
            if cos(var_value) > subst_value + NUMERIC_ERROR_CUTS:
                pass
     
        return use_cut


    def create_domain_reduction_symmetric(self, mip, info, outer_key, inner_key):

        [abs_outer_key, abs_inner_key] = create_abs_key(outer_key, inner_key, info.constr_type)
        abs_var = Variable( 'subst_abs_'+str(abs_outer_key) + '_' + str(abs_inner_key), 'continuous', 0, max(abs(info.var.lower_bound),abs(info.var.upper_bound)) )

        if mip.upper_obj_bound < inf:
            abs_var.set_solution_value(abs(info.var.solution_value))
        if mip.lower_obj_bound > -inf:
            abs_var.set_relaxation_solution_value(abs(info.var.relaxation_value))
        mip.update_variable_dic(abs_var, abs_outer_key, '', '', abs_inner_key)
        
        var = info.var
        
        info.change_to_domain_reduction(abs_var)
        [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(info.constr_type, info.triangulation.vertices)
        info.set_lower_errors(lower_error_on_segments)
        info.set_upper_errors(upper_error_on_segments)


        tri_id = create_triangulation_id(outer_key, abs_inner_key)
        tri = Triangulation1d(tri_id, [var.lower_bound, var.upper_bound], 1)
        
        tri.add_point(0)
        
        lower_error_on_segments = [0,0]
        upper_error_on_segments = [0,0]
        abs_relaxation_info = RelaxationInfo(outer_key, abs_inner_key, tri, lower_error_on_segments, upper_error_on_segments, var, abs_var, 'abs')
   
        return abs_relaxation_info


    def test_if_2d_cut_possible(self, mip, minlp, parameters):
        flag = 0
        if 'conic_quadratic' in minlp.constraints.keys():
            for inner_key in minlp.constraints['conic_quadratic'].keys():
                voltage_product_real = mip.variables['voltage_product_real'][inner_key]
                voltage_product_imaginary = mip.variables['voltage_product_imaginary'][inner_key]
                if len(inner_key) == 2:
                    reverse_inner_key = (inner_key[1], inner_key[0])
                elif len(inner_key) == 3:
                    reverse_inner_key = (inner_key[1], inner_key[0], inner_key[2])
                if parameters['transmission_switching'] == 1:
                    voltage_square1 = mip.variables['switched_voltage_square'][inner_key]
                    voltage_square2 = mip.variables['switched_voltage_square'][reverse_inner_key]
                else:
                    voltage_square1 = mip.variables['voltage_square'][inner_key]
                    voltage_square2 = mip.variables['voltage_square'][reverse_inner_key]  
                
                lhs = voltage_product_real.relaxation_value**2 + voltage_product_imaginary.relaxation_value**2
                rhs = voltage_square1.relaxation_value * voltage_square2.relaxation_value
                if lhs < rhs - NUMERIC_ERROR_CUTS:
                    flag = flag + 1
                    
            if flag >= 1:
                print('2D-CUT POSSIBLE FOR CONIC-QUADRATIC!', flag, 'times')
                


 
        
######################################
# FUNCTIONS                          #
######################################


def get_simplex_number_from_binary_var( var_dic ):
    if abs(var_dic[1].relaxation_value) < NUMERIC_ERROR_SIMPLEX:
        #solution is in first segment
        return 1
    elif abs(var_dic[len(var_dic)].relaxation_value - 1) <= NUMERIC_ERROR_SIMPLEX:
        #solution is in last segment
        return len(var_dic)+1
    else:
        for i in range(1 , len(var_dic)):
            if abs(var_dic[i].relaxation_value - var_dic[i+1].relaxation_value - 1) <= NUMERIC_ERROR_SIMPLEX:
                #solution is in segment i+1
                return i+1
            
            
def create_thermal_limit_outer_approximation_id_and_key(branch_id, mip):
    from_bus = branch_id[0]
    to_bus = branch_id[1]
    outer_approximation_dic = mip.constraints[THERMAL_LIMIT_APPROXIMATION_NAME]
    number = 1    #starte bei 1 zu zählen
    for inner_key in outer_approximation_dic.keys():
        if inner_key[0] == from_bus and inner_key[1] == to_bus:
            number = number + 1
    key = (from_bus, to_bus, number)
    string = THERMAL_LIMIT_APPROXIMATION_NAME + '_' + str(from_bus) + '_' + str(to_bus) + '_' + str(number)
    return [key, string]


def test_if_domain_reduction_would_reduce_binary_quadratic(info):
    vertices = info.triangulation.vertices
    var = info.var
    point = var.relaxation_value
    flag = 0
    if var.lower_bound < 0 and var.upper_bound > 0:
        if point > 0:
            for i in range(1,len(vertices)-1):
                if vertices[i] < 0:
                    flag = 1
        elif point < 0:
            for i in range(1,len(vertices)-1):
                if vertices[i] > 0:
                    flag = 1
    if flag == 1:
        reduction = min(abs(var.lower_bound),abs(var.upper_bound))

    
def test_if_domain_reduction_would_reduce_binary_tan(info):
    vertices = info.triangulation.vertices
    var = info.var
    point = var.relaxation_value
    flag = 0
    if var.lower_bound < 0 and var.upper_bound > 0:
        if point > 0:
            for i in range(1,len(vertices)-1):
                if vertices[i] < 0:
                    flag = 1
        elif point < 0:
            for i in range(1,len(vertices)-1):
                if vertices[i] > 0:
                    flag = 1
    if flag == 1:
        reduction = min(abs(var.lower_bound),abs(var.upper_bound))


def get_indicator_var_number_for_vertix(info, value ):
    vertices = info.triangulation.vertices
    for i in range(len(vertices)):
        if vertices[i+1] == value:
            return i+1
            
