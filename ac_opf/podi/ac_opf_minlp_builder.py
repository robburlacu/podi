######################################
# IMPORTS                            #
######################################


from podi.models import Minlp, Variable, LinearObjective, LinearConstraint, NonlinearConstraint, PolyObjective
from podi.network import NETWORK_ID_PREFIX, BRANCH_DATA_PARAMETERS
from sympy import Eq, sin, cos, tan, Le  
from math import inf, pi, floor, ceil
from numpy import array, append
from podi.curtailment_info import WEIGHTING_PARAMETER_FOR_CURTAILMENT



######################################
# CONSTANTS                          #
######################################


MINLP_NAME = 'ac_opf'
DC_APPROXIMATOIN_NAME = 'dc_opf'

VOLTAGE_SQUARE_VARIABLE_NAME = 'voltage_square'    #c_kk in Paper
#VOLTAGE_SQUARE_SQUARE_VARIABLE_NAME = 'voltage_square_square'
VOLTAGE_SQUARES_SUM_VARIABLE_NAME = 'voltage_squares_sum'
VOLTAGE_PRODUCT_REAL_TAN_SUM_VARIABLE_NAME = 'voltage_product_real_tan_sum'
TAN_UNIVARIATE_SUBSTITUTION_VARIABLE_NAME = 'tan_univariate_subst'
QUADRATIC_UNIVARIATE_SUBSTITUTION_VARIABLE_NAME = 'quadratic_univariate_subst'
#VOLTAGE_SQUARES_SUM_SQUARE_VARIABLE_NAME = 'voltage_squares_sum_square'
PHASE_ANGLE_VARIABLE_NAME = 'phase_angle'    #theta_k in Paper
PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME = 'angle_difference'    #theta_kl in Paper
REAL_POWER_GEN_VARIABLE_NAME = 'real_power_gen'    #P in Paper
REACTIVE_POWER_GEN_VARIABLE_NAME = 'reactive_power_gen'    #Q in Paper
REAL_FLOW_VARIABLE_NAME = 'real_power_flow'    #p in Paper
REACTIVE_FLOW_VARIABLE_NAME = 'reactive_power_flow'    #q in Paper
VOLTAGE_PRODUCT_REAL_VARIABLE_NAME = 'voltage_product_real'    #c_kl in Paper
VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME = 'voltage_product_imaginary'    #t_kl in Paper
GENERATOR_SWITCH_VARIABLE_NAME = 'generator_switch'    #s in Paper
TRANSMISSION_SWITCH_VARIABLE_NAME = 'transmission_switch'
SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME = 'switched_voltage_square'
CURTAILMENT_VARIABLE_NAME = 'curtailment'
CURTAILMENT_BINARIES_VARIABLE_NAME = 'curtailment_binaries'
CURTAILMENT_INDICATOR_VARIABLE_NAME = 'curtailment_indicator'
CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME = 'curtailment_indicator_product'
FEED_IN_VARIABLE_NAME = 'curtailed_feed_in'

BILINEAR_CONSTRAINT_TYPE_NAME = 'bilinear'
DISCRETE_BILINEAR_CONSTRAINT_TYPE_NAME = 'discrete_bilinear'
QUADRATIC_CONSTRAINT_TYPE_NAME = 'quadratic' 
SIN_CONSTRAINT_TYPE_NAME = 'sin'
COS_CONSTRAINT_TYPE_NAME = 'cos'
TAN_CONSTRAINT_TYPE_NAME = 'tan'

REAL_FLOW_CONSERVATION_CONSTRAINT_NAME = 'real_flow_conservation'   
REACTIVE_FLOW_CONSERVATION_CONSTRAINT_NAME = 'reactive_flow_conservation'    
REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME = 'real_power_flow_equation'    
REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME = 'reactive_power_flow_equation'  

REFERENCE_ANGLE_CONSTRAINT_NAME = 'reference_angle'    
PHASE_ANGLE_DIFFERENCE_EQUATION_CONSTRAINT_NAME = 'angle_difference_equation'    
CONIC_QUADRATIC_CONSTRAINT_NAME = 'conic_quadratic'    
TRIGONOMETRIC_CONSTRAINT_NAME =  'trigonometric'  
THERMAL_LIMIT_CONSTRAINT_NAME = 'thermal_limit'    

GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME = 'generator_switch_lower'   
GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME = 'generator_switch_upper'    

GENERATOR_SWITCH_REACTIVE_LOWER_CONSTRAINT_NAME = 'generator_switch__reactive_lower'    
GENERATOR_SWITCH_REACTIVE_UPPER_CONSTRAINT_NAME = 'generator_switch_reactive_upper'   

SWITCHED_VOLTAGE_PRODUCT_REAL_LOWER_CONSTRAINT_NAME = 'voltage_product_real_lower'
SWITCHED_VOLTAGE_PRODUCT_REAL_UPPER_CONSTRAINT_NAME = 'voltage_product_real_upper'
SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_LOWER_CONSTRAINT_NAME = 'voltage_product_imaginary_lower'
SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_UPPER_CONSTRAINT_NAME = 'voltage_product_imaginary_upper'
SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME = 'voltage_square_big_m'

CURTAILMENT_OPTIONS_CONSTRAINT_NAME = 'curtailment_option'
CURTAILMENT_SOS_CONSTRAINT_NAME = 'curtailment_sos'
CURTAILMENT_BIG_M_CONSTRAINT_NAME = 'curtailment_big_m'
CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME = 'curtailment_product_big_m'

OBJECTIVE_NAME = 'objective'   
TAN_SWITCHING_ANGLE = pi/2



######################################
# CLASSES                            #
######################################


class AcOpfMinlpBuilder(object):
    
    def build(self, network, parameters='', curtailment_info=[]):
        ac_opf_minlp = Minlp( create_minlp_id(network) )
        self.build_ac_opf_variables(ac_opf_minlp, network, parameters, curtailment_info)
        self.build_ac_opf_constraints(ac_opf_minlp, network, parameters, curtailment_info)
        
   
        self.build_ac_opf_objective(ac_opf_minlp, network, curtailment_info, parameters)
        return ac_opf_minlp
    

    def build_ac_opf_variables(self, ac_opf_minlp, network, parameters, curtailment_info):    
        self.build_ac_opf_variables_generator_switch(ac_opf_minlp, network, parameters)
        self.build_ac_opf_variables_voltage_square(ac_opf_minlp, network, parameters)
        self.build_ac_opf_variables_phase_angle(ac_opf_minlp, network)
        self.build_ac_opf_variables_phase_angle_difference(ac_opf_minlp, network)
        self.build_ac_opf_variables_real_power_gen(ac_opf_minlp, network, parameters)
        self.build_ac_opf_variables_reactive_power_gen(ac_opf_minlp, network, parameters)
        

        
        
        if parameters['transmission_switching'] == 1:
            self.build_ac_opf_variables_transmission_switch(ac_opf_minlp, network)
            self.build_ac_opf_variables_switched_voltage_square(ac_opf_minlp, network)
        
        self.build_ac_opf_variables_real_flow(ac_opf_minlp, network)
        self.build_ac_opf_variables_reactive_flow(ac_opf_minlp, network)
        self.build_ac_opf_variables_voltage_product_real(ac_opf_minlp, network, parameters)
        self.build_ac_opf_variables_voltage_product_imaginary(ac_opf_minlp, network, parameters)
        
        if parameters['discrete_curtailment'] == 1:
            self.build_ac_opf_variables_feed_in(ac_opf_minlp, curtailment_info, network)
            self.build_ac_opf_variables_curtailment_binaries(ac_opf_minlp, curtailment_info)



    def build_ac_opf_constraints(self, ac_opf_minlp, network, parameters, curtailment_info):
        
        if parameters['discrete_curtailment'] == 1:
            self.build_ac_opf_constraints_real_flow_conservation(ac_opf_minlp, network, curtailment_info)
            self.build_ac_opf_constraints_reactive_flow_conservation(ac_opf_minlp, network, curtailment_info)
        else:
            self.build_ac_opf_constraints_real_flow_conservation(ac_opf_minlp, network)   
            self.build_ac_opf_constraints_reactive_flow_conservation(ac_opf_minlp, network)
            

        self.build_ac_opf_constraints_real_power_flow_equation(ac_opf_minlp, network, parameters)
        self.build_ac_opf_constraints_reactive_power_flow_equation(ac_opf_minlp, network, parameters)
        self.build_ac_opf_constraints_conic_quadratic_constraint(ac_opf_minlp, network, parameters)
        self.build_ac_opf_constraints_trigonometric_constraint(ac_opf_minlp, network, parameters)
        self.build_ac_opf_constraints_thermal_limit(ac_opf_minlp, network)
        self.build_ac_opf_constraints_reference_anlge(ac_opf_minlp, network)
        self.build_ac_opf_constraints_phase_angle_difference_equation(ac_opf_minlp, network)


        self.build_ac_opf_constraints_generator_switch_lower_constraint(ac_opf_minlp, network)
        self.build_ac_opf_constraints_generator_switch_upper_constraint(ac_opf_minlp, network)
        self.build_ac_opf_constraints_generator_switch_reactive_lower_constraint(ac_opf_minlp, network)
        self.build_ac_opf_constraints_generator_switch_reactive_upper_constraint(ac_opf_minlp, network)
            
        if parameters['transmission_switching'] == 1:
            self.build_ac_opf_constraints_switched_voltage_product_real_lower_constraint(ac_opf_minlp, network)
            self.build_ac_opf_constraints_switched_voltage_product_real_upper_constraint(ac_opf_minlp, network)
            self.build_ac_opf_constraints_switched_voltage_product_imaginary_lower_constraint(ac_opf_minlp, network)
            self.build_ac_opf_constraints_switched_voltage_product_imaginary_upper_constraint(ac_opf_minlp, network)
            self.build_ac_opf_constraints_switched_voltage_square_big_m(ac_opf_minlp, network)
            
            if parameters['fix_number_of_switched_transmissions'] == 1:
                self.build_ac_opf_constraints_number_of_switched_transmissions(ac_opf_minlp, network, parameters['number_of_fixed_transmissions'])

        if parameters['discrete_curtailment'] == 1:
            self.build_ac_opf_constraints_curtailment_option(ac_opf_minlp, network, curtailment_info)
            self.build_ac_opf_constraints_curtailment_sos_constraint(ac_opf_minlp, network, curtailment_info)



    def build_special_objective(self, ac_opf_minlp):
        objective = LinearObjective('special')
        variables = []
        coeffs = []
        for key in ac_opf_minlp.variables['transmission_switch'].keys():
            variables.append( ac_opf_minlp.variables['transmission_switch'][key])
            coeffs.append( 1 )
        objective.build_linear_objective_expression(variables, coeffs, 'min')
        ac_opf_minlp.set_objective(objective)
        
    def build_ac_opf_objective(self, ac_opf_minlp, network, curtailment_info, parameters):
        
        if get_objective_type(network) == 'linear':
            objective = LinearObjective(OBJECTIVE_NAME)

            variables = []
            coefficients = []
            rhs_constant = 0
            for node_id in network.graph.nodes:
                bus = network.get_bus_data(node_id)
                
                if  bus.has_generators == True:
                    if len(bus.generators)==1:    
                        gen = bus.generators[0]    
                        if 'generator_switch' in ac_opf_minlp.variables.keys():
                            variables.append( ac_opf_minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id])
                            variables.append( ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id] )
                            coefficients.append(gen.coeff_p_0)
                            coefficients.append(gen.coeff_p_1*100)
                        else:
                            
                            variables.append( ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id] )
                            rhs_constant = rhs_constant + gen.coeff_p_0
                            coefficients.append(gen.coeff_p_1*100)
                    else:    
                        number = 1
                        for gen in bus.generators:
                            if 'generator_switch' in ac_opf_minlp.variables.keys():
                                variables.append( ac_opf_minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number])
                                variables.append( ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number] )
                                coefficients.append(gen.coeff_p_0)
                                coefficients.append(gen.coeff_p_1*100)
                            else:
                                
                                variables.append( ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number] )
                                rhs_constant = rhs_constant + gen.coeff_p_0
                                coefficients.append(gen.coeff_p_1*100)
                            number = number + 1
            
            if curtailment_info != []:

                cost_factor_for_curtailment = round(compute_curtailment_cost_factor_linear(coefficients, variables, rhs_constant, curtailment_info, network.base_MVA),4)
                
                for i in range(len(coefficients)):
                    coefficients[i] = coefficients[i]
                                
                for node_id in curtailment_info.curtailment_nodes:
                    node_info = curtailment_info.get_curtailment_node_info( node_id )
                    variables.append( ac_opf_minlp.variables[FEED_IN_VARIABLE_NAME][node_id] )
                    coefficients.append( -cost_factor_for_curtailment  )
                    rhs_constant = rhs_constant + 2*cost_factor_for_curtailment*node_info.produced_power/network.base_MVA
            
            objective.build_linear_objective_expression(variables,coefficients, 'min', rhs_constant)
        elif get_objective_type(network) == 'polynomial':
            objective = PolyObjective(OBJECTIVE_NAME)
            variables =[]
            expression = 0
            for node_id in network.graph.nodes:
                bus = network.get_bus_data(node_id)
                
                if  bus.has_generators == True:
                    if len(bus.generators)==1:   
                        gen = bus.generators[0]    
                        if 'generator_switch' in ac_opf_minlp.variables.keys():
                            switch_var = ac_opf_minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id]
                            gen_var = ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id]
                            variables.append( switch_var )
                            variables.append( gen_var )
                            expression = expression + gen.coeff_p_2*((gen_var.sympy_symbol*100)**2) + gen.coeff_p_1*100*gen_var.sympy_symbol + gen.coeff_p_0 * switch_var.sympy_symbol
                        else:
                            
                            gen_var = ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id]
                            
                            variables.append( gen_var )
                            expression = expression + gen.coeff_p_2*((100*gen_var.sympy_symbol)**2) + gen.coeff_p_1*100*gen_var.sympy_symbol + gen.coeff_p_0 

                        
                    else:    
                        number = 1
                        for gen in bus.generators:
                            if 'generator_switch' in ac_opf_minlp.variables.keys():
                                switch_var = ac_opf_minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number]
                                gen_var = ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number]
                                variables.append( switch_var )
                                variables.append( gen_var )
                                expression = expression + gen.coeff_p_2*((100*gen_var.sympy_symbol)**2) + gen.coeff_p_1*100*gen_var.sympy_symbol + gen.coeff_p_0 * switch_var.sympy_symbol
                            
                            else:
                                
                                gen_var = ac_opf_minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number]
                                
                                variables.append( gen_var )
                                expression = expression + gen.coeff_p_2*((100*gen_var.sympy_symbol)**2) + gen.coeff_p_1*100*gen_var.sympy_symbol + gen.coeff_p_0 
     
                            
                            number = number +1
            

            if curtailment_info != []:
                
                cost_factor_for_curtailment = compute_curtailment_cost_factor_polynomial(expression, variables, curtailment_info, network.base_MVA)
                expression = expression
                
                for node_id in curtailment_info.curtailment_nodes:
                    node_info = curtailment_info.get_curtailment_node_info( node_id )
                    feed_in_var = ac_opf_minlp.variables[FEED_IN_VARIABLE_NAME][node_id]
                    variables.append( feed_in_var )
                    
         
                    expression = expression + (2*cost_factor_for_curtailment*node_info.produced_power/network.base_MVA) - (cost_factor_for_curtailment)*feed_in_var.sympy_symbol              


                           
            objective.build_polynomial_objective_expression(expression, 'min', variables)
        else:
            print('nonlinear objective not implemented')

        ac_opf_minlp.set_objective(objective)


    def build_ac_opf_variables_voltage_square(self, ac_opf_minlp, network, parameters):
        voltage_square = {}   
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)    
            bus_data = bus.data   
            voltage_square_lower_bound = bus_data['minimum_voltage_magnitude']**2    
            voltage_square_upper_bound = bus_data['maximum_voltage_magnitude']**2   
            var = define_voltage_square_variable(VOLTAGE_SQUARE_VARIABLE_NAME, node_id, voltage_square_lower_bound, voltage_square_upper_bound)
            var.set_given_initial_value( bus_data['voltage_magnitude']**2 )
            voltage_square.update( {node_id : var} )    

            
        ac_opf_minlp.add_variable({VOLTAGE_SQUARE_VARIABLE_NAME : voltage_square})   


    def build_ac_opf_variables_phase_angle(self, ac_opf_minlp, network):
        phase_angle = {}    
        for node_id in network.graph.nodes:
            var = define_phase_angle_variable(PHASE_ANGLE_VARIABLE_NAME, node_id)
            bus_data = network.get_bus_data(node_id).data
            var.set_given_initial_value( round(bus_data['voltage_angle']*2*pi/360, 4) )
            phase_angle.update( {node_id : var} ) 
        ac_opf_minlp.add_variable({PHASE_ANGLE_VARIABLE_NAME : phase_angle})            


    def build_ac_opf_variables_phase_angle_difference(self, ac_opf_minlp, network):
        phase_angle_difference = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data
            bus1_data = network.get_bus_data(from_bus_id).data
            bus2_data = network.get_bus_data(to_bus_id).data
            
            angle_diff_lower_bound = floor(branch_data['min_angle_diff']*2*pi/360*1e4)/1e4
            angle_diff_upper_bound = ceil(branch_data['max_angle_diff']*2*pi/360*1e4)/1e4
            if angle_diff_lower_bound == 0 and angle_diff_upper_bound == 0:    #MATPOWER Konvention
                angle_diff_lower_bound = floor(-2*pi * 1e4) / 1e4
                angle_diff_upper_bound = ceil(2*pi * 1e4) /1e4
            angle = (network.get_branch_data(from_bus_id,to_bus_id).data['angle']*2*pi)/360
            angle_diff_lower_bound = angle_diff_lower_bound - angle
            angle_diff_upper_bound = angle_diff_upper_bound - angle
            var = define_phase_angle_difference_variable(PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME, from_bus_id, to_bus_id, angle_diff_lower_bound, angle_diff_upper_bound)
            var.set_given_initial_value( (bus1_data['voltage_angle']-bus2_data['voltage_angle']-angle)*2*pi/360 )
            phase_angle_difference.update( { (from_bus_id, to_bus_id) : var } )
        ac_opf_minlp.add_variable({PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME : phase_angle_difference})

        
    def build_ac_opf_variables_real_power_gen(self, ac_opf_minlp, network, parameters):
        real_power_gen = {}
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)    #read bus data

            if  bus.has_generators == True:
                if len(bus.generators)==1:    #bus has one generator
                    gen_data = bus.generators[0].data    #read generator data
                    
                    if gen_data['total_MVA_base']  == 0:
                        gen_MVA_base = network.base_MVA
                    else:
                        gen_MVA_base = gen_data['total_MVA_base'] 
                    
                    if 'generator_switch' in ac_opf_minlp.variables.keys():
                        
                        if gen_data['minimum_real_power_output']/gen_MVA_base  <= 0:
                            real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base
                        else:
                            real_lower_bound = 0
                        
                        if gen_data['maximum_real_power_output']/gen_MVA_base  >= 0:
                            real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base 
                        else:
                            real_upper_bound = 0
                    else:
                            real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base
                            real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base 

                    var = define_real_power_gen_variable(REAL_POWER_GEN_VARIABLE_NAME, node_id, real_lower_bound, real_upper_bound)
                    var.set_given_initial_value( gen_data['real_power_output']/gen_MVA_base  )
                    real_power_gen.update( {node_id : var} )
                else:
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator data
                        
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base']                         
                        
                        if 'generator_switch' in ac_opf_minlp.variables.keys():
                            
                            if gen_data['minimum_real_power_output']/gen_MVA_base  <= 0:
                                real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base 
                            else:
                                real_lower_bound = 0
                            
                            if gen_data['maximum_real_power_output']/gen_MVA_base >= 0:
                                real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base
                            else:
                                real_upper_bound = 0
                        
                        else:
                        
                            real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base 
                  
                            real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base
                 
                        
                        var = define_real_power_gen_variable(REAL_POWER_GEN_VARIABLE_NAME, node_id, real_lower_bound, real_upper_bound, number)
                        var.set_given_initial_value( gen_data['real_power_output']/gen_MVA_base )
                        real_power_gen.update( {(node_id, number) : var} )
                        number = number + 1
                    
                    
        ac_opf_minlp.add_variable({REAL_POWER_GEN_VARIABLE_NAME : real_power_gen})


    def build_ac_opf_variables_reactive_power_gen(self, ac_opf_minlp, network, parameters):
        reactive_power_gen = {}
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)    #read bus data

            if  bus.has_generators == True:
                if len(bus.generators)==1:    #bus has one generator
                    gen_data = bus.generators[0].data    #read generator data
                    
                    if gen_data['total_MVA_base']  == 0:
                        gen_MVA_base = network.base_MVA
                    else:
                        gen_MVA_base = gen_data['total_MVA_base'] 
                    
                    if 'generator_switch' in ac_opf_minlp.variables.keys():
                        if gen_data['minimum_reactive_power_output']/gen_MVA_base  <= 0:
                            reactive_lower_bound = gen_data['minimum_reactive_power_output']/gen_MVA_base
                        else:
                            reactive_lower_bound = 0
                        
                        if gen_data['maximum_reactive_power_output']/gen_MVA_base  >= 0:
                            reactive_upper_bound = gen_data['maximum_reactive_power_output']/gen_MVA_base 
                        else:
                            reactive_upper_bound = 0
                    else:
                        reactive_lower_bound = gen_data['minimum_reactive_power_output']/gen_MVA_base
                        reactive_upper_bound = gen_data['maximum_reactive_power_output']/gen_MVA_base 
                       


                    var = define_reactive_power_gen_variable(REACTIVE_POWER_GEN_VARIABLE_NAME, node_id, reactive_lower_bound, reactive_upper_bound)
                    var.set_given_initial_value( gen_data['reactive_power_output']/gen_MVA_base )
                    reactive_power_gen.update( {node_id : var} )                    
                    
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator data
                
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base']                 

                        if 'generator_switch' in ac_opf_minlp.variables.keys():
                            if gen_data['minimum_reactive_power_output']/gen_MVA_base  <= 0:
                                reactive_lower_bound = gen_data['minimum_reactive_power_output']/gen_MVA_base
                            else:
                                reactive_lower_bound = 0
                            
                            if gen_data['maximum_reactive_power_output']/gen_MVA_base  >= 0:
                                reactive_upper_bound = gen_data['maximum_reactive_power_output']/gen_MVA_base 
                            else:
                                reactive_upper_bound = 0
                
                        else:
                            reactive_lower_bound = gen_data['minimum_reactive_power_output']/gen_MVA_base
                            reactive_upper_bound = gen_data['maximum_reactive_power_output']/gen_MVA_base 
                           
                        var = define_reactive_power_gen_variable(REACTIVE_POWER_GEN_VARIABLE_NAME, node_id, reactive_lower_bound, reactive_upper_bound, number)
                        var.set_given_initial_value( gen_data['reactive_power_output']/gen_MVA_base )
                        reactive_power_gen.update( {(node_id, number) : var} )                    
                        number = number + 1

        ac_opf_minlp.add_variable({REACTIVE_POWER_GEN_VARIABLE_NAME : reactive_power_gen})       


    def build_ac_opf_variables_generator_switch(self, ac_opf_minlp, network, parameters):
        generator_switch = {}
        
        if parameters['generator_switching'] == 0:
            lower_bound = 1
        else:
            lower_bound = 0
        upper_bound = 1
        #create node_variables
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)    #read bus data

            if  bus.has_generators == True:
                if len(bus.generators)==1:    #bus has one generator
                    var = define_generator_switch_variable(GENERATOR_SWITCH_VARIABLE_NAME, node_id, lower_bound, upper_bound)
                    var.set_given_initial_value(1)
                    generator_switch.update( { node_id : var } )
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        var = define_generator_switch_variable(GENERATOR_SWITCH_VARIABLE_NAME, node_id, lower_bound, upper_bound,  number) 
                        var.set_given_initial_value(1)
                        generator_switch.update( { (node_id, number) : var } )
                        number = number + 1
                        

        ac_opf_minlp.add_variable({GENERATOR_SWITCH_VARIABLE_NAME : generator_switch})

    
    def build_ac_opf_variables_transmission_switch(self, ac_opf_minlp, network):
        transmission_switch = {}
        
        for (from_bus_id, to_bus_id) in network.graph.edges:
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data
            lower_bound = 0
            upper_bound = 1
            var = define_transmission_switch_variable(TRANSMISSION_SWITCH_VARIABLE_NAME, from_bus_id, to_bus_id, lower_bound, upper_bound )
            var.set_given_initial_value( 1 )
            transmission_switch.update( {(from_bus_id, to_bus_id) : var} )
 
            
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                var = define_transmission_switch_variable(TRANSMISSION_SWITCH_VARIABLE_NAME, from_bus_id, to_bus_id, lower_bound, upper_bound, number)
                var.set_given_initial_value( 1 )
                transmission_switch.update( {(from_bus_id, to_bus_id, number) : var} )
             
        ac_opf_minlp.add_variable({TRANSMISSION_SWITCH_VARIABLE_NAME : transmission_switch})


    def build_ac_opf_variables_switched_voltage_square(self, ac_opf_minlp, network):
        switched_voltage_square = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            bus = network.get_bus_data(from_bus_id)    #read bus data
            bus_data = bus.data    #read bus data
            voltage_square_lower_bound = 0    #read lower bound
            voltage_square_upper_bound = bus_data['maximum_voltage_magnitude']**2    #read upper bound
            
            var1 = define_switched_voltage_square_variable(SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_square_lower_bound, voltage_square_upper_bound)
            var1.set_given_initial_value( bus_data['voltage_magnitude']**2 )
            
            bus = network.get_bus_data(to_bus_id)    #read bus data
            bus_data = bus.data    #read bus data
            voltage_square_lower_bound = 0    #read lower bound
            voltage_square_upper_bound = bus_data['maximum_voltage_magnitude']**2    #read upper bound
            
            var2 = define_switched_voltage_square_variable(SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME, to_bus_id, from_bus_id, voltage_square_lower_bound, voltage_square_upper_bound)
            var2.set_given_initial_value( bus_data['voltage_magnitude']**2 )

            switched_voltage_square.update( { (from_bus_id, to_bus_id) : var1 } )    #one direction
            switched_voltage_square.update( { (to_bus_id, from_bus_id) : var2 } )    #other direction
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data    
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                bus = network.get_bus_data(from_bus_id)    #read bus data
                bus_data = bus.data    #read bus data
                voltage_square_lower_bound = 0    #read lower bound
                voltage_square_upper_bound = bus_data['maximum_voltage_magnitude']**2    #read upper bound
                
                var1 = define_switched_voltage_square_variable(SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_square_lower_bound, voltage_square_upper_bound, number)
                var1.set_given_initial_value( bus_data['voltage_magnitude']**2 )
                
                bus = network.get_bus_data(to_bus_id)    #read bus data
                bus_data = bus.data    #read bus data
                voltage_square_lower_bound = 0    #read lower bound
                voltage_square_upper_bound = bus_data['maximum_voltage_magnitude']**2    #read upper bound
                
                var2 = define_switched_voltage_square_variable(SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME, to_bus_id, from_bus_id, voltage_square_lower_bound, voltage_square_upper_bound, number)
                var2.set_given_initial_value( bus_data['voltage_magnitude']**2 )
    
                switched_voltage_square.update( { (from_bus_id, to_bus_id, number) : var1 } )    #one direction
                switched_voltage_square.update( { (to_bus_id, from_bus_id, number) : var2 } )    #other direction        
            
        ac_opf_minlp.add_variable({SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME : switched_voltage_square})


    def build_ac_opf_variables_real_flow(self, ac_opf_minlp, network):
        real_flow = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data
            if branch_data['rateA'] > 0:
                flow_lower_bound = -branch_data['rateA']/network.base_MVA
                flow_upper_bound = branch_data['rateA']/network.base_MVA
            else:
                flow_lower_bound = -inf
                flow_upper_bound = inf
            var1 = define_real_flow_variable(REAL_FLOW_VARIABLE_NAME, from_bus_id, to_bus_id, flow_lower_bound, flow_upper_bound)
            var1.set_given_initial_value(flow_upper_bound)
            var2 = define_real_flow_variable(REAL_FLOW_VARIABLE_NAME, to_bus_id, from_bus_id, flow_lower_bound, flow_upper_bound)
            var2.set_given_initial_value(flow_upper_bound)

            real_flow.update( { (from_bus_id, to_bus_id) : var1 } )    #one direction
            real_flow.update( { (to_bus_id, from_bus_id) : var2 } )    #other direction
            
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                if branch_data['rateA_' + str(number)] > 0:
                    flow_lower_bound = -branch_data['rateA_' + str(number)]/network.base_MVA
                    flow_upper_bound = branch_data['rateA_' + str(number)]/network.base_MVA
                else:
                    flow_lower_bound = -inf
                    flow_upper_bound = inf
                var1 = define_real_flow_variable(REAL_FLOW_VARIABLE_NAME, from_bus_id, to_bus_id, flow_lower_bound, flow_upper_bound, number)
                var1.set_given_initial_value(flow_upper_bound)
                var2 = define_real_flow_variable(REAL_FLOW_VARIABLE_NAME, to_bus_id, from_bus_id, flow_lower_bound, flow_upper_bound, number)
                var2.set_given_initial_value(flow_upper_bound)
                real_flow.update( { (from_bus_id, to_bus_id, number) : var1 } )    #one direction
                real_flow.update( { (to_bus_id, from_bus_id, number) : var2 } )    #other direction                
            
        ac_opf_minlp.add_variable({REAL_FLOW_VARIABLE_NAME : real_flow})

        
    def build_ac_opf_variables_reactive_flow(self, ac_opf_minlp, network):
        reactive_flow = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data
            if branch_data['rateA'] > 0:
                flow_lower_bound = -branch_data['rateA']/network.base_MVA
                flow_upper_bound = branch_data['rateA']/network.base_MVA  
            else:
                flow_lower_bound = -inf
                flow_upper_bound = inf
            var1 = define_reactive_flow_variable(REACTIVE_FLOW_VARIABLE_NAME, from_bus_id, to_bus_id, flow_lower_bound, flow_upper_bound)
            var1.set_given_initial_value(flow_upper_bound)
            var2 = define_reactive_flow_variable(REACTIVE_FLOW_VARIABLE_NAME, to_bus_id, from_bus_id, flow_lower_bound, flow_upper_bound) 
            var2.set_given_initial_value(flow_upper_bound)
            reactive_flow.update( { (from_bus_id, to_bus_id) : var1 } )
            reactive_flow.update( { (to_bus_id, from_bus_id) : var2 } )     
            
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1            
                if branch_data['rateA_'+str(number)] > 0:
                    flow_lower_bound = -branch_data['rateA_'+str(number)]/network.base_MVA
                    flow_upper_bound = branch_data['rateA_'+str(number)]/network.base_MVA  
                else:
                    flow_lower_bound = -inf
                    flow_upper_bound = inf
                var1 = define_reactive_flow_variable(REACTIVE_FLOW_VARIABLE_NAME, from_bus_id, to_bus_id, flow_lower_bound, flow_upper_bound, number)
                var1.set_given_initial_value(flow_upper_bound)
                var2 = define_reactive_flow_variable(REACTIVE_FLOW_VARIABLE_NAME, to_bus_id, from_bus_id, flow_lower_bound, flow_upper_bound, number) 
                var2.set_given_initial_value(flow_upper_bound)
                reactive_flow.update( { (from_bus_id, to_bus_id, number) : var1 } )
                reactive_flow.update( { (to_bus_id, from_bus_id, number) : var2 } )    
            
            
        ac_opf_minlp.add_variable({REACTIVE_FLOW_VARIABLE_NAME : reactive_flow})

        
    def build_ac_opf_variables_voltage_product_real(self, ac_opf_minlp, network, parameters):
        voltage_product_real = {}    
        #voltage_squares_sum = {}
        #voltage_product_real_tan_sum = {}
        #tan_uni_subs = {}
        #voltage_squares_sum_square = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            
            from_bus_data = network.get_bus_data(from_bus_id).data
            to_bus_data = network.get_bus_data(to_bus_id).data
            max_voltage_from = from_bus_data['maximum_voltage_magnitude']
            max_voltage_to = to_bus_data['maximum_voltage_magnitude']

            voltage_product_real_lower_bound = -max_voltage_from*max_voltage_to
            voltage_product_real_upper_bound = -voltage_product_real_lower_bound
            
            var = define_voltage_product_real_variable(VOLTAGE_PRODUCT_REAL_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_product_real_lower_bound, voltage_product_real_upper_bound)
            initial_value = from_bus_data['voltage_magnitude']*to_bus_data['voltage_magnitude']*float(cos(ac_opf_minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id].given_initial_value))
            var.set_given_initial_value( initial_value )
            
            voltage_product_real.update( { (from_bus_id,to_bus_id) : var } )
            
            if parameters['transmission_switching'] == 1:
                branch_data = network.get_branch_data(from_bus_id, to_bus_id).data
                for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                    number = i + 1
                    var = define_voltage_product_real_variable(VOLTAGE_PRODUCT_REAL_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_product_real_lower_bound, voltage_product_real_upper_bound, number)
                    initial_value = from_bus_data['voltage_magnitude']*to_bus_data['voltage_magnitude']*float(cos(ac_opf_minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id].given_initial_value))
                    var.set_given_initial_value( initial_value )     
                    
                    voltage_product_real.update( { (from_bus_id,to_bus_id, number) : var } )
 
        ac_opf_minlp.add_variable({VOLTAGE_PRODUCT_REAL_VARIABLE_NAME : voltage_product_real})


        
    def build_ac_opf_variables_voltage_product_imaginary(self, ac_opf_minlp, network, parameters):
        voltage_product_imaginary = {}
     
        for (from_bus_id, to_bus_id) in network.graph.edges:
            
            from_bus_data = network.get_bus_data(from_bus_id).data
            to_bus_data = network.get_bus_data(to_bus_id).data
            max_voltage_from = from_bus_data['maximum_voltage_magnitude']
            max_voltage_to = to_bus_data['maximum_voltage_magnitude']

            voltage_product_imaginary_lower_bound = -max_voltage_from*max_voltage_to
            voltage_product_imaginary_upper_bound = -voltage_product_imaginary_lower_bound
            var = define_voltage_product_imaginary_variable(VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_product_imaginary_lower_bound, voltage_product_imaginary_upper_bound)
            
            initial_value = -from_bus_data['voltage_magnitude']*to_bus_data['voltage_magnitude']*float(sin(ac_opf_minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id].given_initial_value))
            var.set_given_initial_value( initial_value )
            voltage_product_imaginary.update( { (from_bus_id,to_bus_id) : var } )
            
            if parameters['transmission_switching'] == 1:
                branch_data = network.get_branch_data(from_bus_id, to_bus_id).data
                for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                    number = i + 1
                    var = define_voltage_product_imaginary_variable(VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_product_imaginary_lower_bound, voltage_product_imaginary_upper_bound, number)
                    
                    initial_value = -from_bus_data['voltage_magnitude']*to_bus_data['voltage_magnitude']*float(sin(ac_opf_minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id].given_initial_value))
                    var.set_given_initial_value( initial_value )
                    voltage_product_imaginary.update( { (from_bus_id,to_bus_id, number) : var } )
            

        ac_opf_minlp.add_variable({VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME : voltage_product_imaginary})



    def build_ac_opf_variables_curtailment(self, ac_opf_minlp, curtailment_info):
        curtailment = {}
        for node in curtailment_info.curtailment_nodes:
            node_info =  curtailment_info.get_curtailment_node_info( node )
            lower_bound = min(node_info.curtailment_options)
            upper_bound = max(node_info.curtailment_options)
            var = define_curtailment_variable(CURTAILMENT_VARIABLE_NAME, node, lower_bound, upper_bound)
            
            var.set_given_initial_value( lower_bound )
            curtailment.update( { node : var } )
            
        ac_opf_minlp.add_variable( {CURTAILMENT_VARIABLE_NAME : curtailment  } )
  
    def build_ac_opf_variables_feed_in(self, ac_opf_minlp, curtailment_info, network):
        feed_in = {}
        for node in curtailment_info.curtailment_nodes:
            node_info =  curtailment_info.get_curtailment_node_info( node )
            lower_bound = min(node_info.curtailment_options_absolute)/network.base_MVA
            upper_bound = max(node_info.curtailment_options_absolute)/network.base_MVA
            var = define_feed_in_variable(FEED_IN_VARIABLE_NAME, node, lower_bound, upper_bound)
            
            var.set_given_initial_value( lower_bound )
            feed_in.update( { node : var } )
            
        ac_opf_minlp.add_variable( {FEED_IN_VARIABLE_NAME : feed_in  } )
      
    def build_ac_opf_variables_curtailment_binaries(self, ac_opf_minlp, curtailment_info):
        curtailment_binaries = {}
        for node in curtailment_info.curtailment_nodes:
            node_info = curtailment_info.get_curtailment_node_info( node )
            number = 1
            for option in node_info.curtailment_options_absolute:
                if option != 0:
                    var = define_curtailment_binary_variable(CURTAILMENT_BINARIES_VARIABLE_NAME, node, number)
                    if min(node_info.curtailment_options) == 0:
                        initial_value = 0
                    elif min(node_info.curtailment_options) > 0 and number == 1:
                        initial_value = 1
                    else:
                        initial_value = 0
                    
                    var.set_given_initial_value( initial_value )
                    curtailment_binaries.update( { (node, number) : var } )
                    number = number + 1
                    
        ac_opf_minlp.add_variable( {CURTAILMENT_BINARIES_VARIABLE_NAME : curtailment_binaries  } )
            
                  
    def build_ac_opf_variables_curtailment_indicator(self, ac_opf_minlp, curtailment_info):
        curtailment_indicator = {}
        for node in curtailment_info.curtailment_nodes:
            var = define_curtailment_indicator_variable(CURTAILMENT_INDICATOR_VARIABLE_NAME, node)
            
            var.set_given_initial_value( 1 )
            curtailment_indicator.update( { node : var } )
            
        ac_opf_minlp.add_variable( {CURTAILMENT_INDICATOR_VARIABLE_NAME : curtailment_indicator  } )
       
        
    def build_ac_opf_variables_curtailment_indicator_product(self, ac_opf_minlp, curtailment_info):
        curtailment_indicator_product = {}
        for node in curtailment_info.curtailment_nodes:            
            
            node_info =  curtailment_info.get_curtailment_node_info( node )
            lower_bound = 0
            upper_bound = max(node_info.curtailment_options)
            
            var = define_curtailment_indicator_product_variable(CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME, node, lower_bound, upper_bound)
            
            initial_value = min(node_info.curtailment_options)
            var.set_given_initial_value( initial_value )
            
            curtailment_indicator_product.update( { node : var } )
            
        ac_opf_minlp.add_variable( {CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME : curtailment_indicator_product  } )        


    def build_ac_opf_constraints_real_flow_conservation(self, ac_opf_minlp, network, curtailment_info=[]):
        real_flow_conservation = {}
        for node_id in network.graph.nodes:
            real_flow_conservation.update( { node_id : build_real_flow_conservation(REAL_FLOW_CONSERVATION_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curtailment_info) } )   
        ac_opf_minlp.add_constraint({REAL_FLOW_CONSERVATION_CONSTRAINT_NAME : real_flow_conservation})
        
    
    def build_ac_opf_constraints_reactive_flow_conservation(self, ac_opf_minlp, network, curtailment_info=[]):
        reactive_flow_conservation = {}
        for node_id in network.graph.nodes:
            reactive_flow_conservation.update( { node_id : build_reactive_flow_conservation(REACTIVE_FLOW_CONSERVATION_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curtailment_info) } )   
        ac_opf_minlp.add_constraint({REACTIVE_FLOW_CONSERVATION_CONSTRAINT_NAME : reactive_flow_conservation})
        
        
    def build_ac_opf_constraints_real_power_flow_equation(self , ac_opf_minlp, network, parameters):
        real_power_flow_equation = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            real_power_flow_equation.update( { (from_bus_id, to_bus_id) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            real_power_flow_equation.update( { (to_bus_id, from_bus_id) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, to_bus_id, from_bus_id, ac_opf_minlp, network) } )

            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                real_power_flow_equation.update( { (from_bus_id, to_bus_id, number) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                real_power_flow_equation.update( { (to_bus_id, from_bus_id, number) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, to_bus_id, from_bus_id, ac_opf_minlp, network, number) } )
                

        ac_opf_minlp.add_constraint({REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME : real_power_flow_equation})
        
        
    def build_ac_opf_constraints_reactive_power_flow_equation(self, ac_opf_minlp, network, parameters):
        reactive_power_flow_equation = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            reactive_power_flow_equation.update( { (from_bus_id, to_bus_id) : build_reactive_power_flow_equation(REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            reactive_power_flow_equation.update( { (to_bus_id, from_bus_id) : build_reactive_power_flow_equation(REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME, to_bus_id, from_bus_id, ac_opf_minlp, network) } )
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                reactive_power_flow_equation.update( { (from_bus_id, to_bus_id, number) : build_reactive_power_flow_equation(REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                reactive_power_flow_equation.update( { (to_bus_id, from_bus_id, number) : build_reactive_power_flow_equation(REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME, to_bus_id, from_bus_id, ac_opf_minlp, network, number) } )
                
        
        ac_opf_minlp.add_constraint({REACTIVE_POWER_FLOW_EQUATION_CONSTRAINT_NAME : reactive_power_flow_equation})
        
        
    def build_ac_opf_constraints_conic_quadratic_constraint(self, ac_opf_minlp, network, parameters):
        conic_quadratic_constraint = {}
        #quadratic_sum_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            conic_quadratic_constraint.update( { (from_bus_id, to_bus_id) : build_conic_quadratic_constraint(CONIC_QUADRATIC_CONSTRAINT_NAME, from_bus_id , to_bus_id , ac_opf_minlp, '', parameters) } )
            

            
            if parameters['transmission_switching'] == 1:
                branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
                for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                    number = i + 1
                    conic_quadratic_constraint.update( { (from_bus_id, to_bus_id, number) : build_conic_quadratic_constraint(CONIC_QUADRATIC_CONSTRAINT_NAME, from_bus_id , to_bus_id , ac_opf_minlp, number, parameters) } )
                
            
        ac_opf_minlp.add_constraint({CONIC_QUADRATIC_CONSTRAINT_NAME : conic_quadratic_constraint}) 
        #if parameters['univariate_approximation'] == 1:
            #ac_opf_minlp.add_constraint({'sum_of_voltage_squares' : quadratic_sum_constraint})
        

    def build_ac_opf_constraints_trigonometric_constraint(self, ac_opf_minlp, network, parameters):
        trigonometric_constraint = {}
        #trigonometric_sum_constraint = {}
        #tan_uni_subs_constraint = {}
        #quadr_uni_subs_constraint = {}
        
        for (from_bus_id, to_bus_id) in network.graph.edges:
            trigonometric_constraint.update( { (from_bus_id, to_bus_id) : build_trigonometric_constraint(TRIGONOMETRIC_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp,'', parameters) } )

            
            if parameters['transmission_switching'] == 1:
                branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
                for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                    number = i + 1
                    trigonometric_constraint.update( { (from_bus_id, to_bus_id, number) : build_trigonometric_constraint(TRIGONOMETRIC_CONSTRAINT_NAME, from_bus_id , to_bus_id , ac_opf_minlp, number, parameters) } )
 
            


        ac_opf_minlp.add_constraint({TRIGONOMETRIC_CONSTRAINT_NAME : trigonometric_constraint})

            
    def build_ac_opf_constraints_thermal_limit(self, ac_opf_minlp, network):
        thermal_limit = {}   
        for (from_bus_id, to_bus_id) in network.graph.edges:
            if (network.get_branch_data(from_bus_id, to_bus_id)['rateA']/network.base_MVA) > 0:
                thermal_limit.update( { (from_bus_id, to_bus_id) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
                thermal_limit.update( { (to_bus_id, from_bus_id) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, to_bus_id, from_bus_id, ac_opf_minlp, network) } )
                
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                if (network.get_branch_data(from_bus_id, to_bus_id).data['rateA_2']/network.base_MVA) > 0:
                    number = i + 1        
                    thermal_limit.update( { (from_bus_id, to_bus_id, number) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                    thermal_limit.update( { (to_bus_id, from_bus_id, number) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, to_bus_id, from_bus_id, ac_opf_minlp, network, number) } )

        ac_opf_minlp.add_constraint({THERMAL_LIMIT_CONSTRAINT_NAME : thermal_limit})        


    def build_ac_opf_constraints_reference_anlge(self, ac_opf_minlp, network):
        reference_angle = {}
        for node_id in network.graph.nodes:
  
            bus = network.get_bus_data(node_id)
            if bus.data['bus_type']==3:    #reference_bus
                reference_angle.update( { node_id : build_reference_angle(REFERENCE_ANGLE_CONSTRAINT_NAME, node_id, ac_opf_minlp) } )
        ac_opf_minlp.add_constraint({REFERENCE_ANGLE_CONSTRAINT_NAME : reference_angle})
        
     
    def build_ac_opf_constraints_phase_angle_difference_equation(self, ac_opf_minlp, network):
        phase_angle_difference_equation = {}        
        for (from_bus_id, to_bus_id) in network.graph.edges:
            phase_angle_difference_equation.update( { (from_bus_id, to_bus_id) : build_phase_angle_difference_equation(PHASE_ANGLE_DIFFERENCE_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
        ac_opf_minlp.add_constraint({PHASE_ANGLE_DIFFERENCE_EQUATION_CONSTRAINT_NAME : phase_angle_difference_equation})


    def build_ac_opf_constraints_generator_switch_lower_constraint(self, ac_opf_minlp, network):
        generator_switch_lower_constraint = {}
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)
            if  bus.has_generators == True:
                if len(bus.generators)==1:    #bus has one generator
                    gen_data = bus.generators[0].data    #read generator data
                    
                    if gen_data['total_MVA_base']  == 0:
                        gen_MVA_base = network.base_MVA
                    else:
                        gen_MVA_base = gen_data['total_MVA_base'] 
                    
                    real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base
                    generator_switch_lower_constraint.update ( { node_id : build_generator_switch_lower_constraint(GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME, node_id, real_lower_bound, ac_opf_minlp) } )
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator data
                        
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base'] 
                        
                        real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base
                        generator_switch_lower_constraint.update ( { (node_id, number) : build_generator_switch_lower_constraint(GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME, node_id, real_lower_bound, ac_opf_minlp, number) } )
                        number = number + 1
                        
        ac_opf_minlp.add_constraint({GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME : generator_switch_lower_constraint})                
    

    def build_ac_opf_constraints_generator_switch_upper_constraint(self, ac_opf_minlp, network): 
        generator_switch_upper_constraint = {}
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)
            if  bus.has_generators == True:
                if len(bus.generators)==1:    #bus has one generator
                    gen_data = bus.generators[0].data    #read generator data
                    
                    if gen_data['total_MVA_base']  == 0:
                        gen_MVA_base = network.base_MVA
                    else:
                        gen_MVA_base = gen_data['total_MVA_base'] 
                    
                    real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base
                    generator_switch_upper_constraint.update ( { node_id : build_generator_switch_upper_constraint(GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME, node_id, real_upper_bound, ac_opf_minlp) } )
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator 
                        
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base']     
                    
                        real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base
                        generator_switch_upper_constraint.update ( { (node_id, number) : build_generator_switch_upper_constraint(GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME, node_id, real_upper_bound, ac_opf_minlp, number) } )
                        number = number + 1
        ac_opf_minlp.add_constraint({GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME : generator_switch_upper_constraint})


    def build_ac_opf_constraints_generator_switch_reactive_lower_constraint(self, ac_opf_minlp, network):
        generator_switch_reactive_lower_constraint = {}
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)
            if  bus.has_generators == True:
                if len(bus.generators)==1:    #bus has one generator
                    gen_data = bus.generators[0].data    #read generator data
                    
                    if gen_data['total_MVA_base']  == 0:
                        gen_MVA_base = network.base_MVA
                    else:
                        gen_MVA_base = gen_data['total_MVA_base'] 
                    
                    reactive_lower_bound = gen_data['minimum_reactive_power_output']/gen_MVA_base
                    generator_switch_reactive_lower_constraint.update ( { node_id : build_generator_switch_reactive_lower_constraint(GENERATOR_SWITCH_REACTIVE_LOWER_CONSTRAINT_NAME, node_id, reactive_lower_bound, ac_opf_minlp) } )
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator data
                        
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base'] 
                        
                        reactive_lower_bound = gen_data['minimum_reactive_power_output']/gen_MVA_base
                        generator_switch_reactive_lower_constraint.update ( { (node_id, number) : build_generator_switch_reactive_lower_constraint(GENERATOR_SWITCH_REACTIVE_LOWER_CONSTRAINT_NAME, node_id, reactive_lower_bound, ac_opf_minlp, number) } )
                        number = number + 1
                        
        ac_opf_minlp.add_constraint({GENERATOR_SWITCH_REACTIVE_LOWER_CONSTRAINT_NAME : generator_switch_reactive_lower_constraint})                
    

    def build_ac_opf_constraints_generator_switch_reactive_upper_constraint(self, ac_opf_minlp, network): 
        generator_switch_reactive_upper_constraint = {}
        for node_id in network.graph.nodes:
            bus = network.get_bus_data(node_id)
            if  bus.has_generators == True:
                if len(bus.generators)==1:    #bus has one generator
                    gen_data = bus.generators[0].data    #read generator data
                    
                    if gen_data['total_MVA_base']  == 0:
                        gen_MVA_base = network.base_MVA
                    else:
                        gen_MVA_base = gen_data['total_MVA_base'] 
                    
                    reactive_upper_bound = gen_data['maximum_reactive_power_output']/gen_MVA_base
                    generator_switch_reactive_upper_constraint.update ( { node_id : build_generator_switch_reactive_upper_constraint(GENERATOR_SWITCH_REACTIVE_UPPER_CONSTRAINT_NAME, node_id, reactive_upper_bound, ac_opf_minlp) } )
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator 
                        
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base']     
                    
                        reactive_upper_bound = gen_data['maximum_reactive_power_output']/gen_MVA_base
                        generator_switch_reactive_upper_constraint.update ( { (node_id, number) : build_generator_switch_reactive_upper_constraint(GENERATOR_SWITCH_REACTIVE_UPPER_CONSTRAINT_NAME, node_id, reactive_upper_bound, ac_opf_minlp, number) } )
                        number = number + 1
        ac_opf_minlp.add_constraint({GENERATOR_SWITCH_REACTIVE_UPPER_CONSTRAINT_NAME : generator_switch_reactive_upper_constraint})



    def build_ac_opf_constraints_switched_voltage_product_real_lower_constraint(self, ac_opf_minlp, network):
        switched_lower_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            switched_lower_constraint.update( { (from_bus_id, to_bus_id) : build_switched_voltage_product_real_lower_constraint(SWITCHED_VOLTAGE_PRODUCT_REAL_LOWER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                switched_lower_constraint.update( { (from_bus_id, to_bus_id, number) : build_switched_voltage_product_real_lower_constraint(SWITCHED_VOLTAGE_PRODUCT_REAL_LOWER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                
            
        ac_opf_minlp.add_constraint({SWITCHED_VOLTAGE_PRODUCT_REAL_LOWER_CONSTRAINT_NAME : switched_lower_constraint})
    

    def build_ac_opf_constraints_switched_voltage_product_real_upper_constraint(self, ac_opf_minlp, network):
        switched_upper_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            switched_upper_constraint.update( { (from_bus_id, to_bus_id) : build_switched_voltage_product_real_upper_constraint(SWITCHED_VOLTAGE_PRODUCT_REAL_UPPER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                switched_upper_constraint.update( { (from_bus_id, to_bus_id, number) : build_switched_voltage_product_real_upper_constraint(SWITCHED_VOLTAGE_PRODUCT_REAL_UPPER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                
            
        ac_opf_minlp.add_constraint({SWITCHED_VOLTAGE_PRODUCT_REAL_UPPER_CONSTRAINT_NAME : switched_upper_constraint})       
 

    def build_ac_opf_constraints_switched_voltage_product_imaginary_lower_constraint(self, ac_opf_minlp, network):
        switched_lower_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            switched_lower_constraint.update( { (from_bus_id, to_bus_id) : build_switched_voltage_product_imaginary_lower_constraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_LOWER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                switched_lower_constraint.update( { (from_bus_id, to_bus_id, number) : build_switched_voltage_product_imaginary_lower_constraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_LOWER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                
            
        ac_opf_minlp.add_constraint({SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_LOWER_CONSTRAINT_NAME : switched_lower_constraint})
    

    def build_ac_opf_constraints_switched_voltage_product_imaginary_upper_constraint(self, ac_opf_minlp, network):
        switched_upper_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            switched_upper_constraint.update( { (from_bus_id, to_bus_id) : build_switched_voltage_product_imaginary_upper_constraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_UPPER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                switched_upper_constraint.update( { (from_bus_id, to_bus_id, number) : build_switched_voltage_product_imaginary_upper_constraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_UPPER_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                
            
        ac_opf_minlp.add_constraint({SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_UPPER_CONSTRAINT_NAME : switched_upper_constraint})       
    

    def build_ac_opf_constraints_switched_voltage_square_big_m(self, ac_opf_minlp, network):
        big_m_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            big_m_constraint.update( { (from_bus_id, to_bus_id, 1) : build_big_m_constraint1(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 2) : build_big_m_constraint2(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 3) : build_big_m_constraint3(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 4) : build_big_m_constraint4(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1

                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 1) : build_big_m_constraint1(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 2) : build_big_m_constraint2(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 3) : build_big_m_constraint3(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 4) : build_big_m_constraint4(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
 
            
            tausch = to_bus_id
            to_bus_id = from_bus_id
            from_bus_id = tausch
            
            big_m_constraint.update( { (from_bus_id, to_bus_id, 1) : build_big_m_constraint1(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 2) : build_big_m_constraint2(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 3) : build_big_m_constraint3(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 4) : build_big_m_constraint4(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network) } )
            
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1

                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 1) : build_big_m_constraint1(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 2) : build_big_m_constraint2(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 3) : build_big_m_constraint3(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 4) : build_big_m_constraint4(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, ac_opf_minlp, network, number) } )
            
        ac_opf_minlp.add_constraint({SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME : big_m_constraint})       


    def build_ac_opf_constraints_number_of_switched_transmissions(self, ac_opf_minlp, network, number):
        constraint = {}
        new_constraint = LinearConstraint('number_of_switched_transmissions')
        variables=[]
        coeffs = []
        for inner_key in ac_opf_minlp.variables['transmission_switch']:
            variables.append(ac_opf_minlp.variables['transmission_switch'][inner_key])
            coeffs.append(1)                    
        new_constraint.build_linear_constraint_expression( variables, coeffs , len(ac_opf_minlp.variables['transmission_switch'].keys())- number, '=')
        constraint.update( {1 : new_constraint} )
        ac_opf_minlp.add_constraint({'number_switched_transmissions' : constraint})        


    def build_ac_opf_constraints_curtailment_option(self, ac_opf_minlp, network, curtailment_info):
        curtailment_option = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            curtailment_option.update( { node_id : build_curtailment_option_constraint(CURTAILMENT_OPTIONS_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curt_node_info) } )
        
        ac_opf_minlp.add_constraint({CURTAILMENT_OPTIONS_CONSTRAINT_NAME : curtailment_option})
        
        
 
    def build_ac_opf_constraints_curtailment_sos_constraint(self, ac_opf_minlp, network, curtailment_info):
        sos_constraints = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            sos_constraints.update( { node_id : build_curtailment_sos_constraint(CURTAILMENT_SOS_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curt_node_info) } )
        
        ac_opf_minlp.add_constraint({CURTAILMENT_SOS_CONSTRAINT_NAME : sos_constraints})
    
    
    def build_ac_opf_constraints_curtailment_big_m(self, ac_opf_minlp, network, curtailment_info):
        big_m_constraints = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            big_m_constraints.update( { (node_id, 1) : build_curtailment_big_m_constraint1(CURTAILMENT_BIG_M_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curt_node_info) } )
            big_m_constraints.update( { (node_id, 2) : build_curtailment_big_m_constraint2(CURTAILMENT_BIG_M_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curt_node_info) } )
        
        ac_opf_minlp.add_constraint({CURTAILMENT_BIG_M_CONSTRAINT_NAME : big_m_constraints})
    

    def build_ac_opf_constraints_curtailment_product_big_m(self, ac_opf_minlp, network, curtailment_info):
        product_big_m_constraints = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            product_big_m_constraints.update( { (node_id, 1) : build_curtailment_product_big_m_constraint1(CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curt_node_info) } )
            product_big_m_constraints.update( { (node_id, 2) : build_curtailment_product_big_m_constraint2(CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curt_node_info) } )
            product_big_m_constraints.update( { (node_id, 3) : build_curtailment_product_big_m_constraint3(CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME, node_id, ac_opf_minlp, network, curt_node_info) } )
        
        ac_opf_minlp.add_constraint({CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME : product_big_m_constraints})

    
######################################
# FUNCTIONS                          #
######################################


def create_minlp_id(network):
    minlp_id = str(network.id).replace(NETWORK_ID_PREFIX, '')
    minlp_id = minlp_id.replace('.m' , '')
    return MINLP_NAME + '_' +  minlp_id

def define_voltage_square_variable(VOLTAGE_SQUARE_VARIABLE_NAME, node_id, voltage_square_lower_bound, voltage_square_upper_bound):
    voltage_square_variable = Variable(VOLTAGE_SQUARE_VARIABLE_NAME + '_' + str(node_id), 'continuous', voltage_square_lower_bound, voltage_square_upper_bound)
    return voltage_square_variable

def define_switched_voltage_square_variable(var_name, from_bus_id, to_bus_id, lower_bound, upper_bound, number=''):
    if number == '':
        variable = Variable(var_name + '_' + str(from_bus_id) + '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)
    else:
        variable = Variable(var_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number), 'continuous', lower_bound, upper_bound)
        
    return variable

def define_phase_angle_variable(PHASE_ANGLE_VARIABLE_NAME, node_id, angle_lower_bound=-2*pi, angle_upper_bound=2*pi):
    phase_angle_variable = Variable(PHASE_ANGLE_VARIABLE_NAME + '_' + str(node_id), 'continuous', floor(angle_lower_bound*1e4)/1e4, ceil(angle_upper_bound*1e4)/1e4) 
    return phase_angle_variable

def define_phase_angle_difference_variable(PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME, from_bus_id, to_bus_id, angle_diff_lower_bound, angle_diff_upper_bound):    
    phase_angle_difference_variable = Variable(PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME + '_' + str(from_bus_id) + '_' + str(to_bus_id), 'continuous', angle_diff_lower_bound, angle_diff_upper_bound)
    return phase_angle_difference_variable

def define_real_power_gen_variable(REAL_POWER_GEN_VARIABLE_NAME, node_id, real_lower_bound, real_upper_bound, number=''):
    if number == '':
        real_power_gen_variable = Variable(REAL_POWER_GEN_VARIABLE_NAME + '_' + str(node_id), 'continuous', real_lower_bound, real_upper_bound)
    else:
        real_power_gen_variable = Variable(REAL_POWER_GEN_VARIABLE_NAME + '_' + str(node_id) + '_' + str(number), 'continuous', real_lower_bound, real_upper_bound)        
    return real_power_gen_variable

def define_reactive_power_gen_variable(REACTIVE_POWER_GEN_VARIABLE_NAME, node_id, reactive_lower_bound, reactive_upper_bound, number=''):
    if number == '':
        reactive_power_gen_variable = Variable(REACTIVE_POWER_GEN_VARIABLE_NAME + '_' + str(node_id), 'continuous', reactive_lower_bound, reactive_upper_bound)
    else:
        reactive_power_gen_variable = Variable(REACTIVE_POWER_GEN_VARIABLE_NAME + '_' + str(node_id) + '_' + str(number), 'continuous', reactive_lower_bound, reactive_upper_bound)
    return reactive_power_gen_variable

def define_real_flow_variable(variable_name, from_bus_id, to_bus_id, lower_bound, upper_bound, number=''):
    if number == '':
        flow_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)
    else:
        flow_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id) + '_' + str(number), 'continuous', lower_bound, upper_bound)
        
    return flow_variable

def define_reactive_flow_variable(variable_name, from_bus_id, to_bus_id, lower_bound, upper_bound, number=''):
    if number == '':
        flow_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)
    else:
        flow_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id) + '_' + str(number), 'continuous', lower_bound, upper_bound)
        
    return flow_variable

def define_voltage_product_real_variable(variable_name, from_bus_id, to_bus_id, lower_bound, upper_bound, number=''):
    if number == '':
        voltage_product_real_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)        
    else:
        voltage_product_real_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id) + '_' + str(number), 'continuous', lower_bound, upper_bound)
    return voltage_product_real_variable

def define_voltage_product_imaginary_variable(variable_name, from_bus_id, to_bus_id, lower_bound, upper_bound, number=''):
    if number == '':
        voltage_product_imaginary_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)        
    else:
        voltage_product_imaginary_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id) + '_' + str(number), 'continuous', lower_bound, upper_bound)
    return voltage_product_imaginary_variable

def define_generator_switch_variable(variable_name, node_id, lower_bound=0, upper_bound=1, number=''):
    if number == '':
        generator_switch_variable = Variable( variable_name + '_' + str(node_id), 'binary', lower_bound, upper_bound)
    else:
        generator_switch_variable = Variable( variable_name + '_' + str(node_id) + '_' + str(number), 'binary', lower_bound, upper_bound)
    return generator_switch_variable

def define_transmission_switch_variable(variable_name, from_bus_id, to_bus_id, lower_bound=0, upper_bound=1, number=''):
    if number == '':
        variable = Variable( variable_name + '_' + str(from_bus_id) + '_' + str(to_bus_id), 'binary', lower_bound, upper_bound)
    else:
        variable = Variable( variable_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number), 'binary', lower_bound, upper_bound)
    return variable

def define_curtailment_variable(variable_name, bus_id, lower_bound, upper_bound):
    curtailment_variable = Variable( variable_name + '_' + str(bus_id), 'continuous', lower_bound, upper_bound)
    return curtailment_variable

def define_feed_in_variable(variable_name, node, lower_bound, upper_bound):
    feed_in_variable = Variable( variable_name + '_' + str(node), 'continuous', lower_bound, upper_bound)
    return feed_in_variable

def define_curtailment_binary_variable(variable_name, bus_id, number):
    binary = Variable( variable_name + '_' + str(bus_id) + '_' + str(number), 'binary')
    return binary

def define_curtailment_indicator_variable(variable_name, bus_id):
    binary = Variable( variable_name + '_' + str(bus_id), 'binary')
    return binary

def define_curtailment_indicator_product_variable(variable_name, bus_id, lower_bound, upper_bound):
    var = Variable( variable_name + '_' + str(bus_id), 'continuous', lower_bound, upper_bound)
    return var

def build_real_flow_conservation(constraint_name, node_id, minlp, network, curtailment_info):
    real_flow_conservation_constraint = LinearConstraint(constraint_name + '_' + str(node_id))
    bus = network.get_bus_data(node_id)
    
    variables=[]
    coefficients = []
    
    if  bus.has_generators == True:
        if len(bus.generators)==1:    #bus has one generator
            variables.append( minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id] )
            coefficients.append ( 1 )          
        else:    #bus has more than one generator
            number = 1
            for gen in bus.generators:
                variables.append( minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number] )
                coefficients.append ( 1 ) 
                number = number + 1
                    
    for to_bus_id in network.graph.adj[node_id]:
        branch_data = network.get_branch_data(node_id, to_bus_id).data

        variables.append( minlp.variables[REAL_FLOW_VARIABLE_NAME][node_id, to_bus_id] )
        coefficients.append( -1 )
        
        for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
            number = i + 1
            variables.append( minlp.variables[REAL_FLOW_VARIABLE_NAME][node_id, to_bus_id, number] )
            coefficients.append( -1 )            
            
    demand = bus.data['real_power_demand']/network.base_MVA
    
    if curtailment_info != []:
        if node_id in curtailment_info.curtailment_nodes:    #bus has power with discrete curtialment
            #curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            
            variables.append( minlp.variables[FEED_IN_VARIABLE_NAME][node_id] )
            coefficients.append( 1 )   
            

    g_s = bus.data['shunt_conductance']/network.base_MVA    
    if g_s != 0:
        variables.append( minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][node_id] )
        coefficients.append( - g_s )
        
    real_flow_conservation_constraint.build_linear_constraint_expression(variables, coefficients, demand)
    return real_flow_conservation_constraint

def build_reactive_flow_conservation(constraint_name, node_id, minlp, network, curtailment_info):
    reactive_flow_conservation_constraint = LinearConstraint(constraint_name + '_' +str(node_id))
    bus = network.get_bus_data(node_id)
    
    variables=[]
    coefficients = []
    
    if  bus.has_generators == True:
        if len(bus.generators)==1:    #bus has one generator
            variables.append( minlp.variables[REACTIVE_POWER_GEN_VARIABLE_NAME][node_id] )
            coefficients.append ( 1 )          
        else:    #bus has more than one generator
            number = 1
            for gen in bus.generators:
                variables.append( minlp.variables[REACTIVE_POWER_GEN_VARIABLE_NAME][node_id, number] )
                coefficients.append ( 1 )      
                number = number + 1
                
        
    for to_bus_id in network.graph.adj[node_id]:
        branch_data = network.get_branch_data(node_id, to_bus_id).data
        
        variables.append( minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][node_id, to_bus_id] )
        coefficients.append( -1 )
        
        for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
            number = i + 1
            variables.append( minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][node_id, to_bus_id, number] )
            coefficients.append( -1 )           
            
            
    b_s = bus.data['shunt_susceptance']/network.base_MVA 
    if b_s != 0:
        variables.append( minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][node_id] )
        coefficients.append( b_s )        
    
    demand = bus.data['reactive_power_demand']/network.base_MVA
    

    if curtailment_info != []:
        if node_id in curtailment_info.curtailment_nodes:    #bus has power with discrete curtialment
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            
            variables.append( minlp.variables[FEED_IN_VARIABLE_NAME][node_id] )
            coefficients.append( curt_node_info.power_ratio )   

    reactive_flow_conservation_constraint.build_linear_constraint_expression(variables, coefficients, demand)
    return reactive_flow_conservation_constraint    

def build_reference_angle(constraint_name, node_id, minlp):
    reference_angle_constraint = LinearConstraint(constraint_name + '_' + str(node_id))
    reference_angle_constraint.build_linear_constraint_expression( [minlp.variables[PHASE_ANGLE_VARIABLE_NAME][node_id]] , [1] , 0 )
    return reference_angle_constraint

def build_thermal_limit(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number=='':
        thermal_limit_constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
        variables = [minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][from_bus_id, to_bus_id]]
        expression = variables[0].sympy_symbol**2 + variables[1].sympy_symbol**2 <= (network.get_branch_data(from_bus_id, to_bus_id)['rateA']/network.base_MVA)**2

    else:
        variables = [minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id, to_bus_id,number], minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][from_bus_id, to_bus_id, number]]
        thermal_limit_constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number))        
        expression = variables[0].sympy_symbol**2 + variables[1].sympy_symbol**2 <= (network.get_branch_data(from_bus_id, to_bus_id).data['rateA_'+str(number)]/network.base_MVA)**2
    
    thermal_limit_constraint.build_nonlinear_constraint_expression(expression, variables)
    thermal_limit_constraint.set_type('convex_quadratic')
    return thermal_limit_constraint

def build_phase_angle_difference_equation(constraint_name, from_bus_id, to_bus_id, minlp, network):
    angle_difference_limit_equation_constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
    variables=[ minlp.variables[PHASE_ANGLE_VARIABLE_NAME][from_bus_id] , minlp.variables[PHASE_ANGLE_VARIABLE_NAME][to_bus_id], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id, to_bus_id] ]
    coefficients=[-1 , 1, 1]
    angle = (network.get_branch_data(from_bus_id,to_bus_id).data['angle']*2*pi)/360
    angle_difference_limit_equation_constraint.build_linear_constraint_expression( variables, coefficients, -angle)    
    return angle_difference_limit_equation_constraint

def build_conic_quadratic_constraint(constraint_name, from_bus_id , to_bus_id , minlp, number='', parameters=''):

    if number == '':
        constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
    
        if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on
            if parameters['univariate_approximation'] == 1:
                variables = [minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][to_bus_id, from_bus_id] ]
                expression_left_side = variables[0].sympy_symbol**2  + variables[1].sympy_symbol**2  #+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
                expression_right_side = 0.5 * ( (variables[2].sympy_symbol + variables[3].sympy_symbol)**2  - variables[2].sympy_symbol**2 -  variables[3].sympy_symbol**2  )          
            else:
                variables = [minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][to_bus_id, from_bus_id] ]
                expression_left_side = variables[0].sympy_symbol**2  + variables[1].sympy_symbol**2  #+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
                expression_right_side = variables[2].sympy_symbol*variables[3].sympy_symbol


        
        else:
            if parameters['univariate_approximation'] == 1:
                variables = [minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][to_bus_id] ]
                expression_left_side = variables[0].sympy_symbol**2 + variables[1].sympy_symbol**2 #+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
                expression_right_side = 0.5 * ( (variables[2].sympy_symbol + variables[3].sympy_symbol)**2 - variables[2].sympy_symbol**2 - variables[3].sympy_symbol**2  )                
                
            else:
                variables = [minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][to_bus_id] ]
                expression_left_side = variables[0].sympy_symbol**2 + variables[1].sympy_symbol**2 #+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
                expression_right_side = variables[2].sympy_symbol*variables[3].sympy_symbol
        
        constraint.build_nonlinear_constraint_expression( Eq(expression_left_side , expression_right_side), variables )
        
    else:
        constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number))
    
        if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on
            if parameters['univariate_approximation'] == 1:
                variables = [minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][to_bus_id, from_bus_id, number] ]
                expression_left_side = variables[0].sympy_symbol**2  + variables[1].sympy_symbol**2  #+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
                expression_right_side = 0.5 * ( (variables[2].sympy_symbol + variables[3].sympy_symbol)**2  - variables[2].sympy_symbol**2 -  variables[3].sympy_symbol**2  )          
            else:
                variables = [minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id, to_bus_id,number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id, to_bus_id,number], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][to_bus_id, from_bus_id, number] ]
                expression_left_side = variables[0].sympy_symbol**2  + variables[1].sympy_symbol**2  #+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
                expression_right_side = variables[2].sympy_symbol*variables[3].sympy_symbol

    

        constraint.build_nonlinear_constraint_expression( Eq(expression_left_side , expression_right_side), variables )
    return constraint





def build_sum_of_voltage_product_real_tan_constraint(constraint_name, from_bus_id , to_bus_id , minlp, number='', parameters=''):

    if number == '':
        constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
    
        if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on
            pass

        else:
            variables = [minlp.variables[VOLTAGE_PRODUCT_REAL_TAN_SUM_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[TAN_UNIVARIATE_SUBSTITUTION_VARIABLE_NAME][from_bus_id, to_bus_id] ]
            expression_left_side = variables[0].sympy_symbol#+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
            expression_right_side = variables[1].sympy_symbol + variables[2].sympy_symbol
            
    
        constraint.build_nonlinear_constraint_expression( Eq(expression_left_side , expression_right_side), variables )
        


    return constraint

def build_tan_univariate_substitution_constraint(constraint_name, from_bus_id , to_bus_id , minlp, number='', parameters=''):

    if number == '':
        constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
    
        if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on
            pass

        else:
            variables = [minlp.variables[TAN_UNIVARIATE_SUBSTITUTION_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id, to_bus_id] ]
            expression_left_side = variables[0].sympy_symbol#+ ( 0.5*(variables[2].sympy_symbol-variables[3].sympy_symbol) )**2
            expression_right_side = tan(-variables[1].sympy_symbol)
            
    
        constraint.build_nonlinear_constraint_expression( Eq(expression_left_side , expression_right_side), variables )
        

    return constraint   



def build_quadr_univariate_substitution_constraint(constraint_name, from_bus_id , to_bus_id , minlp, number='', parameters=''):

    if number == '':
        constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
    
        if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on
            pass

        else:
            variables = [minlp.variables[QUADRATIC_UNIVARIATE_SUBSTITUTION_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id, to_bus_id] ]
            expression_left_side = variables[0].sympy_symbol
            expression_right_side = variables[1].sympy_symbol**2
            
    
        constraint.build_nonlinear_constraint_expression( Eq(expression_left_side , expression_right_side), variables )
 
    return constraint   



def build_trigonometric_constraint(constraint_name, from_bus_id, to_bus_id, minlp, number='', parameters=''):
    if -TAN_SWITCHING_ANGLE < minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id, to_bus_id].lower_bound and minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id, to_bus_id].lower_bound< TAN_SWITCHING_ANGLE:
        

        #print(variables)
        if number == '':
            constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
            if parameters['univariate_approximation'] == 1:
                variables = [ minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id]  ]
                expression_left_side =  ( variables[0].sympy_symbol + tan( - variables[1].sympy_symbol) )**2 - variables[0].sympy_symbol**2 - tan( - variables[1].sympy_symbol )**2
                expression_right_side = 2 * variables[2].sympy_symbol
            else:
                variables = [ minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id]  ]
                expression_left_side = variables[0].sympy_symbol * tan( - variables[1].sympy_symbol)
                expression_right_side = variables[2].sympy_symbol
        
        else:
            constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number))
            if parameters['univariate_approximation'] == 1:
                variables = [ minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id,number], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id,number]  ]
                expression_left_side =  ( variables[0].sympy_symbol - tan(  variables[1].sympy_symbol) )**2 - variables[0].sympy_symbol**2 - tan( - variables[1].sympy_symbol )**2
                expression_right_side = 2 * variables[2].sympy_symbol
            else:
                variables = [ minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id,number], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id,number]  ]
                expression_left_side = variables[0].sympy_symbol * tan( - variables[1].sympy_symbol)
                expression_right_side = variables[2].sympy_symbol            
        
        
        #print(variables)
        
        constraint.build_nonlinear_constraint_expression( Eq(expression_left_side , expression_right_side), variables )
    else:
        
        if number == '':
            constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
            variables = [ minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id]  ]
            if parameters['univariate_approximation'] == 1:   
   
                expression_left_side = ( variables[0].sympy_symbol + sin( - variables[1].sympy_symbol) )**2 - variables[0].sympy_symbol**2

                expression_right_side = - ( variables[2].sympy_symbol - cos( - variables[1].sympy_symbol) )**2 + variables[2].sympy_symbol**2 + 1

            else:
                expression_left_side = variables[0].sympy_symbol * sin( - variables[1].sympy_symbol)
                expression_right_side = variables[2].sympy_symbol * cos( - variables[1].sympy_symbol)
        
        else:
            constraint = NonlinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number))
            variables = [ minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id,number], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id,number]  ]
            if parameters['univariate_approximation'] == 1:   
           
                expression_left_side = ( variables[0].sympy_symbol + sin( - variables[1].sympy_symbol) )**2 - variables[0].sympy_symbol**2 
           
                expression_right_side = - ( variables[2].sympy_symbol - cos( - variables[1].sympy_symbol) )**2 + variables[2].sympy_symbol**2 + 1

            else:
                expression_left_side = variables[0].sympy_symbol * sin( - variables[1].sympy_symbol)
                expression_right_side = variables[2].sympy_symbol * cos( - variables[1].sympy_symbol)
        
        
        constraint.build_nonlinear_constraint_expression( Eq(expression_left_side , expression_right_side), variables )
    return constraint

def build_real_power_flow_equation(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
            
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number))
    
    if number == '':
        branch_data=network.get_branch_data(from_bus_id, to_bus_id)
        resistance_g=branch_data['resistance']/(branch_data['resistance']**2+branch_data['reactance']**2)
        reactance_b=-branch_data['reactance']/(branch_data['resistance']**2+branch_data['reactance']**2)
        
        ratio = branch_data['ratio']    #Generator ratio start of line
    else:
        branch_data=network.get_branch_data(from_bus_id, to_bus_id).data
        resistance_g=branch_data['resistance_'+str(number)]/(branch_data['resistance_'+str(number)]**2+branch_data['reactance_'+str(number)]**2)
        reactance_b=-branch_data['reactance_'+str(number)]/(branch_data['resistance_'+str(number)]**2+branch_data['reactance_'+str(number)]**2)
        
        ratio = branch_data['ratio_'+str(number)]    #Generator ratio start of line
        
    
    if ratio == 0:
        ratio = 1    
    
    if from_bus_id<=to_bus_id:
        from_id_product = from_bus_id
        to_id_product = to_bus_id
        if from_bus_id == branch_data['from_bus']:
            coefficients = [-1, resistance_g/(ratio**2), -resistance_g/(ratio),  reactance_b/(ratio)]
        else:
            coefficients = [-1, resistance_g, -resistance_g/(ratio),  reactance_b/(ratio)]
               
    else:
        from_id_product = to_bus_id
        to_id_product = from_bus_id
        if from_bus_id == branch_data['from_bus']:
            coefficients = [-1, resistance_g/(ratio**2), -resistance_g/(ratio), -reactance_b/(ratio)]
        else:
            coefficients = [-1, resistance_g, -resistance_g/(ratio), -reactance_b/(ratio)]           

    if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on
        if number == '':
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
        else:
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product, number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product, number]]
    else:   
        if number == '':
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
        else:
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]

    variables[0].set_given_initial_value( coefficients[1]*variables[1].given_initial_value + coefficients[2]*variables[2].given_initial_value + coefficients[3]*variables[3].given_initial_value )
    
    expression = 0
    
    for i in range(1,len(variables)):
        expression = expression + variables[i].sympy_symbol*coefficients[i]
    
    constraint.build_linear_constraint_expression_direct(Eq(variables[0].sympy_symbol, expression),variables)
    
    return constraint
            

def build_reactive_power_flow_equation(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
            
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number))     
    
    if number == '':
        branch_data=network.get_branch_data(from_bus_id, to_bus_id)
        resistance_g=branch_data['resistance']/(branch_data['resistance']**2+branch_data['reactance']**2)
        reactance_b=-branch_data['reactance']/(branch_data['resistance']**2+branch_data['reactance']**2)
        susceptance_b_c=branch_data['susceptance']
    
        ratio = branch_data['ratio']    #Generator ratio start of line
        
    else:
        branch_data=network.get_branch_data(from_bus_id, to_bus_id).data
        resistance_g=branch_data['resistance_'+str(number)]/(branch_data['resistance_'+str(number)]**2+branch_data['reactance_'+str(number)]**2)
        reactance_b=-branch_data['reactance_'+str(number)]/(branch_data['resistance_'+str(number)]**2+branch_data['reactance_'+str(number)]**2)
        susceptance_b_c=branch_data['susceptance_'+str(number)]
    
        ratio = branch_data['ratio_'+str(number)]    #Generator ratio start of line
        

    if ratio == 0:
        ratio = 1  
    
    if from_bus_id<=to_bus_id:
        from_id_product = from_bus_id
        to_id_product = to_bus_id
        if from_bus_id == branch_data['from_bus']:        
            coefficients = [-1, -(reactance_b+0.5*susceptance_b_c)/(ratio**2), reactance_b/(ratio), resistance_g/(ratio)]
        else:     
            coefficients = [-1, -(reactance_b+0.5*susceptance_b_c), reactance_b/(ratio), resistance_g/(ratio)]          
    else:
        from_id_product = to_bus_id
        to_id_product = from_bus_id
        #ratio = 1
        if from_bus_id == branch_data['from_bus']:
            coefficients = [-1, -(reactance_b+0.5*susceptance_b_c)/(ratio**2), reactance_b/(ratio), -resistance_g/(ratio)]
        else:
            coefficients = [-1, -(reactance_b+0.5*susceptance_b_c), reactance_b/(ratio), -resistance_g/(ratio)]
    
    if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on    
        if number == '':
            variables=[ minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
        else:
            variables=[ minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], minlp.variables[SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product, number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product, number]]
    else:
        if number == '':
            variables=[ minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
        else:
            variables=[ minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], minlp.variables[VOLTAGE_SQUARE_VARIABLE_NAME][from_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_id_product,to_id_product], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]

    variables[0].set_given_initial_value( coefficients[1]*variables[1].given_initial_value + coefficients[2]*variables[2].given_initial_value + coefficients[3]*variables[3].given_initial_value )

    expression = 0
        
    for i in range(1,len(variables)):
        expression = expression + variables[i].sympy_symbol*coefficients[i]
    
    constraint.build_linear_constraint_expression_direct(Eq(variables[0].sympy_symbol, expression),variables)
          
    return constraint

def build_generator_switch_lower_constraint(constraint_name, node_id, lower_bound, minlp, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) )
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id], minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id]]
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) + '_' + str(number))
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number], minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number]]        
    coefficients = [lower_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '<=')
    return constraint

def build_generator_switch_upper_constraint(constraint_name, node_id, upper_bound, minlp, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) )
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id], minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id]]
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) + '_' + str(number))
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number], minlp.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number]]        
    coefficients = [upper_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '>=')
    return constraint

def build_generator_switch_reactive_lower_constraint(constraint_name, node_id, lower_bound, minlp, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) )
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id], minlp.variables[REACTIVE_POWER_GEN_VARIABLE_NAME][node_id]]
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) + '_' + str(number))
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number], minlp.variables[REACTIVE_POWER_GEN_VARIABLE_NAME][node_id, number]]        
    coefficients = [lower_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '<=')
    return constraint

def build_generator_switch_reactive_upper_constraint(constraint_name, node_id, upper_bound, minlp, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) )
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id], minlp.variables[REACTIVE_POWER_GEN_VARIABLE_NAME][node_id]]
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(node_id) + '_' + str(number))
        variables = [minlp.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number], minlp.variables[REACTIVE_POWER_GEN_VARIABLE_NAME][node_id, number]]        
    coefficients = [upper_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '>=')
    return constraint


def build_switched_voltage_product_real_lower_constraint(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) )
        variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id]]
    
    else:
        if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():
            constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) +  '_' + str(number))
            variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id, number]]
     
        #else:
        #    constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) +  '_' + str(number))
        #    variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id]]
    
    lower_bound = variables[1].lower_bound
    coefficients = [lower_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '<=')
    return constraint


def build_switched_voltage_product_real_upper_constraint(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) )
        variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id]]
    
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) +  '_' + str(number))
        variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_REAL_VARIABLE_NAME][from_bus_id,to_bus_id, number]]
    
    upper_bound = variables[1].upper_bound
    coefficients = [upper_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '>=')
    return constraint


def build_switched_voltage_product_imaginary_lower_constraint(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) )
        variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id]]
    
    else:
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) +  '_' + str(number))
        variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id, number]]
    
    lower_bound = variables[1].lower_bound
    coefficients = [lower_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '<=')
    return constraint


def build_switched_voltage_product_imaginary_upper_constraint(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) )
        variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id]]
    
    else:
        if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():
            constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) +  '_' + str(number))
            variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id,number]]
        #else:            
        #    constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) +  '_' + str(number))
        #    variables = [minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id]]
    
    upper_bound = variables[1].upper_bound
    coefficients = [upper_bound, -1]
    
    constraint.build_linear_constraint_expression(variables, coefficients, 0, '>=')
    return constraint


def build_big_m_constraint1(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    
    else:
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_square'][from_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(1))
    
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(number) + '_' + str(1))
    
    variables = [binary_var, subst_var]
    coeffs = [conti_var.lower_bound, -1]
    big_m_constr.build_linear_constraint_expression(variables, coeffs, 0, '<=')
    return big_m_constr

        
        
def build_big_m_constraint2(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    else:
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_square'][from_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(2))
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_'  + str(number) + '_' + str(2))

    variables = [binary_var, subst_var]
    coeffs = [-conti_var.upper_bound, 1]
    big_m_constr.build_linear_constraint_expression(variables, coeffs, 0, '<=')
    return big_m_constr   
    
        
def build_big_m_constraint3(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    else:
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_square'][from_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(3))
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id)  + '_' + str(number) + '_' + str(3))

    
    variables = [binary_var, subst_var, conti_var]
    coeffs = [conti_var.upper_bound, -1, 1]
    big_m_constr.build_linear_constraint_expression(variables, coeffs, conti_var.upper_bound, '<=')
    return big_m_constr
        
def build_big_m_constraint4(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    else:
        subst_var =  minlp.variables['switched_voltage_square'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_square'][from_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(4))
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_SQUARE_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(number) + '_' + str(4))

    variables = [binary_var, subst_var, conti_var]
    coeffs = [-conti_var.lower_bound, 1, -1]
    big_m_constr.build_linear_constraint_expression(variables, coeffs, -conti_var.lower_bound, '<=')
    return big_m_constr
    
def build_curtailment_option_constraint(constraint_name, node_id, minlp, network, curt_node_info):
    option_constraint = LinearConstraint( constraint_name + '_' + str(node_id) )
    variables = [ minlp.variables[FEED_IN_VARIABLE_NAME][node_id] ]
    coeffs = [ 1 ]
    
    curt_options = curt_node_info.curtailment_options_absolute
    if curt_options[0] == 0:
        for number in range(1, len(curt_options) ):
            variables.append( minlp.variables[CURTAILMENT_BINARIES_VARIABLE_NAME][node_id, number] )
            coeffs.append( -curt_options[number]/network.base_MVA )
    else:
        for number in range(len(curt_options)):
            variables.append( minlp.variables[CURTAILMENT_BINARIES_VARIABLE_NAME][node_id, number+1] )
            coeffs.append( -curt_options[number]/network.base_MVA )            
    option_constraint.build_linear_constraint_expression(variables, coeffs, 0, '=')     
    return option_constraint

def build_curtailment_sos_constraint(constraint_name, node_id, minlp, network, curt_node_info):
    sos_constraint = LinearConstraint( constraint_name + '_' + str(node_id) )
    variables = []
    coeffs = []
    curt_options = curt_node_info.curtailment_options_absolute
    if curt_options[0] == 0:
        for number in range(1, len(curt_options) ):
            variables.append( minlp.variables[CURTAILMENT_BINARIES_VARIABLE_NAME][node_id, number] )
            coeffs.append( 1 )
        sos_constraint.build_linear_constraint_expression(variables, coeffs, 1, '<=')  
    else:
        for number in range(len(curt_options)):
            variables.append( minlp.variables[CURTAILMENT_BINARIES_VARIABLE_NAME][node_id, number+1] )
            coeffs.append( 1 )            
        sos_constraint.build_linear_constraint_expression(variables, coeffs, 1, '=')  
        
    return sos_constraint    
    
def build_curtailment_big_m_constraint1(constraint_name, node_id, minlp, network, curt_node_info):
    constraint = LinearConstraint( constraint_name + '_' + str(node_id) + '_' + str(1))
    variables = [ minlp.variables[CURTAILMENT_VARIABLE_NAME][node_id], minlp.variables[CURTAILMENT_INDICATOR_VARIABLE_NAME][node_id] ]
    p_installed = curt_node_info.installed_power/network.base_MVA
    p_produced = curt_node_info.produced_power/network.base_MVA
    coeffs = [p_installed, p_installed]
    constraint.build_linear_constraint_expression(variables, coeffs, p_produced, '>=')
    return constraint
    
def build_curtailment_big_m_constraint2(constraint_name, node_id, minlp, network, curt_node_info):
    constraint = LinearConstraint( constraint_name + '_' + str(node_id) + '_' + str(2))
    variables = [ minlp.variables[CURTAILMENT_VARIABLE_NAME][node_id], minlp.variables[CURTAILMENT_INDICATOR_VARIABLE_NAME][node_id] ]
    p_installed = curt_node_info.installed_power/network.base_MVA
    p_produced = curt_node_info.produced_power/network.base_MVA
    coeffs = [p_installed, p_installed]
    constraint.build_linear_constraint_expression(variables, coeffs, p_installed+p_produced, '<=')
    return constraint

def build_curtailment_product_big_m_constraint1(constraint_name, node_id, minlp, network, curt_node_info):
    constraint = LinearConstraint( constraint_name + '_' + str(node_id) + '_' + str(1))
    variables = [ minlp.variables[CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME][node_id], minlp.variables[CURTAILMENT_INDICATOR_VARIABLE_NAME][node_id] ]
    coeffs = [1, -1]
    constraint.build_linear_constraint_expression(variables, coeffs, 0, '<=')
    return constraint
    
def build_curtailment_product_big_m_constraint2(constraint_name, node_id, minlp, network, curt_node_info):
    constraint = LinearConstraint( constraint_name + '_' + str(node_id) + '_' + str(2))
    variables = [ minlp.variables[CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME][node_id], minlp.variables[CURTAILMENT_INDICATOR_VARIABLE_NAME][node_id], minlp.variables[CURTAILMENT_VARIABLE_NAME][node_id] ]
    coeffs = [1, 1, -1]
    constraint.build_linear_constraint_expression(variables, coeffs, 1, '<=')
    return constraint
    
def build_curtailment_product_big_m_constraint3(constraint_name, node_id, minlp, network, curt_node_info):
    constraint = LinearConstraint( constraint_name + '_' + str(node_id) + '_' + str(3))
    variables = [ minlp.variables[CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME][node_id], minlp.variables[CURTAILMENT_INDICATOR_VARIABLE_NAME][node_id], minlp.variables[CURTAILMENT_VARIABLE_NAME][node_id] ]
    coeffs = [1, -1, -1]
    constraint.build_linear_constraint_expression(variables, coeffs, -1, '>=')
    return constraint
    
def get_objective_type(network):
    objective_type = 'linear'    #assume that objective is linear
        
    for node_id in network.graph.nodes:
        bus = network.get_bus_data(node_id)
        if bus.has_generators == True:
            if len(bus.generators) == 1:
                generator = bus.generators[0]
                if generator.cost_function == 'polynomial' and generator.coeff_p_2 == 0:
                    pass
                elif generator.cost_function == 'polynomial' and generator.coeff_p_2 != 0:
                    objective_type = 'polynomial'
            else:
                pass
                #TO DO: more than one generator
    return objective_type


def find_1d_var_bounds(constr_type, lb, ub):
    if constr_type == 'tan':
        #formulas from 'branch and refine ...' from 'leyffer, wanuferre,...'      
        return [tan(lb), tan(ub)] 
    elif constr_type == 'sin':
        #formulas from 'branch and refine ...' from 'leyffer, wanuferre,...'
        array_sin = [ sin(lb) , sin(ub) ]
        if lb <= 1.5*pi and 1.5*pi <= ub:
            lower_bound = -1
        elif lb <= -0.5*pi and -0.5*pi <= ub:
            lower_bound = -1
        else:
            lower_bound = min(array_sin)        
        if lb <= 0.5*pi and 0.5*pi <=ub:
            upper_bound = 1
        elif lb <= -1.5*pi and -1.5*pi:
            upper_bound = 1
        else:
            upper_bound = max(array_sin)       
        return [lower_bound, upper_bound]   
    elif constr_type == QUADRATIC_CONSTRAINT_TYPE_NAME:
        #formulas from 'branch and refine ...' from 'leyffer, wanuferre,...'
        array_quad = [ lb**2, ub**2 ]
        if lb<= 0 and 0<=ub:
            lower_bound = 0
        else:
            lower_bound = min(array_quad)
        upper_bound = max(array_quad)
        return [lower_bound, upper_bound]
    elif constr_type == 'cos':
        #var = find_var_from_sympy_symbol( symbol, minlp, dic_new_variables , new_vars_array )
        #lb = var.lower_bound
        #ub = var.upper_bound
        #formulas from 'branch and refine ...' from 'leyffer, wanuferre,...'
        array_cos = [ cos(lb) , cos(ub) ]
        if lb <= -pi and -pi <= ub:
            lower_bound = -1
        elif lb <= pi and pi <= ub:
            lower_bound = -1
        else:
            lower_bound = min(array_cos)        
        if lb <= 0 and 0 <=ub:
            upper_bound = 1
        else:
            upper_bound = max(array_cos)       
        return [lower_bound, upper_bound] 
    
def find_2d_var_bounds(constr_type, lb, ub):
    if constr_type == 'sum':
        return [lb[0]+lb[1], ub[0]+ub[1]]
    
    
def compute_curtailment_cost_factor_linear(coefficients, variables, rhs_constant, curtailment_info, base_MVA):
    total_solar_production = 0
    for node in curtailment_info.curtailment_nodes:
        total_solar_production = total_solar_production + curtailment_info.get_curtailment_node_info( node ).produced_power/base_MVA
    #print('total_solar_production', total_solar_production)
    number_of_generators_with_active_power = 0
    total_cost_of_solar = 0
    for i in range(len(coefficients)):    #iteration over all generators
        if variables[i].variable_type == 'binary':
            total_cost_of_solar = total_cost_of_solar + coefficients[i]*1           
        else:
            if variables[i].upper_bound > 0:
                number_of_generators_with_active_power = number_of_generators_with_active_power + 1
                total_cost_of_solar = total_cost_of_solar + coefficients[i]*total_solar_production
    
    cost_factor = (total_cost_of_solar+rhs_constant)/(number_of_generators_with_active_power*total_solar_production)
    
    #print('total cost of solar would be', total_cost_of_solar, 'number of active generators', number_of_generators_with_active_power, 'coeffs:', coefficients)
    print('cost_factor for solar is', cost_factor)
    return cost_factor
            
    
def compute_curtailment_cost_factor_polynomial(expression, variables, curtailment_info, base_MVA):
    total_solar_production = 0
    for node in curtailment_info.curtailment_nodes:
        total_solar_production = total_solar_production + curtailment_info.get_curtailment_node_info( node ).produced_power/base_MVA
    #print('total_solar_production', total_solar_production)  
    
    number_of_generators_with_active_power = 0
    total_cost_of_solar = expression
    for i in range(len(variables)):    #iteration over all variables
        if variables[i].upper_bound > 0 and variables[i].variable_type != 'binary':
            number_of_generators_with_active_power = number_of_generators_with_active_power + 1
    
    for i in range(len(variables)):
        if variables[i].variable_type == 'binary':
            total_cost_of_solar = total_cost_of_solar.subs(variables[i].sympy_symbol, 1)            
        else:
            total_cost_of_solar = total_cost_of_solar.subs(variables[i].sympy_symbol, total_solar_production/number_of_generators_with_active_power)
    
    cost_factor = float(total_cost_of_solar)/total_solar_production
    
    #print('total cost of solar would be', total_cost_of_solar, 'number of active generators', number_of_generators_with_active_power)
    
    print('cost_factor for solar is', cost_factor)
    return cost_factor    
