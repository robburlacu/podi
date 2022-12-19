######################################
# IMPORTS                            #
######################################


from abc import ABC, abstractmethod
from podi import ExitStatus, log_exception
from math import inf, floor, ceil
from sympy import symbols, Eq


######################################
# CONSTANTS                          #
######################################


MINLP_ID_PREFIX = 'minlp_'

MIP_ID_PREFIX = 'mip_'

VARIABLE_ID_PREFIX = 'variable_'

OBJECTIVE_ID_PREFIX='objective_'

LINEAR_CONSTRAINT_ID_PREFIX = 'linear_constraint_'

NONLINEAR_CONSTRAINT_ID_PREFIX = 'nonlinear_constraint_'

NUM_TOL= 1e-09



######################################
# CLASSES                            #
######################################


class Minlp(object):
    
    def __init__(self, *id):
        self.id = create_minlp_id(*id)
        self.variables = {}    #Dictionary for Variables
        self.objective = {}    
        self.constraints = {}    #Dictionary for Constraints
        
    
    def add_variable(self, variable):
        variable2=variable.copy()
        self.variables.update(variable2)
        
        
    def set_objective(self, objective):
        self.objective = objective
        
    
    def add_constraint(self, constraint):
        self.constraints.update(constraint)
        


class Mip(object):
    
    def __init__(self, *id):
        self.id = create_mip_id(*id)
        self.variables = {}    #Dictionary for Variables
        self.objective = {}    
        self.constraints = {}    #Dictionary for Constraints
        self.relaxation_infos = {}    #Dictionary for relaxation_infos
        self.lower_obj_bound = -inf
        self.upper_obj_bound = inf
        self.max_relaxation_error_abs = 0
        self.max_relaxation_error_abs_outer_key = ''
        self.max_relaxation_error_abs_inner_key = ''
        self.max_relaxation_error_rel = 0
        self.iteration_number = 1    #iteration_counter
        self.changed_binary_decission = 'no'
        self.number_of_solved_nlps = 0
        self.memory_of_solutions = []
        self.memory_of_incumbents= []
        
    
    def add_variable(self, variable):
        self.variables.update(variable)
        
        
    def set_objective(self, objective):
        self.objective = objective
        
    
    def add_constraint(self, constraint):
        self.constraints.update(constraint)
        
        
    def add_relaxation_infos(self, info):
        self.relaxation_infos.update(info)
        
    def update_relaxation_infos(self, info, outer_key, new_inner_key):
        self.relaxation_infos[outer_key].update({ new_inner_key : info })
        
    def update_lower_obj_bound(self, lower_obj_bound):
        if lower_obj_bound > self.lower_obj_bound:
            self.lower_obj_bound = lower_obj_bound
            
    def update_upper_obj_bound(self, upper_obj_bound):
        if upper_obj_bound < self.upper_obj_bound:
            self.upper_obj_bound = upper_obj_bound
            
    def update_max_relaxation_error_abs(self, error):
        self.max_relaxation_error_abs = error
        
    def update_max_relaxation_error_abs_outer_key(self, error_id):
        self.max_relaxation_error_abs_outer_key = error_id

    def update_max_relaxation_error_abs_inner_key(self, error_id):
        self.max_relaxation_error_abs_inner_key = error_id        
        
    def update_max_relaxation_error_rel(self, error):
        self.max_relaxation_error_rel = error
        
    def update_variable_dic(self, new_var, outer_key='', inner_key='', inner_inner_key='', new_key=1):
        if outer_key == '':
            self.variables.update({new_key : new_var})
        else:
            if inner_key == '':
                self.variables[outer_key].update({new_key : new_var})
            else:
                if inner_inner_key == '':
                    if inner_key is self.variables[outer_key].keys():
                        self.variables[outer_key][inner_key].update({new_key : new_var})
                    else:
                        self.variables[outer_key].update({inner_key: {new_key : new_var }})
                else:
                    if inner_key in self.variables[outer_key].keys():
                        if inner_inner_key in self.variables[outer_key][inner_key].keys():
                            self.variables[outer_key][inner_key][inner_inner_key].update({new_key : new_var})       
                        else:
                            self.variables[outer_key][inner_key].update({ inner_inner_key : {new_key : new_var} })
                    else:
                        self.variables[outer_key].update({inner_key : {inner_inner_key : {new_key : new_var}}})
    
    def delete_var(self, outer_key, inner_key='', inner_inner_key='', inner_inner_inner_key =''):
        if inner_key == '':
            self.variables.pop(outer_key)
        else:
            if inner_inner_key == '':
                self.variables[outer_key].pop(inner_key)
            else:
                if inner_inner_inner_key == '':
                    self.variables[outer_key][inner_key].pop(inner_inner_key)
                else:
                    self.variables[outer_key][inner_key][inner_inner_key].pop(inner_inner_inner_key)

    def update_constraint_dic(self, new_constr, outer_key='', inner_key='', new_key=''):
        if outer_key == '':
            if outer_key not in self.constraints.keys():
                self.constraints.update( {outer_key : {new_key : new_constr} } )
            else:
                self.constraints.update({new_key : new_constr})
        else:
            if outer_key not in self.constraints.keys():
                self.constraints.update( {outer_key : {new_key : new_constr} } )
            else:
                if inner_key == '':
                    self.constraints[outer_key].update({new_key : new_constr})
                else:
                    if inner_key in self.constraints[outer_key].keys():
                        self.constraints[outer_key][inner_key].update({new_key : new_constr})     
                    else:
                        self.constraints[outer_key].update( {inner_key : {new_key : new_constr}})    

    def delete_constraint(self, outer_key, inner_key, inner_inner_key):
        if outer_key in self.variables.keys() == True:
            if inner_key in self.constraints[outer_key].keys() == True:
                if inner_inner_key in self.constraints[outer_key][inner_key].keys() == True:
                    if len(inner_inner_key) == 2:
                        del(self.constraints[outer_key][inner_key][inner_inner_key])
                    elif len(inner_inner_key) > 2:
                        print('LOOK AT MODELS')                        
                    else:
                        del(self.constraints[outer_key][inner_key][inner_inner_key])


    def increase_iteration_number(self):
        self.iteration_number += 1


    def set_changed_binary_decission(self, string='no'):
        self.changed_binary_decission = string
        
        
    def increase_number_of_solved_nlps(self):
        self.number_of_solved_nlps = self.number_of_solved_nlps + 1
        
    def remember_solution(self, keys_of_vars=[]):
        value_array = []
        for key in keys_of_vars:
            for inner_key in self.variables[key].keys():
                value_array.append( round(self.variables[key][inner_key].solution_value) )
        if value_array not in self.memory_of_solutions:
            self.memory_of_solutions.append(value_array)

    def remember_incumbents(self, keys_of_vars=[]):
        value_array = []
        for key in keys_of_vars:
            for inner_key in self.variables[key].keys():
                value_array.append( round(self.variables[key][inner_key].relaxation_value) )
        if value_array not in self.memory_of_incumbents:
            self.memory_of_incumbents.append(value_array)
    
        

class Variable(object):
    
    def __init__(self, id, variable_type='continuous', lower_bound=-inf, upper_bound=inf):
        self.id = create_variable_id(id)
        self.set_variable_type(variable_type)
        self.set_variable_sympy_symbol(self.id)
        if self.variable_type == 'binary':
            if lower_bound == -inf:
                self.set_variable_lower_bound(0)
                self.set_initial_variable_lower_bound(0)
            else:
                self.set_variable_lower_bound(round(lower_bound))    #float oder integer?
                self.set_initial_variable_lower_bound(round(lower_bound))
            if upper_bound == inf:
                self.set_variable_upper_bound(1)    #float oder integer?
                self.set_initial_variable_upper_bound(1)
            else:
                self.set_variable_upper_bound(round(upper_bound))
                self.set_initial_variable_upper_bound(round(upper_bound))
        if self.variable_type == 'continuous':
            self.set_variable_lower_bound(lower_bound)
            self.set_initial_variable_lower_bound(lower_bound)
            self.set_variable_upper_bound(upper_bound)
            self.set_initial_variable_upper_bound(upper_bound)
            
            
    def set_variable_type(self, variable_type):
        self.variable_type = variable_type
    
    
    def set_variable_lower_bound(self, variable_lower_bound):
        if variable_lower_bound > -inf:
            self.lower_bound = floor(float(variable_lower_bound)/NUM_TOL)*NUM_TOL
        else:
            self.lower_bound = float(variable_lower_bound)
        
    def set_initial_variable_lower_bound(self, variable_lower_bound):
        if variable_lower_bound > -inf:
            self.initial_lower_bound = floor(float(variable_lower_bound)/NUM_TOL)*NUM_TOL
        else:
            self.initial_lower_bound = float(variable_lower_bound)
        
    def set_variable_upper_bound(self, variable_upper_bound):
        if variable_upper_bound < inf:
            self.upper_bound = ceil(float(variable_upper_bound)/NUM_TOL)*NUM_TOL
        else:
            self.upper_bound = float(variable_upper_bound)

    def set_initial_variable_upper_bound(self, variable_upper_bound):
        if variable_upper_bound < inf:
            self.initial_upper_bound = ceil(float(variable_upper_bound)/NUM_TOL)*NUM_TOL
        else:
            self.initial_upper_bound = float(variable_upper_bound)

    def set_variable_sympy_symbol(self, *id):
        self.sympy_symbol=symbols( *id )
        
    
    def set_relaxation_solution_value(self, value):
        self.relaxation_value = value
        
    def set_solution_value(self, value):
        self.solution_value = value
        
    def set_given_initial_value(self, value):
        self.given_initial_value = value



class Objective(ABC):
    
    def __init__(self, *id):
        self.set_id(*id)
        self.involved_vars = []
        
    
    @abstractmethod
    def set_id(self, *id):
        pass
    
    def add_involved_vars(self, array):
        for element in array:
            if element not in self.involved_vars:
                self.involved_vars.append(element)        



#TO DO: Nonlinear Objective
class LinearObjective(Objective):
    
    def __init__(self, *id):
        super().__init__(*id)
        self.type = 'linear'
    
    def set_id(self, *id):
        self.id = create_linear_objective_id(*id)


    def build_linear_objective_expression(self, variables, coefficients, objective_orientation='min', constant=0):
        sclproduct=0
        i=0
        for variable in variables:
            self.add_involved_vars([variables[i]])
            sclproduct=sclproduct+variable.sympy_symbol*coefficients[i]
            i=i+1
        
        #M = Matrix([sympy_variables])
        #N = Matrix([coefficients])
        #produkt = M * N.transpose()
        self.expression = sclproduct + constant
        self.orientation = objective_orientation



class PolyObjective(Objective):
    
    def __init__(self, *id):
        super().__init__(*id)
        self.type = 'polynomial'
    
    def set_id(self, *id):
        self.id = create_polynomial_objective_id(*id)

    def clear_inolved_vars(self):
        self.involved_vars = []

    def build_polynomial_objective_expression(self, expression, objective_orientation='min', variables=[]):
        self.expression = expression
        self.clear_inolved_vars()
        self.add_involved_vars(variables)
        self.orientation = objective_orientation



class Constraint(ABC):
    
    def __init__(self, *id):
        self.set_id(*id)
        self.involved_vars = []
        
    
    @abstractmethod
    def set_id(self, *id):
        pass
    
    
    def add_involved_vars(self, array):
        for element in array:
            self.involved_vars.append(element)


    def clear_inolved_vars(self):
        self.involved_vars = []


class LinearConstraint(Constraint):
    
    def __init__(self, *id):
        super().__init__(*id)
        self.type = 'linear'
        
                
    def set_id(self, *id):
        self.id = create_linear_constraint_id(*id)


    def build_linear_constraint_expression(self, variables, coefficients, rightside=0, expression_type='='):
        sclproduct=0
        i=0
        self.clear_inolved_vars()
        self.add_involved_vars(variables)
        for variable in variables:
            sclproduct=sclproduct+variable.sympy_symbol*coefficients[i]
            i=i+1
        
        #M = Matrix([sympy_variables])
        #N = Matrix([coefficients])
        #produkt = M * N.transpose()
        if expression_type == '=':
            self.expression = Eq(sclproduct, rightside)
        if expression_type == '<=':
            self.expression = sclproduct <= rightside
        if expression_type == '>=':
            self.expression = sclproduct >= rightside
        if expression_type == '<':
            self.expression = sclproduct < rightside
        if expression_type == '>':
            self.expression = sclproduct > rightside


    def build_linear_constraint_expression_direct(self, expression, variables=[]):
        self.expression = expression
        self.clear_inolved_vars()
        self.add_involved_vars(variables)



class NonlinearConstraint(Constraint):
    
    def __init__(self, *id):
        super().__init__(*id)
        self.type = 'nonlinear'
        
    def set_id(self, *id):
        self.id= create_nonlinear_constraint_id(*id)
        
    def set_type(self, type_id):
        self.type = str(type_id)
        
    def build_nonlinear_constraint_expression(self, expression, variables=[]):
        self.expression = expression
        self.clear_inolved_vars()
        self.add_involved_vars(variables)
        


######################################
# FUNCTIONS                          #
######################################


def create_minlp_id(*id):
    string = MINLP_ID_PREFIX + str(*id)
    return clean_string(string)


def create_mip_id(*id):
    string = MIP_ID_PREFIX + str(*id)
    return clean_string(string)


def create_variable_id(id):
    string = VARIABLE_ID_PREFIX + str(id)
    return clean_string(string)


def create_linear_objective_id(*id):
    string = OBJECTIVE_ID_PREFIX + str(*id)
    return clean_string(string)


def create_polynomial_objective_id(*id):
    string = OBJECTIVE_ID_PREFIX + str(*id)
    return clean_string(string)


def create_linear_constraint_id(*id):
    string = LINEAR_CONSTRAINT_ID_PREFIX + str(*id)
    return clean_string(string)

def create_nonlinear_constraint_id(*id):
    string = NONLINEAR_CONSTRAINT_ID_PREFIX + str(*id)
    return clean_string(string)

def clean_string(string):
    string = string.replace(',','_')
    string = string.replace(' ','')    #sympy is not compatible with ',' and ' '
    string = string.replace('(','')
    string = string.replace(')','')
    string = string.replace("'",'')
    return string
