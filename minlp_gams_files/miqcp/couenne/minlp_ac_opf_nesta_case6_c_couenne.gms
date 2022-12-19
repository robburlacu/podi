$title "minlp_ac_opf_nesta_case6_c"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1 ;
Binary Variable variable_generator_switch_2 ;
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
Free Variable variable_voltage_square_5 ;
	variable_voltage_square_5.lo = 0.81 ;
	variable_voltage_square_5.up = 1.21 ;
Free Variable variable_voltage_square_6 ;
	variable_voltage_square_6.lo = 0.81 ;
	variable_voltage_square_6.up = 1.21 ;
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
Free Variable variable_phase_angle_5 ;
	variable_phase_angle_5.lo = -6.2832 ;
	variable_phase_angle_5.up = 6.2832 ;
Free Variable variable_phase_angle_6 ;
	variable_phase_angle_6.lo = -6.2832 ;
	variable_phase_angle_6.up = 6.2832 ;
Free Variable variable_angle_difference_1_4 ;
	variable_angle_difference_1_4.lo = -0.5236 ;
	variable_angle_difference_1_4.up = 0.5236 ;
Free Variable variable_angle_difference_1_6 ;
	variable_angle_difference_1_6.lo = -0.5236 ;
	variable_angle_difference_1_6.up = 0.5236 ;
Free Variable variable_angle_difference_2_3 ;
	variable_angle_difference_2_3.lo = -0.5236 ;
	variable_angle_difference_2_3.up = 0.5236 ;
Free Variable variable_angle_difference_2_5 ;
	variable_angle_difference_2_5.lo = -0.5236 ;
	variable_angle_difference_2_5.up = 0.5236 ;
Free Variable variable_angle_difference_3_4 ;
	variable_angle_difference_3_4.lo = -0.5236 ;
	variable_angle_difference_3_4.up = 0.5236 ;
Free Variable variable_angle_difference_4_6 ;
	variable_angle_difference_4_6.lo = -0.5236 ;
	variable_angle_difference_4_6.up = 0.5236 ;
Free Variable variable_angle_difference_5_6 ;
	variable_angle_difference_5_6.lo = -0.5236 ;
	variable_angle_difference_5_6.up = 0.5236 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 9.49 ;
Free Variable variable_real_power_gen_2 ;
	variable_real_power_gen_2.lo = 0.0 ;
	variable_real_power_gen_2.up = 0.53 ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -1.0 ;
	variable_reactive_power_gen_1.up = 1.0 ;
Free Variable variable_reactive_power_gen_2 ;
	variable_reactive_power_gen_2.lo = -0.27 ;
	variable_reactive_power_gen_2.up = 0.27 ;
Free Variable variable_tan_subst_1_4 ;
	variable_tan_subst_1_4.lo = -0.5773519 ;
	variable_tan_subst_1_4.up = 0.5773519 ;
Free Variable variable_tan_subst_1_6 ;
	variable_tan_subst_1_6.lo = -0.5773519 ;
	variable_tan_subst_1_6.up = 0.5773519 ;
Free Variable variable_tan_subst_2_3 ;
	variable_tan_subst_2_3.lo = -0.5773519 ;
	variable_tan_subst_2_3.up = 0.5773519 ;
Free Variable variable_tan_subst_2_5 ;
	variable_tan_subst_2_5.lo = -0.5773519 ;
	variable_tan_subst_2_5.up = 0.5773519 ;
Free Variable variable_tan_subst_3_4 ;
	variable_tan_subst_3_4.lo = -0.5773519 ;
	variable_tan_subst_3_4.up = 0.5773519 ;
Free Variable variable_tan_subst_4_6 ;
	variable_tan_subst_4_6.lo = -0.5773519 ;
	variable_tan_subst_4_6.up = 0.5773519 ;
Free Variable variable_tan_subst_5_6 ;
	variable_tan_subst_5_6.lo = -0.5773519 ;
	variable_tan_subst_5_6.up = 0.5773519 ;
Free Variable variable_tan_delta_1_4 ;
	variable_tan_delta_1_4.lo = 0.0 ;
	variable_tan_delta_1_4.up = 1.0 ;
Free Variable variable_tan_delta_1_6 ;
	variable_tan_delta_1_6.lo = 0.0 ;
	variable_tan_delta_1_6.up = 1.0 ;
Free Variable variable_tan_delta_2_3 ;
	variable_tan_delta_2_3.lo = 0.0 ;
	variable_tan_delta_2_3.up = 1.0 ;
Free Variable variable_tan_delta_2_5 ;
	variable_tan_delta_2_5.lo = 0.0 ;
	variable_tan_delta_2_5.up = 1.0 ;
Free Variable variable_tan_delta_3_4 ;
	variable_tan_delta_3_4.lo = 0.0 ;
	variable_tan_delta_3_4.up = 1.0 ;
Free Variable variable_tan_delta_4_6 ;
	variable_tan_delta_4_6.lo = 0.0 ;
	variable_tan_delta_4_6.up = 1.0 ;
Free Variable variable_tan_delta_5_6 ;
	variable_tan_delta_5_6.lo = 0.0 ;
	variable_tan_delta_5_6.up = 1.0 ;
Free Variable variable_tan_error_1_4 ;
	variable_tan_error_1_4.lo = -0.0214966 ;
	variable_tan_error_1_4.up = 0.0214966 ;
Free Variable variable_tan_error_1_6 ;
	variable_tan_error_1_6.lo = -0.0214966 ;
	variable_tan_error_1_6.up = 0.0214966 ;
Free Variable variable_tan_error_2_3 ;
	variable_tan_error_2_3.lo = -0.0214966 ;
	variable_tan_error_2_3.up = 0.0214966 ;
Free Variable variable_tan_error_2_5 ;
	variable_tan_error_2_5.lo = -0.0214966 ;
	variable_tan_error_2_5.up = 0.0214966 ;
Free Variable variable_tan_error_3_4 ;
	variable_tan_error_3_4.lo = -0.0214966 ;
	variable_tan_error_3_4.up = 0.0214966 ;
Free Variable variable_tan_error_4_6 ;
	variable_tan_error_4_6.lo = -0.0214966 ;
	variable_tan_error_4_6.up = 0.0214966 ;
Free Variable variable_tan_error_5_6 ;
	variable_tan_error_5_6.lo = -0.0214966 ;
	variable_tan_error_5_6.up = 0.0214966 ;
Binary Variable variable_transmission_switch_1_4 ;
Binary Variable variable_transmission_switch_1_6 ;
Binary Variable variable_transmission_switch_2_3 ;
Binary Variable variable_transmission_switch_2_5 ;
Binary Variable variable_transmission_switch_3_4 ;
Binary Variable variable_transmission_switch_4_6 ;
Binary Variable variable_transmission_switch_5_6 ;
Free Variable variable_switched_voltage_square_1_4 ;
	variable_switched_voltage_square_1_4.lo = 0.0 ;
	variable_switched_voltage_square_1_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_1 ;
	variable_switched_voltage_square_4_1.lo = 0.0 ;
	variable_switched_voltage_square_4_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_1_6 ;
	variable_switched_voltage_square_1_6.lo = 0.0 ;
	variable_switched_voltage_square_1_6.up = 1.21 ;
Free Variable variable_switched_voltage_square_6_1 ;
	variable_switched_voltage_square_6_1.lo = 0.0 ;
	variable_switched_voltage_square_6_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_3 ;
	variable_switched_voltage_square_2_3.lo = 0.0 ;
	variable_switched_voltage_square_2_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_2 ;
	variable_switched_voltage_square_3_2.lo = 0.0 ;
	variable_switched_voltage_square_3_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_5 ;
	variable_switched_voltage_square_2_5.lo = 0.0 ;
	variable_switched_voltage_square_2_5.up = 1.21 ;
Free Variable variable_switched_voltage_square_5_2 ;
	variable_switched_voltage_square_5_2.lo = 0.0 ;
	variable_switched_voltage_square_5_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_4 ;
	variable_switched_voltage_square_3_4.lo = 0.0 ;
	variable_switched_voltage_square_3_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_3 ;
	variable_switched_voltage_square_4_3.lo = 0.0 ;
	variable_switched_voltage_square_4_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_6 ;
	variable_switched_voltage_square_4_6.lo = 0.0 ;
	variable_switched_voltage_square_4_6.up = 1.21 ;
Free Variable variable_switched_voltage_square_6_4 ;
	variable_switched_voltage_square_6_4.lo = 0.0 ;
	variable_switched_voltage_square_6_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_5_6 ;
	variable_switched_voltage_square_5_6.lo = 0.0 ;
	variable_switched_voltage_square_5_6.up = 1.21 ;
Free Variable variable_switched_voltage_square_6_5 ;
	variable_switched_voltage_square_6_5.lo = 0.0 ;
	variable_switched_voltage_square_6_5.up = 1.21 ;
Free Variable variable_real_power_flow_1_4 ;
	variable_real_power_flow_1_4.lo = -1.7 ;
	variable_real_power_flow_1_4.up = 1.7 ;
Free Variable variable_real_power_flow_4_1 ;
	variable_real_power_flow_4_1.lo = -1.7 ;
	variable_real_power_flow_4_1.up = 1.7 ;
Free Variable variable_real_power_flow_1_6 ;
	variable_real_power_flow_1_6.lo = -1.22 ;
	variable_real_power_flow_1_6.up = 1.22 ;
Free Variable variable_real_power_flow_6_1 ;
	variable_real_power_flow_6_1.lo = -1.22 ;
	variable_real_power_flow_6_1.up = 1.22 ;
Free Variable variable_real_power_flow_2_3 ;
	variable_real_power_flow_2_3.lo = -2.81 ;
	variable_real_power_flow_2_3.up = 2.81 ;
Free Variable variable_real_power_flow_3_2 ;
	variable_real_power_flow_3_2.lo = -2.81 ;
	variable_real_power_flow_3_2.up = 2.81 ;
Free Variable variable_real_power_flow_2_5 ;
	variable_real_power_flow_2_5.lo = -0.97 ;
	variable_real_power_flow_2_5.up = 0.97 ;
Free Variable variable_real_power_flow_5_2 ;
	variable_real_power_flow_5_2.lo = -0.97 ;
	variable_real_power_flow_5_2.up = 0.97 ;
Free Variable variable_real_power_flow_3_4 ;
	variable_real_power_flow_3_4.lo = -1.35 ;
	variable_real_power_flow_3_4.up = 1.35 ;
Free Variable variable_real_power_flow_4_3 ;
	variable_real_power_flow_4_3.lo = -1.35 ;
	variable_real_power_flow_4_3.up = 1.35 ;
Free Variable variable_real_power_flow_4_6 ;
	variable_real_power_flow_4_6.lo = -1.54 ;
	variable_real_power_flow_4_6.up = 1.54 ;
Free Variable variable_real_power_flow_6_4 ;
	variable_real_power_flow_6_4.lo = -1.54 ;
	variable_real_power_flow_6_4.up = 1.54 ;
Free Variable variable_real_power_flow_5_6 ;
	variable_real_power_flow_5_6.lo = -2.08 ;
	variable_real_power_flow_5_6.up = 2.08 ;
Free Variable variable_real_power_flow_6_5 ;
	variable_real_power_flow_6_5.lo = -2.08 ;
	variable_real_power_flow_6_5.up = 2.08 ;
Free Variable variable_reactive_power_flow_1_4 ;
	variable_reactive_power_flow_1_4.lo = -1.7 ;
	variable_reactive_power_flow_1_4.up = 1.7 ;
Free Variable variable_reactive_power_flow_4_1 ;
	variable_reactive_power_flow_4_1.lo = -1.7 ;
	variable_reactive_power_flow_4_1.up = 1.7 ;
Free Variable variable_reactive_power_flow_1_6 ;
	variable_reactive_power_flow_1_6.lo = -1.22 ;
	variable_reactive_power_flow_1_6.up = 1.22 ;
Free Variable variable_reactive_power_flow_6_1 ;
	variable_reactive_power_flow_6_1.lo = -1.22 ;
	variable_reactive_power_flow_6_1.up = 1.22 ;
Free Variable variable_reactive_power_flow_2_3 ;
	variable_reactive_power_flow_2_3.lo = -2.81 ;
	variable_reactive_power_flow_2_3.up = 2.81 ;
Free Variable variable_reactive_power_flow_3_2 ;
	variable_reactive_power_flow_3_2.lo = -2.81 ;
	variable_reactive_power_flow_3_2.up = 2.81 ;
Free Variable variable_reactive_power_flow_2_5 ;
	variable_reactive_power_flow_2_5.lo = -0.97 ;
	variable_reactive_power_flow_2_5.up = 0.97 ;
Free Variable variable_reactive_power_flow_5_2 ;
	variable_reactive_power_flow_5_2.lo = -0.97 ;
	variable_reactive_power_flow_5_2.up = 0.97 ;
Free Variable variable_reactive_power_flow_3_4 ;
	variable_reactive_power_flow_3_4.lo = -1.35 ;
	variable_reactive_power_flow_3_4.up = 1.35 ;
Free Variable variable_reactive_power_flow_4_3 ;
	variable_reactive_power_flow_4_3.lo = -1.35 ;
	variable_reactive_power_flow_4_3.up = 1.35 ;
Free Variable variable_reactive_power_flow_4_6 ;
	variable_reactive_power_flow_4_6.lo = -1.54 ;
	variable_reactive_power_flow_4_6.up = 1.54 ;
Free Variable variable_reactive_power_flow_6_4 ;
	variable_reactive_power_flow_6_4.lo = -1.54 ;
	variable_reactive_power_flow_6_4.up = 1.54 ;
Free Variable variable_reactive_power_flow_5_6 ;
	variable_reactive_power_flow_5_6.lo = -2.08 ;
	variable_reactive_power_flow_5_6.up = 2.08 ;
Free Variable variable_reactive_power_flow_6_5 ;
	variable_reactive_power_flow_6_5.lo = -2.08 ;
	variable_reactive_power_flow_6_5.up = 2.08 ;
Free Variable variable_voltage_product_real_1_4 ;
	variable_voltage_product_real_1_4.lo = -1.21 ;
	variable_voltage_product_real_1_4.up = 1.21 ;
Free Variable variable_voltage_product_real_1_6 ;
	variable_voltage_product_real_1_6.lo = -1.21 ;
	variable_voltage_product_real_1_6.up = 1.21 ;
Free Variable variable_voltage_product_real_2_3 ;
	variable_voltage_product_real_2_3.lo = -1.21 ;
	variable_voltage_product_real_2_3.up = 1.21 ;
Free Variable variable_voltage_product_real_2_5 ;
	variable_voltage_product_real_2_5.lo = -1.21 ;
	variable_voltage_product_real_2_5.up = 1.21 ;
Free Variable variable_voltage_product_real_3_4 ;
	variable_voltage_product_real_3_4.lo = -1.21 ;
	variable_voltage_product_real_3_4.up = 1.21 ;
Free Variable variable_voltage_product_real_4_6 ;
	variable_voltage_product_real_4_6.lo = -1.21 ;
	variable_voltage_product_real_4_6.up = 1.21 ;
Free Variable variable_voltage_product_real_5_6 ;
	variable_voltage_product_real_5_6.lo = -1.21 ;
	variable_voltage_product_real_5_6.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_4 ;
	variable_voltage_product_imaginary_1_4.lo = -1.21 ;
	variable_voltage_product_imaginary_1_4.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_6 ;
	variable_voltage_product_imaginary_1_6.lo = -1.21 ;
	variable_voltage_product_imaginary_1_6.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_2_3 ;
	variable_voltage_product_imaginary_2_3.lo = -1.21 ;
	variable_voltage_product_imaginary_2_3.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_2_5 ;
	variable_voltage_product_imaginary_2_5.lo = -1.21 ;
	variable_voltage_product_imaginary_2_5.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_3_4 ;
	variable_voltage_product_imaginary_3_4.lo = -1.21 ;
	variable_voltage_product_imaginary_3_4.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_4_6 ;
	variable_voltage_product_imaginary_4_6.lo = -1.21 ;
	variable_voltage_product_imaginary_4_6.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_5_6 ;
	variable_voltage_product_imaginary_5_6.lo = -1.21 ;
	variable_voltage_product_imaginary_5_6.up = 1.21 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 0.7167 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 0.7167 ;
Free Variable variable_curtailed_feed_in_5 ;
	variable_curtailed_feed_in_5.lo = 0.0 ;
	variable_curtailed_feed_in_5.up = 0.7167 ;
Binary Variable variable_curtailment_binaries_1_1 ;
Binary Variable variable_curtailment_binaries_1_2 ;
Binary Variable variable_curtailment_binaries_1_3 ;
Binary Variable variable_curtailment_binaries_3_1 ;
Binary Variable variable_curtailment_binaries_3_2 ;
Binary Variable variable_curtailment_binaries_3_3 ;
Binary Variable variable_curtailment_binaries_5_1 ;
Binary Variable variable_curtailment_binaries_5_2 ;
Binary Variable variable_curtailment_binaries_5_3 ;

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -22.6568*variable_curtailed_feed_in_1 - 22.6568*variable_curtailed_feed_in_3 - 22.6568*variable_curtailed_feed_in_5 + 21.1822*variable_real_power_gen_1 + 24.1315*variable_real_power_gen_2 + 97.42877136
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_4 - variable_real_power_flow_1_6 + variable_real_power_gen_1) =e= (0.25)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_3 - variable_real_power_flow_2_5 + variable_real_power_gen_2) =e= (0.15)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_2 - variable_real_power_flow_3_4) =e= (0.275)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_1 - variable_real_power_flow_4_3 - variable_real_power_flow_4_6) =e= (0.0)
Equation linear_constraint_real_flow_conservation_5 ;
linear_constraint_real_flow_conservation_5..
	(variable_curtailed_feed_in_5 - variable_real_power_flow_5_2 - variable_real_power_flow_5_6) =e= (0.15)
Equation linear_constraint_real_flow_conservation_6 ;
linear_constraint_real_flow_conservation_6..
	(-variable_real_power_flow_6_1 - variable_real_power_flow_6_4 - variable_real_power_flow_6_5) =e= (0.25)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_4 - variable_reactive_power_flow_1_6 + variable_reactive_power_gen_1) =e= (0.1)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_3 - variable_reactive_power_flow_2_5 + variable_reactive_power_gen_2) =e= (0.05)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_2 - variable_reactive_power_flow_3_4) =e= (0.11)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_1 - variable_reactive_power_flow_4_3 - variable_reactive_power_flow_4_6) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_5 ;
linear_constraint_reactive_flow_conservation_5..
	(0.48*variable_curtailed_feed_in_5 - variable_reactive_power_flow_5_2 - variable_reactive_power_flow_5_6) =e= (0.09)
Equation linear_constraint_reactive_flow_conservation_6 ;
linear_constraint_reactive_flow_conservation_6..
	(-variable_reactive_power_flow_6_1 - variable_reactive_power_flow_6_4 - variable_reactive_power_flow_6_5) =e= (0.15)
Equation linear_constraint_real_power_flow_equation_1_4 ;
linear_constraint_real_power_flow_equation_1_4..
	(variable_real_power_flow_1_4) =e= (0.577617328519856*variable_switched_voltage_square_1_4 - 5.34296028880866*variable_voltage_product_imaginary_1_4 - 0.577617328519856*variable_voltage_product_real_1_4)
Equation linear_constraint_real_power_flow_equation_4_1 ;
linear_constraint_real_power_flow_equation_4_1..
	(variable_real_power_flow_4_1) =e= (0.577617328519856*variable_switched_voltage_square_4_1 + 5.34296028880866*variable_voltage_product_imaginary_1_4 - 0.577617328519856*variable_voltage_product_real_1_4)
Equation linear_constraint_real_power_flow_equation_1_6 ;
linear_constraint_real_power_flow_equation_1_6..
	(variable_real_power_flow_1_6) =e= (0.455600952352958*variable_switched_voltage_square_1_6 - 3.80647247288439*variable_voltage_product_imaginary_1_6 - 0.455600952352958*variable_voltage_product_real_1_6)
Equation linear_constraint_real_power_flow_equation_6_1 ;
linear_constraint_real_power_flow_equation_6_1..
	(variable_real_power_flow_6_1) =e= (0.455600952352958*variable_switched_voltage_square_6_1 + 3.80647247288439*variable_voltage_product_imaginary_1_6 - 0.455600952352958*variable_voltage_product_real_1_6)
Equation linear_constraint_real_power_flow_equation_2_3 ;
linear_constraint_real_power_flow_equation_2_3..
	(variable_real_power_flow_2_3) =e= (9.07715582450832*variable_switched_voltage_square_2_3 - 37.821482602118*variable_voltage_product_imaginary_2_3 - 9.07715582450832*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_3_2 ;
linear_constraint_real_power_flow_equation_3_2..
	(variable_real_power_flow_3_2) =e= (9.07715582450832*variable_switched_voltage_square_3_2 + 37.821482602118*variable_voltage_product_imaginary_2_3 - 9.07715582450832*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_2_5 ;
linear_constraint_real_power_flow_equation_2_5..
	(variable_real_power_flow_2_5) =e= (0.660827803166389*variable_switched_voltage_square_2_5 - 2.97837883117246*variable_voltage_product_imaginary_2_5 - 0.660827803166389*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_5_2 ;
linear_constraint_real_power_flow_equation_5_2..
	(variable_real_power_flow_5_2) =e= (0.660827803166389*variable_switched_voltage_square_5_2 + 2.97837883117246*variable_voltage_product_imaginary_2_5 - 0.660827803166389*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_3_4 ;
linear_constraint_real_power_flow_equation_3_4..
	(variable_real_power_flow_3_4) =e= (7.41546371366423*variable_switched_voltage_square_3_4 - 6.62448091754004*variable_voltage_product_imaginary_3_4 - 7.41546371366423*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_3 ;
linear_constraint_real_power_flow_equation_4_3..
	(variable_real_power_flow_4_3) =e= (7.41546371366423*variable_switched_voltage_square_4_3 + 6.62448091754004*variable_voltage_product_imaginary_3_4 - 7.41546371366423*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_6 ;
linear_constraint_real_power_flow_equation_4_6..
	(variable_real_power_flow_4_6) =e= (0.568828213879409*variable_switched_voltage_square_4_6 - 4.83503981797497*variable_voltage_product_imaginary_4_6 - 0.568828213879409*variable_voltage_product_real_4_6)
Equation linear_constraint_real_power_flow_equation_6_4 ;
linear_constraint_real_power_flow_equation_6_4..
	(variable_real_power_flow_6_4) =e= (0.568828213879409*variable_switched_voltage_square_6_4 + 4.83503981797497*variable_voltage_product_imaginary_4_6 - 0.568828213879409*variable_voltage_product_real_4_6)
Equation linear_constraint_real_power_flow_equation_5_6 ;
linear_constraint_real_power_flow_equation_5_6..
	(variable_real_power_flow_5_6) =e= (1.08108108108108*variable_switched_voltage_square_5_6 - 6.48648648648649*variable_voltage_product_imaginary_5_6 - 1.08108108108108*variable_voltage_product_real_5_6)
Equation linear_constraint_real_power_flow_equation_6_5 ;
linear_constraint_real_power_flow_equation_6_5..
	(variable_real_power_flow_6_5) =e= (1.08108108108108*variable_switched_voltage_square_6_5 + 6.48648648648649*variable_voltage_product_imaginary_5_6 - 1.08108108108108*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_1_4 ;
linear_constraint_reactive_power_flow_equation_1_4..
	(variable_reactive_power_flow_1_4) =e= (5.33846028880866*variable_switched_voltage_square_1_4 + 0.577617328519856*variable_voltage_product_imaginary_1_4 - 5.34296028880866*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_4_1 ;
linear_constraint_reactive_power_flow_equation_4_1..
	(variable_reactive_power_flow_4_1) =e= (5.33846028880866*variable_switched_voltage_square_4_1 - 0.577617328519856*variable_voltage_product_imaginary_1_4 - 5.34296028880866*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_1_6 ;
linear_constraint_reactive_power_flow_equation_1_6..
	(variable_reactive_power_flow_1_6) =e= (3.80147247288439*variable_switched_voltage_square_1_6 + 0.455600952352958*variable_voltage_product_imaginary_1_6 - 3.80647247288439*variable_voltage_product_real_1_6)
Equation linear_constraint_reactive_power_flow_equation_6_1 ;
linear_constraint_reactive_power_flow_equation_6_1..
	(variable_reactive_power_flow_6_1) =e= (3.80147247288439*variable_switched_voltage_square_6_1 - 0.455600952352958*variable_voltage_product_imaginary_1_6 - 3.80647247288439*variable_voltage_product_real_1_6)
Equation linear_constraint_reactive_power_flow_equation_2_3 ;
linear_constraint_reactive_power_flow_equation_2_3..
	(variable_reactive_power_flow_2_3) =e= (37.821482602118*variable_switched_voltage_square_2_3 + 9.07715582450832*variable_voltage_product_imaginary_2_3 - 37.821482602118*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_3_2 ;
linear_constraint_reactive_power_flow_equation_3_2..
	(variable_reactive_power_flow_3_2) =e= (37.821482602118*variable_switched_voltage_square_3_2 - 9.07715582450832*variable_voltage_product_imaginary_2_3 - 37.821482602118*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_2_5 ;
linear_constraint_reactive_power_flow_equation_2_5..
	(variable_reactive_power_flow_2_5) =e= (2.97087883117246*variable_switched_voltage_square_2_5 + 0.660827803166389*variable_voltage_product_imaginary_2_5 - 2.97837883117246*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_5_2 ;
linear_constraint_reactive_power_flow_equation_5_2..
	(variable_reactive_power_flow_5_2) =e= (2.97087883117246*variable_switched_voltage_square_5_2 - 0.660827803166389*variable_voltage_product_imaginary_2_5 - 2.97837883117246*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_3_4 ;
linear_constraint_reactive_power_flow_equation_3_4..
	(variable_reactive_power_flow_3_4) =e= (6.62448091754004*variable_switched_voltage_square_3_4 + 7.41546371366423*variable_voltage_product_imaginary_3_4 - 6.62448091754004*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_3 ;
linear_constraint_reactive_power_flow_equation_4_3..
	(variable_reactive_power_flow_4_3) =e= (6.62448091754004*variable_switched_voltage_square_4_3 - 7.41546371366423*variable_voltage_product_imaginary_3_4 - 6.62448091754004*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_6 ;
linear_constraint_reactive_power_flow_equation_4_6..
	(variable_reactive_power_flow_4_6) =e= (4.83003981797497*variable_switched_voltage_square_4_6 + 0.568828213879409*variable_voltage_product_imaginary_4_6 - 4.83503981797497*variable_voltage_product_real_4_6)
Equation linear_constraint_reactive_power_flow_equation_6_4 ;
linear_constraint_reactive_power_flow_equation_6_4..
	(variable_reactive_power_flow_6_4) =e= (4.83003981797497*variable_switched_voltage_square_6_4 - 0.568828213879409*variable_voltage_product_imaginary_4_6 - 4.83503981797497*variable_voltage_product_real_4_6)
Equation linear_constraint_reactive_power_flow_equation_5_6 ;
linear_constraint_reactive_power_flow_equation_5_6..
	(variable_reactive_power_flow_5_6) =e= (6.47798648648649*variable_switched_voltage_square_5_6 + 1.08108108108108*variable_voltage_product_imaginary_5_6 - 6.48648648648649*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_6_5 ;
linear_constraint_reactive_power_flow_equation_6_5..
	(variable_reactive_power_flow_6_5) =e= (6.47798648648649*variable_switched_voltage_square_6_5 - 1.08108108108108*variable_voltage_product_imaginary_5_6 - 6.48648648648649*variable_voltage_product_real_5_6)
Equation nonlinear_constraint_conic_quadratic_1_4 ;
nonlinear_constraint_conic_quadratic_1_4..
	(power(variable_voltage_product_imaginary_1_4,2) + power(variable_voltage_product_real_1_4,2)) =e= (variable_switched_voltage_square_1_4*variable_switched_voltage_square_4_1)
Equation nonlinear_constraint_conic_quadratic_1_6 ;
nonlinear_constraint_conic_quadratic_1_6..
	(power(variable_voltage_product_imaginary_1_6,2) + power(variable_voltage_product_real_1_6,2)) =e= (variable_switched_voltage_square_1_6*variable_switched_voltage_square_6_1)
Equation nonlinear_constraint_conic_quadratic_2_3 ;
nonlinear_constraint_conic_quadratic_2_3..
	(power(variable_voltage_product_imaginary_2_3,2) + power(variable_voltage_product_real_2_3,2)) =e= (variable_switched_voltage_square_2_3*variable_switched_voltage_square_3_2)
Equation nonlinear_constraint_conic_quadratic_2_5 ;
nonlinear_constraint_conic_quadratic_2_5..
	(power(variable_voltage_product_imaginary_2_5,2) + power(variable_voltage_product_real_2_5,2)) =e= (variable_switched_voltage_square_2_5*variable_switched_voltage_square_5_2)
Equation nonlinear_constraint_conic_quadratic_3_4 ;
nonlinear_constraint_conic_quadratic_3_4..
	(power(variable_voltage_product_imaginary_3_4,2) + power(variable_voltage_product_real_3_4,2)) =e= (variable_switched_voltage_square_3_4*variable_switched_voltage_square_4_3)
Equation nonlinear_constraint_conic_quadratic_4_6 ;
nonlinear_constraint_conic_quadratic_4_6..
	(power(variable_voltage_product_imaginary_4_6,2) + power(variable_voltage_product_real_4_6,2)) =e= (variable_switched_voltage_square_4_6*variable_switched_voltage_square_6_4)
Equation nonlinear_constraint_conic_quadratic_5_6 ;
nonlinear_constraint_conic_quadratic_5_6..
	(power(variable_voltage_product_imaginary_5_6,2) + power(variable_voltage_product_real_5_6,2)) =e= (variable_switched_voltage_square_5_6*variable_switched_voltage_square_6_5)
Equation nonlinear_constraint_trigonometric_1_4 ;
nonlinear_constraint_trigonometric_1_4..
	(-variable_tan_subst_1_4*variable_voltage_product_real_1_4) =e= (variable_voltage_product_imaginary_1_4)
Equation nonlinear_constraint_trigonometric_1_6 ;
nonlinear_constraint_trigonometric_1_6..
	(-variable_tan_subst_1_6*variable_voltage_product_real_1_6) =e= (variable_voltage_product_imaginary_1_6)
Equation nonlinear_constraint_trigonometric_2_3 ;
nonlinear_constraint_trigonometric_2_3..
	(-variable_tan_subst_2_3*variable_voltage_product_real_2_3) =e= (variable_voltage_product_imaginary_2_3)
Equation nonlinear_constraint_trigonometric_2_5 ;
nonlinear_constraint_trigonometric_2_5..
	(-variable_tan_subst_2_5*variable_voltage_product_real_2_5) =e= (variable_voltage_product_imaginary_2_5)
Equation nonlinear_constraint_trigonometric_3_4 ;
nonlinear_constraint_trigonometric_3_4..
	(-variable_tan_subst_3_4*variable_voltage_product_real_3_4) =e= (variable_voltage_product_imaginary_3_4)
Equation nonlinear_constraint_trigonometric_4_6 ;
nonlinear_constraint_trigonometric_4_6..
	(-variable_tan_subst_4_6*variable_voltage_product_real_4_6) =e= (variable_voltage_product_imaginary_4_6)
Equation nonlinear_constraint_trigonometric_5_6 ;
nonlinear_constraint_trigonometric_5_6..
	(-variable_tan_subst_5_6*variable_voltage_product_real_5_6) =e= (variable_voltage_product_imaginary_5_6)
Equation nonlinear_constraint_thermal_limit_1_4 ;
nonlinear_constraint_thermal_limit_1_4..
	power(variable_reactive_power_flow_1_4,2) + power(variable_real_power_flow_1_4,2) =l= 2.89
Equation nonlinear_constraint_thermal_limit_4_1 ;
nonlinear_constraint_thermal_limit_4_1..
	power(variable_reactive_power_flow_4_1,2) + power(variable_real_power_flow_4_1,2) =l= 2.89
Equation nonlinear_constraint_thermal_limit_1_6 ;
nonlinear_constraint_thermal_limit_1_6..
	power(variable_reactive_power_flow_1_6,2) + power(variable_real_power_flow_1_6,2) =l= 1.4884
Equation nonlinear_constraint_thermal_limit_6_1 ;
nonlinear_constraint_thermal_limit_6_1..
	power(variable_reactive_power_flow_6_1,2) + power(variable_real_power_flow_6_1,2) =l= 1.4884
Equation nonlinear_constraint_thermal_limit_2_3 ;
nonlinear_constraint_thermal_limit_2_3..
	power(variable_reactive_power_flow_2_3,2) + power(variable_real_power_flow_2_3,2) =l= 7.8961
Equation nonlinear_constraint_thermal_limit_3_2 ;
nonlinear_constraint_thermal_limit_3_2..
	power(variable_reactive_power_flow_3_2,2) + power(variable_real_power_flow_3_2,2) =l= 7.8961
Equation nonlinear_constraint_thermal_limit_2_5 ;
nonlinear_constraint_thermal_limit_2_5..
	power(variable_reactive_power_flow_2_5,2) + power(variable_real_power_flow_2_5,2) =l= 0.9409
Equation nonlinear_constraint_thermal_limit_5_2 ;
nonlinear_constraint_thermal_limit_5_2..
	power(variable_reactive_power_flow_5_2,2) + power(variable_real_power_flow_5_2,2) =l= 0.9409
Equation nonlinear_constraint_thermal_limit_3_4 ;
nonlinear_constraint_thermal_limit_3_4..
	power(variable_reactive_power_flow_3_4,2) + power(variable_real_power_flow_3_4,2) =l= 1.8225
Equation nonlinear_constraint_thermal_limit_4_3 ;
nonlinear_constraint_thermal_limit_4_3..
	power(variable_reactive_power_flow_4_3,2) + power(variable_real_power_flow_4_3,2) =l= 1.8225
Equation nonlinear_constraint_thermal_limit_4_6 ;
nonlinear_constraint_thermal_limit_4_6..
	power(variable_reactive_power_flow_4_6,2) + power(variable_real_power_flow_4_6,2) =l= 2.3716
Equation nonlinear_constraint_thermal_limit_6_4 ;
nonlinear_constraint_thermal_limit_6_4..
	power(variable_reactive_power_flow_6_4,2) + power(variable_real_power_flow_6_4,2) =l= 2.3716
Equation nonlinear_constraint_thermal_limit_5_6 ;
nonlinear_constraint_thermal_limit_5_6..
	power(variable_reactive_power_flow_5_6,2) + power(variable_real_power_flow_5_6,2) =l= 4.3264
Equation nonlinear_constraint_thermal_limit_6_5 ;
nonlinear_constraint_thermal_limit_6_5..
	power(variable_reactive_power_flow_6_5,2) + power(variable_real_power_flow_6_5,2) =l= 4.3264
Equation linear_constraint_reference_angle_1 ;
linear_constraint_reference_angle_1..
	(variable_phase_angle_1) =e= (0)
Equation linear_constraint_angle_difference_equation_1_4 ;
linear_constraint_angle_difference_equation_1_4..
	(variable_angle_difference_1_4 - variable_phase_angle_1 + variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_angle_difference_equation_1_6 ;
linear_constraint_angle_difference_equation_1_6..
	(variable_angle_difference_1_6 - variable_phase_angle_1 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_3 ;
linear_constraint_angle_difference_equation_2_3..
	(variable_angle_difference_2_3 - variable_phase_angle_2 + variable_phase_angle_3) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_5 ;
linear_constraint_angle_difference_equation_2_5..
	(variable_angle_difference_2_5 - variable_phase_angle_2 + variable_phase_angle_5) =e= (0.0)
Equation linear_constraint_angle_difference_equation_3_4 ;
linear_constraint_angle_difference_equation_3_4..
	(variable_angle_difference_3_4 - variable_phase_angle_3 + variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_angle_difference_equation_4_6 ;
linear_constraint_angle_difference_equation_4_6..
	(variable_angle_difference_4_6 - variable_phase_angle_4 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_5_6 ;
linear_constraint_angle_difference_equation_5_6..
	(variable_angle_difference_5_6 - variable_phase_angle_5 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_tan_subst_x_value_1_4 ;
linear_constraint_tan_subst_x_value_1_4..
	(variable_angle_difference_1_4) =e= (1.0472*variable_tan_delta_1_4 - 0.5236)
Equation linear_constraint_tan_subst_x_value_1_6 ;
linear_constraint_tan_subst_x_value_1_6..
	(variable_angle_difference_1_6) =e= (1.0472*variable_tan_delta_1_6 - 0.5236)
Equation linear_constraint_tan_subst_x_value_2_3 ;
linear_constraint_tan_subst_x_value_2_3..
	(variable_angle_difference_2_3) =e= (1.0472*variable_tan_delta_2_3 - 0.5236)
Equation linear_constraint_tan_subst_x_value_2_5 ;
linear_constraint_tan_subst_x_value_2_5..
	(variable_angle_difference_2_5) =e= (1.0472*variable_tan_delta_2_5 - 0.5236)
Equation linear_constraint_tan_subst_x_value_3_4 ;
linear_constraint_tan_subst_x_value_3_4..
	(variable_angle_difference_3_4) =e= (1.0472*variable_tan_delta_3_4 - 0.5236)
Equation linear_constraint_tan_subst_x_value_4_6 ;
linear_constraint_tan_subst_x_value_4_6..
	(variable_angle_difference_4_6) =e= (1.0472*variable_tan_delta_4_6 - 0.5236)
Equation linear_constraint_tan_subst_x_value_5_6 ;
linear_constraint_tan_subst_x_value_5_6..
	(variable_angle_difference_5_6) =e= (1.0472*variable_tan_delta_5_6 - 0.5236)
Equation linear_constraint_tan_subst_y_value_1_4 ;
linear_constraint_tan_subst_y_value_1_4..
	(variable_tan_subst_1_4) =e= (1.15470380345276*variable_tan_delta_1_4 + variable_tan_error_1_4 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_1_6 ;
linear_constraint_tan_subst_y_value_1_6..
	(variable_tan_subst_1_6) =e= (1.15470380345276*variable_tan_delta_1_6 + variable_tan_error_1_6 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_2_3 ;
linear_constraint_tan_subst_y_value_2_3..
	(variable_tan_subst_2_3) =e= (1.15470380345276*variable_tan_delta_2_3 + variable_tan_error_2_3 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_2_5 ;
linear_constraint_tan_subst_y_value_2_5..
	(variable_tan_subst_2_5) =e= (1.15470380345276*variable_tan_delta_2_5 + variable_tan_error_2_5 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_3_4 ;
linear_constraint_tan_subst_y_value_3_4..
	(variable_tan_subst_3_4) =e= (1.15470380345276*variable_tan_delta_3_4 + variable_tan_error_3_4 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_4_6 ;
linear_constraint_tan_subst_y_value_4_6..
	(variable_tan_subst_4_6) =e= (1.15470380345276*variable_tan_delta_4_6 + variable_tan_error_4_6 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_5_6 ;
linear_constraint_tan_subst_y_value_5_6..
	(variable_tan_subst_5_6) =e= (1.15470380345276*variable_tan_delta_5_6 + variable_tan_error_5_6 - 0.577351901726381)
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	1.898*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_2 ;
linear_constraint_generator_switch_lower_2..
	0.106*variable_generator_switch_2 - variable_real_power_gen_2 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	9.49*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_2 ;
linear_constraint_generator_switch_upper_2..
	0.53*variable_generator_switch_2 - variable_real_power_gen_2 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-1.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2 ;
linear_constraint_generator_switch__reactive_lower_2..
	-0.27*variable_generator_switch_2 - variable_reactive_power_gen_2 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	1.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2 ;
linear_constraint_generator_switch_reactive_upper_2..
	0.27*variable_generator_switch_2 - variable_reactive_power_gen_2 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_4 ;
linear_constraint_voltage_product_real_lower_1_4..
	-1.21*variable_transmission_switch_1_4 - variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_6 ;
linear_constraint_voltage_product_real_lower_1_6..
	-1.21*variable_transmission_switch_1_6 - variable_voltage_product_real_1_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_3 ;
linear_constraint_voltage_product_real_lower_2_3..
	-1.21*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_5 ;
linear_constraint_voltage_product_real_lower_2_5..
	-1.21*variable_transmission_switch_2_5 - variable_voltage_product_real_2_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_4 ;
linear_constraint_voltage_product_real_lower_3_4..
	-1.21*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_6 ;
linear_constraint_voltage_product_real_lower_4_6..
	-1.21*variable_transmission_switch_4_6 - variable_voltage_product_real_4_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_5_6 ;
linear_constraint_voltage_product_real_lower_5_6..
	-1.21*variable_transmission_switch_5_6 - variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_4 ;
linear_constraint_voltage_product_real_upper_1_4..
	1.21*variable_transmission_switch_1_4 - variable_voltage_product_real_1_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_6 ;
linear_constraint_voltage_product_real_upper_1_6..
	1.21*variable_transmission_switch_1_6 - variable_voltage_product_real_1_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_3 ;
linear_constraint_voltage_product_real_upper_2_3..
	1.21*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_5 ;
linear_constraint_voltage_product_real_upper_2_5..
	1.21*variable_transmission_switch_2_5 - variable_voltage_product_real_2_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_4 ;
linear_constraint_voltage_product_real_upper_3_4..
	1.21*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_6 ;
linear_constraint_voltage_product_real_upper_4_6..
	1.21*variable_transmission_switch_4_6 - variable_voltage_product_real_4_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_5_6 ;
linear_constraint_voltage_product_real_upper_5_6..
	1.21*variable_transmission_switch_5_6 - variable_voltage_product_real_5_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_4 ;
linear_constraint_voltage_product_imaginary_lower_1_4..
	-1.21*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_6 ;
linear_constraint_voltage_product_imaginary_lower_1_6..
	-1.21*variable_transmission_switch_1_6 - variable_voltage_product_imaginary_1_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_3 ;
linear_constraint_voltage_product_imaginary_lower_2_3..
	-1.21*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_5 ;
linear_constraint_voltage_product_imaginary_lower_2_5..
	-1.21*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_4 ;
linear_constraint_voltage_product_imaginary_lower_3_4..
	-1.21*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_6 ;
linear_constraint_voltage_product_imaginary_lower_4_6..
	-1.21*variable_transmission_switch_4_6 - variable_voltage_product_imaginary_4_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_5_6 ;
linear_constraint_voltage_product_imaginary_lower_5_6..
	-1.21*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_4 ;
linear_constraint_voltage_product_imaginary_upper_1_4..
	1.21*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_6 ;
linear_constraint_voltage_product_imaginary_upper_1_6..
	1.21*variable_transmission_switch_1_6 - variable_voltage_product_imaginary_1_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_3 ;
linear_constraint_voltage_product_imaginary_upper_2_3..
	1.21*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_5 ;
linear_constraint_voltage_product_imaginary_upper_2_5..
	1.21*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_4 ;
linear_constraint_voltage_product_imaginary_upper_3_4..
	1.21*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_6 ;
linear_constraint_voltage_product_imaginary_upper_4_6..
	1.21*variable_transmission_switch_4_6 - variable_voltage_product_imaginary_4_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_5_6 ;
linear_constraint_voltage_product_imaginary_upper_5_6..
	1.21*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =g= 0
Equation linear_constraint_voltage_square_big_m_1_4_1 ;
linear_constraint_voltage_square_big_m_1_4_1..
	-variable_switched_voltage_square_1_4 + 0.81*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_1_4_2 ;
linear_constraint_voltage_square_big_m_1_4_2..
	variable_switched_voltage_square_1_4 - 1.21*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_1_4_3 ;
linear_constraint_voltage_square_big_m_1_4_3..
	-variable_switched_voltage_square_1_4 + 1.21*variable_transmission_switch_1_4 + variable_voltage_square_1 =l= 1.21
Equation linear_constraint_voltage_square_big_m_1_4_4 ;
linear_constraint_voltage_square_big_m_1_4_4..
	variable_switched_voltage_square_1_4 - 0.81*variable_transmission_switch_1_4 - variable_voltage_square_1 =l= -0.81
Equation linear_constraint_voltage_square_big_m_4_1_1 ;
linear_constraint_voltage_square_big_m_4_1_1..
	-variable_switched_voltage_square_4_1 + 0.81*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_1_2 ;
linear_constraint_voltage_square_big_m_4_1_2..
	variable_switched_voltage_square_4_1 - 1.21*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_1_3 ;
linear_constraint_voltage_square_big_m_4_1_3..
	-variable_switched_voltage_square_4_1 + 1.21*variable_transmission_switch_1_4 + variable_voltage_square_4 =l= 1.21
Equation linear_constraint_voltage_square_big_m_4_1_4 ;
linear_constraint_voltage_square_big_m_4_1_4..
	variable_switched_voltage_square_4_1 - 0.81*variable_transmission_switch_1_4 - variable_voltage_square_4 =l= -0.81
Equation linear_constraint_voltage_square_big_m_1_6_1 ;
linear_constraint_voltage_square_big_m_1_6_1..
	-variable_switched_voltage_square_1_6 + 0.81*variable_transmission_switch_1_6 =l= 0
Equation linear_constraint_voltage_square_big_m_1_6_2 ;
linear_constraint_voltage_square_big_m_1_6_2..
	variable_switched_voltage_square_1_6 - 1.21*variable_transmission_switch_1_6 =l= 0
Equation linear_constraint_voltage_square_big_m_1_6_3 ;
linear_constraint_voltage_square_big_m_1_6_3..
	-variable_switched_voltage_square_1_6 + 1.21*variable_transmission_switch_1_6 + variable_voltage_square_1 =l= 1.21
Equation linear_constraint_voltage_square_big_m_1_6_4 ;
linear_constraint_voltage_square_big_m_1_6_4..
	variable_switched_voltage_square_1_6 - 0.81*variable_transmission_switch_1_6 - variable_voltage_square_1 =l= -0.81
Equation linear_constraint_voltage_square_big_m_6_1_1 ;
linear_constraint_voltage_square_big_m_6_1_1..
	-variable_switched_voltage_square_6_1 + 0.81*variable_transmission_switch_1_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_1_2 ;
linear_constraint_voltage_square_big_m_6_1_2..
	variable_switched_voltage_square_6_1 - 1.21*variable_transmission_switch_1_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_1_3 ;
linear_constraint_voltage_square_big_m_6_1_3..
	-variable_switched_voltage_square_6_1 + 1.21*variable_transmission_switch_1_6 + variable_voltage_square_6 =l= 1.21
Equation linear_constraint_voltage_square_big_m_6_1_4 ;
linear_constraint_voltage_square_big_m_6_1_4..
	variable_switched_voltage_square_6_1 - 0.81*variable_transmission_switch_1_6 - variable_voltage_square_6 =l= -0.81
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
Equation linear_constraint_voltage_square_big_m_2_5_1 ;
linear_constraint_voltage_square_big_m_2_5_1..
	-variable_switched_voltage_square_2_5 + 0.81*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_2 ;
linear_constraint_voltage_square_big_m_2_5_2..
	variable_switched_voltage_square_2_5 - 1.21*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_3 ;
linear_constraint_voltage_square_big_m_2_5_3..
	-variable_switched_voltage_square_2_5 + 1.21*variable_transmission_switch_2_5 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_5_4 ;
linear_constraint_voltage_square_big_m_2_5_4..
	variable_switched_voltage_square_2_5 - 0.81*variable_transmission_switch_2_5 - variable_voltage_square_2 =l= -0.81
Equation linear_constraint_voltage_square_big_m_5_2_1 ;
linear_constraint_voltage_square_big_m_5_2_1..
	-variable_switched_voltage_square_5_2 + 0.81*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_2_2 ;
linear_constraint_voltage_square_big_m_5_2_2..
	variable_switched_voltage_square_5_2 - 1.21*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_2_3 ;
linear_constraint_voltage_square_big_m_5_2_3..
	-variable_switched_voltage_square_5_2 + 1.21*variable_transmission_switch_2_5 + variable_voltage_square_5 =l= 1.21
Equation linear_constraint_voltage_square_big_m_5_2_4 ;
linear_constraint_voltage_square_big_m_5_2_4..
	variable_switched_voltage_square_5_2 - 0.81*variable_transmission_switch_2_5 - variable_voltage_square_5 =l= -0.81
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
Equation linear_constraint_voltage_square_big_m_4_6_1 ;
linear_constraint_voltage_square_big_m_4_6_1..
	-variable_switched_voltage_square_4_6 + 0.81*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_4_6_2 ;
linear_constraint_voltage_square_big_m_4_6_2..
	variable_switched_voltage_square_4_6 - 1.21*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_4_6_3 ;
linear_constraint_voltage_square_big_m_4_6_3..
	-variable_switched_voltage_square_4_6 + 1.21*variable_transmission_switch_4_6 + variable_voltage_square_4 =l= 1.21
Equation linear_constraint_voltage_square_big_m_4_6_4 ;
linear_constraint_voltage_square_big_m_4_6_4..
	variable_switched_voltage_square_4_6 - 0.81*variable_transmission_switch_4_6 - variable_voltage_square_4 =l= -0.81
Equation linear_constraint_voltage_square_big_m_6_4_1 ;
linear_constraint_voltage_square_big_m_6_4_1..
	-variable_switched_voltage_square_6_4 + 0.81*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_4_2 ;
linear_constraint_voltage_square_big_m_6_4_2..
	variable_switched_voltage_square_6_4 - 1.21*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_4_3 ;
linear_constraint_voltage_square_big_m_6_4_3..
	-variable_switched_voltage_square_6_4 + 1.21*variable_transmission_switch_4_6 + variable_voltage_square_6 =l= 1.21
Equation linear_constraint_voltage_square_big_m_6_4_4 ;
linear_constraint_voltage_square_big_m_6_4_4..
	variable_switched_voltage_square_6_4 - 0.81*variable_transmission_switch_4_6 - variable_voltage_square_6 =l= -0.81
Equation linear_constraint_voltage_square_big_m_5_6_1 ;
linear_constraint_voltage_square_big_m_5_6_1..
	-variable_switched_voltage_square_5_6 + 0.81*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_5_6_2 ;
linear_constraint_voltage_square_big_m_5_6_2..
	variable_switched_voltage_square_5_6 - 1.21*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_5_6_3 ;
linear_constraint_voltage_square_big_m_5_6_3..
	-variable_switched_voltage_square_5_6 + 1.21*variable_transmission_switch_5_6 + variable_voltage_square_5 =l= 1.21
Equation linear_constraint_voltage_square_big_m_5_6_4 ;
linear_constraint_voltage_square_big_m_5_6_4..
	variable_switched_voltage_square_5_6 - 0.81*variable_transmission_switch_5_6 - variable_voltage_square_5 =l= -0.81
Equation linear_constraint_voltage_square_big_m_6_5_1 ;
linear_constraint_voltage_square_big_m_6_5_1..
	-variable_switched_voltage_square_6_5 + 0.81*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_5_2 ;
linear_constraint_voltage_square_big_m_6_5_2..
	variable_switched_voltage_square_6_5 - 1.21*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_5_3 ;
linear_constraint_voltage_square_big_m_6_5_3..
	-variable_switched_voltage_square_6_5 + 1.21*variable_transmission_switch_5_6 + variable_voltage_square_6 =l= 1.21
Equation linear_constraint_voltage_square_big_m_6_5_4 ;
linear_constraint_voltage_square_big_m_6_5_4..
	variable_switched_voltage_square_6_5 - 0.81*variable_transmission_switch_5_6 - variable_voltage_square_6 =l= -0.81
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 0.2687*variable_curtailment_binaries_1_1 - 0.5375*variable_curtailment_binaries_1_2 - 0.7167*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 0.2687*variable_curtailment_binaries_3_1 - 0.5375*variable_curtailment_binaries_3_2 - 0.7167*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_option_5 ;
linear_constraint_curtailment_option_5..
	(variable_curtailed_feed_in_5 - 0.2687*variable_curtailment_binaries_5_1 - 0.5375*variable_curtailment_binaries_5_2 - 0.7167*variable_curtailment_binaries_5_3) =e= (0)
Equation linear_constraint_curtailment_sos_1 ;
linear_constraint_curtailment_sos_1..
	variable_curtailment_binaries_1_1 + variable_curtailment_binaries_1_2 + variable_curtailment_binaries_1_3 =l= 1
Equation linear_constraint_curtailment_sos_3 ;
linear_constraint_curtailment_sos_3..
	variable_curtailment_binaries_3_1 + variable_curtailment_binaries_3_2 + variable_curtailment_binaries_3_3 =l= 1
Equation linear_constraint_curtailment_sos_5 ;
linear_constraint_curtailment_sos_5..
	variable_curtailment_binaries_5_1 + variable_curtailment_binaries_5_2 + variable_curtailment_binaries_5_3 =l= 1

*===== SECTION: MODEL DEFINITION
Model minlp /all/ ;

*===== SECTION: MODEL OPTIONS AND SOLVE
option optcr = 0.0001 ;
option ResLim = 7200 ;
option MIQCP = couenne ;
Solve minlp min objval using MIQCP ;
