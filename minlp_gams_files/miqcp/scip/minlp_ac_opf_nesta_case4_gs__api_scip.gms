$title "minlp_ac_opf_nesta_case4_gs__api"

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
Free Variable variable_phase_angle_1 ;
	variable_phase_angle_1.lo = -6.2832 ;
	variable_phase_angle_1.up = 6.2832 ;
Free Variable variable_phase_angle_2 ;
	variable_phase_angle_2.lo = -6.2832 ;
	variable_phase_angle_2.up = 6.2832 ;
Free Variable variable_phase_angle_3 ;
	variable_phase_angle_3.lo = -6.2832 ;
	variable_phase_angle_3.up = 6.2832 ;
Free Variable variable_phase_angle_4 ;
	variable_phase_angle_4.lo = -6.2832 ;
	variable_phase_angle_4.up = 6.2832 ;
Free Variable variable_angle_difference_1_2 ;
	variable_angle_difference_1_2.lo = -0.5236 ;
	variable_angle_difference_1_2.up = 0.5236 ;
Free Variable variable_angle_difference_1_3 ;
	variable_angle_difference_1_3.lo = -0.5236 ;
	variable_angle_difference_1_3.up = 0.5236 ;
Free Variable variable_angle_difference_2_4 ;
	variable_angle_difference_2_4.lo = -0.5236 ;
	variable_angle_difference_2_4.up = 0.5236 ;
Free Variable variable_angle_difference_3_4 ;
	variable_angle_difference_3_4.lo = -0.5236 ;
	variable_angle_difference_3_4.up = 0.5236 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 10.89 ;
Free Variable variable_real_power_gen_4 ;
	variable_real_power_gen_4.lo = 0.0 ;
	variable_real_power_gen_4.up = 12.66 ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -5.45 ;
	variable_reactive_power_gen_1.up = 5.45 ;
Free Variable variable_reactive_power_gen_4 ;
	variable_reactive_power_gen_4.lo = -6.33 ;
	variable_reactive_power_gen_4.up = 6.33 ;
Free Variable variable_tan_subst_1_2 ;
	variable_tan_subst_1_2.lo = -0.5773519 ;
	variable_tan_subst_1_2.up = 0.5773519 ;
Free Variable variable_tan_subst_1_3 ;
	variable_tan_subst_1_3.lo = -0.5773519 ;
	variable_tan_subst_1_3.up = 0.5773519 ;
Free Variable variable_tan_subst_2_4 ;
	variable_tan_subst_2_4.lo = -0.5773519 ;
	variable_tan_subst_2_4.up = 0.5773519 ;
Free Variable variable_tan_subst_3_4 ;
	variable_tan_subst_3_4.lo = -0.5773519 ;
	variable_tan_subst_3_4.up = 0.5773519 ;
Free Variable variable_tan_delta_1_2 ;
	variable_tan_delta_1_2.lo = 0.0 ;
	variable_tan_delta_1_2.up = 1.0 ;
Free Variable variable_tan_delta_1_3 ;
	variable_tan_delta_1_3.lo = 0.0 ;
	variable_tan_delta_1_3.up = 1.0 ;
Free Variable variable_tan_delta_2_4 ;
	variable_tan_delta_2_4.lo = 0.0 ;
	variable_tan_delta_2_4.up = 1.0 ;
Free Variable variable_tan_delta_3_4 ;
	variable_tan_delta_3_4.lo = 0.0 ;
	variable_tan_delta_3_4.up = 1.0 ;
Free Variable variable_tan_error_1_2 ;
	variable_tan_error_1_2.lo = -0.0214966 ;
	variable_tan_error_1_2.up = 0.0214966 ;
Free Variable variable_tan_error_1_3 ;
	variable_tan_error_1_3.lo = -0.0214966 ;
	variable_tan_error_1_3.up = 0.0214966 ;
Free Variable variable_tan_error_2_4 ;
	variable_tan_error_2_4.lo = -0.0214966 ;
	variable_tan_error_2_4.up = 0.0214966 ;
Free Variable variable_tan_error_3_4 ;
	variable_tan_error_3_4.lo = -0.0214966 ;
	variable_tan_error_3_4.up = 0.0214966 ;
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
	variable_voltage_product_real_1_2.lo = -1.21 ;
	variable_voltage_product_real_1_2.up = 1.21 ;
Free Variable variable_voltage_product_real_1_3 ;
	variable_voltage_product_real_1_3.lo = -1.21 ;
	variable_voltage_product_real_1_3.up = 1.21 ;
Free Variable variable_voltage_product_real_2_4 ;
	variable_voltage_product_real_2_4.lo = -1.21 ;
	variable_voltage_product_real_2_4.up = 1.21 ;
Free Variable variable_voltage_product_real_3_4 ;
	variable_voltage_product_real_3_4.lo = -1.21 ;
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
	variable_curtailed_feed_in_1.up = 10.3032 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 10.3032 ;
Binary Variable variable_curtailment_binaries_1_1 ;
Binary Variable variable_curtailment_binaries_1_2 ;
Binary Variable variable_curtailment_binaries_1_3 ;
Binary Variable variable_curtailment_binaries_3_1 ;
Binary Variable variable_curtailment_binaries_3_2 ;
Binary Variable variable_curtailment_binaries_3_3 ;

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -74.1058*variable_curtailed_feed_in_1 - 74.1058*variable_curtailed_feed_in_3 + 78.7873*variable_real_power_gen_1 + 69.4244*variable_real_power_gen_4 + 3054.10751424
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_3 + variable_real_power_gen_1) =e= (1.0303)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_4) =e= (3.5031)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_1 - variable_real_power_flow_3_4) =e= (4.1213)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_2 - variable_real_power_flow_4_3 + variable_real_power_gen_4) =e= (1.6485)
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
Equation nonlinear_constraint_conic_quadratic_1_2 ;
nonlinear_constraint_conic_quadratic_1_2..
	(power(variable_voltage_product_imaginary_1_2,2) + power(variable_voltage_product_real_1_2,2)) =e= (variable_switched_voltage_square_1_2*variable_switched_voltage_square_2_1)
Equation nonlinear_constraint_conic_quadratic_1_3 ;
nonlinear_constraint_conic_quadratic_1_3..
	(power(variable_voltage_product_imaginary_1_3,2) + power(variable_voltage_product_real_1_3,2)) =e= (variable_switched_voltage_square_1_3*variable_switched_voltage_square_3_1)
Equation nonlinear_constraint_conic_quadratic_2_4 ;
nonlinear_constraint_conic_quadratic_2_4..
	(power(variable_voltage_product_imaginary_2_4,2) + power(variable_voltage_product_real_2_4,2)) =e= (variable_switched_voltage_square_2_4*variable_switched_voltage_square_4_2)
Equation nonlinear_constraint_conic_quadratic_3_4 ;
nonlinear_constraint_conic_quadratic_3_4..
	(power(variable_voltage_product_imaginary_3_4,2) + power(variable_voltage_product_real_3_4,2)) =e= (variable_switched_voltage_square_3_4*variable_switched_voltage_square_4_3)
Equation nonlinear_constraint_trigonometric_1_2 ;
nonlinear_constraint_trigonometric_1_2..
	(-variable_tan_subst_1_2*variable_voltage_product_real_1_2) =e= (variable_voltage_product_imaginary_1_2)
Equation nonlinear_constraint_trigonometric_1_3 ;
nonlinear_constraint_trigonometric_1_3..
	(-variable_tan_subst_1_3*variable_voltage_product_real_1_3) =e= (variable_voltage_product_imaginary_1_3)
Equation nonlinear_constraint_trigonometric_2_4 ;
nonlinear_constraint_trigonometric_2_4..
	(-variable_tan_subst_2_4*variable_voltage_product_real_2_4) =e= (variable_voltage_product_imaginary_2_4)
Equation nonlinear_constraint_trigonometric_3_4 ;
nonlinear_constraint_trigonometric_3_4..
	(-variable_tan_subst_3_4*variable_voltage_product_real_3_4) =e= (variable_voltage_product_imaginary_3_4)
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
Equation linear_constraint_reference_angle_1 ;
linear_constraint_reference_angle_1..
	(variable_phase_angle_1) =e= (0)
Equation linear_constraint_angle_difference_equation_1_2 ;
linear_constraint_angle_difference_equation_1_2..
	(variable_angle_difference_1_2 - variable_phase_angle_1 + variable_phase_angle_2) =e= (0.0)
Equation linear_constraint_angle_difference_equation_1_3 ;
linear_constraint_angle_difference_equation_1_3..
	(variable_angle_difference_1_3 - variable_phase_angle_1 + variable_phase_angle_3) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_4 ;
linear_constraint_angle_difference_equation_2_4..
	(variable_angle_difference_2_4 - variable_phase_angle_2 + variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_angle_difference_equation_3_4 ;
linear_constraint_angle_difference_equation_3_4..
	(variable_angle_difference_3_4 - variable_phase_angle_3 + variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_tan_subst_x_value_1_2 ;
linear_constraint_tan_subst_x_value_1_2..
	(variable_angle_difference_1_2) =e= (1.0472*variable_tan_delta_1_2 - 0.5236)
Equation linear_constraint_tan_subst_x_value_1_3 ;
linear_constraint_tan_subst_x_value_1_3..
	(variable_angle_difference_1_3) =e= (1.0472*variable_tan_delta_1_3 - 0.5236)
Equation linear_constraint_tan_subst_x_value_2_4 ;
linear_constraint_tan_subst_x_value_2_4..
	(variable_angle_difference_2_4) =e= (1.0472*variable_tan_delta_2_4 - 0.5236)
Equation linear_constraint_tan_subst_x_value_3_4 ;
linear_constraint_tan_subst_x_value_3_4..
	(variable_angle_difference_3_4) =e= (1.0472*variable_tan_delta_3_4 - 0.5236)
Equation linear_constraint_tan_subst_y_value_1_2 ;
linear_constraint_tan_subst_y_value_1_2..
	(variable_tan_subst_1_2) =e= (1.15470380345276*variable_tan_delta_1_2 + variable_tan_error_1_2 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_1_3 ;
linear_constraint_tan_subst_y_value_1_3..
	(variable_tan_subst_1_3) =e= (1.15470380345276*variable_tan_delta_1_3 + variable_tan_error_1_3 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_2_4 ;
linear_constraint_tan_subst_y_value_2_4..
	(variable_tan_subst_2_4) =e= (1.15470380345276*variable_tan_delta_2_4 + variable_tan_error_2_4 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_3_4 ;
linear_constraint_tan_subst_y_value_3_4..
	(variable_tan_subst_3_4) =e= (1.15470380345276*variable_tan_delta_3_4 + variable_tan_error_3_4 - 0.577351901726381)
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	2.178*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_4 ;
linear_constraint_generator_switch_lower_4..
	2.532*variable_generator_switch_4 - variable_real_power_gen_4 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	10.89*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_4 ;
linear_constraint_generator_switch_upper_4..
	12.66*variable_generator_switch_4 - variable_real_power_gen_4 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-5.45*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_4 ;
linear_constraint_generator_switch__reactive_lower_4..
	-6.33*variable_generator_switch_4 - variable_reactive_power_gen_4 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	5.45*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_4 ;
linear_constraint_generator_switch_reactive_upper_4..
	6.33*variable_generator_switch_4 - variable_reactive_power_gen_4 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-1.21*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_3 ;
linear_constraint_voltage_product_real_lower_1_3..
	-1.21*variable_transmission_switch_1_3 - variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_4 ;
linear_constraint_voltage_product_real_lower_2_4..
	-1.21*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_4 ;
linear_constraint_voltage_product_real_lower_3_4..
	-1.21*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =l= 0
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
	(variable_curtailed_feed_in_1 - 3.8637*variable_curtailment_binaries_1_1 - 7.7274*variable_curtailment_binaries_1_2 - 10.3032*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 3.8637*variable_curtailment_binaries_3_1 - 7.7274*variable_curtailment_binaries_3_2 - 10.3032*variable_curtailment_binaries_3_3) =e= (0)
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
option MIQCP = scip ;
Solve minlp min objval using MIQCP ;
