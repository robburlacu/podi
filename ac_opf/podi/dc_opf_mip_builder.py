######################################
# IMPORTS                            #
######################################


from podi.models import Minlp, Mip, Variable, LinearObjective, LinearConstraint, NonlinearConstraint, PolyObjective
from podi.network import NETWORK_ID_PREFIX, BRANCH_DATA_PARAMETERS
from sympy import Eq, sin, cos, tan, Le  
from math import inf, pi, floor, ceil
from numpy import array, append
from podi.curtailment_info import WEIGHTING_PARAMETER_FOR_CURTAILMENT
from podi.ac_opf_minlp_builder import compute_curtailment_cost_factor_linear, compute_curtailment_cost_factor_polynomial



######################################
# CONSTANTS                          #
######################################


MIP_NAME = 'dc_opf'

VOLTAGE_SQUARE_VARIABLE_NAME = 'voltage_square'    #c_kk in Paper
PHASE_ANGLE_VARIABLE_NAME = 'phase_angle'    #theta_k in Paper
PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME = 'angle_difference'    #theta_kl in Paper
REAL_POWER_GEN_VARIABLE_NAME = 'real_power_gen'    #P in Paper

REAL_FLOW_VARIABLE_NAME = 'real_power_flow'    #p in Paper

VOLTAGE_PRODUCT_REAL_VARIABLE_NAME = 'voltage_product_real'    #c_kl in Paper
VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME = 'voltage_product_imaginary'    #t_kl in Paper
GENERATOR_SWITCH_VARIABLE_NAME = 'generator_switch'    #s in Paper
TRANSMISSION_SWITCH_VARIABLE_NAME = 'transmission_switch'
SWITCHED_VOLTAGE_SQUARE_VARIABLE_NAME = 'switched_voltage_square'
SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME = 'switched_voltage_product_imaginary'
CURTAILMENT_VARIABLE_NAME = 'curtailment'
CURTAILMENT_BINARIES_VARIABLE_NAME = 'curtailment_binaries'
CURTAILMENT_INDICATOR_VARIABLE_NAME = 'curtailment_indicator'
CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME = 'curtailment_indicator_product'
FEED_IN_VARIABLE_NAME = 'curtailed_feed_in'

REAL_FLOW_CONSERVATION_CONSTRAINT_NAME = 'real_flow_conservation'   

REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME = 'real_power_flow_equation' 


REFERENCE_ANGLE_CONSTRAINT_NAME = 'reference_angle'   
PHASE_ANGLE_DIFFERENCE_EQUATION_CONSTRAINT_NAME = 'angle_difference_equation'    
CONIC_QUADRATIC_CONSTRAINT_NAME = 'conic_quadratic'  
TRIGONOMETRIC_CONSTRAINT_NAME =  'trigonometric'   
THERMAL_LIMIT_CONSTRAINT_NAME = 'thermal_limit'   

GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME = 'generator_switch_lower'    
GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME = 'generator_switch_upper'    

SWITCHED_VOLTAGE_PRODUCT_REAL_LOWER_CONSTRAINT_NAME = 'voltage_product_real_lower'
SWITCHED_VOLTAGE_PRODUCT_REAL_UPPER_CONSTRAINT_NAME = 'voltage_product_real_upper'
SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_LOWER_CONSTRAINT_NAME = 'voltage_product_imaginary_lower'
SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_UPPER_CONSTRAINT_NAME = 'voltage_product_imaginary_upper'
SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME = 'voltage_product_imaginary_big_m'

CURTAILMENT_OPTIONS_CONSTRAINT_NAME = 'curtailment_option'
CURTAILMENT_SOS_CONSTRAINT_NAME = 'curtailment_sos'
CURTAILMENT_BIG_M_CONSTRAINT_NAME = 'curtailment_big_m'
CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME = 'curtailment_product_big_m'

OBJECTIVE_NAME = 'objective'  



######################################
# CLASSES                            #
######################################


class DcOpfMipBuilder(object):
    
    def build(self, network, parameters='', curtailment_info=[], mip_relaxation=[]):
        dc_opf_mip = Mip( create_mip_id(network) )
        self.build_dc_opf_variables(dc_opf_mip, network, parameters, curtailment_info)
        self.build_dc_opf_constraints(dc_opf_mip, network, parameters, curtailment_info)
        

        self.build_dc_opf_objective(dc_opf_mip, network, curtailment_info, parameters)
        
        return dc_opf_mip
    

    def build_dc_opf_variables(self, dc_opf_mip, network, parameters, curtailment_info):    

        self.build_dc_opf_variables_generator_switch(dc_opf_mip, network, parameters)
        self.build_dc_opf_variables_phase_angle(dc_opf_mip, network)
        self.build_dc_opf_variables_phase_angle_difference(dc_opf_mip, network)
        self.build_dc_opf_variables_real_power_gen(dc_opf_mip, network, parameters)


        
        self.build_dc_opf_variables_real_flow(dc_opf_mip, network)

        self.build_dc_opf_variables_voltage_product_imaginary(dc_opf_mip, network)

        if parameters['transmission_switching'] == 1:
            self.build_dc_opf_variables_transmission_switch(dc_opf_mip, network)
            self.build_dc_opf_variables_switched_voltage_product_imaginary(dc_opf_mip, network)
        

        
        if parameters['discrete_curtailment'] == 1:

            self.build_dc_opf_variables_feed_in(dc_opf_mip, curtailment_info, network)
            self.build_dc_opf_variables_curtailment_binaries(dc_opf_mip, curtailment_info)



    def build_dc_opf_constraints(self, dc_opf_mip, network, parameters, curtailment_info):
        
        if parameters['discrete_curtailment'] == 1:
            self.build_dc_opf_constraints_real_flow_conservation(dc_opf_mip, network, curtailment_info)

        else:
            self.build_dc_opf_constraints_real_flow_conservation(dc_opf_mip, network)   

            

        self.build_dc_opf_constraints_real_power_flow_equation(dc_opf_mip, network, parameters)

        self.build_dc_opf_constraints_trigonometric_constraint(dc_opf_mip, network, parameters)
        self.build_dc_opf_constraints_thermal_limit(dc_opf_mip, network)
        self.build_dc_opf_constraints_reference_anlge(dc_opf_mip, network)
        self.build_dc_opf_constraints_phase_angle_difference_equation(dc_opf_mip, network)
        

        self.build_dc_opf_constraints_generator_switch_lower_constraint(dc_opf_mip, network)
        self.build_dc_opf_constraints_generator_switch_upper_constraint(dc_opf_mip, network)
        
        if parameters['transmission_switching'] == 1:

            self.build_dc_opf_constraints_switched_voltage_product_imaginary_big_m(dc_opf_mip, network)
            
            if parameters['fix_number_of_switched_transmissions'] == 1:
                self.build_dc_opf_constraints_number_of_switched_transmissions(dc_opf_mip, network, parameters['number_of_fixed_transmissions'])

        if parameters['discrete_curtailment'] == 1:
            self.build_dc_opf_constraints_curtailment_option(dc_opf_mip, network, curtailment_info)
            self.build_dc_opf_constraints_curtailment_sos_constraint(dc_opf_mip, network, curtailment_info)



    def build_special_objective(self, dc_opf_mip):
        objective = LinearObjective('special')
        variables = []
        coeffs = []
        for key in dc_opf_mip.variables['transmission_switch'].keys():
            variables.append( dc_opf_mip.variables['transmission_switch'][key])
            coeffs.append( 1 )
        objective.build_linear_objective_expression(variables, coeffs, 'min')
        dc_opf_mip.set_objective(objective)
        
    def build_dc_opf_objective(self, dc_opf_mip, network, curtailment_info, parameters):
        
        
        if get_objective_type(network) == 'linear':
            objective = LinearObjective(OBJECTIVE_NAME)

            variables = []
            coefficients = []
            rhs_constant = 0
            for node_id in network.graph.nodes:
                bus = network.get_bus_data(node_id)
                
                if  bus.has_generators == True:
                    if len(bus.generators)==1:    #bus has one generators
                        gen = bus.generators[0]    #read generator data
                        if 'generator_switch' in dc_opf_mip.variables.keys():
                            variables.append( dc_opf_mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id])
                            variables.append( dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id] )
                            coefficients.append(gen.coeff_p_0)
                            coefficients.append(gen.coeff_p_1*100)
                        else:
                          
                            variables.append( dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id] )
                            rhs_constant = rhs_constant + gen.coeff_p_0
                            coefficients.append(gen.coeff_p_1*100)
                    else:    
                        number = 1
                        for gen in bus.generators:
                            if 'generator_switch' in dc_opf_mip.variables.keys():
                                variables.append( dc_opf_mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number])
                                variables.append( dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number] )
                                coefficients.append(gen.coeff_p_0)
                                coefficients.append(gen.coeff_p_1*100)
                            else:
                               
                                variables.append( dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number] )
                                rhs_constant = rhs_constant + gen.coeff_p_0
                                coefficients.append(gen.coeff_p_1*100)
                            number = number + 1
            
            if curtailment_info != []:
                
                cost_factor_for_curtailment = round(compute_curtailment_cost_factor_linear(coefficients, variables, rhs_constant, curtailment_info, network.base_MVA),4)
                for i in range(len(coefficients)):
                    coefficients[i] =  coefficients[i]
                    

                
                for node_id in curtailment_info.curtailment_nodes:
                    node_info = curtailment_info.get_curtailment_node_info( node_id )
                    variables.append( dc_opf_mip.variables[FEED_IN_VARIABLE_NAME][node_id] )
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
                        if 'generator_switch' in dc_opf_mip.variables.keys():
                            switch_var = dc_opf_mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id]
                            gen_var = dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id]
                            variables.append( switch_var )
                            variables.append( gen_var )
                            expression = expression + gen.coeff_p_2*((gen_var.sympy_symbol*100)**2) + gen.coeff_p_1*100*gen_var.sympy_symbol + gen.coeff_p_0 * switch_var.sympy_symbol
                        else:
                         
                            gen_var = dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id]
                         
                            variables.append( gen_var )
                            expression = expression + gen.coeff_p_2*((gen_var.sympy_symbol*100)**2) + gen.coeff_p_1*100*gen_var.sympy_symbol + gen.coeff_p_0 

                        
                    else:  
                        number = 1
                        for gen in bus.generators:
                            if 'generator_switch' in dc_opf_mip.variables.keys():
                                switch_var = dc_opf_mip.variables[GENERATOR_SWITCH_VARIABLE_NAME][node_id, number]
                                gen_var = dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number]
                                variables.append( switch_var )
                                variables.append( gen_var )
                                expression = expression + gen.coeff_p_2*((gen_var.sympy_symbol*100)**2) + 100*gen.coeff_p_1*gen_var.sympy_symbol + gen.coeff_p_0 * switch_var.sympy_symbol
                            
                            else:
                               
                                gen_var = dc_opf_mip.variables[REAL_POWER_GEN_VARIABLE_NAME][node_id, number]
                               
                                variables.append( gen_var )
                                expression = expression + gen.coeff_p_2*((gen_var.sympy_symbol*100)**2) + gen.coeff_p_1*100*gen_var.sympy_symbol + gen.coeff_p_0 
     
                            
                            number = number +1
           

            if curtailment_info != []:
                
                cost_factor_for_curtailment = compute_curtailment_cost_factor_polynomial(expression, variables, curtailment_info, network.base_MVA)
                
                expression = expression
                for node_id in curtailment_info.curtailment_nodes:
                    node_info = curtailment_info.get_curtailment_node_info( node_id )
                    feed_in_var = dc_opf_mip.variables[FEED_IN_VARIABLE_NAME][node_id]
                    variables.append( feed_in_var )
                    

                    expression = expression + (cost_factor_for_curtailment*2*node_info.produced_power/network.base_MVA) - (cost_factor_for_curtailment)*feed_in_var.sympy_symbol               


                           
            objective.build_polynomial_objective_expression(expression, 'min', variables)
        else:
            print('nonlinear objective not implemented')

        dc_opf_mip.set_objective(objective)


    def build_dc_opf_variables_voltage_square(self, dc_opf_mip, network):
        voltage_square = {}    #initialize dictionary
        for node_id in network.graph.nodes:    #for every bus
            #bus = network.get_bus_data(node_id)    #read bus data
            #bus_data = bus.data    #read bus data
            voltage_square_lower_bound = 1    #read lower bound
            voltage_square_upper_bound = 1    #read upper bound
            var = define_voltage_square_variable(VOLTAGE_SQUARE_VARIABLE_NAME, node_id, voltage_square_lower_bound, voltage_square_upper_bound)
            var.set_given_initial_value( 1 )
            voltage_square.update( {node_id : var} )    #append variable to dictionary
        dc_opf_mip.add_variable({VOLTAGE_SQUARE_VARIABLE_NAME : voltage_square})    #add dictionary of variables to minlp       


    def build_dc_opf_variables_phase_angle(self, dc_opf_mip, network):
        phase_angle = {}    
        for node_id in network.graph.nodes:
            var = define_phase_angle_variable(PHASE_ANGLE_VARIABLE_NAME, node_id)
            bus_data = network.get_bus_data(node_id).data
            var.set_given_initial_value( bus_data['voltage_angle']*2*pi/360 )
            phase_angle.update( {node_id : var} ) 
        dc_opf_mip.add_variable({PHASE_ANGLE_VARIABLE_NAME : phase_angle})            


    def build_dc_opf_variables_phase_angle_difference(self, dc_opf_mip, network):
        phase_angle_difference = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data
            bus1_data = network.get_bus_data(from_bus_id).data
            bus2_data = network.get_bus_data(to_bus_id).data
            
            angle_diff_lower_bound = floor(branch_data['min_angle_diff']*2*pi/360*1e4)/1e4
            angle_diff_upper_bound = ceil(branch_data['max_angle_diff']*2*pi/360*1e4)/1e4
            if angle_diff_lower_bound == 0 and angle_diff_upper_bound == 0:    #MATPOWER convention
                angle_diff_lower_bound = floor(-2*pi * 1e4) / 1e4
                angle_diff_upper_bound = ceil(2*pi * 1e4) /1e4
            angle = (network.get_branch_data(from_bus_id,to_bus_id).data['angle']*2*pi)/360
            angle_diff_lower_bound = angle_diff_lower_bound - angle
            angle_diff_upper_bound = angle_diff_upper_bound - angle
            var = define_phase_angle_difference_variable(PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME, from_bus_id, to_bus_id, angle_diff_lower_bound, angle_diff_upper_bound)
            var.set_given_initial_value( (bus1_data['voltage_angle']-bus2_data['voltage_angle']-angle)*2*pi/360 )
            phase_angle_difference.update( { (from_bus_id, to_bus_id) : var } )
        dc_opf_mip.add_variable({PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME : phase_angle_difference})

        
    def build_dc_opf_variables_real_power_gen(self, dc_opf_mip, network, parameters):
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
                    
                    if 'generator_switch' in dc_opf_mip.variables.keys():
                        
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
                        
                        if gen_data['minimum_real_power_output']/gen_MVA_base  <= 0:
                            real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base 
                        else:
                            real_lower_bound = 0
                        
                        if gen_data['maximum_real_power_output']/gen_MVA_base >= 0:
                            real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base
                        else:
                            real_upper_bound = 0
                        
                        var = define_real_power_gen_variable(REAL_POWER_GEN_VARIABLE_NAME, node_id, real_lower_bound, real_upper_bound, number)
                        var.set_given_initial_value( gen_data['real_power_output']/gen_MVA_base )
                        real_power_gen.update( {(node_id, number) : var} )
                        number = number + 1
                    
                    
        dc_opf_mip.add_variable({REAL_POWER_GEN_VARIABLE_NAME : real_power_gen})


   


    def build_dc_opf_variables_generator_switch(self, dc_opf_mip, network, parameters):
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
                        

        dc_opf_mip.add_variable({GENERATOR_SWITCH_VARIABLE_NAME : generator_switch})

    
    def build_dc_opf_variables_transmission_switch(self, dc_opf_mip, network):
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
             
        dc_opf_mip.add_variable({TRANSMISSION_SWITCH_VARIABLE_NAME : transmission_switch})


    def build_dc_opf_variables_switched_voltage_product_imaginary(self, dc_opf_mip, network):
        switched_voltage_product_imaginary = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            #bus = network.get_bus_data(from_bus_id)    #read bus data
            voltage_product_lower_bound = min( dc_opf_mip.variables['voltage_product_imaginary'][from_bus_id,to_bus_id].lower_bound, 0 )    #read lower bound
            voltage_product_upper_bound = max( dc_opf_mip.variables['voltage_product_imaginary'][from_bus_id,to_bus_id].upper_bound, 0 )
            
            var1 = define_switched_voltage_product_imaginary_variable(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_product_lower_bound, voltage_product_upper_bound)
            var1.set_given_initial_value( dc_opf_mip.variables['voltage_product_imaginary'][from_bus_id,to_bus_id].given_initial_value )
            
            switched_voltage_product_imaginary.update( { (from_bus_id, to_bus_id) : var1 } )    #one direction

            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data    
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1

                var1 = define_switched_voltage_product_imaginary_variable(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_product_lower_bound, voltage_product_upper_bound, number)
                var1.set_given_initial_value( dc_opf_mip.variables['voltage_product_imaginary'][from_bus_id,to_bus_id].given_initial_value )
                
                switched_voltage_product_imaginary.update( { (from_bus_id, to_bus_id, number) : var1 } )    #one direction
           
        dc_opf_mip.add_variable({SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME : switched_voltage_product_imaginary})


    def build_dc_opf_variables_real_flow(self, dc_opf_mip, network):
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
            
        dc_opf_mip.add_variable({REAL_FLOW_VARIABLE_NAME : real_flow})

        



        
    def build_dc_opf_variables_voltage_product_imaginary(self, dc_opf_mip, network):
        voltage_product_imaginary = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            
            from_bus_data = network.get_bus_data(from_bus_id).data
            to_bus_data = network.get_bus_data(to_bus_id).data

            if from_bus_id <= to_bus_id:
                abs_bound = max(abs(dc_opf_mip.variables['angle_difference'][from_bus_id,to_bus_id].upper_bound),abs(dc_opf_mip.variables['angle_difference'][from_bus_id,to_bus_id].lower_bound))
            else:
                abs_bound = max(abs(dc_opf_mip.variables['angle_difference'][to_bus_id,from_bus_id].upper_bound),abs(dc_opf_mip.variables['angle_difference'][to_bus_id,from_bus_id].lower_bound))

            voltage_product_imaginary_lower_bound = -abs_bound
            voltage_product_imaginary_upper_bound = abs_bound
            var = define_voltage_product_imaginary_variable(VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME, from_bus_id, to_bus_id, voltage_product_imaginary_lower_bound, voltage_product_imaginary_upper_bound)
            
            initial_value = -from_bus_data['voltage_magnitude']*to_bus_data['voltage_magnitude']*float(sin(dc_opf_mip.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id].given_initial_value))
            var.set_given_initial_value( initial_value )
            voltage_product_imaginary.update( { (from_bus_id,to_bus_id) : var } )


     
        dc_opf_mip.add_variable({VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME : voltage_product_imaginary})
        

    def build_dc_opf_variables_curtailment(self, dc_opf_mip, curtailment_info):
        curtailment = {}
        for node in curtailment_info.curtailment_nodes:
            node_info =  curtailment_info.get_curtailment_node_info( node )
            lower_bound = min(node_info.curtailment_options)
            upper_bound = max(node_info.curtailment_options)
            var = define_curtailment_variable(CURTAILMENT_VARIABLE_NAME, node, lower_bound, upper_bound)
            
            var.set_given_initial_value( lower_bound )
            curtailment.update( { node : var } )
            
        dc_opf_mip.add_variable( {CURTAILMENT_VARIABLE_NAME : curtailment  } )
  
      
    def build_dc_opf_variables_curtailment_binaries(self, dc_opf_mip, curtailment_info):
        curtailment_binaries = {}
        for node in curtailment_info.curtailment_nodes:
            node_info = curtailment_info.get_curtailment_node_info( node )
            number = 1
            for option in node_info.curtailment_options:
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
                    
        dc_opf_mip.add_variable( {CURTAILMENT_BINARIES_VARIABLE_NAME : curtailment_binaries  } )
            
                  
    def build_dc_opf_variables_curtailment_indicator(self, dc_opf_mip, curtailment_info):
        curtailment_indicator = {}
        for node in curtailment_info.curtailment_nodes:
            var = define_curtailment_indicator_variable(CURTAILMENT_INDICATOR_VARIABLE_NAME, node)
            
            var.set_given_initial_value( 1 )
            curtailment_indicator.update( { node : var } )
            
        dc_opf_mip.add_variable( {CURTAILMENT_INDICATOR_VARIABLE_NAME : curtailment_indicator  } )
       
        
    def build_dc_opf_variables_curtailment_indicator_product(self, dc_opf_mip, curtailment_info):
        curtailment_indicator_product = {}
        for node in curtailment_info.curtailment_nodes:            
            
            node_info =  curtailment_info.get_curtailment_node_info( node )
            lower_bound = 0
            upper_bound = max(node_info.curtailment_options)
            
            var = define_curtailment_indicator_product_variable(CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME, node, lower_bound, upper_bound)
            
            initial_value = min(node_info.curtailment_options)
            var.set_given_initial_value( initial_value )
            
            curtailment_indicator_product.update( { node : var } )
            
        dc_opf_mip.add_variable( {CURTAILMENT_INDICATOR_PRODUCT_VARIABLE_NAME : curtailment_indicator_product  } )        


    def build_dc_opf_constraints_real_flow_conservation(self, dc_opf_mip, network, curtailment_info=[]):
        real_flow_conservation = {}
        for node_id in network.graph.nodes:
            real_flow_conservation.update( { node_id : build_real_flow_conservation(REAL_FLOW_CONSERVATION_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curtailment_info) } )   
        dc_opf_mip.add_constraint({REAL_FLOW_CONSERVATION_CONSTRAINT_NAME : real_flow_conservation})
        
    
      
    def build_dc_opf_constraints_real_power_flow_equation(self , dc_opf_mip, network, parameters):
        real_power_flow_equation = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            real_power_flow_equation.update( { (from_bus_id, to_bus_id) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network) } )
            real_power_flow_equation.update( { (to_bus_id, from_bus_id) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, to_bus_id, from_bus_id, dc_opf_mip, network) } )

            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1
                real_power_flow_equation.update( { (from_bus_id, to_bus_id, number) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network, number) } )
                real_power_flow_equation.update( { (to_bus_id, from_bus_id, number) : build_real_power_flow_equation(REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME, to_bus_id, from_bus_id, dc_opf_mip, network, number) } )
                

        dc_opf_mip.add_constraint({REAL_POWER_FLOW_EQUATION_CONSTRAINT_NAME : real_power_flow_equation})
        
        

    def build_dc_opf_constraints_trigonometric_constraint(self, dc_opf_mip, network, parameters):
        trigonometric_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:
            trigonometric_constraint.update( { (from_bus_id, to_bus_id) : build_trigonometric_constraint(TRIGONOMETRIC_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip) } )
        dc_opf_mip.add_constraint({TRIGONOMETRIC_CONSTRAINT_NAME : trigonometric_constraint})

   
    def build_dc_opf_constraints_thermal_limit(self, dc_opf_mip, network):
        thermal_limit = {}   
        for (from_bus_id, to_bus_id) in network.graph.edges:
            if (network.get_branch_data(from_bus_id, to_bus_id)['rateA']/network.base_MVA) > 0:
                thermal_limit.update( { (from_bus_id, to_bus_id) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network) } )
                thermal_limit.update( { (to_bus_id, from_bus_id) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, to_bus_id, from_bus_id, dc_opf_mip, network) } )
                
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                if (network.get_branch_data(from_bus_id, to_bus_id).data['rateA_2']/network.base_MVA) > 0:
                    number = i + 1        
                    thermal_limit.update( { (from_bus_id, to_bus_id, number) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network, number) } )
                    thermal_limit.update( { (to_bus_id, from_bus_id, number) : build_thermal_limit(THERMAL_LIMIT_CONSTRAINT_NAME, to_bus_id, from_bus_id, dc_opf_mip, network, number) } )

        dc_opf_mip.add_constraint({THERMAL_LIMIT_CONSTRAINT_NAME : thermal_limit})        


    def build_dc_opf_constraints_reference_anlge(self, dc_opf_mip, network):
        reference_angle = {}
        for node_id in network.graph.nodes:
  
            bus = network.get_bus_data(node_id)
            if bus.data['bus_type']==3:    #reference_bus
                reference_angle.update( { node_id : build_reference_angle(REFERENCE_ANGLE_CONSTRAINT_NAME, node_id, dc_opf_mip) } )
        dc_opf_mip.add_constraint({REFERENCE_ANGLE_CONSTRAINT_NAME : reference_angle})
        
     
    def build_dc_opf_constraints_phase_angle_difference_equation(self, dc_opf_mip, network):
        phase_angle_difference_equation = {}        
        for (from_bus_id, to_bus_id) in network.graph.edges:
            phase_angle_difference_equation.update( { (from_bus_id, to_bus_id) : build_phase_angle_difference_equation(PHASE_ANGLE_DIFFERENCE_EQUATION_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network) } )
        dc_opf_mip.add_constraint({PHASE_ANGLE_DIFFERENCE_EQUATION_CONSTRAINT_NAME : phase_angle_difference_equation})


    def build_dc_opf_constraints_generator_switch_lower_constraint(self, dc_opf_mip, network):
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
                    generator_switch_lower_constraint.update ( { node_id : build_generator_switch_lower_constraint(GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME, node_id, real_lower_bound, dc_opf_mip) } )
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator data
                        
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base'] 
                        
                        real_lower_bound = gen_data['minimum_real_power_output']/gen_MVA_base
                        generator_switch_lower_constraint.update ( { (node_id, number) : build_generator_switch_lower_constraint(GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME, node_id, real_lower_bound, dc_opf_mip, number) } )
                        number = number + 1
                        
        dc_opf_mip.add_constraint({GENERATOR_SWITCH_LOWER_CONSTRAINT_NAME : generator_switch_lower_constraint})                
    

    def build_dc_opf_constraints_generator_switch_upper_constraint(self, dc_opf_mip, network): 
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
                    generator_switch_upper_constraint.update ( { node_id : build_generator_switch_upper_constraint(GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME, node_id, real_upper_bound, dc_opf_mip) } )
                else:    #bus has more than one generator
                    number = 1
                    for gen in bus.generators:
                        gen_data = gen.data    #read generator 
                        
                        if gen_data['total_MVA_base']  == 0:
                            gen_MVA_base = network.base_MVA
                        else:
                            gen_MVA_base = gen_data['total_MVA_base']     
                    
                        real_upper_bound = gen_data['maximum_real_power_output']/gen_MVA_base
                        generator_switch_upper_constraint.update ( { (node_id, number) : build_generator_switch_upper_constraint(GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME, node_id, real_upper_bound, dc_opf_mip, number) } )
                        number = number + 1
        dc_opf_mip.add_constraint({GENERATOR_SWITCH_UPPER_CONSTRAINT_NAME : generator_switch_upper_constraint})


  
    def build_dc_opf_constraints_switched_voltage_product_imaginary_big_m(self, dc_opf_mip, network):
        big_m_constraint = {}
        for (from_bus_id, to_bus_id) in network.graph.edges:        
            
            big_m_constraint.update( { (from_bus_id, to_bus_id, 1) : build_big_m_constraint1(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 2) : build_big_m_constraint2(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 3) : build_big_m_constraint3(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network) } )
            big_m_constraint.update( { (from_bus_id, to_bus_id, 4) : build_big_m_constraint4(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network) } )
            
            branch_data = network.get_branch_data(from_bus_id, to_bus_id).data                       
            for i in range( 1, round(len(branch_data)/len(BRANCH_DATA_PARAMETERS)) ):
                number = i + 1

                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 1) : build_big_m_constraint1(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 2) : build_big_m_constraint2(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 3) : build_big_m_constraint3(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network, number) } )
                big_m_constraint.update( { (from_bus_id, to_bus_id, number, 4) : build_big_m_constraint4(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME, from_bus_id, to_bus_id, dc_opf_mip, network, number) } )
 
            
        dc_opf_mip.add_constraint({SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME : big_m_constraint})       


    def build_dc_opf_constraints_number_of_switched_transmissions(self, dc_opf_mip, network, number):
        constraint = {}
        new_constraint = LinearConstraint('number_of_switched_transmissions')
        variables=[]
        coeffs = []
        for inner_key in dc_opf_mip.variables['transmission_switch']:
            variables.append(dc_opf_mip.variables['transmission_switch'][inner_key])
            coeffs.append(1)                    
        new_constraint.build_linear_constraint_expression( variables, coeffs , len(dc_opf_mip.variables['transmission_switch'].keys())- number, '=')
        constraint.update( {1 : new_constraint} )
        dc_opf_mip.add_constraint({'number_switched_transmissions' : constraint})        


    def build_dc_opf_constraints_curtailment_option(self, dc_opf_mip, network, curtailment_info):
        curtailment_option = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            curtailment_option.update( { node_id : build_curtailment_option_constraint(CURTAILMENT_OPTIONS_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curt_node_info) } )
        
        dc_opf_mip.add_constraint({CURTAILMENT_OPTIONS_CONSTRAINT_NAME : curtailment_option})
        
        
 
    def build_dc_opf_constraints_curtailment_sos_constraint(self, dc_opf_mip, network, curtailment_info):
        sos_constraints = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            sos_constraints.update( { node_id : build_curtailment_sos_constraint(CURTAILMENT_SOS_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curt_node_info) } )
        
        dc_opf_mip.add_constraint({CURTAILMENT_SOS_CONSTRAINT_NAME : sos_constraints})
    
    
    def build_dc_opf_constraints_curtailment_big_m(self, dc_opf_mip, network, curtailment_info):
        big_m_constraints = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            big_m_constraints.update( { (node_id, 1) : build_curtailment_big_m_constraint1(CURTAILMENT_BIG_M_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curt_node_info) } )
            big_m_constraints.update( { (node_id, 2) : build_curtailment_big_m_constraint2(CURTAILMENT_BIG_M_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curt_node_info) } )
        
        dc_opf_mip.add_constraint({CURTAILMENT_BIG_M_CONSTRAINT_NAME : big_m_constraints})
    

    def build_dc_opf_constraints_curtailment_product_big_m(self, dc_opf_mip, network, curtailment_info):
        product_big_m_constraints = {}
        for node_id in curtailment_info.curtailment_nodes:
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            product_big_m_constraints.update( { (node_id, 1) : build_curtailment_product_big_m_constraint1(CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curt_node_info) } )
            product_big_m_constraints.update( { (node_id, 2) : build_curtailment_product_big_m_constraint2(CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curt_node_info) } )
            product_big_m_constraints.update( { (node_id, 3) : build_curtailment_product_big_m_constraint3(CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME, node_id, dc_opf_mip, network, curt_node_info) } )
        
        dc_opf_mip.add_constraint({CURTAILMENT_PRODUCT_BIG_M_CONSTRAINT_NAME : product_big_m_constraints})


    def transfer_solution(self, dc_opf_mip,mip_relaxation):
        dc_opf_mip.update_upper_obj_bound(mip_relaxation.upper_obj_bound)
        dc_opf_mip.update_lower_obj_bound(mip_relaxation.lower_obj_bound)
        
        for outer_key in dc_opf_mip.variables.keys():
            for inner_key in dc_opf_mip.variables[outer_key].keys():
                var = dc_opf_mip.variables[outer_key][inner_key]
                if outer_key == 'switched_voltage_product_imaginary':
                    if len(inner_key) > 2:
                        var.set_solution_value( mip_relaxation.variables['voltage_product_imaginary'][(inner_key[0],inner_key[1])].solution_value )                    
                    else:
                        var.set_solution_value( mip_relaxation.variables['voltage_product_imaginary'][inner_key].solution_value )
                else:
                    var.set_solution_value( mip_relaxation.variables[outer_key][inner_key].solution_value )
     

    def build_dc_opf_variables_feed_in(self, dc_opf_mip, curtailment_info, network):
        feed_in = {}
        for node in curtailment_info.curtailment_nodes:
            node_info =  curtailment_info.get_curtailment_node_info( node )
            lower_bound = min(node_info.curtailment_options_absolute)/network.base_MVA
            upper_bound = max(node_info.curtailment_options_absolute)/network.base_MVA
            var = define_feed_in_variable(FEED_IN_VARIABLE_NAME, node, lower_bound, upper_bound)
            
            var.set_given_initial_value( lower_bound )
            feed_in.update( { node : var } )
            
        dc_opf_mip.add_variable( {FEED_IN_VARIABLE_NAME : feed_in  } )
    
    
    
######################################
# FUNCTIONS                          #
######################################



def create_mip_id(network):
    mip_id = str(network.id).replace(NETWORK_ID_PREFIX, '')
    mip_id = mip_id.replace('.m' , '')
    return MIP_NAME + '_' +  mip_id

def define_voltage_square_variable(VOLTAGE_SQUARE_VARIABLE_NAME, node_id, voltage_square_lower_bound, voltage_square_upper_bound):
    voltage_square_variable = Variable(VOLTAGE_SQUARE_VARIABLE_NAME + '_' + str(node_id), 'continuous', voltage_square_lower_bound, voltage_square_upper_bound)
    return voltage_square_variable

def define_switched_voltage_product_imaginary_variable(var_name, from_bus_id, to_bus_id, lower_bound, upper_bound, number=''):
    if number == '':
        variable = Variable(var_name + '_' + str(from_bus_id) + '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)
    else:
        variable = Variable(var_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number), 'continuous', lower_bound, upper_bound)
        
    return variable

def define_phase_angle_variable(PHASE_ANGLE_VARIABLE_NAME, node_id, angle_lower_bound=-2*pi, angle_upper_bound=2*pi):
    phase_angle_variable = Variable(PHASE_ANGLE_VARIABLE_NAME + '_' + str(node_id), 'continuous', angle_lower_bound, angle_upper_bound) 
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

def define_voltage_product_real_variable(variable_name, from_bus_id, to_bus_id, lower_bound, upper_bound):
    voltage_product_real_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)
    return voltage_product_real_variable

def define_voltage_product_imaginary_variable(variable_name, from_bus_id, to_bus_id, lower_bound, upper_bound):
    voltage_product_imaginary_variable = Variable( variable_name + '_' + str(from_bus_id) +  '_' + str(to_bus_id), 'continuous', lower_bound, upper_bound)
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
            curt_node_info = curtailment_info.get_curtailment_node_info( node_id )
            
            variables.append( minlp.variables[FEED_IN_VARIABLE_NAME][node_id] )
            coefficients.append( 1 )   

    g_s = bus.data['shunt_conductance']/network.base_MVA    
    if g_s != 0:
        demand = demand + g_s
        
    real_flow_conservation_constraint.build_linear_constraint_expression(variables, coefficients, demand)
    return real_flow_conservation_constraint


def build_reference_angle(constraint_name, node_id, minlp):
    reference_angle_constraint = LinearConstraint(constraint_name + '_' + str(node_id))
    reference_angle_constraint.build_linear_constraint_expression( [minlp.variables[PHASE_ANGLE_VARIABLE_NAME][node_id]] , [1] , 0 )
    return reference_angle_constraint

def build_thermal_limit(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number=='':
        thermal_limit_constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
        variables = [minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id, to_bus_id]]
        expression = variables[0].sympy_symbol <= (network.get_branch_data(from_bus_id, to_bus_id)['rateA']/network.base_MVA)

    else:
        variables = [minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id ,to_bus_id,number]]#, minlp.variables[REACTIVE_FLOW_VARIABLE_NAME][from_bus_id, to_bus_id, number]]
        thermal_limit_constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id) + '_' + str(number))        
        expression = variables[0].sympy_symbol <= (network.get_branch_data(from_bus_id, to_bus_id).data['rateA_'+str(number)]/network.base_MVA)
    
    thermal_limit_constraint.build_linear_constraint_expression_direct(expression, variables)
    
    return thermal_limit_constraint

def build_phase_angle_difference_equation(constraint_name, from_bus_id, to_bus_id, minlp, network):
    angle_difference_limit_equation_constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))
    variables=[ minlp.variables[PHASE_ANGLE_VARIABLE_NAME][from_bus_id] , minlp.variables[PHASE_ANGLE_VARIABLE_NAME][to_bus_id], minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id, to_bus_id] ]
    coefficients=[-1 , 1, 1]
    angle = (network.get_branch_data(from_bus_id,to_bus_id).data['angle']*2*pi)/360
    angle_difference_limit_equation_constraint.build_linear_constraint_expression( variables, coefficients, -angle)    
    return angle_difference_limit_equation_constraint


def build_trigonometric_constraint(constraint_name, from_bus_id, to_bus_id, minlp):
    constraint = LinearConstraint(constraint_name + '_' + str(from_bus_id) + '_' + str(to_bus_id))

    variables = [  minlp.variables[PHASE_ANGLE_DIFFERENCE_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_bus_id,to_bus_id]  ]

    
    if TRANSMISSION_SWITCH_VARIABLE_NAME in minlp.variables.keys():    #Transmission switching is on
        #switch_var = minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_bus_id, to_bus_id]
        expression_left_side =   - variables[0].sympy_symbol #* switch_var.sympy_symbol
        expression_right_side = variables[1].sympy_symbol  #* switch_var.sympy_symbol
        #variables.append( switch_var )   
    else:
        expression_left_side = ( - variables[0].sympy_symbol)
        expression_right_side = variables[1].sympy_symbol
    
    constraint.build_linear_constraint_expression_direct( Eq(expression_left_side , expression_right_side), variables )
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
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_id_product, to_id_product], minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_id_product, to_id_product], minlp.variables[SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
            variables_real=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_id_product, to_id_product], minlp.variables[SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
           
            variables[0].set_given_initial_value( coefficients[1]*variables[1].given_initial_value + coefficients[2]*variables[2].given_initial_value + coefficients[3]*variables[3].given_initial_value )
        else:
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_id_product, to_id_product, number], minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_id_product, to_id_product, number], minlp.variables[SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product, number]]
            variables_real=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], minlp.variables[TRANSMISSION_SWITCH_VARIABLE_NAME][from_id_product, to_id_product, number], minlp.variables[SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product, number]]

            variables[0].set_given_initial_value( coefficients[1]*variables[1].given_initial_value + coefficients[2]*variables[2].given_initial_value + coefficients[3]*variables[3].given_initial_value) 
    else:   
        if number == '':
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], 1, 1, minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
            variables_real=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
            variables[0].set_given_initial_value( coefficients[1]*variables[1] + coefficients[2]*variables[2] + coefficients[3]*variables[3].given_initial_value )

        else:
            variables=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], 1,1, minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
            variables_real=[ minlp.variables[REAL_FLOW_VARIABLE_NAME][from_bus_id,to_bus_id, number], minlp.variables[VOLTAGE_PRODUCT_IMAGINARY_VARIABLE_NAME][from_id_product,to_id_product]]
            variables[0].set_given_initial_value( coefficients[1]*variables[1] + coefficients[2]*variables[2] + coefficients[3]*variables[3].given_initial_value )
    
    expression = 0
    
    for i in range(1,len(variables)):
        if variables[i] == 1:
            expression = expression + variables[i]*coefficients[i]
        else:
            expression = expression + variables[i].sympy_symbol*coefficients[i]
    
    constraint.build_linear_constraint_expression_direct(Eq(variables[0].sympy_symbol, expression),variables_real)
    
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



def build_big_m_constraint1(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    else:
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_product_imaginary'][from_bus_id, to_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(1))
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + '_' + str(number) + '_' + str(1))

    variables = [binary_var, subst_var]
    coeffs = [conti_var.lower_bound, -1]
    big_m_constr.build_linear_constraint_expression(variables, coeffs, 0, '<=')
    return big_m_constr

        
        
def build_big_m_constraint2(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    else:
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_product_imaginary'][from_bus_id, to_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(2))
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + '_' + str(number) + '_' + str(2))

    variables = [binary_var, subst_var]
    coeffs = [-conti_var.upper_bound, 1]
    big_m_constr.build_linear_constraint_expression(variables, coeffs, 0, '<=')
    return big_m_constr   
    
        
def build_big_m_constraint3(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    else:
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_product_imaginary'][from_bus_id, to_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(3))
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + '_' + str(number) + '_' + str(3))

    
    variables = [binary_var, subst_var, conti_var]
    coeffs = [conti_var.upper_bound, -1, 1]
    big_m_constr.build_linear_constraint_expression(variables, coeffs, conti_var.upper_bound, '<=')
    return big_m_constr
        
def build_big_m_constraint4(constraint_name, from_bus_id, to_bus_id, minlp, network, number=''):
    if number == '':
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id]            
    else:
        subst_var =  minlp.variables['switched_voltage_product_imaginary'][from_bus_id, to_bus_id, number]
        if from_bus_id < to_bus_id:
            binary_var = minlp.variables['transmission_switch'][from_bus_id, to_bus_id, number]
        else:
            binary_var = minlp.variables['transmission_switch'][to_bus_id, from_bus_id, number] 
            
    conti_var = minlp.variables['voltage_product_imaginary'][from_bus_id,to_bus_id]    
    
    if number == '':
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + str(4))
    else:
        big_m_constr = LinearConstraint(SWITCHED_VOLTAGE_PRODUCT_IMAGINARY_BIG_M_CONSTRAINT_NAME + '_' + str(from_bus_id)+ '_' + str(to_bus_id) + '_' + '_' + str(number) + '_' + str(4))

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

def define_feed_in_variable(variable_name, node, lower_bound, upper_bound):
    feed_in_variable = Variable( variable_name + '_' + str(node), 'continuous', lower_bound, upper_bound)
    return feed_in_variable


