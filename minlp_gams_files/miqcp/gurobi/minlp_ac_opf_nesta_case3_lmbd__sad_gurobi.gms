$title "minlp_ac_opf_nesta_case3_lmbd__sad"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1 ;
Binary Variable variable_generator_switch_2 ;
Binary Variable variable_generator_switch_3 ;
Free Variable variable_voltage_square_1 ;
	variable_voltage_square_1.lo = 0.81 ;
	variable_voltage_square_1.up = 1.21 ;
Free Variable variable_voltage_square_2 ;
	variable_voltage_square_2.lo = 0.81 ;
	variable_voltage_square_2.up = 1.21 ;
Free Variable variable_voltage_square_3 ;
	variable_voltage_square_3.lo = 0.81 ;
	variable_voltage_square_3.up = 1.21 ;
Free Variable variable_phase_angle_1 ;
	variable_phase_angle_1.lo = -6.2832 ;
	variable_phase_angle_1.up = 6.2832 ;
Free Variable variable_phase_angle_2 ;
	variable_phase_angle_2.lo = -6.2832 ;
	variable_phase_angle_2.up = 6.2832 ;
Free Variable variable_phase_angle_3 ;
	variable_phase_angle_3.lo = -6.2832 ;
	variable_phase_angle_3.up = 6.2832 ;
Free Variable variable_angle_difference_1_3 ;
	variable_angle_difference_1_3.lo = -0.3271 ;
	variable_angle_difference_1_3.up = 0.3271 ;
Free Variable variable_angle_difference_1_2 ;
	variable_angle_difference_1_2.lo = -0.3271 ;
	variable_angle_difference_1_2.up = 0.3271 ;
Free Variable variable_angle_difference_2_3 ;
	variable_angle_difference_2_3.lo = -0.3271 ;
	variable_angle_difference_2_3.up = 0.3271 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 20.0 ;
Free Variable variable_real_power_gen_2 ;
	variable_real_power_gen_2.lo = 0.0 ;
	variable_real_power_gen_2.up = 20.0 ;
Scalar variable_real_power_gen_3 / 0.0 / ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -10.0 ;
	variable_reactive_power_gen_1.up = 10.0 ;
Free Variable variable_reactive_power_gen_2 ;
	variable_reactive_power_gen_2.lo = -10.0 ;
	variable_reactive_power_gen_2.up = 10.0 ;
Free Variable variable_reactive_power_gen_3 ;
	variable_reactive_power_gen_3.lo = -10.0 ;
	variable_reactive_power_gen_3.up = 10.0 ;
Free Variable variable_tan_subst_1_3 ;
	variable_tan_subst_1_3.lo = -0.3392878 ;
	variable_tan_subst_1_3.up = 0.3392878 ;
Free Variable variable_tan_subst_1_2 ;
	variable_tan_subst_1_2.lo = -0.3392878 ;
	variable_tan_subst_1_2.up = 0.3392878 ;
Free Variable variable_tan_subst_2_3 ;
	variable_tan_subst_2_3.lo = -0.3392878 ;
	variable_tan_subst_2_3.up = 0.3392878 ;
Free Variable variable_tan_delta_1_3 ;
	variable_tan_delta_1_3.lo = 0.0 ;
	variable_tan_delta_1_3.up = 1.0 ;
Free Variable variable_tan_delta_1_2 ;
	variable_tan_delta_1_2.lo = 0.0 ;
	variable_tan_delta_1_2.up = 1.0 ;
Free Variable variable_tan_delta_2_3 ;
	variable_tan_delta_2_3.lo = 0.0 ;
	variable_tan_delta_2_3.up = 1.0 ;
Free Variable variable_tan_error_1_3 ;
	variable_tan_error_1_3.lo = -0.0047597 ;
	variable_tan_error_1_3.up = 0.0047597 ;
Free Variable variable_tan_error_1_2 ;
	variable_tan_error_1_2.lo = -0.0047597 ;
	variable_tan_error_1_2.up = 0.0047597 ;
Free Variable variable_tan_error_2_3 ;
	variable_tan_error_2_3.lo = -0.0047597 ;
	variable_tan_error_2_3.up = 0.0047597 ;
Binary Variable variable_transmission_switch_1_3 ;
Binary Variable variable_transmission_switch_1_2 ;
Binary Variable variable_transmission_switch_2_3 ;
Free Variable variable_switched_voltage_square_1_3 ;
	variable_switched_voltage_square_1_3.lo = 0.0 ;
	variable_switched_voltage_square_1_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_1 ;
	variable_switched_voltage_square_3_1.lo = 0.0 ;
	variable_switched_voltage_square_3_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_1_2 ;
	variable_switched_voltage_square_1_2.lo = 0.0 ;
	variable_switched_voltage_square_1_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_1 ;
	variable_switched_voltage_square_2_1.lo = 0.0 ;
	variable_switched_voltage_square_2_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_3 ;
	variable_switched_voltage_square_2_3.lo = 0.0 ;
	variable_switched_voltage_square_2_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_2 ;
	variable_switched_voltage_square_3_2.lo = 0.0 ;
	variable_switched_voltage_square_3_2.up = 1.21 ;
Free Variable variable_real_power_flow_1_3 ;
	variable_real_power_flow_1_3.lo = -90.0 ;
	variable_real_power_flow_1_3.up = 90.0 ;
Free Variable variable_real_power_flow_3_1 ;
	variable_real_power_flow_3_1.lo = -90.0 ;
	variable_real_power_flow_3_1.up = 90.0 ;
Free Variable variable_real_power_flow_1_2 ;
	variable_real_power_flow_1_2.lo = -90.0 ;
	variable_real_power_flow_1_2.up = 90.0 ;
Free Variable variable_real_power_flow_2_1 ;
	variable_real_power_flow_2_1.lo = -90.0 ;
	variable_real_power_flow_2_1.up = 90.0 ;
Free Variable variable_real_power_flow_2_3 ;
	variable_real_power_flow_2_3.lo = -0.5 ;
	variable_real_power_flow_2_3.up = 0.5 ;
Free Variable variable_real_power_flow_3_2 ;
	variable_real_power_flow_3_2.lo = -0.5 ;
	variable_real_power_flow_3_2.up = 0.5 ;
Free Variable variable_reactive_power_flow_1_3 ;
	variable_reactive_power_flow_1_3.lo = -90.0 ;
	variable_reactive_power_flow_1_3.up = 90.0 ;
Free Variable variable_reactive_power_flow_3_1 ;
	variable_reactive_power_flow_3_1.lo = -90.0 ;
	variable_reactive_power_flow_3_1.up = 90.0 ;
Free Variable variable_reactive_power_flow_1_2 ;
	variable_reactive_power_flow_1_2.lo = -90.0 ;
	variable_reactive_power_flow_1_2.up = 90.0 ;
Free Variable variable_reactive_power_flow_2_1 ;
	variable_reactive_power_flow_2_1.lo = -90.0 ;
	variable_reactive_power_flow_2_1.up = 90.0 ;
Free Variable variable_reactive_power_flow_2_3 ;
	variable_reactive_power_flow_2_3.lo = -0.5 ;
	variable_reactive_power_flow_2_3.up = 0.5 ;
Free Variable variable_reactive_power_flow_3_2 ;
	variable_reactive_power_flow_3_2.lo = -0.5 ;
	variable_reactive_power_flow_3_2.up = 0.5 ;
Free Variable variable_voltage_product_real_1_3 ;
	variable_voltage_product_real_1_3.lo = -1.21 ;
	variable_voltage_product_real_1_3.up = 1.21 ;
Free Variable variable_voltage_product_real_1_2 ;
	variable_voltage_product_real_1_2.lo = -1.21 ;
	variable_voltage_product_real_1_2.up = 1.21 ;
Free Variable variable_voltage_product_real_2_3 ;
	variable_voltage_product_real_2_3.lo = -1.21 ;
	variable_voltage_product_real_2_3.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_3 ;
	variable_voltage_product_imaginary_1_3.lo = -1.21 ;
	variable_voltage_product_imaginary_1_3.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_2 ;
	variable_voltage_product_imaginary_1_2.lo = -1.21 ;
	variable_voltage_product_imaginary_1_2.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_2_3 ;
	variable_voltage_product_imaginary_2_3.lo = -1.21 ;
	variable_voltage_product_imaginary_2_3.up = 1.21 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 3.15 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 3.15 ;
Binary Variable variable_curtailment_binaries_1_1 ;
Binary Variable variable_curtailment_binaries_1_2 ;
Binary Variable variable_curtailment_binaries_1_3 ;
Binary Variable variable_curtailment_binaries_3_1 ;
Binary Variable variable_curtailment_binaries_3_2 ;
Binary Variable variable_curtailment_binaries_3_3 ;

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -3381.25*variable_curtailed_feed_in_1 - 3381.25*variable_curtailed_feed_in_3 + 1100.0*power(variable_real_power_gen_1,2) + 500.0*variable_real_power_gen_1 + 850.0*power(variable_real_power_gen_2,2) + 120.0*variable_real_power_gen_2 + 42603.75
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_3 + variable_real_power_gen_1) =e= (1.1)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_3 + variable_real_power_gen_2) =e= (1.1)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_1 - variable_real_power_flow_3_2 + variable_real_power_gen_3) =e= (0.95)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_2 - variable_reactive_power_flow_1_3 + variable_reactive_power_gen_1) =e= (0.4)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_1 - variable_reactive_power_flow_2_3 + variable_reactive_power_gen_2) =e= (0.4)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_1 - variable_reactive_power_flow_3_2 + variable_reactive_power_gen_3) =e= (0.5)
Equation linear_constraint_real_power_flow_equation_1_3 ;
linear_constraint_real_power_flow_equation_1_3..
	(variable_real_power_flow_1_3) =e= (0.167256352524928*variable_switched_voltage_square_1_3 - 1.59536828562239*variable_voltage_product_imaginary_1_3 - 0.167256352524928*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_3_1 ;
linear_constraint_real_power_flow_equation_3_1..
	(variable_real_power_flow_3_1) =e= (0.167256352524928*variable_switched_voltage_square_3_1 + 1.59536828562239*variable_voltage_product_imaginary_1_3 - 0.167256352524928*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_1_2 ;
linear_constraint_real_power_flow_equation_1_2..
	(variable_real_power_flow_1_2) =e= (0.0517391754253699*variable_switched_voltage_square_1_2 - 1.10869661625793*variable_voltage_product_imaginary_1_2 - 0.0517391754253699*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_1 ;
linear_constraint_real_power_flow_equation_2_1..
	(variable_real_power_flow_2_1) =e= (0.0517391754253699*variable_switched_voltage_square_2_1 + 1.10869661625793*variable_voltage_product_imaginary_1_2 - 0.0517391754253699*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_3 ;
linear_constraint_real_power_flow_equation_2_3..
	(variable_real_power_flow_2_3) =e= (0.0443951165371809*variable_switched_voltage_square_2_3 - 1.33185349611543*variable_voltage_product_imaginary_2_3 - 0.0443951165371809*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_3_2 ;
linear_constraint_real_power_flow_equation_3_2..
	(variable_real_power_flow_3_2) =e= (0.0443951165371809*variable_switched_voltage_square_3_2 + 1.33185349611543*variable_voltage_product_imaginary_2_3 - 0.0443951165371809*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_1_3 ;
linear_constraint_reactive_power_flow_equation_1_3..
	(variable_reactive_power_flow_1_3) =e= (1.37036828562239*variable_switched_voltage_square_1_3 + 0.167256352524928*variable_voltage_product_imaginary_1_3 - 1.59536828562239*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_3_1 ;
linear_constraint_reactive_power_flow_equation_3_1..
	(variable_reactive_power_flow_3_1) =e= (1.37036828562239*variable_switched_voltage_square_3_1 - 0.167256352524928*variable_voltage_product_imaginary_1_3 - 1.59536828562239*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_1_2 ;
linear_constraint_reactive_power_flow_equation_1_2..
	(variable_reactive_power_flow_1_2) =e= (0.958696616257927*variable_switched_voltage_square_1_2 + 0.0517391754253699*variable_voltage_product_imaginary_1_2 - 1.10869661625793*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_1 ;
linear_constraint_reactive_power_flow_equation_2_1..
	(variable_reactive_power_flow_2_1) =e= (0.958696616257927*variable_switched_voltage_square_2_1 - 0.0517391754253699*variable_voltage_product_imaginary_1_2 - 1.10869661625793*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_3 ;
linear_constraint_reactive_power_flow_equation_2_3..
	(variable_reactive_power_flow_2_3) =e= (0.981853496115427*variable_switched_voltage_square_2_3 + 0.0443951165371809*variable_voltage_product_imaginary_2_3 - 1.33185349611543*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_3_2 ;
linear_constraint_reactive_power_flow_equation_3_2..
	(variable_reactive_power_flow_3_2) =e= (0.981853496115427*variable_switched_voltage_square_3_2 - 0.0443951165371809*variable_voltage_product_imaginary_2_3 - 1.33185349611543*variable_voltage_product_real_2_3)
Equation nonlinear_constraint_conic_quadratic_1_3 ;
nonlinear_constraint_conic_quadratic_1_3..
	(power(variable_voltage_product_imaginary_1_3,2) + power(variable_voltage_product_real_1_3,2)) =e= (variable_switched_voltage_square_1_3*variable_switched_voltage_square_3_1)
Equation nonlinear_constraint_conic_quadratic_1_2 ;
nonlinear_constraint_conic_quadratic_1_2..
	(power(variable_voltage_product_imaginary_1_2,2) + power(variable_voltage_product_real_1_2,2)) =e= (variable_switched_voltage_square_1_2*variable_switched_voltage_square_2_1)
Equation nonlinear_constraint_conic_quadratic_2_3 ;
nonlinear_constraint_conic_quadratic_2_3..
	(power(variable_voltage_product_imaginary_2_3,2) + power(variable_voltage_product_real_2_3,2)) =e= (variable_switched_voltage_square_2_3*variable_switched_voltage_square_3_2)
Equation nonlinear_constraint_trigonometric_1_3 ;
nonlinear_constraint_trigonometric_1_3..
	(-variable_tan_subst_1_3*variable_voltage_product_real_1_3) =e= (variable_voltage_product_imaginary_1_3)
Equation nonlinear_constraint_trigonometric_1_2 ;
nonlinear_constraint_trigonometric_1_2..
	(-variable_tan_subst_1_2*variable_voltage_product_real_1_2) =e= (variable_voltage_product_imaginary_1_2)
Equation nonlinear_constraint_trigonometric_2_3 ;
nonlinear_constraint_trigonometric_2_3..
	(-variable_tan_subst_2_3*variable_voltage_product_real_2_3) =e= (variable_voltage_product_imaginary_2_3)
Equation nonlinear_constraint_thermal_limit_1_3 ;
nonlinear_constraint_thermal_limit_1_3..
	power(variable_reactive_power_flow_1_3,2) + power(variable_real_power_flow_1_3,2) =l= 8100.0
Equation nonlinear_constraint_thermal_limit_3_1 ;
nonlinear_constraint_thermal_limit_3_1..
	power(variable_reactive_power_flow_3_1,2) + power(variable_real_power_flow_3_1,2) =l= 8100.0
Equation nonlinear_constraint_thermal_limit_1_2 ;
nonlinear_constraint_thermal_limit_1_2..
	power(variable_reactive_power_flow_1_2,2) + power(variable_real_power_flow_1_2,2) =l= 8100.0
Equation nonlinear_constraint_thermal_limit_2_1 ;
nonlinear_constraint_thermal_limit_2_1..
	power(variable_reactive_power_flow_2_1,2) + power(variable_real_power_flow_2_1,2) =l= 8100.0
Equation nonlinear_constraint_thermal_limit_2_3 ;
nonlinear_constraint_thermal_limit_2_3..
	power(variable_reactive_power_flow_2_3,2) + power(variable_real_power_flow_2_3,2) =l= 0.25
Equation nonlinear_constraint_thermal_limit_3_2 ;
nonlinear_constraint_thermal_limit_3_2..
	power(variable_reactive_power_flow_3_2,2) + power(variable_real_power_flow_3_2,2) =l= 0.25
Equation linear_constraint_reference_angle_1 ;
linear_constraint_reference_angle_1..
	(variable_phase_angle_1) =e= (0)
Equation linear_constraint_angle_difference_equation_1_3 ;
linear_constraint_angle_difference_equation_1_3..
	(variable_angle_difference_1_3 - variable_phase_angle_1 + variable_phase_angle_3) =e= (0.0)
Equation linear_constraint_angle_difference_equation_1_2 ;
linear_constraint_angle_difference_equation_1_2..
	(variable_angle_difference_1_2 - variable_phase_angle_1 + variable_phase_angle_2) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_3 ;
linear_constraint_angle_difference_equation_2_3..
	(variable_angle_difference_2_3 - variable_phase_angle_2 + variable_phase_angle_3) =e= (0.0)
Equation linear_constraint_tan_subst_x_value_1_3 ;
linear_constraint_tan_subst_x_value_1_3..
	(variable_angle_difference_1_3) =e= (0.6542*variable_tan_delta_1_3 - 0.3271)
Equation linear_constraint_tan_subst_x_value_1_2 ;
linear_constraint_tan_subst_x_value_1_2..
	(variable_angle_difference_1_2) =e= (0.6542*variable_tan_delta_1_2 - 0.3271)
Equation linear_constraint_tan_subst_x_value_2_3 ;
linear_constraint_tan_subst_x_value_2_3..
	(variable_angle_difference_2_3) =e= (0.6542*variable_tan_delta_2_3 - 0.3271)
Equation linear_constraint_tan_subst_y_value_1_3 ;
linear_constraint_tan_subst_y_value_1_3..
	(variable_tan_subst_1_3) =e= (0.678575672688163*variable_tan_delta_1_3 + variable_tan_error_1_3 - 0.339287836344081)
Equation linear_constraint_tan_subst_y_value_1_2 ;
linear_constraint_tan_subst_y_value_1_2..
	(variable_tan_subst_1_2) =e= (0.678575672688163*variable_tan_delta_1_2 + variable_tan_error_1_2 - 0.339287836344081)
Equation linear_constraint_tan_subst_y_value_2_3 ;
linear_constraint_tan_subst_y_value_2_3..
	(variable_tan_subst_2_3) =e= (0.678575672688163*variable_tan_delta_2_3 + variable_tan_error_2_3 - 0.339287836344081)
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	4.0*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_2 ;
linear_constraint_generator_switch_lower_2..
	4.0*variable_generator_switch_2 - variable_real_power_gen_2 =l= 0
Equation linear_constraint_generator_switch_lower_3 ;
linear_constraint_generator_switch_lower_3..
	-variable_real_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	20.0*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_2 ;
linear_constraint_generator_switch_upper_2..
	20.0*variable_generator_switch_2 - variable_real_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_upper_3 ;
linear_constraint_generator_switch_upper_3..
	-variable_real_power_gen_3 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-10.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2 ;
linear_constraint_generator_switch__reactive_lower_2..
	-10.0*variable_generator_switch_2 - variable_reactive_power_gen_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_3 ;
linear_constraint_generator_switch__reactive_lower_3..
	-10.0*variable_generator_switch_3 - variable_reactive_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	10.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2 ;
linear_constraint_generator_switch_reactive_upper_2..
	10.0*variable_generator_switch_2 - variable_reactive_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_3 ;
linear_constraint_generator_switch_reactive_upper_3..
	10.0*variable_generator_switch_3 - variable_reactive_power_gen_3 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_3 ;
linear_constraint_voltage_product_real_lower_1_3..
	-1.21*variable_transmission_switch_1_3 - variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-1.21*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_3 ;
linear_constraint_voltage_product_real_lower_2_3..
	-1.21*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_3 ;
linear_constraint_voltage_product_real_upper_1_3..
	1.21*variable_transmission_switch_1_3 - variable_voltage_product_real_1_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_2 ;
linear_constraint_voltage_product_real_upper_1_2..
	1.21*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_3 ;
linear_constraint_voltage_product_real_upper_2_3..
	1.21*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_3 ;
linear_constraint_voltage_product_imaginary_lower_1_3..
	-1.21*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_2 ;
linear_constraint_voltage_product_imaginary_lower_1_2..
	-1.21*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_3 ;
linear_constraint_voltage_product_imaginary_lower_2_3..
	-1.21*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_3 ;
linear_constraint_voltage_product_imaginary_upper_1_3..
	1.21*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_2 ;
linear_constraint_voltage_product_imaginary_upper_1_2..
	1.21*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_3 ;
linear_constraint_voltage_product_imaginary_upper_2_3..
	1.21*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =g= 0
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
Equation linear_constraint_voltage_square_big_m_2_3_1 ;
linear_constraint_voltage_square_big_m_2_3_1..
	-variable_switched_voltage_square_2_3 + 0.81*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_2_3_2 ;
linear_constraint_voltage_square_big_m_2_3_2..
	variable_switched_voltage_square_2_3 - 1.21*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_2_3_3 ;
linear_constraint_voltage_square_big_m_2_3_3..
	-variable_switched_voltage_square_2_3 + 1.21*variable_transmission_switch_2_3 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_3_4 ;
linear_constraint_voltage_square_big_m_2_3_4..
	variable_switched_voltage_square_2_3 - 0.81*variable_transmission_switch_2_3 - variable_voltage_square_2 =l= -0.81
Equation linear_constraint_voltage_square_big_m_3_2_1 ;
linear_constraint_voltage_square_big_m_3_2_1..
	-variable_switched_voltage_square_3_2 + 0.81*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_2_2 ;
linear_constraint_voltage_square_big_m_3_2_2..
	variable_switched_voltage_square_3_2 - 1.21*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_2_3 ;
linear_constraint_voltage_square_big_m_3_2_3..
	-variable_switched_voltage_square_3_2 + 1.21*variable_transmission_switch_2_3 + variable_voltage_square_3 =l= 1.21
Equation linear_constraint_voltage_square_big_m_3_2_4 ;
linear_constraint_voltage_square_big_m_3_2_4..
	variable_switched_voltage_square_3_2 - 0.81*variable_transmission_switch_2_3 - variable_voltage_square_3 =l= -0.81
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 1.1812*variable_curtailment_binaries_1_1 - 2.3625*variable_curtailment_binaries_1_2 - 3.15*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 1.1812*variable_curtailment_binaries_3_1 - 2.3625*variable_curtailment_binaries_3_2 - 3.15*variable_curtailment_binaries_3_3) =e= (0)
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
option MIQCP = gurobi ;
Solve minlp min objval using MIQCP ;
