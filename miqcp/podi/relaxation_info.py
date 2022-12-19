######################################
# IMPORTS                            #
######################################


from podi.minlp_reformulation_builder import BILINEAR_CONSTRAINT_TYPE_NAME, QUADRATIC_CONSTRAINT_TYPE_NAME, SIN_CONSTRAINT_TYPE_NAME, COS_CONSTRAINT_TYPE_NAME, TAN_CONSTRAINT_TYPE_NAME
from podi.models import clean_string
from math import inf, ceil
from sympy import sin, cos, tan
from numpy import array



######################################
# CONSTANTS                          #
######################################


RELAXATION_INFO_ID_PREFIX = 'relaxation_info_'
numeric_tol = 1e-14



######################################
# CLASSES                            #
######################################


class RelaxationInfo(object):
    
    def __init__(self, outer_key='', inner_key='', triangulation=[], lower_errors=[], upper_errors=[], var=[], subst_var=[], constr_type=[]):
        self.id = create_relaxation_info_id(outer_key, inner_key)
        self.outer_key = outer_key
        self.inner_key = inner_key
        self.triangulation = triangulation
        self.set_lower_errors(lower_errors)
        self.set_upper_errors(upper_errors)
        self.var = var
        self.subst_var = subst_var
        self.constr_type = constr_type
        
    def set_lower_errors(self, lower_errors):
        self.lower_errors = lower_errors

    def set_upper_errors(self, upper_errors):
        self.upper_errors = upper_errors
       
    def compute_relaxation_errors(self):
        if self.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME:
            real_value = self.var[0].relaxation_value * self.var[1].relaxation_value
        elif self.constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
            real_value = self.var.relaxation_value**2
        elif self.constr_type == SIN_CONSTRAINT_TYPE_NAME:
            real_value = sin(self.var.relaxation_value)
        elif self.constr_type == COS_CONSTRAINT_TYPE_NAME:
            real_value = cos(self.var.relaxation_value)
        elif self.constr_type == TAN_CONSTRAINT_TYPE_NAME:
            real_value = tan(self.var.relaxation_value)
        elif self.constr_type == 'abs':
            real_value = abs(self.var.relaxation_value)
        relaxation_value = self.subst_var.relaxation_value
        
        abs_error = abs( real_value - relaxation_value )
        self.relaxation_error_abs = abs_error
        if max( abs(real_value), abs(relaxation_value) ) <= numeric_tol:
            if abs_error >= numeric_tol:
                self.relaxation_error_rel = inf
            else:
                self.relaxation_error_rel = 0
        else:
            self.relaxation_error_rel = abs_error / max( abs(real_value), abs(relaxation_value) )
        

    def test_if_domain_reduction_would_reduce_binaries(self):
        flag = 0
        if self.constr_type == BILINEAR_CONSTRAINT_TYPE_NAME and self.triangulation.number_of_segments > 1:
            flag = self.test_if_domain_reduction_would_reduce_binary_symmetry_2d()
        elif self.constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
            flag = self.test_if_domain_reduction_would_reduce_binary_symmetry_1d()
        elif self.constr_type == SIN_CONSTRAINT_TYPE_NAME:
            flag = self.test_if_domain_reduction_would_reduce_binary_symmetry_1d()
        elif self.constr_type == COS_CONSTRAINT_TYPE_NAME:
            flag = self.test_if_domain_reduction_would_reduce_binary_symmetry_1d()
        elif self.constr_type == TAN_CONSTRAINT_TYPE_NAME:
            flag = self.test_if_domain_reduction_would_reduce_binary_symmetry_1d()
        #if flag == 1:
            #self.triangulation.plot_triangulation()
        return flag
    
    
    def test_if_domain_reduction_would_reduce_binary_symmetry_2d(self):
        vertices = self.triangulation.vertices
        [var1,var2] = self.var
        flag = 0
        flag1= 0
        flag2=0        
        
        if var1.lower_bound < 0 and var1.upper_bound > 0 and len(vertices) > 3:
            left = 0
            right = 0
            for segment in vertices:
                if segment[0][0] <= 0 and segment[1][0] <= 0 and segment[2][0] <= 0:
                    left = left + 1
                elif segment[0][0] >= 0 and segment[1][0] >= 0 and segment[2][0] >= 0:
                    right = right + 1
                if left >= 1 and right >= 1:
                    flag = 1
                    flag1= 1

        if var2.lower_bound < 0 and var2.upper_bound > 0 and len(vertices) > 3:
            left = 0
            right = 0
            for segment in vertices:
                if segment[0][1] <= 0 and segment[1][1] <= 0 and segment[2][1] <= 0:
                    left = left + 1
                elif segment[0][1] >= 0 and segment[1][1] >= 0 and segment[2][1] >= 0:
                    right = right + 1
                if left >= 1 and right >= 1:
                    flag = 1 
                    flag2= 1
                    
        if flag == 1 and flag1 == 1 and flag2 == 0:
            reduction = min(abs(var1.lower_bound),abs(var1.upper_bound))
        if flag == 1 and flag1 == 0 and flag2 == 1:
            reduction = min(abs(var2.lower_bound),abs(var2.upper_bound))
        if flag == 1 and flag1 == 1 and flag2 == 1:
            reduction = min(abs(var1.lower_bound),abs(var1.upper_bound))*min(abs(var2.lower_bound),abs(var2.upper_bound))

        return flag
    
    
    def test_if_domain_reduction_would_reduce_binary_symmetry_1d(self):
        vertices = self.triangulation.vertices
        var = self.var

        flag = 0
        if var.lower_bound < 0 and var.upper_bound > 0 and self.triangulation.number_of_segments > 3:
            if vertices[1]*vertices[-2] < 0:
                flag = 1
        if flag == 1:
            reduction = min(abs(var.lower_bound),abs(var.upper_bound))
        return flag
        
    def change_to_domain_reduction(self, abs_var):
        vertices= self.triangulation.vertices
        reduction = min(abs(min(vertices)),abs(max(vertices)))
       
        new_array_left = [ max(abs(vertices)) ]
        new_array_right = [0]
        for i in range(1,len(vertices)-1):
            if vertices[i] < 0:
                new_array_left.append(vertices[i])
            elif vertices[i] > 0:
                new_array_right.append(vertices[i])
        new_array_left.append( 0 )
        new_array_right.append( max(abs(vertices)) )
        
        if len(new_array_left) > len(new_array_right):
            new_array_left.reverse()
            new_array_left = array(new_array_left)
            self.triangulation.vertices = abs( array( new_array_left ) )
            self.triangulation.number_of_segments = len(new_array_left) - 1
        else:
            self.triangulation.vertices = array( new_array_right )
            self.triangulation.number_of_segments = len(new_array_right) - 1

        self.var = abs_var
        
        if len(self.triangulation.vertices) -1 != self.triangulation.number_of_segments:
            print('ERROR')
            
            
    def point_is_in_envelope(self, point, value ):
        segment_number = self.triangulation.get_segment_number_of_point(point)
        
        vertices = self.triangulation.vertices
        point1 = vertices[segment_number - 1]
        point2 = vertices[segment_number]
        
        if self.constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
            value1 = point1**2
            value2 = point1**2
            #real_value = point**2
        elif self.constr_type == SIN_CONSTRAINT_TYPE_NAME:
            value1 = sin(point1)
            value2 = sin(point2)
            #real_value = sin(point)
        elif self.constr_type == COS_CONSTRAINT_TYPE_NAME:
            value1 = cos(point1)
            value2 = cos(point2)
            #real_value = cos(point)
        elif self.constr_type == TAN_CONSTRAINT_TYPE_NAME:
            value1 = tan(point1)
            value2 = tan(point2)
            #real_value = tan(value)
        elif self.constr_type == 'abs':
            return False
        
        delta = (point - point1) / (point2-point1)
        approx_value = value1 + delta * (value2 - value1)
        upper_error = 0
        lower_error = 0
        if value-approx_value < 0:
            lower_error = abs(value-approx_value)
        else:
            upper_error = abs(value-approx_value)
         
        if self.upper_errors[segment_number-1] > upper_error or self.lower_errors[segment_number-1] > lower_error:
            return True
        else:
            return False


######################################
# FUNCTIONS                          #
######################################


def create_relaxation_info_id(outer_key, inner_key):
    string = RELAXATION_INFO_ID_PREFIX + str(outer_key) + '_' + str(inner_key)
    return clean_string(string)
