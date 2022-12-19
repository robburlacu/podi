######################################
# IMPORTS                            #
######################################


from podi.models import Mip, Variable, LinearConstraint, MINLP_ID_PREFIX, NonlinearConstraint, NONLINEAR_CONSTRAINT_ID_PREFIX
from podi.relaxation_info import RelaxationInfo
from podi.minlp_reformulation_builder import SUBSTITUTION_CONSTRAINT_SUFFIX, BILINEAR_CONSTRAINT_TYPE_NAME, QUADRATIC_CONSTRAINT_TYPE_NAME, SIN_CONSTRAINT_TYPE_NAME, COS_CONSTRAINT_TYPE_NAME, TAN_CONSTRAINT_TYPE_NAME, REFORMULATION_SUFFIX,  REFORMULATED_CONSTRAINT_SUFFIX
from podi.ac_opf_minlp_builder import DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME
from podi.triangulation import Triangulation1d, Triangulation2d, NUMBER_INITIAL_SEGMENTS
from numpy import empty
from sympy import Eq, sin, cos, tan, pi, asin, acos, sqrt, Le, Add
from math import inf
from math import sin as msin
from math import cos as mcos
from podi.ac_opf_minlp_builder import THERMAL_LIMIT_CONSTRAINT_NAME, CONIC_QUADRATIC_CONSTRAINT_NAME, find_1d_var_bounds
from numpy import array
from podi import log_info


######################################
# CONSTANTS                          #
######################################


RELAXATION_NAME = 'ac_opf_relaxation'
RELAXATION_SUFFIX = 'relaxation'
CUT_SUFFIX = 'cuts'
SUBSTITUTION_SUFFIX = SUBSTITUTION_CONSTRAINT_SUFFIX
DELTA_METHOD_VARIABLE_KEY = 'delta'
DELTA_METHOD_BINARY_KEY = 'filling_var'
DELTA_METHOD_ERROR_KEY = 'error'
DELTA_METHOD_X_RELAXATION_KEY = 'x_value'
DELTA_METHOD_X1_RELAXATION_KEY = 'x1_value'
DELTA_METHOD_X2_RELAXATION_KEY = 'x2_value'
DELTA_METHOD_Y_RELAXATION_KEY = 'y_value'
DELTA_METHOD_ERROR_BOUND_OVER_KEY = 'error_bound_over'
DELTA_METHOD_ERROR_BOUND_UNDER_KEY = 'error_bound_under'
DELTA_METHOD_FILLING_CONDITION_UNDER_KEY = 'filling_condition_under'
DELTA_METHOD_FILLING_CONDITION_UPPER_KEY = 'filling_condition_upper'
DELTA_METHOD_DELTA_UPPER_BOUND_KEY = 'delta_upper_bound'
THERMAL_LIMIT_APPROXIMATION_NAME = 'thermal_limit_outer_approximation'
EPS = 1e-7
EPS_SUBSTITUTION = 0


######################################
# CLASSES                            #
######################################


class MipRelaxationBuilder(object):
    
    def build(self, minlp_reformulation, max_error_for_relaxation=inf, number_initial_segments=NUMBER_INITIAL_SEGMENTS, use_convex_quadratic=0, use_socp=0, number_outer_approx=0, use_nonconvex_qp=0, use_mccormick=0, use_domain_reduction=0, use_univariate=0):
        if use_nonconvex_qp == 1:

            use_convex_quadratic = 1
        
        mip_relaxation = Mip( create_relaxation_id_from_reformulation(minlp_reformulation) )    #relaxation is a mip
        self.build_mip_relaxation(mip_relaxation, minlp_reformulation, max_error_for_relaxation, number_initial_segments, use_convex_quadratic, use_socp, number_outer_approx, use_nonconvex_qp, use_mccormick, use_domain_reduction, use_univariate)    #build relaxation from reformulation
        if use_univariate == 1 and use_mccormick == 1 and use_nonconvex_qp==0:
            self.build_mccormick_for_univariate_conic_quadratic(mip_relaxation, minlp_reformulation)
        if use_univariate == 1 and use_mccormick == 1 and use_nonconvex_qp==0:
            self.build_mccormick_for_univariate_trigonometric(mip_relaxation, minlp_reformulation)
        
        return mip_relaxation
    
       
    def build_mip_relaxation(self, mip_relaxation, minlp_reformulation, max_error_for_relaxation, number_initial_segments, use_convex_quadratic, use_socp, number_outer_approx, use_nonconvex_qp, use_mccormick, use_domain_reduction, use_univariate):
        mip_relaxation.set_objective(minlp_reformulation.objective)    #objective is the same
        
        
        mip_relaxation.add_variable(minlp_reformulation.variables.copy())    #Variables are the same
        if use_nonconvex_qp == 1 and use_univariate == 0:
            mip_relaxation.delete_var('conic_quadratic_substitution')
        
        for outer_key in minlp_reformulation.constraints.keys():
            string_part = str(outer_key).split('_')
            if string_part[ len(string_part)-1 ] != SUBSTITUTION_SUFFIX and str(outer_key) != THERMAL_LIMIT_CONSTRAINT_NAME:    #constraints are linear
                if use_nonconvex_qp == 1 and outer_key == 'conic_quadratic_reformulated' and use_univariate == 0:
                    pass
                else:
                    mip_relaxation.add_constraint({ outer_key : minlp_reformulation.constraints[outer_key] })    #add constraints to reformulation
            elif str(outer_key) == THERMAL_LIMIT_CONSTRAINT_NAME:
                new_dic = {}
                if use_convex_quadratic == 0:
                    
                    if number_outer_approx>0:
                        self.build_outer_approx(mip_relaxation, minlp_reformulation, number_outer_approx, new_dic)
                elif use_convex_quadratic == 1:
                    
                    mip_relaxation.add_constraint({ outer_key : minlp_reformulation.constraints[outer_key] })    
                
                mip_relaxation.add_constraint( {THERMAL_LIMIT_APPROXIMATION_NAME : new_dic })      
            else:
                new_outer_key = create_relaxation_dic_key(outer_key)
                new_outer_key_for_cuts = create_cuts_dic_key(outer_key)
                new_variables_dic = {}
                new_constraints_dic = {}
                relaxation_info_dic = {}
                for inner_key in minlp_reformulation.constraints[outer_key].keys():
                    if len(str(inner_key[-1]).split('sum')) > 1:
                        new_constraints_dic.update( {inner_key : minlp_reformulation.constraints[outer_key][inner_key]} )
                    else:
                        self.build_relaxation_from_constraint( minlp_reformulation.constraints[outer_key][inner_key], new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, mip_relaxation, outer_key, max_error_for_relaxation, number_initial_segments, use_nonconvex_qp, use_mccormick, use_domain_reduction)
                
                mip_relaxation.add_variable( {new_outer_key : new_variables_dic} )
                mip_relaxation.add_relaxation_infos( {new_outer_key : relaxation_info_dic} )
                mip_relaxation.add_constraint( {new_outer_key : new_constraints_dic} )
                mip_relaxation.add_constraint({ new_outer_key_for_cuts : {} })
                mip_relaxation.add_variable({ new_outer_key_for_cuts : {} })
        if use_socp == 1:
            self.build_socp_constraints(mip_relaxation, minlp_reformulation, use_univariate)
        if use_nonconvex_qp == 1:
            self.build_nonconvex_qp_constraints(mip_relaxation, minlp_reformulation, use_univariate)
                
                
            
    def build_relaxation_from_constraint(self, constraint, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, mip_relaxation, outer_key, max_error_for_relaxation, number_initial_segments, use_nonconvex_qp, use_mccormick, use_domain_reduction):
        subst_var = constraint.involved_vars[0]
        if subst_var.lower_bound < subst_var.upper_bound:    #don't build relaxation for fixed values
            if constraint.type == BILINEAR_CONSTRAINT_TYPE_NAME:
                
                if use_nonconvex_qp == 0:
                    self.build_2d_relaxation(constraint, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, mip_relaxation, outer_key, max_error_for_relaxation, number_initial_segments, use_mccormick, use_domain_reduction)
            
            elif constraint.type == DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME:
                outer_key_for_discrete_bilinear = outer_key.replace(SUBSTITUTION_CONSTRAINT_SUFFIX, REFORMULATED_CONSTRAINT_SUFFIX)
                
                self.build_and_add_big_m_reformulation_to_mip(constraint, outer_key_for_discrete_bilinear, inner_key, mip_relaxation)

            
            else:
                var = constraint.involved_vars[1]
                if var.lower_bound == var.upper_bound:
                    subst_value = float(constraint.expression.args[1].subs(var.sympy_symbol, var.lower_bound))
                    subst_var.set_variable_lower_bound(subst_value)
                    subst_var.set_variable_upper_bound(subst_value)
                else:
                    self.build_1d_relaxation(constraint, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, mip_relaxation, outer_key, max_error_for_relaxation, number_initial_segments, use_nonconvex_qp, use_domain_reduction)
    
    
    def build_1d_relaxation(self, constraint, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, mip_relaxation, outer_key, max_error_for_relaxation, number_initial_segments, use_nonconvex_qp, use_domain_reduction):        
        if constraint.type == QUADRATIC_CONSTRAINT_TYPE_NAME and use_nonconvex_qp == 1:
            pass
        else:
            #print(constraint.expression, constr)
            
            [subst_var, var] = constraint.involved_vars
            constr_type = constraint.type
            self.create_1d_relaxation_info(mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction)
            relaxation_info = relaxation_info_dic[inner_key]
            

            
            self.create_1d_relaxation_vars(relaxation_info, new_variables_dic)        
            new_constraints_dic.update( {inner_key : {}} ) 
            self.create_1d_relaxation_x_value_constraint(relaxation_info, new_variables_dic, new_constraints_dic)
            self.create_1d_relaxation_y_value_constraint(relaxation_info, new_variables_dic, new_constraints_dic)
            if relaxation_info.triangulation.number_of_segments > 1 and relaxation_info.constr_type != 'abs':
                self.create_1d_relaxation_error_bound_constraints(relaxation_info, new_variables_dic, new_constraints_dic)
                self.create_1d_relaxation_filling_condition(relaxation_info, new_variables_dic, new_constraints_dic)   
            
            [abs_outer_key, abs_inner_key] = create_abs_key(new_outer_key, inner_key, constr_type)
            if abs_inner_key in relaxation_info_dic.keys():
                relaxation_info = relaxation_info_dic[abs_inner_key]
                self.create_1d_relaxation_vars(relaxation_info, new_variables_dic)        
                new_constraints_dic.update( {abs_inner_key : {}} ) 
                self.create_1d_relaxation_x_value_constraint(relaxation_info, new_variables_dic, new_constraints_dic)
                self.create_1d_relaxation_y_value_constraint(relaxation_info, new_variables_dic, new_constraints_dic)
                if relaxation_info.triangulation.number_of_segments > 1 and relaxation_info.constr_type != 'abs':
                    self.create_1d_relaxation_error_bound_constraints(relaxation_info, new_variables_dic, new_constraints_dic)
                    self.create_1d_relaxation_filling_condition(relaxation_info, new_variables_dic, new_constraints_dic)   

            [subs_pos_outer_key, subs_pos_inner_key] = create_subs_pos_key( new_outer_key, inner_key, constr_type )
            [subs_neg_outer_key, subs_neg_inner_key] = create_subs_neg_key( new_outer_key, inner_key, constr_type )
            if subs_pos_inner_key in mip_relaxation.variables[subs_pos_outer_key].keys():
                #subst_var
                #self.create_1d_domain_reduction_coupling_constraints()
                pos_var = mip_relaxation.variables[subs_pos_outer_key][subs_pos_inner_key]
                neg_var = mip_relaxation.variables[subs_neg_outer_key][subs_neg_inner_key]
                #print(new_variables_dic)
                binary_var = new_variables_dic[abs_inner_key]['filling_var'][1]
                coupling_outer_key = new_outer_key.replace('relaxation','domain_reduction')
                coupling_inner_key = (abs_inner_key[0],abs_inner_key[1],abs_inner_key[-1].replace('abs','abs_coupling') )
                big_m_1_inner_key = (abs_inner_key[0],abs_inner_key[1],abs_inner_key[-1].replace('abs','big_m_1') )
                big_m_2_inner_key = (abs_inner_key[0],abs_inner_key[1],abs_inner_key[-1].replace('abs','big_m_2') )
                big_m_3_inner_key = (abs_inner_key[0],abs_inner_key[1],abs_inner_key[-1].replace('abs','big_m_3') )
                
                coupling_constr = LinearConstraint(str(coupling_outer_key)+'_'+str(coupling_inner_key))
                coupling_constr.build_linear_constraint_expression_direct( Eq(subst_var.sympy_symbol , - pos_var.sympy_symbol + 2* neg_var.sympy_symbol), [subst_var, pos_var, neg_var]    )
                mip_relaxation.update_constraint_dic(coupling_constr, coupling_outer_key, '', coupling_inner_key)
                
                big_m_1_constr = LinearConstraint(str(coupling_outer_key)+'_'+str(big_m_1_inner_key))
                big_m_1_constr.build_linear_constraint_expression_direct( neg_var.sympy_symbol <= pos_var.upper_bound * binary_var.sympy_symbol, [neg_var, binary_var]    )
                mip_relaxation.update_constraint_dic(big_m_1_constr, coupling_outer_key, '', big_m_1_inner_key)

                big_m_2_constr = LinearConstraint(str(coupling_outer_key)+'_'+str(big_m_2_inner_key))
                big_m_2_constr.build_linear_constraint_expression_direct( neg_var.sympy_symbol <= pos_var.sympy_symbol, [neg_var, pos_var]    )
                mip_relaxation.update_constraint_dic(big_m_2_constr, coupling_outer_key, '', big_m_2_inner_key)

                big_m_3_constr = LinearConstraint(str(coupling_outer_key)+'_'+str(big_m_3_inner_key))
                big_m_3_constr.build_linear_constraint_expression_direct( neg_var.sympy_symbol >= pos_var.sympy_symbol - pos_var.upper_bound*(1-binary_var.sympy_symbol), [neg_var, pos_var, binary_var]    )
                mip_relaxation.update_constraint_dic(big_m_3_constr, coupling_outer_key, '', big_m_3_inner_key)
                

    def create_1d_relaxation_info(self, mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction):

        tri_id = create_triangulation_id(new_outer_key, inner_key)
        tri = Triangulation1d(tri_id, [var.lower_bound, var.upper_bound], number_initial_segments)
        
        if constr_type == 'abs' and tri.test_if_point_is_interior( 0 , 1) is True:
            tri.add_point(0)
        

        vertices = tri.vertices
        [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(constr_type, vertices)
        if max_error_for_relaxation > 0:
            while max(lower_error_on_segments) > float(max_error_for_relaxation) or max(upper_error_on_segments) > float(max_error_for_relaxation):
                segment_number = get_segment_with_max_error(lower_error_on_segments, upper_error_on_segments)
    
                tri.longest_edge_bisection(segment_number)
                vertices = tri.vertices
                [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(constr_type, vertices)
                
        relaxation_info = RelaxationInfo(new_outer_key, inner_key, tri, lower_error_on_segments, upper_error_on_segments, var, subst_var, constr_type)
        
        flag_reduction = relaxation_info.test_if_domain_reduction_would_reduce_binaries()
        if flag_reduction == 1 and use_domain_reduction == 1 and (constr_type == 'quadratic' or constr_type == 'cos'):
            self.create_1d_domain_reduction( mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction)
        else:
            relaxation_info_dic.update({ inner_key : relaxation_info})


    def create_1d_relaxation_vars(self, relaxation_info, new_variables_dic):
        
        number_segments = relaxation_info.triangulation.number_of_segments
        upper_error_on_segments = relaxation_info.upper_errors
        lower_error_on_segments = relaxation_info.lower_errors
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        
        delta_vars = {}
        for i in range(1, number_segments+1):    
            new_delta_id = create_delta_1d_id( outer_key, inner_key, i)
            new_delta = Variable(new_delta_id, 'continuous', 0, 1)
            delta_vars.update({i : new_delta})

        if max(upper_error_on_segments) > 0 or max(lower_error_on_segments) > 0:
            error_id = create_error_id(outer_key, inner_key)
            error_var = Variable(error_id, 'continuous', -max(upper_error_on_segments), max(lower_error_on_segments))
        
        binary_vars = {}
        for i in range(1, number_segments):    
            new_binary_id = create_binaray_id( outer_key, inner_key, i)
            new_binary = Variable(new_binary_id, 'binary')
            binary_vars.update( {i : new_binary} )

        if max(upper_error_on_segments) > 0 or max(lower_error_on_segments) > 0:
            new_variables_dic.update({ inner_key: {DELTA_METHOD_VARIABLE_KEY: delta_vars, DELTA_METHOD_BINARY_KEY: binary_vars, DELTA_METHOD_ERROR_KEY: error_var} })
        else:
            new_variables_dic.update({ inner_key: {DELTA_METHOD_VARIABLE_KEY: delta_vars, DELTA_METHOD_BINARY_KEY: binary_vars} })
           

    def create_1d_relaxation_x_value_constraint(self, relaxation_info,  new_variables_dic, new_constraints_dic):
        number_segments = relaxation_info.triangulation.number_of_segments

        var = relaxation_info.var
        #subst_var = relaxation_info.subst_var
        vertices = relaxation_info.triangulation.vertices
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        delta_vars = new_variables_dic[inner_key][DELTA_METHOD_VARIABLE_KEY]

        x_value_constraint_id = create_x_value_constraint_id(outer_key, inner_key)
        variables = empty(number_segments + 1, dtype='object')
        variables[0] = var
        for i in range(1,number_segments+1):
            variables[i] = delta_vars[i]
        expression = Eq(var.sympy_symbol , vertices[0] + sum( (vertices[i] - vertices[i-1]) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) )
        x_value_constraint = LinearConstraint(x_value_constraint_id)
        x_value_constraint.build_linear_constraint_expression_direct(expression, variables)
        
        new_constraints_dic[inner_key].update( {DELTA_METHOD_X_RELAXATION_KEY: x_value_constraint} )


    def create_1d_relaxation_y_value_constraint(self, relaxation_info, new_variables_dic, new_constraints_dic):
        number_segments = relaxation_info.triangulation.number_of_segments

        #var = relaxation_info.var
        subst_var = relaxation_info.subst_var
        vertices = relaxation_info.triangulation.vertices
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        delta_vars = new_variables_dic[inner_key][DELTA_METHOD_VARIABLE_KEY]
        if DELTA_METHOD_ERROR_KEY in new_variables_dic[inner_key].keys():
            error_var = new_variables_dic[inner_key][DELTA_METHOD_ERROR_KEY]
        else:
            error_var = 0
         
        y_value_constraint_id = create_y_value_constraint_id(outer_key, inner_key)
        variables = empty(number_segments + 2, dtype='object')
        variables[0] = subst_var
        for i in range(1,number_segments+1):
            variables[i] = delta_vars[i]
        if DELTA_METHOD_ERROR_KEY in new_variables_dic[inner_key].keys():
            variables[number_segments+1] = error_var
        

        expression = create_1d_y_value_constraint_expression(relaxation_info.constr_type, subst_var, vertices, delta_vars, error_var)
        y_value_constraint = LinearConstraint(y_value_constraint_id)
        y_value_constraint.build_linear_constraint_expression_direct(expression, variables)

        new_constraints_dic[inner_key].update( {DELTA_METHOD_Y_RELAXATION_KEY : y_value_constraint} )


    def create_1d_relaxation_error_bound_constraints(self, relaxation_info, new_variables_dic, new_constraints_dic):
        number_segments = relaxation_info.triangulation.number_of_segments

        lower_error_on_segments = relaxation_info.lower_errors
        upper_error_on_segments = relaxation_info.upper_errors

        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        if DELTA_METHOD_ERROR_KEY in new_variables_dic.keys():
            error_var = new_variables_dic[inner_key][DELTA_METHOD_ERROR_KEY]
            binary_vars = new_variables_dic[inner_key][DELTA_METHOD_BINARY_KEY]
             
            error_bound_over_constraint_id = create_error_bound_over_constraint_id(outer_key, inner_key)
            error_bound_lower_constraint_id = create_error_bound_under_constraint_id(outer_key, inner_key)
            variables = empty(number_segments, dtype='object')
            variables[0] = error_var
            for i in range(1,number_segments):
                variables[i] = binary_vars[i]
            
            if max(upper_error_on_segments) > 0:        
                expression_upper = - upper_error_on_segments[0] - sum( binary_vars[i+1].sympy_symbol * (upper_error_on_segments[i+1] - upper_error_on_segments[i]) for i in range(number_segments-1) )
                expression_upper = expression_upper <= error_var.sympy_symbol
                error_bound_over_constraint = LinearConstraint(error_bound_over_constraint_id)
                error_bound_over_constraint.build_linear_constraint_expression_direct(expression_upper, variables)
                new_constraints_dic[inner_key].update( {DELTA_METHOD_ERROR_BOUND_OVER_KEY : error_bound_over_constraint} )
            if max(lower_error_on_segments) > 0:        
                expression_lower = lower_error_on_segments[0] + sum( binary_vars[i+1].sympy_symbol * (lower_error_on_segments[i+1] - lower_error_on_segments[i]) for i in range(number_segments-1) )
                expression_lower = expression_lower >= error_var.sympy_symbol
                error_bound_lower_constraint = LinearConstraint(error_bound_lower_constraint_id)
                error_bound_lower_constraint.build_linear_constraint_expression_direct(expression_lower, variables)
                new_constraints_dic[inner_key].update( {DELTA_METHOD_ERROR_BOUND_UNDER_KEY : error_bound_lower_constraint} )

        
    def create_1d_relaxation_filling_condition(self, relaxation_info, new_variables_dic, new_constraints_dic):   
        number_segments = relaxation_info.triangulation.number_of_segments

        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        delta_vars = new_variables_dic[inner_key][DELTA_METHOD_VARIABLE_KEY]
        binary_vars = new_variables_dic[inner_key][DELTA_METHOD_BINARY_KEY]
        
        filling_condition_under_id = create_filling_condition_under_id(outer_key, inner_key)
        filling_condition_upper_id = create_filling_condition_upper_id(outer_key, inner_key)

        for i in range(1,number_segments):
            variables = [binary_vars[i], delta_vars[i]]
            expression = binary_vars[i].sympy_symbol <= delta_vars[i].sympy_symbol
            filling_condition_under_constraint = LinearConstraint( filling_condition_under_id + '_' + str(i) )            
            filling_condition_under_constraint.build_linear_constraint_expression_direct(expression, variables)
            
            variables = [delta_vars[i+1], binary_vars[i]]
            expression = delta_vars[i+1].sympy_symbol <= binary_vars[i].sympy_symbol
            filling_condition_upper_constraint = LinearConstraint( filling_condition_upper_id + '_' + str(i) )            
            filling_condition_upper_constraint.build_linear_constraint_expression_direct(expression, variables)
            
            new_constraints_dic[inner_key].update( {(DELTA_METHOD_FILLING_CONDITION_UNDER_KEY, i) : filling_condition_under_constraint, (DELTA_METHOD_FILLING_CONDITION_UPPER_KEY, i) : filling_condition_upper_constraint} )


    def create_1d_domain_reduction(self, mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction):
        if constr_type == 'cos' or constr_type == 'quadratic':
            #function is symmetric
            self.create_1d_domain_reduction_positiv(mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction)
        elif constr_type == 'sin' or constr_type == 'tan':
            #function is negatvi-symmetric
            self.create_1d_domain_reduction_negativ(mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction)
            pass

    def create_1d_domain_reduction_positiv(self, mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction):
        #function is symmetric
        tri_id = create_triangulation_id(new_outer_key, inner_key)
        [abs_outer_key, abs_inner_key] = create_abs_key(new_outer_key, inner_key, constr_type)

        abs_var = Variable( 'subst_abs_'+str(abs_outer_key) + '_' + str(abs_inner_key), 'continuous', 0, max(abs(var.lower_bound),abs(var.upper_bound)) )
        mip_relaxation.update_variable_dic(abs_var, abs_outer_key, '', '', abs_inner_key)
        
        #tri_id = create_triangulation_id(new_outer_key, inner_key)
        tri = Triangulation1d(tri_id, [abs_var.lower_bound, abs_var.upper_bound], number_initial_segments)

        vertices = tri.vertices
        [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(constr_type, vertices)
        if max_error_for_relaxation > 0:
            while max(lower_error_on_segments) > float(max_error_for_relaxation) or max(upper_error_on_segments) > float(max_error_for_relaxation):
                segment_number = get_segment_with_max_error(lower_error_on_segments, upper_error_on_segments)

                tri.longest_edge_bisection(segment_number)
                vertices = tri.vertices
                [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(constr_type, vertices)
                
        relaxation_info = RelaxationInfo(new_outer_key, inner_key, tri, lower_error_on_segments, upper_error_on_segments, abs_var, subst_var, constr_type)
        
        reduction = min(abs(var.lower_bound),abs(var.upper_bound))
        print('DOMAIN REDUCED DUE TO SYMMETRY', relaxation_info.id, 'with', reduction,'(',100*reduction/(var.upper_bound-var.lower_bound),'%)')


        #create relaxation info for abs
        tri_id = create_triangulation_id(new_outer_key, abs_inner_key)
        tri = Triangulation1d(tri_id, [var.lower_bound, var.upper_bound], 1)

        tri.add_point(0)
        
        lower_error_on_segments = [0,0]
        upper_error_on_segments = [0,0]
        abs_relaxation_info = RelaxationInfo(new_outer_key, abs_inner_key, tri, lower_error_on_segments, upper_error_on_segments, var, abs_var, 'abs')
        
        relaxation_info_dic.update({ abs_inner_key : abs_relaxation_info})
        relaxation_info_dic.update({ inner_key : relaxation_info})
        
        
    def create_1d_domain_reduction_negativ(self, mip_relaxation, subst_var, var, constr_type, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction):
        #function is symmetric
        tri_id = create_triangulation_id(new_outer_key, inner_key)
        [abs_outer_key, abs_inner_key] = create_abs_key(new_outer_key, inner_key, constr_type)
        abs_var = Variable( 'subst_abs_'+str(abs_outer_key) + '_' + str(abs_inner_key), 'continuous', 0, max(abs(var.lower_bound),abs(var.upper_bound)) )
        mip_relaxation.update_variable_dic(abs_var, abs_outer_key, '', '', abs_inner_key)
        
        [subs_pos_outer_key, subs_pos_inner_key] = create_subs_pos_key( new_outer_key, inner_key, constr_type )
        [lb, ub] = find_1d_var_bounds(constr_type, abs_var.lower_bound, abs_var.upper_bound)
        subs_pos_var = Variable( 'subst_'+str(subs_pos_outer_key) + '_' + str(subs_pos_inner_key), 'continuous', lb, ub )
        mip_relaxation.update_variable_dic(subs_pos_var, subs_pos_outer_key,'', '', subs_pos_inner_key)
  
        [subs_neg_outer_key, subs_neg_inner_key] = create_subs_neg_key( new_outer_key, inner_key, constr_type )
        [lb, ub] = [0,subs_pos_var.upper_bound]
        subs_neg_var = Variable( 'subst_'+str(subs_neg_outer_key) + '_' + str(subs_neg_inner_key), 'continuous', lb, ub )
        mip_relaxation.update_variable_dic(subs_neg_var, subs_neg_outer_key,'', '', subs_neg_inner_key)                     
        
        tri = Triangulation1d(tri_id, [abs_var.lower_bound, abs_var.upper_bound], number_initial_segments)

        vertices = tri.vertices
        [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(constr_type, vertices)
        if max_error_for_relaxation > 0:
            while max(lower_error_on_segments) > float(max_error_for_relaxation) or max(upper_error_on_segments) > float(max_error_for_relaxation):
                segment_number = get_segment_with_max_error(lower_error_on_segments, upper_error_on_segments)
    
                tri.longest_edge_bisection(segment_number)
                vertices = tri.vertices
                [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_1d_segments(constr_type, vertices)
                
        relaxation_info = RelaxationInfo(new_outer_key, inner_key, tri, lower_error_on_segments, upper_error_on_segments, abs_var, subs_pos_var, constr_type)


        #create relaxation info for abs
        tri_id = create_triangulation_id(new_outer_key, abs_inner_key)
        tri = Triangulation1d(tri_id, [var.lower_bound, var.upper_bound], 1)
        
        tri.add_point(0)
        
        lower_error_on_segments = [0,0]
        upper_error_on_segments = [0,0]
        abs_relaxation_info = RelaxationInfo(new_outer_key, abs_inner_key, tri, lower_error_on_segments, upper_error_on_segments, var, abs_var, 'abs')
        
        relaxation_info_dic.update({ abs_inner_key : abs_relaxation_info})
        relaxation_info_dic.update({ inner_key : relaxation_info})
        
        

    def build_2d_relaxation(self, constraint, new_outer_key, inner_key, relaxation_info_dic, new_variables_dic, new_constraints_dic, mip_relaxation, outer_key, max_error_for_relaxation, number_initial_segments, use_mccormick, use_domain_reduction): 
        self.create_2d_relaxation_info(constraint, new_outer_key, inner_key, relaxation_info_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction)
        relaxation_info = relaxation_info_dic[inner_key]
        self.create_2d_relaxation_vars(relaxation_info, new_variables_dic)       
        new_constraints_dic.update( {inner_key : {}} ) 
        if use_mccormick == 1:
            self.create_mccormick_constraints(relaxation_info, new_constraints_dic)
        if relaxation_info.triangulation.number_of_segments > 1:
            self.create_2d_relaxation_x_value_constraints(relaxation_info, new_variables_dic, new_constraints_dic)
            self.create_2d_relaxation_y_value_constraint(relaxation_info, new_variables_dic, new_constraints_dic)
            self.create_2d_relaxation_error_bound_constraints(relaxation_info, new_variables_dic, new_constraints_dic)
            self.create_2d_relaxation_filling_conditions(relaxation_info, new_variables_dic, new_constraints_dic)   
            self.create_2d_relaxation_delta_upper_bound(relaxation_info, new_variables_dic, new_constraints_dic)


    def create_2d_relaxation_info(self, constraint, new_outer_key, inner_key, relaxation_info_dic, max_error_for_relaxation, number_initial_segments, use_domain_reduction):
        [subst_var, var1, var2] = constraint.involved_vars
        tri_id = create_triangulation_id(new_outer_key, inner_key)
        tri = Triangulation2d(tri_id, [var1.lower_bound, var1.upper_bound], [var2.lower_bound, var2.upper_bound], number_initial_segments )
        vertices = tri.vertices
        [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_2d_segments(constraint.type, vertices)

        if max_error_for_relaxation > 0:
            while max(lower_error_on_segments) > float(max_error_for_relaxation) or max(upper_error_on_segments) > float(max_error_for_relaxation):
                segment_number = get_segment_with_max_error(lower_error_on_segments, upper_error_on_segments)
                tri.longest_edge_bisection(segment_number)
                vertices = tri.vertices
                [lower_error_on_segments, upper_error_on_segments] = compute_error_on_all_2d_segments(constraint.type, vertices)

        relaxation_info = RelaxationInfo(new_outer_key, inner_key, tri, lower_error_on_segments, upper_error_on_segments, [var1,var2], subst_var, constraint.type)

        flag_reduction = relaxation_info.test_if_domain_reduction_would_reduce_binaries()
        #if flag_reduction == 1 and use_domain_reduction == 1:
            #pass

        relaxation_info_dic.update({ inner_key : relaxation_info})              
        
        
    def create_2d_relaxation_vars(self, relaxation_info, new_variables_dic):        
        number_segments = relaxation_info.triangulation.number_of_segments
        upper_error_on_segments = relaxation_info.upper_errors
        lower_error_on_segments = relaxation_info.lower_errors
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        
        delta_vars = {}
        if number_segments > 1:
            for i in range(1, number_segments+1): 
                new_delta1_id = create_delta_2d_id( outer_key, inner_key, i, 1)
                new_delta1 = Variable(new_delta1_id, 'continuous', 0, 1)
                new_delta2_id = create_delta_2d_id( outer_key, inner_key, i, 2)
                new_delta2 = Variable(new_delta2_id, 'continuous', 0, 2)
                delta_vars.update({ (i,1) : new_delta1, (i,2) : new_delta2})

        error_id = create_error_id(outer_key, inner_key)
        error_var = Variable(error_id, 'continuous', -max(upper_error_on_segments), max(lower_error_on_segments))
        
        binary_vars = {}
        for i in range(1, number_segments):   
            new_binary_id = create_binaray_id( outer_key, inner_key, i)
            new_binary = Variable(new_binary_id, 'binary')
            binary_vars.update( {i : new_binary} )
            
        new_variables_dic.update({ inner_key: {DELTA_METHOD_VARIABLE_KEY: delta_vars, DELTA_METHOD_BINARY_KEY: binary_vars, DELTA_METHOD_ERROR_KEY: error_var} })


    def create_2d_relaxation_x_value_constraints(self, relaxation_info,  new_variables_dic, new_constraints_dic):
        number_segments = relaxation_info.triangulation.number_of_segments


        var1 = relaxation_info.var[0]
        var2 = relaxation_info.var[1]
    
        vertices = relaxation_info.triangulation.vertices
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        delta_vars = new_variables_dic[inner_key][DELTA_METHOD_VARIABLE_KEY]

        x1_value_constraint_id = create_x1_value_constraint_id(outer_key, inner_key)
        x2_value_constraint_id = create_x2_value_constraint_id(outer_key, inner_key)
       
        variables1 = empty(2*number_segments + 1, dtype='object')
        variables1[0] = var1
        #import time
        #start_time = time.time()
        for i in range(1,number_segments+1):
            variables1[2*i-1] =  delta_vars[i,1]
            variables1[2*i] = delta_vars[i,2]

        expression = Eq(var1.sympy_symbol, vertices[0][0][0]
                        + Add(*tuple(Add(*tuple((vertices[i-1][key[1]][0] - vertices[i-1][0][0]) * value.sympy_symbol
                                              for (key,value) in delta_vars.items() if key[0]==i))
                                    for i in range(1,number_segments+1))) )

        x1_value_constraint = LinearConstraint(x1_value_constraint_id)
        x1_value_constraint.build_linear_constraint_expression_direct(expression, variables1)
        
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
 
        x2_value_constraint = LinearConstraint(x2_value_constraint_id)
        x2_value_constraint.build_linear_constraint_expression_direct(expression, variables2)        
        
        new_constraints_dic[inner_key].update( {DELTA_METHOD_X1_RELAXATION_KEY: x1_value_constraint} )
        new_constraints_dic[inner_key].update( {DELTA_METHOD_X2_RELAXATION_KEY: x2_value_constraint} )        


    def create_2d_relaxation_y_value_constraint(self, relaxation_info, new_variables_dic, new_constraints_dic):
        number_segments = relaxation_info.triangulation.number_of_segments

        subst_var = relaxation_info.subst_var
        vertices = relaxation_info.triangulation.vertices
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        delta_vars = new_variables_dic[inner_key][DELTA_METHOD_VARIABLE_KEY]
        error_var = new_variables_dic[inner_key][DELTA_METHOD_ERROR_KEY]
         
        y_value_constraint_id = create_y_value_constraint_id(outer_key, inner_key)
        variables = empty(2*number_segments + 2, dtype='object')
        variables[0] = subst_var
        for i in range(1,number_segments+1):
            variables[2*i-1] = delta_vars[i,1]
            variables[2*i] = delta_vars[i,2]
        variables[2*number_segments+1] = error_var
        expression = create_2d_y_value_constraint_expression(relaxation_info.constr_type, subst_var, vertices, delta_vars, error_var)
        y_value_constraint = LinearConstraint(y_value_constraint_id)
        y_value_constraint.build_linear_constraint_expression_direct(expression, variables)

        new_constraints_dic[inner_key].update( {DELTA_METHOD_Y_RELAXATION_KEY : y_value_constraint} )


    def create_2d_relaxation_error_bound_constraints(self, relaxation_info, new_variables_dic, new_constraints_dic):
        number_segments = relaxation_info.triangulation.number_of_segments

        lower_error_on_segments = relaxation_info.lower_errors
        upper_error_on_segments = relaxation_info.upper_errors

        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        error_var = new_variables_dic[inner_key][DELTA_METHOD_ERROR_KEY]
        binary_vars = new_variables_dic[inner_key][DELTA_METHOD_BINARY_KEY]
         
        error_bound_over_constraint_id = create_error_bound_over_constraint_id(outer_key, inner_key)
        error_bound_lower_constraint_id = create_error_bound_under_constraint_id(outer_key, inner_key)
        variables = empty(number_segments, dtype='object')
        variables[0] = error_var
        for i in range(1,number_segments):
            variables[i] = binary_vars[i]
        
        if max(upper_error_on_segments) > 0:


            expression_upper = - upper_error_on_segments[0] - \
                               Add(*tuple((value.sympy_symbol * (upper_error_on_segments[key] - upper_error_on_segments[key-1])
                                           for (key, value) in binary_vars.items())))


            expression_upper = expression_upper <= error_var.sympy_symbol
            error_bound_over_constraint = LinearConstraint(error_bound_over_constraint_id)
            error_bound_over_constraint.build_linear_constraint_expression_direct(expression_upper, variables)
            new_constraints_dic[inner_key].update( {DELTA_METHOD_ERROR_BOUND_OVER_KEY : error_bound_over_constraint} )
        if max(lower_error_on_segments) > 0:        
            expression_lower = lower_error_on_segments[0] + \
                               Add(*tuple((value.sympy_symbol * (lower_error_on_segments[key] - lower_error_on_segments[key-1])
                                           for (key, value) in binary_vars.items())))


            expression_lower = expression_lower >= error_var.sympy_symbol
            error_bound_lower_constraint = LinearConstraint(error_bound_lower_constraint_id)
            error_bound_lower_constraint.build_linear_constraint_expression_direct(expression_lower, variables)
            new_constraints_dic[inner_key].update( {DELTA_METHOD_ERROR_BOUND_UNDER_KEY : error_bound_lower_constraint} )

        
    def create_2d_relaxation_filling_conditions(self, relaxation_info, new_variables_dic, new_constraints_dic):   
        number_segments = relaxation_info.triangulation.number_of_segments

        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        delta_vars = new_variables_dic[inner_key][DELTA_METHOD_VARIABLE_KEY]
        binary_vars = new_variables_dic[inner_key][DELTA_METHOD_BINARY_KEY]
        
        filling_condition_under_id = create_filling_condition_under_id(outer_key, inner_key)
        filling_condition_upper_id = create_filling_condition_upper_id(outer_key, inner_key)

        for i in range(1,number_segments):
            variables = [binary_vars[i], delta_vars[i,2]]
            expression = binary_vars[i].sympy_symbol <= delta_vars[i,2].sympy_symbol
            filling_condition_under_constraint = LinearConstraint( filling_condition_under_id + '_' + str(i) )            
            filling_condition_under_constraint.build_linear_constraint_expression_direct(expression, variables)
            
            variables = [delta_vars[i+1,1], delta_vars[i+1,2], binary_vars[i]]
            expression = delta_vars[i+1,1].sympy_symbol + delta_vars[i+1,2].sympy_symbol  <= binary_vars[i].sympy_symbol
            filling_condition_upper_constraint = LinearConstraint( filling_condition_upper_id + '_' + str(i) )            
            filling_condition_upper_constraint.build_linear_constraint_expression_direct(expression, variables)
            
            new_constraints_dic[inner_key].update( {(DELTA_METHOD_FILLING_CONDITION_UNDER_KEY, i) : filling_condition_under_constraint, (DELTA_METHOD_FILLING_CONDITION_UPPER_KEY, i) : filling_condition_upper_constraint} )


    def create_2d_relaxation_delta_upper_bound(self, relaxation_info, new_variables_dic, new_constraints_dic):  
        number_segments = relaxation_info.triangulation.number_of_segments
        
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        delta_vars = new_variables_dic[inner_key][DELTA_METHOD_VARIABLE_KEY]
        
        relaxation_delta_upper_id = create_relaxation_delta_upper_id(outer_key, inner_key)

        for i in range(1,number_segments+1):
            variables = [delta_vars[i,1], delta_vars[i,2]]
            expression = delta_vars[i,1].sympy_symbol + delta_vars[i,2].sympy_symbol <= 1
            delta_upper_bound = LinearConstraint( relaxation_delta_upper_id + '_' + str(i) )            
            delta_upper_bound.build_linear_constraint_expression_direct(expression, variables)
            
            new_constraints_dic[inner_key].update( {(DELTA_METHOD_DELTA_UPPER_BOUND_KEY, i) : delta_upper_bound} )



    def build_and_add_big_m_reformulation_to_mip(self, constraint, outer_key, inner_key, mip):
        subst_var =  constraint.involved_vars[0]
        
        if constraint.involved_vars[1].variable_type == 'binary':
            binary_var = constraint.involved_vars[1]
            conti_var = constraint.involved_vars[2]
        else:
            binary_var = constraint.involved_vars[2]
            conti_var = constraint.involved_vars[1]
            
        
        big_m_id = create_big_m_id(constraint, 1)
        big_m_constr = LinearConstraint(big_m_id)
        variables = [binary_var, subst_var]
        coeffs = [conti_var.lower_bound, -1]
        big_m_constr.build_linear_constraint_expression(variables, coeffs, 0, '<=')
        new_inner_key = (inner_key[0], inner_key[1], str(inner_key[2]) + '_big_m_1')
        mip.update_constraint_dic(big_m_constr, outer_key, '' , new_inner_key )        
        
        big_m_id = create_big_m_id(constraint, 2)
        big_m_constr = LinearConstraint(big_m_id)
        variables = [binary_var, subst_var]
        coeffs = [-conti_var.upper_bound, 1]
        big_m_constr.build_linear_constraint_expression(variables, coeffs, 0, '<=')
        new_inner_key = (inner_key[0], inner_key[1], str(inner_key[2]) + '_big_m_2')
        mip.update_constraint_dic(big_m_constr, outer_key, '' , new_inner_key ) 
        
        big_m_id = create_big_m_id(constraint, 3)
        big_m_constr = LinearConstraint(big_m_id)
        variables = [binary_var, subst_var, conti_var]
        coeffs = [conti_var.upper_bound, -1, 1]
        big_m_constr.build_linear_constraint_expression(variables, coeffs, conti_var.upper_bound, '<=')
        new_inner_key = (inner_key[0], inner_key[1], str(inner_key[2]) + '_big_m_3')
        mip.update_constraint_dic(big_m_constr, outer_key, '' , new_inner_key ) 

        big_m_id = create_big_m_id(constraint, 4)
        big_m_constr = LinearConstraint(big_m_id)
        variables = [binary_var, subst_var, conti_var]
        coeffs = [-conti_var.lower_bound, 1, -1]
        big_m_constr.build_linear_constraint_expression(variables, coeffs, -conti_var.lower_bound, '<=')
        new_inner_key = (inner_key[0], inner_key[1], str(inner_key[2]) + '_big_m_4')
        mip.update_constraint_dic(big_m_constr, outer_key, '' , new_inner_key ) 



    def build_nonconvex_qp_constraints(self, mip_relaxation, minlp_reformulation, use_univariate):
        if use_univariate == 0:
            self.build_nonconvex_socp_constraints(mip_relaxation, minlp_reformulation)
            self.build_bilinear_nonconvex_constraints(mip_relaxation, minlp_reformulation)
        else:
            self.build_quadratic_nonconvex_constraints(mip_relaxation, minlp_reformulation)
        if 'objective_substitution' in minlp_reformulation.variables.keys():
            self.build_objective_nonconvex_constraints(mip_relaxation, minlp_reformulation)


    def build_quadratic_nonconvex_constraints(self, mip_relaxation, minlp_reformulation):
        
        new_constraint_dic = {}
        
        for inner_key in  minlp_reformulation.constraints['conic_quadratic_substitution'].keys():
            constr = minlp_reformulation.constraints['conic_quadratic_substitution'][inner_key]
            if constr.type == 'quadratic':
                variables = constr.involved_vars
                expression = constr.expression
                
                new_constraint = NonlinearConstraint( 'conic_quadratic_nonconvex_' + str(inner_key) )
                new_constraint.set_type( 'quadratic_nonconvex' )           
                
                new_constraint.build_nonlinear_constraint_expression(expression, variables)
                new_constraint_dic.update({ inner_key : new_constraint})
        mip_relaxation.add_constraint( { 'conic_quadratic_nonconvex' : new_constraint_dic })  
        
        new_constraint_dic = {}
        
        for inner_key in  minlp_reformulation.constraints['trigonometric_substitution'].keys():
            constr = minlp_reformulation.constraints['trigonometric_substitution'][inner_key]
            if constr.type == 'quadratic':
                variables = constr.involved_vars
                expression = constr.expression
                
                new_constraint = NonlinearConstraint( 'trigonometric_nonconvex_' + str(inner_key) )
                new_constraint.set_type( 'quadratic_nonconvex' )           
                
                new_constraint.build_nonlinear_constraint_expression(expression, variables)
                new_constraint_dic.update({ inner_key : new_constraint})
        mip_relaxation.add_constraint( { 'trigonometric_nonconvex' : new_constraint_dic })          
        


    def build_bilinear_nonconvex_constraints(self, mip_relaxation, minlp_reformulation):

        new_constraint_dic = {}

        
        for inner_key in  minlp_reformulation.constraints['trigonometric_substitution'].keys():
            constr = minlp_reformulation.constraints['trigonometric_substitution'][inner_key]
            if constr.type == 'bilinear':
                variables = constr.involved_vars
                expression = constr.expression
                
                new_constraint = NonlinearConstraint( 'trigonometric_quadratic_nonconvex_' + str(inner_key) )
                new_constraint.set_type( 'bilinear_nonconvex' )           
                
                new_constraint.build_nonlinear_constraint_expression(expression, variables)
                new_constraint_dic.update({ inner_key : new_constraint})
        mip_relaxation.add_constraint( { 'trigonometric_nonconvex' : new_constraint_dic })  


    def build_objective_nonconvex_constraints(self, mip_relaxation, minlp_reformulation):
        new_constraint_dic = {}
        
        for inner_key in  minlp_reformulation.constraints['objective_substitution'].keys():
            constr = minlp_reformulation.constraints['objective_substitution'][inner_key]
            if constr.type == 'quadratic':
                variables = constr.involved_vars
                expression = constr.expression
                
                new_constraint = NonlinearConstraint( 'objective_nonconvex_' + str(inner_key) )
                new_constraint.set_type( 'quadratic_nonconvex' )           
                
                new_constraint.build_nonlinear_constraint_expression(expression, variables)
                new_constraint_dic.update({ inner_key : new_constraint})
        mip_relaxation.add_constraint( { 'objective_nonconvex' : new_constraint_dic })  


    def build_nonconvex_socp_constraints(self, mip_relaxation, minlp_reformulation):
        new_constraint_dic = {}
        number_of_constr = len(minlp_reformulation.constraints['conic_quadratic_reformulated'].keys())
        number = 1
        for inner_key in  minlp_reformulation.constraints['conic_quadratic_reformulated'].keys():
            variables = []
            expression = 0
            left_expression = 0
            right_expression = 0
            if number <= number_of_constr:
                
                number = number + 1
                
                new_constraint = NonlinearConstraint( CONIC_QUADRATIC_CONSTRAINT_NAME + '_socp_nonconvex_' + str(inner_key) )
                new_constraint.set_type( 'socp_nonconvex' )
                for key in minlp_reformulation.constraints['conic_quadratic_substitution'].keys():
                    if inner_key[0] == key[0] and inner_key[1] == key[1]:
                        constr = minlp_reformulation.constraints['conic_quadratic_substitution'][key]
                        if len(str(key[2]).split('quadratic')) > 1:
                            variables.append(constr.involved_vars[1])
                            left_expression = left_expression + constr.involved_vars[1].sympy_symbol**2
                        if len(str(key[2]).split('bilinear')) > 1:
                            variables.append(constr.involved_vars[1])
                            variables.append(constr.involved_vars[2])
                            
                            right_expression = right_expression + constr.involved_vars[1].sympy_symbol* constr.involved_vars[2].sympy_symbol 
                expression = Eq(left_expression , right_expression)
                
                
                new_constraint.build_nonlinear_constraint_expression(expression, variables)
                new_constraint_dic.update({ inner_key : new_constraint})
        mip_relaxation.add_constraint( { 'socp_nonconvex' : new_constraint_dic })  




    def build_socp_constraints(self, mip_relaxation, minlp_reformulation, use_univariate):
        new_constraint_dic = {}
        number_of_constr = len(minlp_reformulation.constraints['conic_quadratic_reformulated'].keys())
        number = 1
        for inner_key in  minlp_reformulation.constraints['conic_quadratic_reformulated'].keys():
            variables = []
            expression = 0
            left_expression = 0
            right_expression = 0
            if number <= number_of_constr:
                
                number = number + 1
                
                new_constraint = NonlinearConstraint( CONIC_QUADRATIC_CONSTRAINT_NAME + '_socp_' + str(inner_key) )
                new_constraint.set_type( 'socp' )
                
                if 'transmission_switch' in mip_relaxation.variables.keys():
          
                    voltage_product_imaginary = mip_relaxation.variables['voltage_product_imaginary'][inner_key]
                    voltage_product_real = mip_relaxation.variables['voltage_product_real'][inner_key]

                    voltage_square1 = mip_relaxation.variables['switched_voltage_square'][inner_key]
                    if len(inner_key) == 3:
                        voltage_square2 = mip_relaxation.variables['switched_voltage_square'][inner_key[1],inner_key[0],inner_key[2]]
                    elif len(inner_key) ==2:
                        voltage_square2 = mip_relaxation.variables['switched_voltage_square'][inner_key[1],inner_key[0]]
                    
                    variables = [voltage_product_imaginary, voltage_product_real, voltage_square1, voltage_square2]
                    expression = variables[0].sympy_symbol**2 + variables[1].sympy_symbol**2 <=  variables[2].sympy_symbol*variables[3].sympy_symbol
                    
                            
                else:
                    
   
                    voltage_product_imaginary = mip_relaxation.variables['voltage_product_imaginary'][inner_key]
                    voltage_product_real = mip_relaxation.variables['voltage_product_real'][inner_key]

                    voltage_square1 = mip_relaxation.variables['voltage_square'][inner_key[0]]
                    voltage_square2 = mip_relaxation.variables['voltage_square'][inner_key[1]]
                    
                    variables = [voltage_product_imaginary, voltage_product_real, voltage_square1, voltage_square2]
                    expression = variables[0].sympy_symbol**2 + variables[1].sympy_symbol**2 <=  variables[2].sympy_symbol*variables[3].sympy_symbol
                    

                new_constraint.build_nonlinear_constraint_expression(expression, variables)
                new_constraint_dic.update({ inner_key : new_constraint})
        mip_relaxation.add_constraint( { 'socp' : new_constraint_dic })  



    def build_outer_approx(self, mip_relaxation, minlp_reformulation, number_outer_approx, new_dic):
        
        for inner_key in  minlp_reformulation.constraints[THERMAL_LIMIT_CONSTRAINT_NAME].keys():
            variables = minlp_reformulation.constraints[THERMAL_LIMIT_CONSTRAINT_NAME][inner_key].involved_vars
            limit = minlp_reformulation.constraints[THERMAL_LIMIT_CONSTRAINT_NAME][inner_key].expression.args[1]
            
            max1 = max(abs(variables[0].lower_bound), abs(variables[0].upper_bound))
            max2 = max(abs(variables[1].lower_bound), abs(variables[1].upper_bound))
            if max1**2 + max2**2 > limit:    #thermal limits are not redundant
                number = 1
                for i in range(0, int(number_outer_approx)):
                    
                    angle = 0 + i*(2*pi)/number_outer_approx
                    if angle%(2*pi/4) != 0:
                        normal = [mcos(angle),msin(angle)]
                     
                        point_on_circle = [normal[0]*sqrt(limit),normal[1]*sqrt(limit)]
                        
                        if variables[0].lower_bound <= point_on_circle[0] and point_on_circle[0] <= variables[0].upper_bound and variables[1].lower_bound <= point_on_circle[1] and point_on_circle[1] <= variables[1].upper_bound:
                            
                            expression = normal[0]*variables[0].sympy_symbol + normal[1]*variables[1].sympy_symbol <= normal[0]*point_on_circle[0] + normal[1]*point_on_circle[1]
                        
            
                            string = THERMAL_LIMIT_APPROXIMATION_NAME + '_' + str(inner_key[0]) + '_' + str(inner_key[1]) + '_' + str(number)
                            new_constraint = LinearConstraint(string)
                            
                            new_constraint.build_linear_constraint_expression_direct(expression, variables)
                            
                            new_dic.update( {((inner_key[0]),(inner_key[1]),number) : new_constraint} )
                            number = number +1                 


    def build_mccormick_for_univariate_conic_quadratic(self, mip_relaxation, minlp_reformulation):
        if 'transmission_switch' in mip_relaxation.variables.keys():
            outer_key = 'conic_quadratic_relaxation'
            for inner_key in minlp_reformulation.constraints['conic_quadratic_reformulated'].keys():
                if len(str(inner_key[-1]).split('sum'))  == 1:
                    mccormick_id1 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick1' 
                    mccormick_id2 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick2' 
                    mccormick_id3 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick3' 
                    mccormick_id4 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick4' 
                    
                    mccormick_constr1 = LinearConstraint( mccormick_id1 )
                    mccormick_constr2 = LinearConstraint( mccormick_id2 )
                    mccormick_constr3 = LinearConstraint( mccormick_id3 )
                    mccormick_constr4 = LinearConstraint( mccormick_id4 )
                    
                    constr = minlp_reformulation.constraints['conic_quadratic_reformulated'][inner_key]
                    
                    var1_square = constr.involved_vars[2]
                    var2_square = constr.involved_vars[3]
                    voltage_squares_sum_square = constr.involved_vars[4]
                    var1 = mip_relaxation.variables['switched_voltage_square'][inner_key]
                    if len(inner_key) == 3:
                        var2 = mip_relaxation.variables['switched_voltage_square'][inner_key[1],inner_key[0],inner_key[2]]
                    elif len(inner_key) ==2:
                        var2 = mip_relaxation.variables['switched_voltage_square'][inner_key[1],inner_key[0]]

                    
                    
                    variables = [var1_square, var2_square, voltage_squares_sum_square, var1, var2]
                    left_expression = 0.5* ( voltage_squares_sum_square.sympy_symbol - var1_square.sympy_symbol - var2_square.sympy_symbol )
        
                    lb1 = var1.lower_bound
                    ub1 = var1.upper_bound
                    lb2 = var2.lower_bound
                    ub2 = var2.upper_bound

                    
                    expression1 = left_expression >= lb2*var1.sympy_symbol + lb1*var2.sympy_symbol - lb1*lb2
                    expression2 = left_expression >= ub2*var1.sympy_symbol + ub1*var2.sympy_symbol - ub1*ub2
                    expression3 = left_expression <= lb2*var1.sympy_symbol + ub1*var2.sympy_symbol - ub1*lb2
                    expression4 = left_expression <= ub2*var1.sympy_symbol + lb1*var2.sympy_symbol - lb1*ub2
                    
                    mccormick_constr1.build_linear_constraint_expression_direct(expression1, variables)
                    mccormick_constr2.build_linear_constraint_expression_direct(expression2, variables)
                    mccormick_constr3.build_linear_constraint_expression_direct(expression3, variables)
                    mccormick_constr4.build_linear_constraint_expression_direct(expression4, variables)
                    
                    
                    mip_relaxation.update_constraint_dic(mccormick_constr1, 'conic_quadratic_relaxation', inner_key, 'mccormick1' )
                    mip_relaxation.update_constraint_dic(mccormick_constr2, 'conic_quadratic_relaxation', inner_key, 'mccormick2' )
                    mip_relaxation.update_constraint_dic(mccormick_constr3, 'conic_quadratic_relaxation', inner_key, 'mccormick3' )
                    mip_relaxation.update_constraint_dic(mccormick_constr4, 'conic_quadratic_relaxation', inner_key, 'mccormick4' )

        else:
            outer_key = 'conic_quadratic_relaxation'
            for inner_key in minlp_reformulation.constraints['conic_quadratic_reformulated'].keys():
                if len(str(inner_key[-1]).split('sum'))  == 1:
                    mccormick_id1 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick1' 
                    mccormick_id2 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick2' 
                    mccormick_id3 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick3' 
                    mccormick_id4 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick4' 
                    
                    mccormick_constr1 = LinearConstraint( mccormick_id1 )
                    mccormick_constr2 = LinearConstraint( mccormick_id2 )
                    mccormick_constr3 = LinearConstraint( mccormick_id3 )
                    mccormick_constr4 = LinearConstraint( mccormick_id4 )
                    
                    constr = minlp_reformulation.constraints['conic_quadratic_reformulated'][inner_key]
                    
                    var1_square = constr.involved_vars[2]
                    var2_square = constr.involved_vars[3]
                    voltage_squares_sum_square = constr.involved_vars[4]
                    var1 = mip_relaxation.variables['voltage_square'][inner_key[0]]
                    var2 = mip_relaxation.variables['voltage_square'][inner_key[1]]
                    
                    variables = [var1_square, var2_square, voltage_squares_sum_square, var1, var2]
                    left_expression = 0.5* ( voltage_squares_sum_square.sympy_symbol - var1_square.sympy_symbol - var2_square.sympy_symbol )
        
                    lb1 = var1.lower_bound
                    ub1 = var1.upper_bound
                    lb2 = var2.lower_bound
                    ub2 = var2.upper_bound

                    
                    expression1 = left_expression >= lb2*var1.sympy_symbol + lb1*var2.sympy_symbol - lb1*lb2
                    expression2 = left_expression >= ub2*var1.sympy_symbol + ub1*var2.sympy_symbol - ub1*ub2
                    expression3 = left_expression <= lb2*var1.sympy_symbol + ub1*var2.sympy_symbol - ub1*lb2
                    expression4 = left_expression <= ub2*var1.sympy_symbol + lb1*var2.sympy_symbol - lb1*ub2
                    
                    mccormick_constr1.build_linear_constraint_expression_direct(expression1, variables)
                    mccormick_constr2.build_linear_constraint_expression_direct(expression2, variables)
                    mccormick_constr3.build_linear_constraint_expression_direct(expression3, variables)
                    mccormick_constr4.build_linear_constraint_expression_direct(expression4, variables)
                    
                    
                    mip_relaxation.update_constraint_dic(mccormick_constr1, 'conic_quadratic_relaxation', inner_key, 'mccormick1' )
                    mip_relaxation.update_constraint_dic(mccormick_constr2, 'conic_quadratic_relaxation', inner_key, 'mccormick2' )
                    mip_relaxation.update_constraint_dic(mccormick_constr3, 'conic_quadratic_relaxation', inner_key, 'mccormick3' )
                    mip_relaxation.update_constraint_dic(mccormick_constr4, 'conic_quadratic_relaxation', inner_key, 'mccormick4' )

    def build_mccormick_for_univariate_trigonometric(self, mip_relaxation, minlp_reformulation):
        
        outer_key = 'trigonometric_relaxation'
        for inner_key in minlp_reformulation.constraints['trigonometric_reformulated'].keys():
            
            mccormick_id1 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick1' 
            mccormick_id2 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick2' 
            mccormick_id3 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick3' 
            mccormick_id4 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick4' 
            
            mccormick_constr1 = LinearConstraint( mccormick_id1 )
            mccormick_constr2 = LinearConstraint( mccormick_id2 )
            mccormick_constr3 = LinearConstraint( mccormick_id3 )
            mccormick_constr4 = LinearConstraint( mccormick_id4 )
            
            constr = minlp_reformulation.constraints['trigonometric_reformulated'][inner_key]
            if len( str(constr.expression).split('subst_tan_variable') ) > 1:

                var1 = mip_relaxation.variables['voltage_product_real'][inner_key]
                if len(inner_key) == 3:
                    var2 = mip_relaxation['tan_subst'][inner_key[0],inner_key[1]]                    
                else:
                    var2 = mip_relaxation.variables['tan_subst'][inner_key]
                
                tan_univariate_square = constr.involved_vars[1]
                voltage_product_real_tan_sum_square = constr.involved_vars[0]
                voltage_product_real_square = constr.involved_vars[2]
                
                variables = [voltage_product_real_tan_sum_square, voltage_product_real_square, tan_univariate_square, var1, var2]
                left_expression = 0.5* ( variables[0].sympy_symbol - variables[1].sympy_symbol - variables[2].sympy_symbol )
    
                lb1 = var1.lower_bound
                ub1 = var1.upper_bound
                lb2 = var2.lower_bound
                ub2 = var2.upper_bound

                
                expression1 = left_expression >= lb2*var1.sympy_symbol + lb1*(-var2.sympy_symbol) - lb1*lb2
                expression2 = left_expression >= ub2*var1.sympy_symbol + ub1*(-var2.sympy_symbol) - ub1*ub2
                expression3 = left_expression <= lb2*var1.sympy_symbol + ub1*(-var2.sympy_symbol) - ub1*lb2
                expression4 = left_expression <= ub2*var1.sympy_symbol + lb1*(-var2.sympy_symbol) - lb1*ub2
                
                mccormick_constr1.build_linear_constraint_expression_direct(expression1, variables)
                mccormick_constr2.build_linear_constraint_expression_direct(expression2, variables)
                mccormick_constr3.build_linear_constraint_expression_direct(expression3, variables)
                mccormick_constr4.build_linear_constraint_expression_direct(expression4, variables)
                
            
                mip_relaxation.update_constraint_dic(mccormick_constr1, 'trigonometric_relaxation', inner_key, 'mccormick1' )
                mip_relaxation.update_constraint_dic(mccormick_constr2, 'trigonometric_relaxation', inner_key, 'mccormick2' )
                mip_relaxation.update_constraint_dic(mccormick_constr3, 'trigonometric_relaxation', inner_key, 'mccormick3' )
                mip_relaxation.update_constraint_dic(mccormick_constr4, 'trigonometric_relaxation', inner_key, 'mccormick4' )


    def create_mccormick_constraints(self, relaxation_info, new_constraints_dic):
        outer_key = relaxation_info.outer_key
        inner_key = relaxation_info.inner_key
        
        mccormick_id1 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick1' 
        mccormick_id2 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick2' 
        mccormick_id3 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick3' 
        mccormick_id4 = str(outer_key) + '_' + str(inner_key) + '_' + 'mccormick4' 
        
        mccormick_constr1 = LinearConstraint( mccormick_id1 )
        mccormick_constr2 = LinearConstraint( mccormick_id2 )
        mccormick_constr3 = LinearConstraint( mccormick_id3 )
        mccormick_constr4 = LinearConstraint( mccormick_id4 )
        
        var1 = relaxation_info.var[0]
        var2 = relaxation_info.var[1]
        lb1 = var1.lower_bound
        ub1 = var1.upper_bound
        lb2 = var2.lower_bound
        ub2 = var2.upper_bound
        subst_var = relaxation_info.subst_var
        
        variables = [subst_var, var1, var2]
        
        expression1 = subst_var.sympy_symbol >= lb2*var1.sympy_symbol + lb1*var2.sympy_symbol - lb1*lb2
        expression2 = subst_var.sympy_symbol >= ub2*var1.sympy_symbol + ub1*var2.sympy_symbol - ub1*ub2
        expression3 = subst_var.sympy_symbol <= lb2*var1.sympy_symbol + ub1*var2.sympy_symbol - ub1*lb2
        expression4 = subst_var.sympy_symbol <= ub2*var1.sympy_symbol + lb1*var2.sympy_symbol - lb1*ub2
        
        mccormick_constr1.build_linear_constraint_expression_direct(expression1, variables)
        mccormick_constr2.build_linear_constraint_expression_direct(expression2, variables)
        mccormick_constr3.build_linear_constraint_expression_direct(expression3, variables)
        mccormick_constr4.build_linear_constraint_expression_direct(expression4, variables)
        
        
        new_constraints_dic[inner_key].update({ 'mccormick1' : mccormick_constr1})
        new_constraints_dic[inner_key].update({ 'mccormick2' : mccormick_constr2})
        new_constraints_dic[inner_key].update({ 'mccormick3' : mccormick_constr3})
        new_constraints_dic[inner_key].update({ 'mccormick4' : mccormick_constr4})
        
        
        

######################################
# FUNCTIONS                          #
######################################


def create_relaxation_id_from_reformulation(minlp_reformulation):
        new_id = minlp_reformulation.id.replace(REFORMULATION_SUFFIX, '') + RELAXATION_SUFFIX
        new_id = new_id.replace(MINLP_ID_PREFIX , '')
        return new_id

def create_relaxation_dic_key( outer_key ):
    string_part = str(outer_key).split('_')
    new_outer_key = str(string_part[0])
    for i in range(1,len(string_part)-1):
        new_outer_key = new_outer_key + '_' + string_part[i]
    new_outer_key = new_outer_key + '_' + RELAXATION_SUFFIX
    return new_outer_key

def create_cuts_dic_key(outer_key):
    string_part = str(outer_key).split('_')
    new_outer_key = str(string_part[0])
    for i in range(1,len(string_part)-1):
        new_outer_key = new_outer_key + '_' + string_part[i]
    new_outer_key = new_outer_key + '_' + CUT_SUFFIX
    return new_outer_key

def create_triangulation_id(outer_key, inner_key):
    return str(outer_key) + '_' + str(inner_key)

def create_delta_1d_id( outer_key, inner_key, i):
    return str(outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_VARIABLE_KEY + '_' + str(i)

def create_delta_2d_id( outer_key, inner_key, i, j):
    return str(outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_VARIABLE_KEY + '_' + str(i) + '_' + str(j)

def create_error_id(outer_key, inner_key): 
    return str(outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_ERROR_KEY

def compute_error_on_all_1d_segments(constr_type, vertices):
    number_segments = len(vertices)-1
    lower_error_array = empty(number_segments)
    upper_error_array = empty(number_segments)    
    for i in range(number_segments):
        [lower_error_array[i], upper_error_array[i]] = compute_error_on_one_1d_segment(constr_type, vertices[i], vertices[i+1])        
    return [lower_error_array, upper_error_array] 

def compute_error_on_all_2d_segments(constr_type, vertices):
    number_segments = len(vertices)
    lower_error_array = empty(number_segments)
    upper_error_array = empty(number_segments)    
    if number_segments == 1:
        return [[inf], [inf]]
    else:
        for i in range(number_segments):
            [lower_error_array[i], upper_error_array[i]] = compute_error_on_one_2d_segment(constr_type, vertices[i])        
        return [lower_error_array, upper_error_array]


def compute_error_on_one_1d_segment(constr_type, point1, point2):
    if constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
        lower = 0 
        if abs(lower) <= EPS:
            lower = EPS_SUBSTITUTION
        upper = (point2-point1)**2/4
        if abs(upper) <= EPS:
            upper = EPS_SUBSTITUTION        
        return [lower, upper]
    
    elif constr_type == SIN_CONSTRAINT_TYPE_NAME:
        [lower, upper] = compute_sin_error_on_segment(point1, point2)
        if abs(lower) <= EPS:
            lower = EPS_SUBSTITUTION
        if abs(upper) <= EPS:
            upper = EPS_SUBSTITUTION           
        return [lower, upper]
    
    elif constr_type == COS_CONSTRAINT_TYPE_NAME:
        [lower, upper] = compute_cos_error_on_segment(point1, point2)
        if abs(lower) <= EPS:
            lower = EPS_SUBSTITUTION
        if abs(upper) <= EPS:
            upper = EPS_SUBSTITUTION           
        return [lower, upper]
    
    elif constr_type == TAN_CONSTRAINT_TYPE_NAME:
        [lower, upper] = compute_tan_error_on_segment(point1, point2)
        if abs(lower) <= EPS:
            lower = EPS_SUBSTITUTION
        if abs(upper) <= EPS:
            upper = EPS_SUBSTITUTION           
        return [lower, upper]
    else:
        return [0,0]
    
def compute_error_on_one_2d_segment(constr_type, points):
    if constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
        [lower, upper] = compute_bilinear_error_on_segment(points[0], points[1], points[2])
        if abs(lower) <= EPS:
            lower = EPS_SUBSTITUTION
        if abs(upper) <= EPS:
            upper = EPS_SUBSTITUTION           
        return [lower, upper]
    else:
        return [0,0]

def compute_bilinear_error_on_segment(point1, point2, point3): 
    #compute linear Interpolation
    x1=point1[0]
    x2=point2[0]
    x3=point3[0]
    y1=point1[1]
    y2=point2[1]
    y3=point3[1]
    if abs(x1-x2)<10**-16:    #avoid division with 0
        switchx=x1
        switchy=y1
        x1=x3
        y1=y3
        x3=switchx
        y3=switchy
    #Interpolation is given by a1*x+a2*y+b
    a2=( (x1-x3)*(x1*y1-x2*y2) - (x1-x2)*(x1*y1-x3*y3) )/( (x1-x3)*(y1-y2) - (x1-x2)*(y1-y3) )
    a1=1/(x1-x2)*(x1*y1-x2*y2-(y1-y2)*a2)
    b=x1*y1-y1*a2-x1*a1
    
    
    lower_error=0
    upper_error=0
    
    #test all possible extreme points (middlepoints of edges)
    edge1 = [point1, point2]
    edge2 = [point1, point3]
    edge3 = [point2, point3]    
    edges = [edge1, edge2, edge3]
    for i in range(3):
        max_point = [ 0.5*(edges[i][0][0]+edges[i][1][0])  , 0.5*(edges[i][0][1]+edges[i][1][1]) ]    #middlepoint of edge
        error = a1*max_point[0] + a2*max_point[1] + b - max_point[0]*max_point[1]    #linearization error
        if error>0 and error>upper_error:
            upper_error = error
        elif error<0 and abs(error)>lower_error:
            lower_error = abs(error)
    
    return [lower_error, upper_error]

def compute_sin_error_on_segment(point1, point2): 
    slope = (sin(point2)-sin(point1))/(point2-point1)    #slope of linear approximation
    intersec = (point2*sin(point1)-point1*sin(point2))/(point2-point1)    #intersect with y-axis
    
    extreme1 = acos(slope)    #extreme point
    extreme2 = -2*pi+acos(slope)    #extreme point
    extreme3 = -extreme1
    extreme4 = -extreme2
    extreme = [extreme1, extreme2, extreme3, extreme4]
    lower_error = 0
    upper_error = 0
    
    for extreme_point in extreme:
        error = sin(extreme_point) - (slope*extreme_point + intersec)
        if point1 <= extreme_point and extreme_point <= point2:
            if error > 0:
                lower_error = max(lower_error, abs(error))
            elif error < 0:
                upper_error = max(upper_error, abs(error))
    return [lower_error, upper_error]

def compute_cos_error_on_segment(point1, point2):   
    slope = (cos(point2)-cos(point1))/(point2-point1)   
    intersec = (point2*cos(point1)-point1*cos(point2))/(point2-point1)    
    extreme1 = asin(-slope)   
    if extreme1 >= 0:
        extreme2 = pi - extreme1
        extreme3 = -2*pi + extreme1
        extreme4 = -2*pi + extreme2
    else:
        extreme2 = -pi - extreme1
        extreme3 = 2*pi + extreme1
        extreme4 = 2*pi + extreme2
    extreme = [extreme1, extreme2, extreme3, extreme4]
    lower_error = 0
    upper_error = 0
    
    for extreme_point in extreme:
        error = cos(extreme_point) - (slope*extreme_point + intersec)
        if point1 <= extreme_point and extreme_point <= point2:
            if error > 0:
                lower_error = max(lower_error, abs(error))
            elif error < 0:
                upper_error = max(upper_error, abs(error))    
    return [lower_error, upper_error]

def compute_tan_error_on_segment(point1, point2):

    slope = (tan(point2)-tan(point1))/(point2-point1)
    intersec = tan(point1)-slope*point1
    extreme1 = acos(sqrt(1/slope))
    
    if slope < 1:
        print(point1, point2)
        print(slope)
        exit()
    extreme2 = -extreme1
    
    error1=0
    if point1<=extreme1 and extreme1<=point2:
        error1 = slope*extreme1+intersec-tan(extreme1)
    error2=0
    if point1<=extreme2 and extreme2<=point2:
        error2 = slope*extreme2+intersec-tan(extreme2)

    
         
    lower_error = abs(min([error1,error2]))
    upper_error = abs(max([error1,error2])) 

    return [lower_error, upper_error]
    
def create_binaray_id( new_outer_key, inner_key, i):
    return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_BINARY_KEY + '_' + str(i)

def create_x_value_constraint_id(new_outer_key, inner_key):
    return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_X_RELAXATION_KEY 

def create_x1_value_constraint_id(new_outer_key, inner_key):
    return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_X1_RELAXATION_KEY 

def create_x2_value_constraint_id(new_outer_key, inner_key):
    return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_X2_RELAXATION_KEY 

def create_y_value_constraint_id(new_outer_key, inner_key):
    return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_Y_RELAXATION_KEY 

def create_1d_y_value_constraint_expression(constr_type, subst_var, vertices, delta_vars, error_var):
    number_segments = len(vertices)-1
    #print(subst_var.id, subst_var.lower_bound, subst_var.upper_bound)
    if subst_var.lower_bound == subst_var.upper_bound:
        return Eq(subst_var.symy_symbol, subst_var.lower_bound)
    else:
        if constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
            if error_var == 0:
                return Eq(subst_var.sympy_symbol , vertices[0]**2 + sum( (vertices[i]**2 - vertices[i-1]**2) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) )  )                
            else:                
                return Eq(subst_var.sympy_symbol , vertices[0]**2 + sum( (vertices[i]**2 - vertices[i-1]**2) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) + error_var.sympy_symbol )
        elif constr_type == SIN_CONSTRAINT_TYPE_NAME:
            return Eq(subst_var.sympy_symbol , sin(vertices[0]) + sum( (sin(vertices[i]) - sin(vertices[i-1])) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) + error_var.sympy_symbol )
        elif constr_type == COS_CONSTRAINT_TYPE_NAME:
            return Eq(subst_var.sympy_symbol , cos(vertices[0]) + sum( (cos(vertices[i]) - cos(vertices[i-1])) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) + error_var.sympy_symbol )
        elif constr_type == TAN_CONSTRAINT_TYPE_NAME:
            if error_var == 0:
                return Eq(subst_var.sympy_symbol , tan(vertices[0]) + sum( (tan(vertices[i]) - tan(vertices[i-1])) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) )
            else:
                return Eq(subst_var.sympy_symbol , tan(vertices[0]) + sum( (tan(vertices[i]) - tan(vertices[i-1])) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) + error_var.sympy_symbol )
        elif constr_type == 'abs':
            return Eq(subst_var.sympy_symbol , abs(vertices[0]) + sum( (abs(vertices[i]) - abs(vertices[i-1])) * delta_vars[i].sympy_symbol for i in range(1,number_segments+1) ) )
        else:
            pass
    
def create_2d_y_value_constraint_expression(constr_type, subst_var, vertices, delta_vars, error_var):
    number_segments = len(vertices)
    if constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:

        expression = Eq(subst_var.sympy_symbol , vertices[0][0][0]*vertices[0][0][1] +
                        + Add(
            *tuple(Add(*tuple((vertices[i-1][key[1]][0]*vertices[i-1][key[1]][1] - vertices[i-1][0][0]*vertices[i-1][0][1]) * value.sympy_symbol
                              for (key, value) in delta_vars.items() if key[0] == i))
                   for i in range(1, number_segments + 1))) + error_var.sympy_symbol)

        return  expression
    
def create_error_bound_under_constraint_id(new_outer_key, inner_key):
     return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_ERROR_BOUND_UNDER_KEY 

def create_error_bound_over_constraint_id(new_outer_key, inner_key):
     return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_ERROR_BOUND_OVER_KEY

def create_filling_condition_under_id(new_outer_key, inner_key):
    return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_FILLING_CONDITION_UNDER_KEY

def create_filling_condition_upper_id(new_outer_key, inner_key):
    return str(new_outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_FILLING_CONDITION_UPPER_KEY

def create_relaxation_delta_upper_id(outer_key, inner_key):
    return str(outer_key) + '_' + str(inner_key) + '_' + DELTA_METHOD_DELTA_UPPER_BOUND_KEY   

def get_segment_with_max_error(lower_errors, upper_errors):
    lower_errors = array(lower_errors)
    upper_errors = array(upper_errors)
    if len(lower_errors) == 1 or len(upper_errors) == 1:
        return 1
    max_lower_value = max(lower_errors)
    max_upper_value = max(upper_errors)
    if max_lower_value > max_upper_value:
        return lower_errors.argmax() + 1
    else:
        return upper_errors.argmax() + 1
    
def create_big_m_id(constraint, counter):
    id_str = str(constraint.id).replace(NONLINEAR_CONSTRAINT_ID_PREFIX, 'big_m_'+str(counter)+'_')
    return id_str

def create_abs_key(new_outer_key, inner_key, constr_type):
    new_outer_key_copy = new_outer_key
    inner_key_copy = inner_key
    abs_outer_key = new_outer_key_copy.replace('relaxation','substitution')
    if len(inner_key)==2:
        abs_inner_key = (inner_key[0], inner_key_copy[-1].replace(constr_type,constr_type+'_abs') )
    elif len(inner_key)==3:
        abs_inner_key = (inner_key[0], inner_key[1], inner_key_copy[-1].replace(constr_type,constr_type+'_abs') )
    elif len(inner_key)==4:
        abs_inner_key = (inner_key[0], inner_key[1], inner_key[2], inner_key_copy[-1].replace(constr_type,constr_type+'_abs') )
    return [abs_outer_key, abs_inner_key]

def create_subs_pos_key(new_outer_key, inner_key, constr_type):
    new_outer_key_copy = new_outer_key
    inner_key_copy = inner_key
    abs_outer_key = new_outer_key_copy.replace('relaxation','substitution')
    if len(inner_key)==2:
        abs_inner_key = (inner_key[0], inner_key_copy[-1].replace(constr_type,constr_type+'_pos') )
    elif len(inner_key)==3:
        abs_inner_key = (inner_key[0], inner_key[1], inner_key_copy[-1].replace(constr_type,constr_type+'_pos') )
    elif len(inner_key)==4:
        abs_inner_key = (inner_key[0], inner_key[1], inner_key[2],inner_key_copy[-1].replace(constr_type,constr_type+'_pos') )
    return [abs_outer_key, abs_inner_key]

def create_subs_neg_key(new_outer_key, inner_key, constr_type):
    new_outer_key_copy = new_outer_key
    inner_key_copy = inner_key
    abs_outer_key = new_outer_key_copy.replace('relaxation','substitution')
    if len(inner_key)==2:
        abs_inner_key = (inner_key[0], inner_key_copy[-1].replace(constr_type,constr_type+'_neg') )
    elif len(inner_key)==3:
        abs_inner_key = (inner_key[0], inner_key[1], inner_key_copy[-1].replace(constr_type,constr_type+'_neg') )
    elif len(inner_key)==4:
        abs_inner_key = (inner_key[0], inner_key[1], inner_key[2],inner_key_copy[-1].replace(constr_type,constr_type+'_neg') )
    return [abs_outer_key, abs_inner_key]

