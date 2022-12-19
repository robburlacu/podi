$title "minlp_ac_opf_nesta_case4_gs"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1 ;
Binary Variable variable_generator_switch_4 ;
Free Variable variable_voltage_square_1 ;
	variable_voltage_square_1.lo = 0.81 ;
	variable_voltage_square_1.up = 1.21 ;
Free Variable variable_voltage_square_2 ;
	variable_voltage_square_2.lo = 0.81 ;
	variable_voltage_square_2.up = 1.21 ;
Free Variable variable_voltage_square_3 ;
	variable_voltage_square_3.lo = 0.81 ;
	variable_voltage_square_3.up = 1.21 ;
Free Variable variable_voltage_square_4 ;
	variable_voltage_square_4.lo = 0.81 ;
	variable_voltage_square_4.up = 1.21 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 12.2 ;
Free Variable variable_real_power_gen_4 ;
	variable_real_power_gen_4.lo = 0.0 ;
	variable_real_power_gen_4.up = 4.19 ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -1.5 ;
	variable_reactive_power_gen_1.up = 1.5 ;
Free Variable variable_reactive_power_gen_4 ;
	variable_reactive_power_gen_4.lo = -1.5 ;
	variable_reactive_power_gen_4.up = 1.5 ;
Free Variable variable_voltage_real_1 ;
	variable_voltage_real_1.lo = -1.1 ;
	variable_voltage_real_1.up = 1.1 ;
Free Variable variable_voltage_real_2 ;
	variable_voltage_real_2.lo = -1.1 ;
	variable_voltage_real_2.up = 1.1 ;
Free Variable variable_voltage_real_3 ;
	variable_voltage_real_3.lo = -1.1 ;
	variable_voltage_real_3.up = 1.1 ;
Free Variable variable_voltage_real_4 ;
	variable_voltage_real_4.lo = -1.1 ;
	variable_voltage_real_4.up = 1.1 ;
Free Variable variable_voltage_imag_1 ;
	variable_voltage_imag_1.lo = -1.1 ;
	variable_voltage_imag_1.up = 1.1 ;
Free Variable variable_voltage_imag_2 ;
	variable_voltage_imag_2.lo = -1.1 ;
	variable_voltage_imag_2.up = 1.1 ;
Free Variable variable_voltage_imag_3 ;
	variable_voltage_imag_3.lo = -1.1 ;
	variable_voltage_imag_3.up = 1.1 ;
Free Variable variable_voltage_imag_4 ;
	variable_voltage_imag_4.lo = -1.1 ;
	variable_voltage_imag_4.up = 1.1 ;
Binary Variable variable_transmission_switch_1_2 ;
Binary Variable variable_transmission_switch_1_3 ;
Binary Variable variable_transmission_switch_2_4 ;
Binary Variable variable_transmission_switch_3_4 ;
Free Variable variable_switched_voltage_square_1_2 ;
	variable_switched_voltage_square_1_2.lo = 0.0 ;
	variable_switched_voltage_square_1_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_1 ;
	variable_switched_voltage_square_2_1.lo = 0.0 ;
	variable_switched_voltage_square_2_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_1_3 ;
	variable_switched_voltage_square_1_3.lo = 0.0 ;
	variable_switched_voltage_square_1_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_1 ;
	variable_switched_voltage_square_3_1.lo = 0.0 ;
	variable_switched_voltage_square_3_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_4 ;
	variable_switched_voltage_square_2_4.lo = 0.0 ;
	variable_switched_voltage_square_2_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_2 ;
	variable_switched_voltage_square_4_2.lo = 0.0 ;
	variable_switched_voltage_square_4_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_4 ;
	variable_switched_voltage_square_3_4.lo = 0.0 ;
	variable_switched_voltage_square_3_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_3 ;
	variable_switched_voltage_square_4_3.lo = 0.0 ;
	variable_switched_voltage_square_4_3.up = 1.21 ;
Free Variable variable_real_power_flow_1_2 ;
	variable_real_power_flow_1_2.lo = -2.5 ;
	variable_real_power_flow_1_2.up = 2.5 ;
Free Variable variable_real_power_flow_2_1 ;
	variable_real_power_flow_2_1.lo = -2.5 ;
	variable_real_power_flow_2_1.up = 2.5 ;
Free Variable variable_real_power_flow_1_3 ;
	variable_real_power_flow_1_3.lo = -2.5 ;
	variable_real_power_flow_1_3.up = 2.5 ;
Free Variable variable_real_power_flow_3_1 ;
	variable_real_power_flow_3_1.lo = -2.5 ;
	variable_real_power_flow_3_1.up = 2.5 ;
Free Variable variable_real_power_flow_2_4 ;
	variable_real_power_flow_2_4.lo = -2.5 ;
	variable_real_power_flow_2_4.up = 2.5 ;
Free Variable variable_real_power_flow_4_2 ;
	variable_real_power_flow_4_2.lo = -2.5 ;
	variable_real_power_flow_4_2.up = 2.5 ;
Free Variable variable_real_power_flow_3_4 ;
	variable_real_power_flow_3_4.lo = -2.5 ;
	variable_real_power_flow_3_4.up = 2.5 ;
Free Variable variable_real_power_flow_4_3 ;
	variable_real_power_flow_4_3.lo = -2.5 ;
	variable_real_power_flow_4_3.up = 2.5 ;
Free Variable variable_reactive_power_flow_1_2 ;
	variable_reactive_power_flow_1_2.lo = -2.5 ;
	variable_reactive_power_flow_1_2.up = 2.5 ;
Free Variable variable_reactive_power_flow_2_1 ;
	variable_reactive_power_flow_2_1.lo = -2.5 ;
	variable_reactive_power_flow_2_1.up = 2.5 ;
Free Variable variable_reactive_power_flow_1_3 ;
	variable_reactive_power_flow_1_3.lo = -2.5 ;
	variable_reactive_power_flow_1_3.up = 2.5 ;
Free Variable variable_reactive_power_flow_3_1 ;
	variable_reactive_power_flow_3_1.lo = -2.5 ;
	variable_reactive_power_flow_3_1.up = 2.5 ;
Free Variable variable_reactive_power_flow_2_4 ;
	variable_reactive_power_flow_2_4.lo = -2.5 ;
	variable_reactive_power_flow_2_4.up = 2.5 ;
Free Variable variable_reactive_power_flow_4_2 ;
	variable_reactive_power_flow_4_2.lo = -2.5 ;
	variable_reactive_power_flow_4_2.up = 2.5 ;
Free Variable variable_reactive_power_flow_3_4 ;
	variable_reactive_power_flow_3_4.lo = -2.5 ;
	variable_reactive_power_flow_3_4.up = 2.5 ;
Free Variable variable_reactive_power_flow_4_3 ;
	variable_reactive_power_flow_4_3.lo = -2.5 ;
	variable_reactive_power_flow_4_3.up = 2.5 ;
Free Variable variable_voltage_product_real_1_2 ;
	variable_voltage_product_real_1_2.lo = 0.0 ;
	variable_voltage_product_real_1_2.up = 1.21 ;
Free Variable variable_voltage_product_real_1_3 ;
	variable_voltage_product_real_1_3.lo = 0.0 ;
	variable_voltage_product_real_1_3.up = 1.21 ;
Free Variable variable_voltage_product_real_2_4 ;
	variable_voltage_product_real_2_4.lo = 0.0 ;
	variable_voltage_product_real_2_4.up = 1.21 ;
Free Variable variable_voltage_product_real_3_4 ;
	variable_voltage_product_real_3_4.lo = 0.0 ;
	variable_voltage_product_real_3_4.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_2 ;
	variable_voltage_product_imaginary_1_2.lo = -1.21 ;
	variable_voltage_product_imaginary_1_2.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_3 ;
	variable_voltage_product_imaginary_1_3.lo = -1.21 ;
	variable_voltage_product_imaginary_1_3.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_2_4 ;
	variable_voltage_product_imaginary_2_4.lo = -1.21 ;
	variable_voltage_product_imaginary_2_4.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_3_4 ;
	variable_voltage_product_imaginary_3_4.lo = -1.21 ;
	variable_voltage_product_imaginary_3_4.up = 1.21 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 5.0 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 5.0 ;
Binary Variable variable_curtailment_binaries_1_1 ;
Binary Variable variable_curtailment_binaries_1_2 ;
Binary Variable variable_curtailment_binaries_1_3 ;
Binary Variable variable_curtailment_binaries_3_1 ;
Binary Variable variable_curtailment_binaries_3_2 ;
Binary Variable variable_curtailment_binaries_3_3 ;

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -64.7419*variable_curtailed_feed_in_1 - 64.7419*variable_curtailed_feed_in_3 + 21.9975*variable_real_power_gen_1 + 107.4863*variable_real_power_gen_4 + 1294.838
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_3 + variable_real_power_gen_1) =e= (0.5)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_4) =e= (1.7)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_1 - variable_real_power_flow_3_4) =e= (2.0)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_2 - variable_real_power_flow_4_3 + variable_real_power_gen_4) =e= (0.8)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_2 - variable_reactive_power_flow_1_3 + variable_reactive_power_gen_1) =e= (0.3099)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_1 - variable_reactive_power_flow_2_4) =e= (1.0535)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_1 - variable_reactive_power_flow_3_4) =e= (1.2394)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_2 - variable_reactive_power_flow_4_3 + variable_reactive_power_gen_4) =e= (0.4958)
Equation nonlinear_constraint_voltage_square_rectangular_1 ;
nonlinear_constraint_voltage_square_rectangular_1..
	(variable_voltage_square_1) =e= (power(variable_voltage_imag_1,2) + power(variable_voltage_real_1,2))
Equation nonlinear_constraint_voltage_square_rectangular_2 ;
nonlinear_constraint_voltage_square_rectangular_2..
	(variable_voltage_square_2) =e= (power(variable_voltage_imag_2,2) + power(variable_voltage_real_2,2))
Equation nonlinear_constraint_voltage_square_rectangular_3 ;
nonlinear_constraint_voltage_square_rectangular_3..
	(variable_voltage_square_3) =e= (power(variable_voltage_imag_3,2) + power(variable_voltage_real_3,2))
Equation nonlinear_constraint_voltage_square_rectangular_4 ;
nonlinear_constraint_voltage_square_rectangular_4..
	(variable_voltage_square_4) =e= (power(variable_voltage_imag_4,2) + power(variable_voltage_real_4,2))
Equation nonlinear_constraint_voltage_product_real_rectangular_1_2 ;
nonlinear_constraint_voltage_product_real_rectangular_1_2..
	(variable_voltage_product_real_1_2) =e= (variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_imag_2 + variable_transmission_switch_1_2*variable_voltage_real_1*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_real_rectangular_1_3 ;
nonlinear_constraint_voltage_product_real_rectangular_1_3..
	(variable_voltage_product_real_1_3) =e= (variable_transmission_switch_1_3*variable_voltage_imag_1*variable_voltage_imag_3 + variable_transmission_switch_1_3*variable_voltage_real_1*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_4 ;
nonlinear_constraint_voltage_product_real_rectangular_2_4..
	(variable_voltage_product_real_2_4) =e= (variable_transmission_switch_2_4*variable_voltage_imag_2*variable_voltage_imag_4 + variable_transmission_switch_2_4*variable_voltage_real_2*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_real_rectangular_3_4 ;
nonlinear_constraint_voltage_product_real_rectangular_3_4..
	(variable_voltage_product_real_3_4) =e= (variable_transmission_switch_3_4*variable_voltage_imag_3*variable_voltage_imag_4 + variable_transmission_switch_3_4*variable_voltage_real_3*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_2..
	(variable_voltage_product_imaginary_1_2) =e= (-variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_real_2 + variable_transmission_switch_1_2*variable_voltage_imag_2*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_3 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_3..
	(variable_voltage_product_imaginary_1_3) =e= (-variable_transmission_switch_1_3*variable_voltage_imag_1*variable_voltage_real_3 + variable_transmission_switch_1_3*variable_voltage_imag_3*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_4..
	(variable_voltage_product_imaginary_2_4) =e= (-variable_transmission_switch_2_4*variable_voltage_imag_2*variable_voltage_real_4 + variable_transmission_switch_2_4*variable_voltage_imag_4*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_3_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_3_4..
	(variable_voltage_product_imaginary_3_4) =e= (-variable_transmission_switch_3_4*variable_voltage_imag_3*variable_voltage_real_4 + variable_transmission_switch_3_4*variable_voltage_imag_4*variable_voltage_real_3)
Equation linear_constraint_real_power_flow_equation_1_2 ;
linear_constraint_real_power_flow_equation_1_2..
	(variable_real_power_flow_1_2) =e= (3.81562881562882*variable_switched_voltage_square_1_2 - 19.0781440781441*variable_voltage_product_imaginary_1_2 - 3.81562881562882*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_1 ;
linear_constraint_real_power_flow_equation_2_1..
	(variable_real_power_flow_2_1) =e= (3.81562881562882*variable_switched_voltage_square_2_1 + 19.0781440781441*variable_voltage_product_imaginary_1_2 - 3.81562881562882*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_1_3 ;
linear_constraint_real_power_flow_equation_1_3..
	(variable_real_power_flow_1_3) =e= (5.16956162117453*variable_switched_voltage_square_1_3 - 25.8478081058726*variable_voltage_product_imaginary_1_3 - 5.16956162117453*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_3_1 ;
linear_constraint_real_power_flow_equation_3_1..
	(variable_real_power_flow_3_1) =e= (5.16956162117453*variable_switched_voltage_square_3_1 + 25.8478081058726*variable_voltage_product_imaginary_1_3 - 5.16956162117453*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_2_4 ;
linear_constraint_real_power_flow_equation_2_4..
	(variable_real_power_flow_2_4) =e= (5.16956162117453*variable_switched_voltage_square_2_4 - 25.8478081058726*variable_voltage_product_imaginary_2_4 - 5.16956162117453*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_4_2 ;
linear_constraint_real_power_flow_equation_4_2..
	(variable_real_power_flow_4_2) =e= (5.16956162117453*variable_switched_voltage_square_4_2 + 25.8478081058726*variable_voltage_product_imaginary_2_4 - 5.16956162117453*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_3_4 ;
linear_constraint_real_power_flow_equation_3_4..
	(variable_real_power_flow_3_4) =e= (3.02370585389453*variable_switched_voltage_square_3_4 - 15.1185292694727*variable_voltage_product_imaginary_3_4 - 3.02370585389453*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_3 ;
linear_constraint_real_power_flow_equation_4_3..
	(variable_real_power_flow_4_3) =e= (3.02370585389453*variable_switched_voltage_square_4_3 + 15.1185292694727*variable_voltage_product_imaginary_3_4 - 3.02370585389453*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_1_2 ;
linear_constraint_reactive_power_flow_equation_1_2..
	(variable_reactive_power_flow_1_2) =e= (19.0268940781441*variable_switched_voltage_square_1_2 + 3.81562881562882*variable_voltage_product_imaginary_1_2 - 19.0781440781441*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_1 ;
linear_constraint_reactive_power_flow_equation_2_1..
	(variable_reactive_power_flow_2_1) =e= (19.0268940781441*variable_switched_voltage_square_2_1 - 3.81562881562882*variable_voltage_product_imaginary_1_2 - 19.0781440781441*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_1_3 ;
linear_constraint_reactive_power_flow_equation_1_3..
	(variable_reactive_power_flow_1_3) =e= (25.8090581058726*variable_switched_voltage_square_1_3 + 5.16956162117453*variable_voltage_product_imaginary_1_3 - 25.8478081058726*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_3_1 ;
linear_constraint_reactive_power_flow_equation_3_1..
	(variable_reactive_power_flow_3_1) =e= (25.8090581058726*variable_switched_voltage_square_3_1 - 5.16956162117453*variable_voltage_product_imaginary_1_3 - 25.8478081058726*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_2_4 ;
linear_constraint_reactive_power_flow_equation_2_4..
	(variable_reactive_power_flow_2_4) =e= (25.8090581058726*variable_switched_voltage_square_2_4 + 5.16956162117453*variable_voltage_product_imaginary_2_4 - 25.8478081058726*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_4_2 ;
linear_constraint_reactive_power_flow_equation_4_2..
	(variable_reactive_power_flow_4_2) =e= (25.8090581058726*variable_switched_voltage_square_4_2 - 5.16956162117453*variable_voltage_product_imaginary_2_4 - 25.8478081058726*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_3_4 ;
linear_constraint_reactive_power_flow_equation_3_4..
	(variable_reactive_power_flow_3_4) =e= (15.0547792694727*variable_switched_voltage_square_3_4 + 3.02370585389453*variable_voltage_product_imaginary_3_4 - 15.1185292694727*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_3 ;
linear_constraint_reactive_power_flow_equation_4_3..
	(variable_reactive_power_flow_4_3) =e= (15.0547792694727*variable_switched_voltage_square_4_3 - 3.02370585389453*variable_voltage_product_imaginary_3_4 - 15.1185292694727*variable_voltage_product_real_3_4)
Equation nonlinear_constraint_thermal_limit_1_2 ;
nonlinear_constraint_thermal_limit_1_2..
	power(variable_reactive_power_flow_1_2,2) + power(variable_real_power_flow_1_2,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_2_1 ;
nonlinear_constraint_thermal_limit_2_1..
	power(variable_reactive_power_flow_2_1,2) + power(variable_real_power_flow_2_1,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_1_3 ;
nonlinear_constraint_thermal_limit_1_3..
	power(variable_reactive_power_flow_1_3,2) + power(variable_real_power_flow_1_3,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_3_1 ;
nonlinear_constraint_thermal_limit_3_1..
	power(variable_reactive_power_flow_3_1,2) + power(variable_real_power_flow_3_1,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_2_4 ;
nonlinear_constraint_thermal_limit_2_4..
	power(variable_reactive_power_flow_2_4,2) + power(variable_real_power_flow_2_4,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_4_2 ;
nonlinear_constraint_thermal_limit_4_2..
	power(variable_reactive_power_flow_4_2,2) + power(variable_real_power_flow_4_2,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_3_4 ;
nonlinear_constraint_thermal_limit_3_4..
	power(variable_reactive_power_flow_3_4,2) + power(variable_real_power_flow_3_4,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_4_3 ;
nonlinear_constraint_thermal_limit_4_3..
	power(variable_reactive_power_flow_4_3,2) + power(variable_real_power_flow_4_3,2) =l= 6.25
Equation linear_constraint_reference_rectangular_1 ;
linear_constraint_reference_rectangular_1..
	(variable_voltage_real_1) =e= (0)
Equation linear_constraint_tan_bound_lower_1_2 ;
linear_constraint_tan_bound_lower_1_2..
	variable_voltage_product_imaginary_1_2 - 0.577351901726381*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_lower_1_3 ;
linear_constraint_tan_bound_lower_1_3..
	variable_voltage_product_imaginary_1_3 - 0.577351901726381*variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_tan_bound_lower_2_4 ;
linear_constraint_tan_bound_lower_2_4..
	variable_voltage_product_imaginary_2_4 - 0.577351901726381*variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_tan_bound_lower_3_4 ;
linear_constraint_tan_bound_lower_3_4..
	variable_voltage_product_imaginary_3_4 - 0.577351901726381*variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_tan_bound_upper_1_2 ;
linear_constraint_tan_bound_upper_1_2..
	-variable_voltage_product_imaginary_1_2 - 0.577351901726381*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_upper_1_3 ;
linear_constraint_tan_bound_upper_1_3..
	-variable_voltage_product_imaginary_1_3 - 0.577351901726381*variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_tan_bound_upper_2_4 ;
linear_constraint_tan_bound_upper_2_4..
	-variable_voltage_product_imaginary_2_4 - 0.577351901726381*variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_tan_bound_upper_3_4 ;
linear_constraint_tan_bound_upper_3_4..
	-variable_voltage_product_imaginary_3_4 - 0.577351901726381*variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	2.44*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_4 ;
linear_constraint_generator_switch_lower_4..
	0.838*variable_generator_switch_4 - variable_real_power_gen_4 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	12.2*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_4 ;
linear_constraint_generator_switch_upper_4..
	4.19*variable_generator_switch_4 - variable_real_power_gen_4 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-1.5*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_4 ;
linear_constraint_generator_switch__reactive_lower_4..
	-1.5*variable_generator_switch_4 - variable_reactive_power_gen_4 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	1.5*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_4 ;
linear_constraint_generator_switch_reactive_upper_4..
	1.5*variable_generator_switch_4 - variable_reactive_power_gen_4 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_3 ;
linear_constraint_voltage_product_real_lower_1_3..
	-variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_4 ;
linear_constraint_voltage_product_real_lower_2_4..
	-variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_4 ;
linear_constraint_voltage_product_real_lower_3_4..
	-variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_2 ;
linear_constraint_voltage_product_real_upper_1_2..
	1.21*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_3 ;
linear_constraint_voltage_product_real_upper_1_3..
	1.21*variable_transmission_switch_1_3 - variable_voltage_product_real_1_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_4 ;
linear_constraint_voltage_product_real_upper_2_4..
	1.21*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_4 ;
linear_constraint_voltage_product_real_upper_3_4..
	1.21*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_2 ;
linear_constraint_voltage_product_imaginary_lower_1_2..
	-1.21*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_3 ;
linear_constraint_voltage_product_imaginary_lower_1_3..
	-1.21*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_4 ;
linear_constraint_voltage_product_imaginary_lower_2_4..
	-1.21*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_4 ;
linear_constraint_voltage_product_imaginary_lower_3_4..
	-1.21*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_2 ;
linear_constraint_voltage_product_imaginary_upper_1_2..
	1.21*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_3 ;
linear_constraint_voltage_product_imaginary_upper_1_3..
	1.21*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_4 ;
linear_constraint_voltage_product_imaginary_upper_2_4..
	1.21*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_4 ;
linear_constraint_voltage_product_imaginary_upper_3_4..
	1.21*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =g= 0
Equation linear_constraint_voltage_square_big_m_1_2_1 ;
linear_constraint_voltage_square_big_m_1_2_1..
	-variable_switched_voltage_square_1_2 + 0.81*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_2 ;
linear_constraint_voltage_square_big_m_1_2_2..
	variable_switched_voltage_square_1_2 - 1.21*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_3 ;
linear_constraint_voltage_square_big_m_1_2_3..
	-variable_switched_voltage_square_1_2 + 1.21*variable_transmission_switch_1_2 + variable_voltage_square_1 =l= 1.21
Equation linear_constraint_voltage_square_big_m_1_2_4 ;
linear_constraint_voltage_square_big_m_1_2_4..
	variable_switched_voltage_square_1_2 - 0.81*variable_transmission_switch_1_2 - variable_voltage_square_1 =l= -0.81
Equation linear_constraint_voltage_square_big_m_2_1_1 ;
linear_constraint_voltage_square_big_m_2_1_1..
	-variable_switched_voltage_square_2_1 + 0.81*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_2 ;
linear_constraint_voltage_square_big_m_2_1_2..
	variable_switched_voltage_square_2_1 - 1.21*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_3 ;
linear_constraint_voltage_square_big_m_2_1_3..
	-variable_switched_voltage_square_2_1 + 1.21*variable_transmission_switch_1_2 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_1_4 ;
linear_constraint_voltage_square_big_m_2_1_4..
	variable_switched_voltage_square_2_1 - 0.81*variable_transmission_switch_1_2 - variable_voltage_square_2 =l= -0.81
Equation linear_constraint_voltage_square_big_m_1_3_1 ;
linear_constraint_voltage_square_big_m_1_3_1..
	-variable_switched_voltage_square_1_3 + 0.81*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_1_3_2 ;
linear_constraint_voltage_square_big_m_1_3_2..
	variable_switched_voltage_square_1_3 - 1.21*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_1_3_3 ;
linear_constraint_voltage_square_big_m_1_3_3..
	-variable_switched_voltage_square_1_3 + 1.21*variable_transmission_switch_1_3 + variable_voltage_square_1 =l= 1.21
Equation linear_constraint_voltage_square_big_m_1_3_4 ;
linear_constraint_voltage_square_big_m_1_3_4..
	variable_switched_voltage_square_1_3 - 0.81*variable_transmission_switch_1_3 - variable_voltage_square_1 =l= -0.81
Equation linear_constraint_voltage_square_big_m_3_1_1 ;
linear_constraint_voltage_square_big_m_3_1_1..
	-variable_switched_voltage_square_3_1 + 0.81*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_1_2 ;
linear_constraint_voltage_square_big_m_3_1_2..
	variable_switched_voltage_square_3_1 - 1.21*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_1_3 ;
linear_constraint_voltage_square_big_m_3_1_3..
	-variable_switched_voltage_square_3_1 + 1.21*variable_transmission_switch_1_3 + variable_voltage_square_3 =l= 1.21
Equation linear_constraint_voltage_square_big_m_3_1_4 ;
linear_constraint_voltage_square_big_m_3_1_4..
	variable_switched_voltage_square_3_1 - 0.81*variable_transmission_switch_1_3 - variable_voltage_square_3 =l= -0.81
Equation linear_constraint_voltage_square_big_m_2_4_1 ;
linear_constraint_voltage_square_big_m_2_4_1..
	-variable_switched_voltage_square_2_4 + 0.81*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_2 ;
linear_constraint_voltage_square_big_m_2_4_2..
	variable_switched_voltage_square_2_4 - 1.21*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_3 ;
linear_constraint_voltage_square_big_m_2_4_3..
	-variable_switched_voltage_square_2_4 + 1.21*variable_transmission_switch_2_4 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_4_4 ;
linear_constraint_voltage_square_big_m_2_4_4..
	variable_switched_voltage_square_2_4 - 0.81*variable_transmission_switch_2_4 - variable_voltage_square_2 =l= -0.81
Equation linear_constraint_voltage_square_big_m_4_2_1 ;
linear_constraint_voltage_square_big_m_4_2_1..
	-variable_switched_voltage_square_4_2 + 0.81*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_2_2 ;
linear_constraint_voltage_square_big_m_4_2_2..
	variable_switched_voltage_square_4_2 - 1.21*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_2_3 ;
linear_constraint_voltage_square_big_m_4_2_3..
	-variable_switched_voltage_square_4_2 + 1.21*variable_transmission_switch_2_4 + variable_voltage_square_4 =l= 1.21
Equation linear_constraint_voltage_square_big_m_4_2_4 ;
linear_constraint_voltage_square_big_m_4_2_4..
	variable_switched_voltage_square_4_2 - 0.81*variable_transmission_switch_2_4 - variable_voltage_square_4 =l= -0.81
Equation linear_constraint_voltage_square_big_m_3_4_1 ;
linear_constraint_voltage_square_big_m_3_4_1..
	-variable_switched_voltage_square_3_4 + 0.81*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_3_4_2 ;
linear_constraint_voltage_square_big_m_3_4_2..
	variable_switched_voltage_square_3_4 - 1.21*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_3_4_3 ;
linear_constraint_voltage_square_big_m_3_4_3..
	-variable_switched_voltage_square_3_4 + 1.21*variable_transmission_switch_3_4 + variable_voltage_square_3 =l= 1.21
Equation linear_constraint_voltage_square_big_m_3_4_4 ;
linear_constraint_voltage_square_big_m_3_4_4..
	variable_switched_voltage_square_3_4 - 0.81*variable_transmission_switch_3_4 - variable_voltage_square_3 =l= -0.81
Equation linear_constraint_voltage_square_big_m_4_3_1 ;
linear_constraint_voltage_square_big_m_4_3_1..
	-variable_switched_voltage_square_4_3 + 0.81*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_3_2 ;
linear_constraint_voltage_square_big_m_4_3_2..
	variable_switched_voltage_square_4_3 - 1.21*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_3_3 ;
linear_constraint_voltage_square_big_m_4_3_3..
	-variable_switched_voltage_square_4_3 + 1.21*variable_transmission_switch_3_4 + variable_voltage_square_4 =l= 1.21
Equation linear_constraint_voltage_square_big_m_4_3_4 ;
linear_constraint_voltage_square_big_m_4_3_4..
	variable_switched_voltage_square_4_3 - 0.81*variable_transmission_switch_3_4 - variable_voltage_square_4 =l= -0.81
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 1.875*variable_curtailment_binaries_1_1 - 3.75*variable_curtailment_binaries_1_2 - 5.0*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 1.875*variable_curtailment_binaries_3_1 - 3.75*variable_curtailment_binaries_3_2 - 5.0*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_sos_1 ;
linear_constraint_curtailment_sos_1..
	variable_curtailment_binaries_1_1 + variable_curtailment_binaries_1_2 + variable_curtailment_binaries_1_3 =l= 1
Equation linear_constraint_curtailment_sos_3 ;
linear_constraint_curtailment_sos_3..
	variable_curtailment_binaries_3_1 + variable_curtailment_binaries_3_2 + variable_curtailment_binaries_3_3 =l= 1

*===== SECTION: MODEL DEFINITION
Model minlp /all/ ;

*===== SECTION: MODEL OPTIONS AND SOLVE
option optcr = 0.0001 ;
option ResLim = 7200 ;
option MINLP = baron ;
Solve minlp min objval using MINLP ;
