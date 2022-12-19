######################################
# IMPORTS                            #
######################################


from podi.models import Minlp, Variable, LinearObjective, LinearConstraint, NonlinearConstraint, VARIABLE_ID_PREFIX, MINLP_ID_PREFIX, OBJECTIVE_ID_PREFIX
from podi.ac_opf_minlp_builder import THERMAL_LIMIT_CONSTRAINT_NAME
#import numpy as np
from sympy import Eq, postorder_traversal, sin, cos, tan, pi    #oder from math?
from podi.ac_opf_minlp_builder import QUADRATIC_CONSTRAINT_TYPE_NAME, BILINEAR_CONSTRAINT_TYPE_NAME, TAN_CONSTRAINT_TYPE_NAME, SIN_CONSTRAINT_TYPE_NAME,COS_CONSTRAINT_TYPE_NAME, DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME



######################################
# CONSTANTS                          #
######################################


REFORMULATION_SUFFIX = 'reformulation'
REFORMULATED_CONSTRAINT_SUFFIX = 'reformulated'  
SUBSTITUTION_SUFFIX = 'substitution'
SUBSTITUTION_VARIABLES_SUFFIX = SUBSTITUTION_SUFFIX    
SUBSTITUTION_CONSTRAINT_SUFFIX = SUBSTITUTION_SUFFIX    

SUM_CONSTRAINT_NAME = 'sum'

SUBSTITUTION_PREFIX = 'subst'   
SUBSTITUTION_MULTIPLICATION_PREFIX = SUBSTITUTION_PREFIX + '_' + BILINEAR_CONSTRAINT_TYPE_NAME
SUBSTITUTION_QUADRATIC_PREFIX = SUBSTITUTION_PREFIX + '_' + QUADRATIC_CONSTRAINT_TYPE_NAME
SUBSTITUTION_SIN_PREFIX = SUBSTITUTION_PREFIX + '_' + SIN_CONSTRAINT_TYPE_NAME
SUBSTITUTION_COS_PREFIX = SUBSTITUTION_PREFIX + '_' + COS_CONSTRAINT_TYPE_NAME
SUBSTITUTION_TAN_PREFIX = SUBSTITUTION_PREFIX + '_' + TAN_CONSTRAINT_TYPE_NAME




######################################
# CLASSES                            #
######################################


class MinlpReformulationBuilder(object):
    
    def build(self, minlp):        
        minlp_reformulation = Minlp( minlp.id.replace(MINLP_ID_PREFIX, '') + '_' + REFORMULATION_SUFFIX )    #reformulation is a minlp
        self.build_minlp_reformulation(minlp_reformulation, minlp)    #bild reformulation from minlp
        return minlp_reformulation

    
    
    def build_minlp_reformulation(self, minlp_reformulation, minlp):
        minlp_reformulation.add_variable(minlp.variables)    #Variables are the same
        new_vars_array = []
        new_constr_array = []
        self.build_objective_reformulation(minlp_reformulation, minlp, new_vars_array, new_constr_array)
        self.build_constraint_reformulation(minlp_reformulation, minlp, new_vars_array, new_constr_array)
        
        
    def build_objective_reformulation(self, minlp_reformulation, minlp, new_vars_array, new_constr_array):
        if minlp.objective.type == 'linear':    #if objective is linear
            minlp_reformulation.set_objective(minlp.objective)    #objective remains the same
        elif minlp.objective.type == 'polynomial':
            self.build_poly_objective_reformulation(minlp_reformulation, minlp, new_vars_array, new_constr_array)

 
    
    def build_poly_objective_reformulation(self, minlp_reformulation, minlp, new_vars_array, new_constr_array):
        #given a polynomial objective this method builds a reformulation and add it to the minlp_reformulation
        reformulated_objective = LinearObjective(REFORMULATED_CONSTRAINT_SUFFIX)   #initialize dictionary to collect reformulated objective
        dic_new_variables = {}    #initialize dictionary to collect new variables
        dic_new_constraints = {}    #initialize dictionary to collect new constraints
        
        expression = minlp.objective.expression
        self.build_poly_objective_reformulation_from_expression( expression, reformulated_objective, dic_new_variables, dic_new_constraints, minlp, new_vars_array, new_constr_array)

        minlp_reformulation.set_objective( reformulated_objective )
        minlp_reformulation.add_constraint( { OBJECTIVE_ID_PREFIX + SUBSTITUTION_CONSTRAINT_SUFFIX : dic_new_constraints } )
        minlp_reformulation.add_variable( { OBJECTIVE_ID_PREFIX + SUBSTITUTION_VARIABLES_SUFFIX : dic_new_variables } )



    def build_poly_objective_reformulation_from_expression(self, expression, reformulated_objective, dic_new_variables, dic_new_constraints, minlp, new_vars_array, new_constr_array):   
        expression_terms = expression.as_coefficients_dict()
        variables = []
        coeff = []
        rhs = 0
        for key in expression_terms.keys():
            if key == 1:
                rhs = expression_terms[1]
            if key.is_Symbol == True:
                variables.append( find_var_from_sympy_symbol(key, minlp, dic_new_variables, new_vars_array) )
                coeff.append( expression_terms[key] )
            elif key.is_Pow == True:
                arguments = key.args
                if arguments[0].is_Symbol == True:    #variable is basis of power
                    if arguments[1] == 2:    #expression is quadratic
                        symbol = key.args[0]
                        [quadr_lower_bound, quadr_upper_bound] = find_quadr_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array )
                        #here
                        subst_var = create_subst_var_quadratic( symbol, quadr_lower_bound, quadr_upper_bound )
                        if subst_var.id.split('_')[-2].isnumeric() == True:
                            inner_key = [(subst_var.id.split('_')[-2],subst_var.id.split('_')[-1])]
                        else:
                            inner_key = [int(subst_var.id.split('_')[-1])]
                        [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, 0, 'quadratic', new_vars_array )
                        #new_vars_array.append(subst_var)
                        subst_constr = create_subst_constr_quadratic(symbol, subst_var, minlp, dic_new_variables, new_vars_array)
                        [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, 0, 'quadratic', new_vars_array, new_constr_array) 
                        
                        variables.append( subst_var )
                        coeff.append( expression_terms[key] )                        

                
        reformulated_objective.build_linear_objective_expression(variables, coeff, 'min', rhs)

        
        
    
    def build_constraint_reformulation(self, minlp_reformulation, minlp, new_vars_array, new_constr_array):
        for outer_key in minlp.constraints.keys():    #iteration over all constraints
            dictionary_linear = {}    #intialize dictionary to collect linear constraints
            dictionary_nonlinear = {}    #initialize dictionary to collect nonlinear constraints
            
            for inner_key in minlp.constraints[outer_key].keys():    #iteration over all constraints
                if minlp.constraints[outer_key][inner_key].type == 'linear':    #if constraint is linear
                    dictionary_linear.update( { inner_key : minlp.constraints[outer_key][inner_key] } )    #collect linear constraints
                elif minlp.constraints[outer_key][inner_key].type == 'convex_quadratic':
                    dictionary_linear.update( { inner_key : minlp.constraints[outer_key][inner_key] } )
                else:
                    dictionary_nonlinear.update( { inner_key: minlp.constraints[outer_key][inner_key] } )    #collect nonlinear constraints
            if dictionary_linear != {}:    #if dictionary is not empty
                minlp_reformulation.add_constraint({outer_key : dictionary_linear})    #add constraints to reformulation
            if dictionary_nonlinear != {}:    #if there are nonlinear constraints to reformulate
                self.build_nonlinear_constraint_reformulation(minlp_reformulation, outer_key, dictionary_nonlinear, minlp, new_vars_array, new_constr_array)


    def build_nonlinear_constraint_reformulation(self, minlp_reformulation, outer_key, dictionary, minlp, new_vars_array, new_constr_array):
        #given a dictionary with nonlinear constraints this method builds a reformulation and add it to the minlp_reformulation
        dic_reformulations = {}    #initialize dictionary to collect reformulated constraints
        dic_new_variables = {}    #initialize dictionary to collect new variables
        dic_new_constraints = {}    #initialize dictionary to collect new constraints
        for inner_key in dictionary:
            dic_counter = { BILINEAR_CONSTRAINT_TYPE_NAME : 0 , 'quadratic' : 0, SIN_CONSTRAINT_TYPE_NAME : 0, COS_CONSTRAINT_TYPE_NAME : 0, TAN_CONSTRAINT_TYPE_NAME : 0, SUM_CONSTRAINT_NAME : 0}    #counter for several substitutions of same nonlinearities
            expression = dictionary[inner_key].expression
            self.build_reformulation_from_expression_tree(outer_key, inner_key, expression, dic_reformulations, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array)
        #add dictionaries to minlp_reformulation
        #Thermal Limit via outer approximation
        if outer_key != THERMAL_LIMIT_CONSTRAINT_NAME:
            minlp_reformulation.add_constraint( { outer_key + '_' + REFORMULATED_CONSTRAINT_SUFFIX : dic_reformulations } )
            minlp_reformulation.add_constraint( { outer_key + '_' + SUBSTITUTION_CONSTRAINT_SUFFIX : dic_new_constraints } )
            minlp_reformulation.add_variable( { outer_key + '_' + SUBSTITUTION_VARIABLES_SUFFIX : dic_new_variables } )



    def build_reformulation_from_expression_tree(self, outer_key, inner_key, expression, dic_reformulations, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array):
        reformulated_constraint = LinearConstraint( create_reformulated_constraint_id(outer_key, inner_key) )    #reformulated constraint is linear        
        flag = 1
        
        new_left = expression.args[0]-expression.args[1]
        new_right = 0
        
        if expression.rel_op == '==':
            expression = Eq( new_left , new_right )
        elif expression.rel_op == '<=':
            expression = new_left <= new_right
        elif expression.rel_op == '>=':
            expression = new_left >= new_right

        
        while flag == 1:
            expression_old = expression
            keys=[]
            #old_dic_length = len(dic_new_variables)
            for arg in postorder_traversal(expression):    #search the expression tree
                #maybe not every node in the expresssion tree has to be taken into account
                if arg.is_Function == True:    #expression is a function
                    self.reformulate_expression_Function(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys)
                if arg.is_Mul == True:    #expression is multiplication
                    self.reformulate_expression_Mul(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys)
                if arg.is_Pow == True:    #expression is power
                    self.reformulate_expression_Pow(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys)       
                if arg.is_Add == True:    #expressoin is Add
                    self.reformulate_expression_Add(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, dic_reformulations, new_vars_array, new_constr_array, keys)


            for key in keys:
                if key in dic_new_constraints.keys():
                    constr = dic_new_constraints[key]
                else:
                    constr = new_constr_array[key]
                expression = expression.subs( constr.expression.args[1], constr.expression.args[0] )    #subs full nonlinear expression   


            if expression_old == expression:
                flag = 0
                if constr.type == 'linear':    #last linearization was unnecessary
                    expression = expression.subs( constr.expression.args[0], constr.expression.args[1] )    #redoo substitution
                    self.delete_reformulate_expression_Add(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter)
                

        variables=[]
        for arg in postorder_traversal(expression):
            if arg.is_Symbol == True:
                variables.append( find_var_from_sympy_symbol(arg, minlp, dic_new_variables, new_vars_array) )
                
        
        reformulated_constraint.build_linear_constraint_expression_direct(expression, variables)
        
        dic_reformulations.update( {inner_key : reformulated_constraint} )

            

    def reformulate_expression_Function(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys):
        arguments = arg.args    #arguments of function
        if len(arguments) == 1 and arguments[0].is_Symbol == True:    #argument is one variable
            if arg.func == sin:    #function is sin
                self.reformulate_expression_sin(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys)
            if arg.func == cos:
                self.reformulate_expression_cos(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys)
            if arg.func == tan:
                self.reformulate_expression_tan(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys)
                  
            


    def reformulate_expression_sin(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys):    
        symbol = arg.args[0]
        [sin_lower_bound, sin_upper_bound] = find_sin_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables , new_vars_array)        
        subst_var = create_subst_var_sin( symbol, sin_lower_bound, sin_upper_bound )
        [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, dic_counter[SIN_CONSTRAINT_TYPE_NAME], SIN_CONSTRAINT_TYPE_NAME, new_vars_array )
        subst_constr = create_subst_constr_sin(symbol, subst_var, minlp, dic_new_constraints, new_vars_array)
        [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, dic_counter[SIN_CONSTRAINT_TYPE_NAME], SIN_CONSTRAINT_TYPE_NAME, new_vars_array, new_constr_array, keys)
        dic_counter[SIN_CONSTRAINT_TYPE_NAME] = dic_counter[SIN_CONSTRAINT_TYPE_NAME] + 1 

 
    
    def reformulate_expression_cos(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys):    
        symbol = arg.args[0]
        [cos_lower_bound, cos_upper_bound] = find_cos_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array )
        subst_var = create_subst_var_cos( symbol, cos_lower_bound, cos_upper_bound )
        [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, dic_counter[COS_CONSTRAINT_TYPE_NAME], COS_CONSTRAINT_TYPE_NAME, new_vars_array )
        subst_constr = create_subst_constr_cos(symbol, subst_var, minlp, dic_new_constraints, new_vars_array)
        [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, dic_counter[COS_CONSTRAINT_TYPE_NAME], COS_CONSTRAINT_TYPE_NAME, new_vars_array, new_constr_array, keys)
        dic_counter[COS_CONSTRAINT_TYPE_NAME] = dic_counter[COS_CONSTRAINT_TYPE_NAME] + 1    



    def reformulate_expression_tan(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys):    
        symbol = arg.args[0]
        [tan_lower_bound, tan_upper_bound] = find_tan_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array )
        subst_var = create_subst_var_tan( symbol, tan_lower_bound, tan_upper_bound )
        [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, dic_counter[TAN_CONSTRAINT_TYPE_NAME], TAN_CONSTRAINT_TYPE_NAME, new_vars_array )
        subst_constr = create_subst_constr_tan(symbol, subst_var, minlp, dic_new_constraints, new_vars_array)
        [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, dic_counter[TAN_CONSTRAINT_TYPE_NAME], TAN_CONSTRAINT_TYPE_NAME, new_vars_array, new_constr_array, keys)
        dic_counter[TAN_CONSTRAINT_TYPE_NAME] = dic_counter[TAN_CONSTRAINT_TYPE_NAME] + 1
    

    
    
    def reformulate_expression_Mul(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys):
        arguments = arg.args
        symbol_counter = 0    #count variables in expression
        arg_symbols = {}    #Dictionary to collect variables in expression
        
        for argument in arguments:
            if argument.is_Symbol == True:    #argument is a variable
                arg_symbols.update( { symbol_counter : argument } )
                symbol_counter = symbol_counter + 1
        
        if symbol_counter > 2:    #multiplication with more than 2 variables

            if symbol_counter == 3:    
                if find_var_from_sympy_symbol(arg_symbols[0], minlp, dic_new_variables, new_vars_array).variable_type == 'binary':
                    symbol1 = arg_symbols[1]
                    symbol2 = arg_symbols[2]
                elif find_var_from_sympy_symbol(arg_symbols[1], minlp, dic_new_variables, new_vars_array).variable_type == 'binary':
                    symbol1 = arg_symbols[0]
                    symbol2 = arg_symbols[2]
                else:
                    symbol1 = arg_symbols[0]
                    symbol2 = arg_symbols[1]                    
                
            else:    #just take the first two factors   
                symbol1 = arg_symbols[0]
                symbol2 = arg_symbols[1]
            
            
            [product_lower_bound, product_upper_bound] = find_product_bounds_from_sympy_symbol( symbol1, symbol2, minlp, dic_new_variables, new_vars_array )
            subst_var = create_subst_var_Mul( symbol1, symbol2, product_lower_bound, product_upper_bound )
            [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME], BILINEAR_CONSTRAINT_TYPE_NAME, new_vars_array )
            subst_constr = create_subst_constr_Mul(symbol1, symbol2, subst_var, minlp, dic_new_variables, new_vars_array)
            [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME], BILINEAR_CONSTRAINT_TYPE_NAME, new_vars_array, new_constr_array, keys)
            dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME] = dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME] + 1
        
        if symbol_counter == 2:    #multiplication with exact 2 variables
            symbol1 = arg_symbols[0]
            symbol2 = arg_symbols[1]
            [product_lower_bound, product_upper_bound] = find_product_bounds_from_sympy_symbol( symbol1, symbol2, minlp, dic_new_variables, new_vars_array )
            subst_var = create_subst_var_Mul( symbol1, symbol2, product_lower_bound, product_upper_bound )
            [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME], BILINEAR_CONSTRAINT_TYPE_NAME, new_vars_array )
            subst_constr = create_subst_constr_Mul(symbol1, symbol2, subst_var, minlp, dic_new_variables, new_vars_array)
            [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME], BILINEAR_CONSTRAINT_TYPE_NAME, new_vars_array, new_constr_array, keys)
            dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME] = dic_counter[BILINEAR_CONSTRAINT_TYPE_NAME] + 1
 

    def reformulate_expression_Add(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, dic_reformulations, new_vars_array, new_constr_array, keys):
        arguments = arg.args
        symbol_counter = 0    #count variables in expression
        arg_symbols = {}    #Dictionary to collect variables in expression
        
        flag = 1
        for argument in arguments:
            if argument.is_Number == True:
                pass
            elif argument.is_Symbol == True:    #argument is a variable
                arg_symbols.update( { symbol_counter : argument } )
                symbol_counter = symbol_counter + 1
            elif argument.is_Mul == True:
                if len(argument.args) == 2 and argument.args[0].is_Number == True and argument.args[1].is_Symbol == True:
                    arg_symbols.update( {symbol_counter : argument.args[1]} )
                else:
                    flag = 0
            else:
                flag = 0
                
        if flag == 1:

            [add_lower_bound, add_upper_bound] = find_add_bounds_from_sympy_symbols( arguments, minlp, dic_new_variables, new_vars_array )
            subst_var = create_subst_var_add( arguments, add_lower_bound, add_upper_bound )
            [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, dic_counter[SUM_CONSTRAINT_NAME], SUM_CONSTRAINT_NAME, new_vars_array )
            subst_constr = create_subst_constr_add(arg, subst_var, arg_symbols,minlp, dic_new_variables, new_vars_array)

            [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, dic_counter[SUM_CONSTRAINT_NAME], SUM_CONSTRAINT_NAME, new_vars_array, new_constr_array, keys)            
            dic_counter[SUM_CONSTRAINT_NAME] = dic_counter[SUM_CONSTRAINT_NAME] + 1


    def delete_reformulate_expression_Add(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter):

        dic_counter[SUM_CONSTRAINT_NAME] = dic_counter[SUM_CONSTRAINT_NAME] - 1
        dic_new_variables = delete_var_from_dic( dic_new_variables, '', inner_key, dic_counter[SUM_CONSTRAINT_NAME], SUM_CONSTRAINT_NAME )

        dic_new_constraints = delete_constr_from_dic( dic_new_constraints, '', inner_key, dic_counter[SUM_CONSTRAINT_NAME], SUM_CONSTRAINT_NAME )
        

            
            
    def reformulate_expression_Pow(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys):
        arguments = arg.args
        if arguments[0].is_Symbol == True:    #variable is basis of power
            if arguments[1] == 2:    #expression is quadratic
                self.reformulate_expression_quadratic(outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys)
         
            
            

    def reformulate_expression_quadratic(self, outer_key, inner_key, arg, dic_new_variables, dic_new_constraints, minlp, dic_counter, new_vars_array, new_constr_array, keys):
        symbol = arg.args[0]
        [quadr_lower_bound, quadr_upper_bound] = find_quadr_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array )

        subst_var = create_subst_var_quadratic( symbol, quadr_lower_bound, quadr_upper_bound )
        [dic_new_variables, new_vars_array] = add_new_var_to_dic( dic_new_variables, subst_var, inner_key, dic_counter['quadratic'], 'quadratic' , new_vars_array)
        subst_constr = create_subst_constr_quadratic(symbol, subst_var, minlp, dic_new_variables, new_vars_array)
        [dic_new_constraints, new_constr_array, keys] = add_new_constr_to_dic( dic_new_constraints, subst_constr, inner_key, dic_counter['quadratic'], 'quadratic', new_vars_array, new_constr_array, keys)
        dic_counter['quadratic'] = dic_counter['quadratic'] + 1



######################################
# FUNCTIONS                          #
######################################


def create_reformulated_constraint_id(outer_key, inner_key):
    constraint_id = outer_key +'_' + REFORMULATED_CONSTRAINT_SUFFIX
    for i in inner_key:
        constraint_id = constraint_id + '_' + str(i)
    return constraint_id

def find_var_from_sympy_symbol(symbol, minlp, dic_new_variables, new_vars_array):
    
    for var in new_vars_array:
        if var.sympy_symbol == symbol:
            return var
    
    symbol_origin = symbol
    symbol = str(symbol).replace(VARIABLE_ID_PREFIX, '')
    symbol = symbol.replace('__', '_')
    string_part = str(symbol).split('_')    #read variable key from sympy symbol
    #print(str(symbol))
    if string_part[0] == SUBSTITUTION_PREFIX:    #variable is a new variable
        for key in dic_new_variables:
            if str(dic_new_variables[key].sympy_symbol) == str(symbol_origin):
                return dic_new_variables[key]
        
    else:
        length = len(string_part)
        if string_part[length-2].isdecimal() == True:
            
            if string_part[length-3].isdecimal() == True:
                key1=string_part[0]
                for i in range(1, length-3):
                    key1 = key1 + '_' + string_part[i]
                key2=( int(string_part[length-3]),int(string_part[length-2]), int(string_part[length-1]) )   
            else:
                key1=string_part[0]
                for i in range(1, length-2):
                    key1 = key1 + '_' + string_part[i]
                key2=( int(string_part[length-2]), int(string_part[length-1]) )         
        else:
            key1=string_part[0]
            for i in range(1, length-1):
                key1 = key1 + '_' + string_part[i]
            #print(string_part[length-1] )
            key2=( int(string_part[length-1]) )

        return minlp.variables[key1][key2]
 
def find_sin_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array ):
    var = find_var_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array)
    lb = var.lower_bound
    ub = var.upper_bound

    array = [ sin(lb) , sin(ub) ]
    if lb <= 1.5*pi and 1.5*pi <= ub:
        lower_bound = -1
    elif lb <= -0.5*pi and -0.5*pi <= ub:
        lower_bound = -1
    else:
        lower_bound = min(array)        
    if lb <= 0.5*pi and 0.5*pi <=ub:
        upper_bound = 1
    elif lb <= -1.5*pi and -1.5*pi:
        upper_bound = 1
    else:
        upper_bound = max(array)       
    return [lower_bound, upper_bound]    

def find_cos_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array ):
    var = find_var_from_sympy_symbol( symbol, minlp, dic_new_variables , new_vars_array )
    lb = var.lower_bound
    ub = var.upper_bound

    array = [ cos(lb) , cos(ub) ]
    if lb <= -pi and -pi <= ub:
        lower_bound = -1
    elif lb <= pi and pi <= ub:
        lower_bound = -1
    else:
        lower_bound = min(array)        
    if lb <= 0 and 0 <=ub:
        upper_bound = 1
    else:
        upper_bound = max(array)       
    return [lower_bound, upper_bound] 

def find_tan_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array ):
    var = find_var_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array )
    lb = var.lower_bound
    ub = var.upper_bound
      
    return [tan(lb), tan(ub)] 

def create_subst_var_sin( symbol, sin_lower_bound, sin_upper_bound ):
    subst_id =  SUBSTITUTION_SIN_PREFIX + '_' + str(symbol)
    subst_var = Variable(subst_id, 'continuous' , sin_lower_bound, sin_upper_bound)   #define substituition variable
    return subst_var    

def create_subst_constr_sin(symbol, subst_var, minlp, dic_new_variables, new_vars_array):
    subst_id = SUBSTITUTION_SIN_PREFIX + '_' + str(symbol)
    subst_constr = NonlinearConstraint(subst_id)    #define substituition constraints
    subst_constr.set_type( SIN_CONSTRAINT_TYPE_NAME )
    variables = [subst_var, find_var_from_sympy_symbol(symbol, minlp, dic_new_variables, new_vars_array) ]
    subst_constr.build_nonlinear_constraint_expression( Eq(subst_var.sympy_symbol, sin(symbol) ), variables ) 
    return subst_constr

def create_subst_var_cos( symbol, cos_lower_bound, cos_upper_bound ):
    subst_id =  SUBSTITUTION_COS_PREFIX + '_' + str(symbol)
    subst_var = Variable(subst_id, 'continuous' , cos_lower_bound, cos_upper_bound)   #define substituition variable
    return subst_var    

def create_subst_constr_cos(symbol, subst_var, minlp, dic_new_variables, new_vars_array):
    subst_id = SUBSTITUTION_COS_PREFIX + '_' + str(symbol)
    subst_constr = NonlinearConstraint(subst_id)    #define substituition variable
    subst_constr.set_type( COS_CONSTRAINT_TYPE_NAME )
    variables = [subst_var, find_var_from_sympy_symbol(symbol, minlp, dic_new_variables, new_vars_array) ]    
    subst_constr.build_nonlinear_constraint_expression( Eq(subst_var.sympy_symbol, cos(symbol) ), variables ) 
    return subst_constr

def create_subst_var_tan( symbol, tan_lower_bound, tan_upper_bound ):
    subst_id =  SUBSTITUTION_TAN_PREFIX + '_' + str(symbol)
    subst_var = Variable(subst_id, 'continuous' , tan_lower_bound, tan_upper_bound)   #define substituition variable
    return subst_var    

def create_subst_constr_tan(symbol, subst_var, minlp, dic_new_variables, new_vars_array):
    subst_id = SUBSTITUTION_TAN_PREFIX + '_' + str(symbol)
    subst_constr = NonlinearConstraint(subst_id)    #define substituition variable
    subst_constr.set_type( TAN_CONSTRAINT_TYPE_NAME )
    variables = [subst_var, find_var_from_sympy_symbol(symbol, minlp, dic_new_variables, new_vars_array) ]
    subst_constr.build_nonlinear_constraint_expression( Eq(subst_var.sympy_symbol, tan(symbol) ), variables ) 
    return subst_constr
               
def find_product_bounds_from_sympy_symbol( symbol1, symbol2, minlp, dic_new_variables, new_vars_array ):
    var1 = find_var_from_sympy_symbol( symbol1, minlp, dic_new_variables, new_vars_array )
    var2 = find_var_from_sympy_symbol( symbol2, minlp, dic_new_variables, new_vars_array )
    lb1 = var1.lower_bound
    ub1 = var1.upper_bound
    lb2 = var2.lower_bound
    ub2 = var2.upper_bound
    

    array = [ lb1*lb2, lb1*ub2, ub1*lb2, ub1*ub2 ]
    lower_bound = min(array)
    upper_bound = max(array)
    return [lower_bound, upper_bound]

def create_subst_var_Mul( symbol1, symbol2, product_lower_bound, product_upper_bound ):
    subst_id =  SUBSTITUTION_MULTIPLICATION_PREFIX + '_' + str(symbol1) + '_' + str(symbol2)
    subst_var = Variable(subst_id, 'continuous' , product_lower_bound, product_upper_bound)   #define substituition variable
    return subst_var
    
def add_new_var_to_dic( dic_new_variables, subst_var, inner_key, counter, counter_key, new_vars_array):
    flag = 1
    for key in dic_new_variables.keys():    #check if substitution is redundant
        if dic_new_variables[key].id == subst_var.id:
            flag = 0
        else:
            pass
    for var in new_vars_array:
        if var.id == subst_var.id:
            flag = 0
        
    
    if counter == 0:    #first substitution variable of this type
        if flag == 1:
            dic_new_variables.update( { (*inner_key, counter_key) : subst_var} )
            new_vars_array.append(subst_var)
    else:
        if flag == 1:
            dic_new_variables.update( { (*inner_key, counter_key + '_' + str(counter)) : subst_var} )    #if more than one substitution variables of same type: add number
            new_vars_array.append(subst_var)
    return [dic_new_variables, new_vars_array]


def delete_var_from_dic( dic_new_variables, subst_var, inner_key, counter, counter_key ):
    
    flag=1
    
    if counter == 0:    #first substitution variable of this type
        if flag == 1:
            dic_new_variables.pop( (*inner_key, counter_key) )
    else:
        if flag == 1:
            dic_new_variables.pop( (*inner_key, counter_key + '_' + str(counter)) )    #if more than one substitution variables of same type: add number
    return dic_new_variables


def create_subst_constr_Mul(symbol1, symbol2, subst_var, minlp, dic_new_variables, new_vars_array):
    subst_id = SUBSTITUTION_MULTIPLICATION_PREFIX + '_' + str(symbol1) + '_' + str(symbol2)
    subst_constr = NonlinearConstraint(subst_id)    #define substituition variable
    
    variables = [subst_var, find_var_from_sympy_symbol(symbol1, minlp, dic_new_variables, new_vars_array), find_var_from_sympy_symbol(symbol2, minlp, dic_new_variables, new_vars_array) ]
    
    if variables[1].variable_type == 'binary' or variables[2].variable_type == 'binary':
        subst_constr.set_type( DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME )
    else:
        subst_constr.set_type( BILINEAR_CONSTRAINT_TYPE_NAME )        
    
    subst_constr.build_nonlinear_constraint_expression( Eq(subst_var.sympy_symbol, symbol1*symbol2), variables ) 
    return subst_constr

def add_new_constr_to_dic( dic_new_constr, subst_constr, inner_key, counter, counter_key, new_vars_array, new_constr_array, keys=[]):
    flag = 1
    for key in dic_new_constr.keys():    #check is substitution is redundant
        if dic_new_constr[key].id == subst_constr.id:
            keys.append(key)
            flag = 0
        else:
            pass
        
    
    for constr in new_constr_array:
        if constr.involved_vars[0].id == subst_constr.involved_vars[0].id:
            keys.append( new_constr_array.index(constr) )
            flag = 0
    
    if counter == 0:    #first substitution variable of this type
        if flag == 1:
            dic_new_constr.update( { (*inner_key, counter_key) : subst_constr} )
            keys.append( (*inner_key, counter_key) )
            new_constr_array.append(subst_constr)
    else:
        if flag == 1:
            dic_new_constr.update( { (*inner_key, counter_key + '_' + str(counter)) : subst_constr} )    #if more than one substitution constraint of same type: add number
            keys.append( (*inner_key, counter_key + '_' + str(counter)) )
            new_constr_array.append(subst_constr)
    
    if keys=='':
        return [dic_new_constr, new_constr_array]
    else:
        return [dic_new_constr, new_constr_array, keys]

def delete_constr_from_dic( dic_new_constr, subst_constr, inner_key, counter, counter_key ):
    flag = 1

    
    if counter == 0:    #first substitution variable of this type
        if flag == 1:
            dic_new_constr.pop(  (*inner_key, counter_key)  )
    else:
        if flag == 1:
            if (*inner_key, counter_key + '_' + str(counter))  in dic_new_constr.keys():
                dic_new_constr.pop(  (*inner_key, counter_key + '_' + str(counter))  )    #if more than one substitution constraint of same type: add number
    return dic_new_constr 

def find_quadr_bounds_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array ):
    var = find_var_from_sympy_symbol( symbol, minlp, dic_new_variables, new_vars_array )
    lb = var.lower_bound
    ub = var.upper_bound

    array = [ lb**2, ub**2 ]
    if lb<= 0 and 0<=ub:
        lower_bound = 0
    else:
        lower_bound = min(array)
    upper_bound = max(array)
    return [lower_bound, upper_bound]

def create_subst_var_quadratic( symbol, quadr_lower_bound, quadr_upper_bound ):
    subst_id =  SUBSTITUTION_QUADRATIC_PREFIX + '_' + str(symbol)
    subst_var = Variable(subst_id, 'continuous' , quadr_lower_bound, quadr_upper_bound)   #define substituition variable
    return subst_var    

def create_subst_constr_quadratic(symbol, subst_var, minlp, dic_new_variables, new_vars_array):
    subst_id = SUBSTITUTION_QUADRATIC_PREFIX + '_' + str(symbol)
    subst_constr = NonlinearConstraint(subst_id)    #define substituition variable
    subst_constr.set_type( QUADRATIC_CONSTRAINT_TYPE_NAME )
    variables = [subst_var, find_var_from_sympy_symbol(symbol, minlp, dic_new_variables, new_vars_array) ]
    subst_constr.build_nonlinear_constraint_expression( Eq(subst_var.sympy_symbol, symbol**2), variables ) 
    return subst_constr


def find_add_bounds_from_sympy_symbols( arguments, minlp, dic_new_variables, new_vars_array ):
    lower_bound = 0
    upper_bound = 0
    
    for arg in arguments:
        if arg.is_number == True:
            lower_bound = lower_bound + arg
            upper_bound = upper_bound + arg
        elif arg.is_Mul == True:

            var = find_var_from_sympy_symbol( arg.args[1], minlp, dic_new_variables, new_vars_array )
            coeff = arg.args[0]
            if coeff < 0:
                lower_bound = lower_bound + coeff * var.upper_bound
                upper_bound = upper_bound + coeff * var.lower_bound
            else:
                lower_bound = lower_bound + coeff * var.lower_bound
                upper_bound = upper_bound + coeff * var.upper_bound
        elif arg.is_Symbol == True:
            var = find_var_from_sympy_symbol( arg, minlp, dic_new_variables, new_vars_array )
            lower_bound = lower_bound + var.lower_bound
            upper_bound = upper_bound + var.upper_bound
            
    return [lower_bound, upper_bound]


def create_subst_var_add( arguments, lower_bound, upper_bound ):
    subst_id =  SUBSTITUTION_PREFIX+'_'+SUM_CONSTRAINT_NAME + '_' + str(arguments)
    subst_var = Variable(subst_id, 'continuous' , lower_bound, upper_bound)   #define substituition variable
    return subst_var    

def create_subst_constr_add(expression, subst_var, arg_symbols, minlp, dic_new_variables, new_vars_array):
    subst_id = SUBSTITUTION_PREFIX + '_' + SUM_CONSTRAINT_NAME + '_' + str(expression)
    subst_constr = LinearConstraint(subst_id)    #define substituition variable
    
    variables = [subst_var]
    for key in arg_symbols.keys():
        variables.append( find_var_from_sympy_symbol(arg_symbols[key], minlp, dic_new_variables, new_vars_array) )
    
    subst_constr.build_linear_constraint_expression_direct( Eq(subst_var.sympy_symbol, expression), variables ) 
    return subst_constr
