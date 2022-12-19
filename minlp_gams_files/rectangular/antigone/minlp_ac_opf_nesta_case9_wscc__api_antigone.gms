$title "minlp_ac_opf_nesta_case9_wscc__api"

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
Free Variable variable_voltage_square_4 ;
	variable_voltage_square_4.lo = 0.81 ;
	variable_voltage_square_4.up = 1.21 ;
Free Variable variable_voltage_square_5 ;
	variable_voltage_square_5.lo = 0.81 ;
	variable_voltage_square_5.up = 1.21 ;
Free Variable variable_voltage_square_6 ;
	variable_voltage_square_6.lo = 0.81 ;
	variable_voltage_square_6.up = 1.21 ;
Free Variable variable_voltage_square_7 ;
	variable_voltage_square_7.lo = 0.81 ;
	variable_voltage_square_7.up = 1.21 ;
Free Variable variable_voltage_square_8 ;
	variable_voltage_square_8.lo = 0.81 ;
	variable_voltage_square_8.up = 1.21 ;
Free Variable variable_voltage_square_9 ;
	variable_voltage_square_9.lo = 0.81 ;
	variable_voltage_square_9.up = 1.21 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 2.47 ;
Free Variable variable_real_power_gen_2 ;
	variable_real_power_gen_2.lo = 0.0 ;
	variable_real_power_gen_2.up = 3.39 ;
Free Variable variable_real_power_gen_3 ;
	variable_real_power_gen_3.lo = 0.0 ;
	variable_real_power_gen_3.up = 4.52 ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -3.0 ;
	variable_reactive_power_gen_1.up = 3.0 ;
Free Variable variable_reactive_power_gen_2 ;
	variable_reactive_power_gen_2.lo = -3.0 ;
	variable_reactive_power_gen_2.up = 3.0 ;
Free Variable variable_reactive_power_gen_3 ;
	variable_reactive_power_gen_3.lo = -3.0 ;
	variable_reactive_power_gen_3.up = 3.0 ;
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
Free Variable variable_voltage_real_5 ;
	variable_voltage_real_5.lo = -1.1 ;
	variable_voltage_real_5.up = 1.1 ;
Free Variable variable_voltage_real_6 ;
	variable_voltage_real_6.lo = -1.1 ;
	variable_voltage_real_6.up = 1.1 ;
Free Variable variable_voltage_real_7 ;
	variable_voltage_real_7.lo = -1.1 ;
	variable_voltage_real_7.up = 1.1 ;
Free Variable variable_voltage_real_8 ;
	variable_voltage_real_8.lo = -1.1 ;
	variable_voltage_real_8.up = 1.1 ;
Free Variable variable_voltage_real_9 ;
	variable_voltage_real_9.lo = -1.1 ;
	variable_voltage_real_9.up = 1.1 ;
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
Free Variable variable_voltage_imag_5 ;
	variable_voltage_imag_5.lo = -1.1 ;
	variable_voltage_imag_5.up = 1.1 ;
Free Variable variable_voltage_imag_6 ;
	variable_voltage_imag_6.lo = -1.1 ;
	variable_voltage_imag_6.up = 1.1 ;
Free Variable variable_voltage_imag_7 ;
	variable_voltage_imag_7.lo = -1.1 ;
	variable_voltage_imag_7.up = 1.1 ;
Free Variable variable_voltage_imag_8 ;
	variable_voltage_imag_8.lo = -1.1 ;
	variable_voltage_imag_8.up = 1.1 ;
Free Variable variable_voltage_imag_9 ;
	variable_voltage_imag_9.lo = -1.1 ;
	variable_voltage_imag_9.up = 1.1 ;
Binary Variable variable_transmission_switch_1_4 ;
Binary Variable variable_transmission_switch_2_8 ;
Binary Variable variable_transmission_switch_3_6 ;
Binary Variable variable_transmission_switch_4_5 ;
Binary Variable variable_transmission_switch_4_9 ;
Binary Variable variable_transmission_switch_5_6 ;
Binary Variable variable_transmission_switch_6_7 ;
Binary Variable variable_transmission_switch_7_8 ;
Binary Variable variable_transmission_switch_8_9 ;
Free Variable variable_switched_voltage_square_1_4 ;
	variable_switched_voltage_square_1_4.lo = 0.0 ;
	variable_switched_voltage_square_1_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_1 ;
	variable_switched_voltage_square_4_1.lo = 0.0 ;
	variable_switched_voltage_square_4_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_8 ;
	variable_switched_voltage_square_2_8.lo = 0.0 ;
	variable_switched_voltage_square_2_8.up = 1.21 ;
Free Variable variable_switched_voltage_square_8_2 ;
	variable_switched_voltage_square_8_2.lo = 0.0 ;
	variable_switched_voltage_square_8_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_6 ;
	variable_switched_voltage_square_3_6.lo = 0.0 ;
	variable_switched_voltage_square_3_6.up = 1.21 ;
Free Variable variable_switched_voltage_square_6_3 ;
	variable_switched_voltage_square_6_3.lo = 0.0 ;
	variable_switched_voltage_square_6_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_5 ;
	variable_switched_voltage_square_4_5.lo = 0.0 ;
	variable_switched_voltage_square_4_5.up = 1.21 ;
Free Variable variable_switched_voltage_square_5_4 ;
	variable_switched_voltage_square_5_4.lo = 0.0 ;
	variable_switched_voltage_square_5_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_9 ;
	variable_switched_voltage_square_4_9.lo = 0.0 ;
	variable_switched_voltage_square_4_9.up = 1.21 ;
Free Variable variable_switched_voltage_square_9_4 ;
	variable_switched_voltage_square_9_4.lo = 0.0 ;
	variable_switched_voltage_square_9_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_5_6 ;
	variable_switched_voltage_square_5_6.lo = 0.0 ;
	variable_switched_voltage_square_5_6.up = 1.21 ;
Free Variable variable_switched_voltage_square_6_5 ;
	variable_switched_voltage_square_6_5.lo = 0.0 ;
	variable_switched_voltage_square_6_5.up = 1.21 ;
Free Variable variable_switched_voltage_square_6_7 ;
	variable_switched_voltage_square_6_7.lo = 0.0 ;
	variable_switched_voltage_square_6_7.up = 1.21 ;
Free Variable variable_switched_voltage_square_7_6 ;
	variable_switched_voltage_square_7_6.lo = 0.0 ;
	variable_switched_voltage_square_7_6.up = 1.21 ;
Free Variable variable_switched_voltage_square_7_8 ;
	variable_switched_voltage_square_7_8.lo = 0.0 ;
	variable_switched_voltage_square_7_8.up = 1.21 ;
Free Variable variable_switched_voltage_square_8_7 ;
	variable_switched_voltage_square_8_7.lo = 0.0 ;
	variable_switched_voltage_square_8_7.up = 1.21 ;
Free Variable variable_switched_voltage_square_8_9 ;
	variable_switched_voltage_square_8_9.lo = 0.0 ;
	variable_switched_voltage_square_8_9.up = 1.21 ;
Free Variable variable_switched_voltage_square_9_8 ;
	variable_switched_voltage_square_9_8.lo = 0.0 ;
	variable_switched_voltage_square_9_8.up = 1.21 ;
Free Variable variable_real_power_flow_1_4 ;
	variable_real_power_flow_1_4.lo = -2.5 ;
	variable_real_power_flow_1_4.up = 2.5 ;
Free Variable variable_real_power_flow_4_1 ;
	variable_real_power_flow_4_1.lo = -2.5 ;
	variable_real_power_flow_4_1.up = 2.5 ;
Free Variable variable_real_power_flow_2_8 ;
	variable_real_power_flow_2_8.lo = -2.5 ;
	variable_real_power_flow_2_8.up = 2.5 ;
Free Variable variable_real_power_flow_8_2 ;
	variable_real_power_flow_8_2.lo = -2.5 ;
	variable_real_power_flow_8_2.up = 2.5 ;
Free Variable variable_real_power_flow_3_6 ;
	variable_real_power_flow_3_6.lo = -3.0 ;
	variable_real_power_flow_3_6.up = 3.0 ;
Free Variable variable_real_power_flow_6_3 ;
	variable_real_power_flow_6_3.lo = -3.0 ;
	variable_real_power_flow_6_3.up = 3.0 ;
Free Variable variable_real_power_flow_4_5 ;
	variable_real_power_flow_4_5.lo = -2.5 ;
	variable_real_power_flow_4_5.up = 2.5 ;
Free Variable variable_real_power_flow_5_4 ;
	variable_real_power_flow_5_4.lo = -2.5 ;
	variable_real_power_flow_5_4.up = 2.5 ;
Free Variable variable_real_power_flow_4_9 ;
	variable_real_power_flow_4_9.lo = -2.5 ;
	variable_real_power_flow_4_9.up = 2.5 ;
Free Variable variable_real_power_flow_9_4 ;
	variable_real_power_flow_9_4.lo = -2.5 ;
	variable_real_power_flow_9_4.up = 2.5 ;
Free Variable variable_real_power_flow_5_6 ;
	variable_real_power_flow_5_6.lo = -1.5 ;
	variable_real_power_flow_5_6.up = 1.5 ;
Free Variable variable_real_power_flow_6_5 ;
	variable_real_power_flow_6_5.lo = -1.5 ;
	variable_real_power_flow_6_5.up = 1.5 ;
Free Variable variable_real_power_flow_6_7 ;
	variable_real_power_flow_6_7.lo = -1.5 ;
	variable_real_power_flow_6_7.up = 1.5 ;
Free Variable variable_real_power_flow_7_6 ;
	variable_real_power_flow_7_6.lo = -1.5 ;
	variable_real_power_flow_7_6.up = 1.5 ;
Free Variable variable_real_power_flow_7_8 ;
	variable_real_power_flow_7_8.lo = -2.5 ;
	variable_real_power_flow_7_8.up = 2.5 ;
Free Variable variable_real_power_flow_8_7 ;
	variable_real_power_flow_8_7.lo = -2.5 ;
	variable_real_power_flow_8_7.up = 2.5 ;
Free Variable variable_real_power_flow_8_9 ;
	variable_real_power_flow_8_9.lo = -2.5 ;
	variable_real_power_flow_8_9.up = 2.5 ;
Free Variable variable_real_power_flow_9_8 ;
	variable_real_power_flow_9_8.lo = -2.5 ;
	variable_real_power_flow_9_8.up = 2.5 ;
Free Variable variable_reactive_power_flow_1_4 ;
	variable_reactive_power_flow_1_4.lo = -2.5 ;
	variable_reactive_power_flow_1_4.up = 2.5 ;
Free Variable variable_reactive_power_flow_4_1 ;
	variable_reactive_power_flow_4_1.lo = -2.5 ;
	variable_reactive_power_flow_4_1.up = 2.5 ;
Free Variable variable_reactive_power_flow_2_8 ;
	variable_reactive_power_flow_2_8.lo = -2.5 ;
	variable_reactive_power_flow_2_8.up = 2.5 ;
Free Variable variable_reactive_power_flow_8_2 ;
	variable_reactive_power_flow_8_2.lo = -2.5 ;
	variable_reactive_power_flow_8_2.up = 2.5 ;
Free Variable variable_reactive_power_flow_3_6 ;
	variable_reactive_power_flow_3_6.lo = -3.0 ;
	variable_reactive_power_flow_3_6.up = 3.0 ;
Free Variable variable_reactive_power_flow_6_3 ;
	variable_reactive_power_flow_6_3.lo = -3.0 ;
	variable_reactive_power_flow_6_3.up = 3.0 ;
Free Variable variable_reactive_power_flow_4_5 ;
	variable_reactive_power_flow_4_5.lo = -2.5 ;
	variable_reactive_power_flow_4_5.up = 2.5 ;
Free Variable variable_reactive_power_flow_5_4 ;
	variable_reactive_power_flow_5_4.lo = -2.5 ;
	variable_reactive_power_flow_5_4.up = 2.5 ;
Free Variable variable_reactive_power_flow_4_9 ;
	variable_reactive_power_flow_4_9.lo = -2.5 ;
	variable_reactive_power_flow_4_9.up = 2.5 ;
Free Variable variable_reactive_power_flow_9_4 ;
	variable_reactive_power_flow_9_4.lo = -2.5 ;
	variable_reactive_power_flow_9_4.up = 2.5 ;
Free Variable variable_reactive_power_flow_5_6 ;
	variable_reactive_power_flow_5_6.lo = -1.5 ;
	variable_reactive_power_flow_5_6.up = 1.5 ;
Free Variable variable_reactive_power_flow_6_5 ;
	variable_reactive_power_flow_6_5.lo = -1.5 ;
	variable_reactive_power_flow_6_5.up = 1.5 ;
Free Variable variable_reactive_power_flow_6_7 ;
	variable_reactive_power_flow_6_7.lo = -1.5 ;
	variable_reactive_power_flow_6_7.up = 1.5 ;
Free Variable variable_reactive_power_flow_7_6 ;
	variable_reactive_power_flow_7_6.lo = -1.5 ;
	variable_reactive_power_flow_7_6.up = 1.5 ;
Free Variable variable_reactive_power_flow_7_8 ;
	variable_reactive_power_flow_7_8.lo = -2.5 ;
	variable_reactive_power_flow_7_8.up = 2.5 ;
Free Variable variable_reactive_power_flow_8_7 ;
	variable_reactive_power_flow_8_7.lo = -2.5 ;
	variable_reactive_power_flow_8_7.up = 2.5 ;
Free Variable variable_reactive_power_flow_8_9 ;
	variable_reactive_power_flow_8_9.lo = -2.5 ;
	variable_reactive_power_flow_8_9.up = 2.5 ;
Free Variable variable_reactive_power_flow_9_8 ;
	variable_reactive_power_flow_9_8.lo = -2.5 ;
	variable_reactive_power_flow_9_8.up = 2.5 ;
Free Variable variable_voltage_product_real_1_4 ;
	variable_voltage_product_real_1_4.lo = 0.0 ;
	variable_voltage_product_real_1_4.up = 1.21 ;
Free Variable variable_voltage_product_real_2_8 ;
	variable_voltage_product_real_2_8.lo = 0.0 ;
	variable_voltage_product_real_2_8.up = 1.21 ;
Free Variable variable_voltage_product_real_3_6 ;
	variable_voltage_product_real_3_6.lo = 0.0 ;
	variable_voltage_product_real_3_6.up = 1.21 ;
Free Variable variable_voltage_product_real_4_5 ;
	variable_voltage_product_real_4_5.lo = 0.0 ;
	variable_voltage_product_real_4_5.up = 1.21 ;
Free Variable variable_voltage_product_real_4_9 ;
	variable_voltage_product_real_4_9.lo = 0.0 ;
	variable_voltage_product_real_4_9.up = 1.21 ;
Free Variable variable_voltage_product_real_5_6 ;
	variable_voltage_product_real_5_6.lo = 0.0 ;
	variable_voltage_product_real_5_6.up = 1.21 ;
Free Variable variable_voltage_product_real_6_7 ;
	variable_voltage_product_real_6_7.lo = 0.0 ;
	variable_voltage_product_real_6_7.up = 1.21 ;
Free Variable variable_voltage_product_real_7_8 ;
	variable_voltage_product_real_7_8.lo = 0.0 ;
	variable_voltage_product_real_7_8.up = 1.21 ;
Free Variable variable_voltage_product_real_8_9 ;
	variable_voltage_product_real_8_9.lo = 0.0 ;
	variable_voltage_product_real_8_9.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_4 ;
	variable_voltage_product_imaginary_1_4.lo = -1.21 ;
	variable_voltage_product_imaginary_1_4.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_2_8 ;
	variable_voltage_product_imaginary_2_8.lo = -1.21 ;
	variable_voltage_product_imaginary_2_8.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_3_6 ;
	variable_voltage_product_imaginary_3_6.lo = -1.21 ;
	variable_voltage_product_imaginary_3_6.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_4_5 ;
	variable_voltage_product_imaginary_4_5.lo = -1.21 ;
	variable_voltage_product_imaginary_4_5.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_4_9 ;
	variable_voltage_product_imaginary_4_9.lo = -1.21 ;
	variable_voltage_product_imaginary_4_9.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_5_6 ;
	variable_voltage_product_imaginary_5_6.lo = -1.21 ;
	variable_voltage_product_imaginary_5_6.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_6_7 ;
	variable_voltage_product_imaginary_6_7.lo = -1.21 ;
	variable_voltage_product_imaginary_6_7.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_7_8 ;
	variable_voltage_product_imaginary_7_8.lo = -1.21 ;
	variable_voltage_product_imaginary_7_8.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_8_9 ;
	variable_voltage_product_imaginary_8_9.lo = -1.21 ;
	variable_voltage_product_imaginary_8_9.up = 1.21 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 3.0202 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 3.0202 ;
Free Variable variable_curtailed_feed_in_5 ;
	variable_curtailed_feed_in_5.lo = 0.0 ;
	variable_curtailed_feed_in_5.up = 3.0202 ;
Free Variable variable_curtailed_feed_in_7 ;
	variable_curtailed_feed_in_7.lo = 0.0 ;
	variable_curtailed_feed_in_7.up = 3.0202 ;
Free Variable variable_curtailed_feed_in_9 ;
	variable_curtailed_feed_in_9.lo = 0.0 ;
	variable_curtailed_feed_in_9.up = 3.0202 ;
Binary Variable variable_curtailment_binaries_1_1 ;
Binary Variable variable_curtailment_binaries_1_2 ;
Binary Variable variable_curtailment_binaries_1_3 ;
Binary Variable variable_curtailment_binaries_3_1 ;
Binary Variable variable_curtailment_binaries_3_2 ;
Binary Variable variable_curtailment_binaries_3_3 ;
Binary Variable variable_curtailment_binaries_5_1 ;
Binary Variable variable_curtailment_binaries_5_2 ;
Binary Variable variable_curtailment_binaries_5_3 ;
Binary Variable variable_curtailment_binaries_7_1 ;
Binary Variable variable_curtailment_binaries_7_2 ;
Binary Variable variable_curtailment_binaries_7_3 ;
Binary Variable variable_curtailment_binaries_9_1 ;
Binary Variable variable_curtailment_binaries_9_2 ;
Binary Variable variable_curtailment_binaries_9_3 ;

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -86.8965*variable_curtailed_feed_in_1 - 86.8965*variable_curtailed_feed_in_3 - 86.8965*variable_curtailed_feed_in_5 - 86.8965*variable_curtailed_feed_in_7 - 86.8965*variable_curtailed_feed_in_9 + 107.2537*variable_real_power_gen_1 + 95.9852*variable_real_power_gen_2 + 57.4506*variable_real_power_gen_3 + 2624.448093
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_4 + variable_real_power_gen_1) =e= (0.0)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_8 + variable_real_power_gen_2) =e= (0.0)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_6 + variable_real_power_gen_3) =e= (0.0)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_1 - variable_real_power_flow_4_5 - variable_real_power_flow_4_9) =e= (0.0)
Equation linear_constraint_real_flow_conservation_5 ;
linear_constraint_real_flow_conservation_5..
	(variable_curtailed_feed_in_5 - variable_real_power_flow_5_4 - variable_real_power_flow_5_6) =e= (2.1573)
Equation linear_constraint_real_flow_conservation_6 ;
linear_constraint_real_flow_conservation_6..
	(-variable_real_power_flow_6_3 - variable_real_power_flow_6_5 - variable_real_power_flow_6_7) =e= (0.0)
Equation linear_constraint_real_flow_conservation_7 ;
linear_constraint_real_flow_conservation_7..
	(variable_curtailed_feed_in_7 - variable_real_power_flow_7_6 - variable_real_power_flow_7_8) =e= (2.397)
Equation linear_constraint_real_flow_conservation_8 ;
linear_constraint_real_flow_conservation_8..
	(-variable_real_power_flow_8_2 - variable_real_power_flow_8_7 - variable_real_power_flow_8_9) =e= (0.0)
Equation linear_constraint_real_flow_conservation_9 ;
linear_constraint_real_flow_conservation_9..
	(variable_curtailed_feed_in_9 - variable_real_power_flow_9_4 - variable_real_power_flow_9_8) =e= (2.9963)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_4 + variable_reactive_power_gen_1) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_8 + variable_reactive_power_gen_2) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_6 + variable_reactive_power_gen_3) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_1 - variable_reactive_power_flow_4_5 - variable_reactive_power_flow_4_9) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_5 ;
linear_constraint_reactive_flow_conservation_5..
	(0.48*variable_curtailed_feed_in_5 - variable_reactive_power_flow_5_4 - variable_reactive_power_flow_5_6) =e= (0.3)
Equation linear_constraint_reactive_flow_conservation_6 ;
linear_constraint_reactive_flow_conservation_6..
	(-variable_reactive_power_flow_6_3 - variable_reactive_power_flow_6_5 - variable_reactive_power_flow_6_7) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_7 ;
linear_constraint_reactive_flow_conservation_7..
	(0.48*variable_curtailed_feed_in_7 - variable_reactive_power_flow_7_6 - variable_reactive_power_flow_7_8) =e= (0.35)
Equation linear_constraint_reactive_flow_conservation_8 ;
linear_constraint_reactive_flow_conservation_8..
	(-variable_reactive_power_flow_8_2 - variable_reactive_power_flow_8_7 - variable_reactive_power_flow_8_9) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_9 ;
linear_constraint_reactive_flow_conservation_9..
	(0.48*variable_curtailed_feed_in_9 - variable_reactive_power_flow_9_4 - variable_reactive_power_flow_9_8) =e= (0.5)
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
Equation nonlinear_constraint_voltage_square_rectangular_5 ;
nonlinear_constraint_voltage_square_rectangular_5..
	(variable_voltage_square_5) =e= (power(variable_voltage_imag_5,2) + power(variable_voltage_real_5,2))
Equation nonlinear_constraint_voltage_square_rectangular_6 ;
nonlinear_constraint_voltage_square_rectangular_6..
	(variable_voltage_square_6) =e= (power(variable_voltage_imag_6,2) + power(variable_voltage_real_6,2))
Equation nonlinear_constraint_voltage_square_rectangular_7 ;
nonlinear_constraint_voltage_square_rectangular_7..
	(variable_voltage_square_7) =e= (power(variable_voltage_imag_7,2) + power(variable_voltage_real_7,2))
Equation nonlinear_constraint_voltage_square_rectangular_8 ;
nonlinear_constraint_voltage_square_rectangular_8..
	(variable_voltage_square_8) =e= (power(variable_voltage_imag_8,2) + power(variable_voltage_real_8,2))
Equation nonlinear_constraint_voltage_square_rectangular_9 ;
nonlinear_constraint_voltage_square_rectangular_9..
	(variable_voltage_square_9) =e= (power(variable_voltage_imag_9,2) + power(variable_voltage_real_9,2))
Equation nonlinear_constraint_voltage_product_real_rectangular_1_4 ;
nonlinear_constraint_voltage_product_real_rectangular_1_4..
	(variable_voltage_product_real_1_4) =e= (variable_transmission_switch_1_4*variable_voltage_imag_1*variable_voltage_imag_4 + variable_transmission_switch_1_4*variable_voltage_real_1*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_8 ;
nonlinear_constraint_voltage_product_real_rectangular_2_8..
	(variable_voltage_product_real_2_8) =e= (variable_transmission_switch_2_8*variable_voltage_imag_2*variable_voltage_imag_8 + variable_transmission_switch_2_8*variable_voltage_real_2*variable_voltage_real_8)
Equation nonlinear_constraint_voltage_product_real_rectangular_3_6 ;
nonlinear_constraint_voltage_product_real_rectangular_3_6..
	(variable_voltage_product_real_3_6) =e= (variable_transmission_switch_3_6*variable_voltage_imag_3*variable_voltage_imag_6 + variable_transmission_switch_3_6*variable_voltage_real_3*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_4_5 ;
nonlinear_constraint_voltage_product_real_rectangular_4_5..
	(variable_voltage_product_real_4_5) =e= (variable_transmission_switch_4_5*variable_voltage_imag_4*variable_voltage_imag_5 + variable_transmission_switch_4_5*variable_voltage_real_4*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_real_rectangular_4_9 ;
nonlinear_constraint_voltage_product_real_rectangular_4_9..
	(variable_voltage_product_real_4_9) =e= (variable_transmission_switch_4_9*variable_voltage_imag_4*variable_voltage_imag_9 + variable_transmission_switch_4_9*variable_voltage_real_4*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_5_6 ;
nonlinear_constraint_voltage_product_real_rectangular_5_6..
	(variable_voltage_product_real_5_6) =e= (variable_transmission_switch_5_6*variable_voltage_imag_5*variable_voltage_imag_6 + variable_transmission_switch_5_6*variable_voltage_real_5*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_6_7 ;
nonlinear_constraint_voltage_product_real_rectangular_6_7..
	(variable_voltage_product_real_6_7) =e= (variable_transmission_switch_6_7*variable_voltage_imag_6*variable_voltage_imag_7 + variable_transmission_switch_6_7*variable_voltage_real_6*variable_voltage_real_7)
Equation nonlinear_constraint_voltage_product_real_rectangular_7_8 ;
nonlinear_constraint_voltage_product_real_rectangular_7_8..
	(variable_voltage_product_real_7_8) =e= (variable_transmission_switch_7_8*variable_voltage_imag_7*variable_voltage_imag_8 + variable_transmission_switch_7_8*variable_voltage_real_7*variable_voltage_real_8)
Equation nonlinear_constraint_voltage_product_real_rectangular_8_9 ;
nonlinear_constraint_voltage_product_real_rectangular_8_9..
	(variable_voltage_product_real_8_9) =e= (variable_transmission_switch_8_9*variable_voltage_imag_8*variable_voltage_imag_9 + variable_transmission_switch_8_9*variable_voltage_real_8*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_4..
	(variable_voltage_product_imaginary_1_4) =e= (-variable_transmission_switch_1_4*variable_voltage_imag_1*variable_voltage_real_4 + variable_transmission_switch_1_4*variable_voltage_imag_4*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_8 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_8..
	(variable_voltage_product_imaginary_2_8) =e= (-variable_transmission_switch_2_8*variable_voltage_imag_2*variable_voltage_real_8 + variable_transmission_switch_2_8*variable_voltage_imag_8*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_3_6 ;
nonlinear_constraint_voltage_product_imag_rectangular_3_6..
	(variable_voltage_product_imaginary_3_6) =e= (-variable_transmission_switch_3_6*variable_voltage_imag_3*variable_voltage_real_6 + variable_transmission_switch_3_6*variable_voltage_imag_6*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_imag_rectangular_4_5 ;
nonlinear_constraint_voltage_product_imag_rectangular_4_5..
	(variable_voltage_product_imaginary_4_5) =e= (-variable_transmission_switch_4_5*variable_voltage_imag_4*variable_voltage_real_5 + variable_transmission_switch_4_5*variable_voltage_imag_5*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_imag_rectangular_4_9 ;
nonlinear_constraint_voltage_product_imag_rectangular_4_9..
	(variable_voltage_product_imaginary_4_9) =e= (-variable_transmission_switch_4_9*variable_voltage_imag_4*variable_voltage_real_9 + variable_transmission_switch_4_9*variable_voltage_imag_9*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_imag_rectangular_5_6 ;
nonlinear_constraint_voltage_product_imag_rectangular_5_6..
	(variable_voltage_product_imaginary_5_6) =e= (-variable_transmission_switch_5_6*variable_voltage_imag_5*variable_voltage_real_6 + variable_transmission_switch_5_6*variable_voltage_imag_6*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_imag_rectangular_6_7 ;
nonlinear_constraint_voltage_product_imag_rectangular_6_7..
	(variable_voltage_product_imaginary_6_7) =e= (-variable_transmission_switch_6_7*variable_voltage_imag_6*variable_voltage_real_7 + variable_transmission_switch_6_7*variable_voltage_imag_7*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_imag_rectangular_7_8 ;
nonlinear_constraint_voltage_product_imag_rectangular_7_8..
	(variable_voltage_product_imaginary_7_8) =e= (-variable_transmission_switch_7_8*variable_voltage_imag_7*variable_voltage_real_8 + variable_transmission_switch_7_8*variable_voltage_imag_8*variable_voltage_real_7)
Equation nonlinear_constraint_voltage_product_imag_rectangular_8_9 ;
nonlinear_constraint_voltage_product_imag_rectangular_8_9..
	(variable_voltage_product_imaginary_8_9) =e= (-variable_transmission_switch_8_9*variable_voltage_imag_8*variable_voltage_real_9 + variable_transmission_switch_8_9*variable_voltage_imag_9*variable_voltage_real_8)
Equation linear_constraint_real_power_flow_equation_1_4 ;
linear_constraint_real_power_flow_equation_1_4..
	(variable_real_power_flow_1_4) =e= (-17.3611111111111*variable_voltage_product_imaginary_1_4)
Equation linear_constraint_real_power_flow_equation_4_1 ;
linear_constraint_real_power_flow_equation_4_1..
	(variable_real_power_flow_4_1) =e= (17.3611111111111*variable_voltage_product_imaginary_1_4)
Equation linear_constraint_real_power_flow_equation_2_8 ;
linear_constraint_real_power_flow_equation_2_8..
	(variable_real_power_flow_2_8) =e= (-16.0*variable_voltage_product_imaginary_2_8)
Equation linear_constraint_real_power_flow_equation_8_2 ;
linear_constraint_real_power_flow_equation_8_2..
	(variable_real_power_flow_8_2) =e= (16.0*variable_voltage_product_imaginary_2_8)
Equation linear_constraint_real_power_flow_equation_3_6 ;
linear_constraint_real_power_flow_equation_3_6..
	(variable_real_power_flow_3_6) =e= (-17.0648464163823*variable_voltage_product_imaginary_3_6)
Equation linear_constraint_real_power_flow_equation_6_3 ;
linear_constraint_real_power_flow_equation_6_3..
	(variable_real_power_flow_6_3) =e= (17.0648464163823*variable_voltage_product_imaginary_3_6)
Equation linear_constraint_real_power_flow_equation_4_5 ;
linear_constraint_real_power_flow_equation_4_5..
	(variable_real_power_flow_4_5) =e= (1.94219124871473*variable_switched_voltage_square_4_5 - 10.5106820518679*variable_voltage_product_imaginary_4_5 - 1.94219124871473*variable_voltage_product_real_4_5)
Equation linear_constraint_real_power_flow_equation_5_4 ;
linear_constraint_real_power_flow_equation_5_4..
	(variable_real_power_flow_5_4) =e= (1.94219124871473*variable_switched_voltage_square_5_4 + 10.5106820518679*variable_voltage_product_imaginary_4_5 - 1.94219124871473*variable_voltage_product_real_4_5)
Equation linear_constraint_real_power_flow_equation_4_9 ;
linear_constraint_real_power_flow_equation_4_9..
	(variable_real_power_flow_4_9) =e= (1.36518771331058*variable_switched_voltage_square_4_9 - 11.6040955631399*variable_voltage_product_imaginary_4_9 - 1.36518771331058*variable_voltage_product_real_4_9)
Equation linear_constraint_real_power_flow_equation_9_4 ;
linear_constraint_real_power_flow_equation_9_4..
	(variable_real_power_flow_9_4) =e= (1.36518771331058*variable_switched_voltage_square_9_4 + 11.6040955631399*variable_voltage_product_imaginary_4_9 - 1.36518771331058*variable_voltage_product_real_4_9)
Equation linear_constraint_real_power_flow_equation_5_6 ;
linear_constraint_real_power_flow_equation_5_6..
	(variable_real_power_flow_5_6) =e= (1.28200913842411*variable_switched_voltage_square_5_6 - 5.58824496236153*variable_voltage_product_imaginary_5_6 - 1.28200913842411*variable_voltage_product_real_5_6)
Equation linear_constraint_real_power_flow_equation_6_5 ;
linear_constraint_real_power_flow_equation_6_5..
	(variable_real_power_flow_6_5) =e= (1.28200913842411*variable_switched_voltage_square_6_5 + 5.58824496236153*variable_voltage_product_imaginary_5_6 - 1.28200913842411*variable_voltage_product_real_5_6)
Equation linear_constraint_real_power_flow_equation_6_7 ;
linear_constraint_real_power_flow_equation_6_7..
	(variable_real_power_flow_6_7) =e= (1.1550874808901*variable_switched_voltage_square_6_7 - 9.78427042636317*variable_voltage_product_imaginary_6_7 - 1.1550874808901*variable_voltage_product_real_6_7)
Equation linear_constraint_real_power_flow_equation_7_6 ;
linear_constraint_real_power_flow_equation_7_6..
	(variable_real_power_flow_7_6) =e= (1.1550874808901*variable_switched_voltage_square_7_6 + 9.78427042636317*variable_voltage_product_imaginary_6_7 - 1.1550874808901*variable_voltage_product_real_6_7)
Equation linear_constraint_real_power_flow_equation_7_8 ;
linear_constraint_real_power_flow_equation_7_8..
	(variable_real_power_flow_7_8) =e= (1.61712247324614*variable_switched_voltage_square_7_8 - 13.6979785969084*variable_voltage_product_imaginary_7_8 - 1.61712247324614*variable_voltage_product_real_7_8)
Equation linear_constraint_real_power_flow_equation_8_7 ;
linear_constraint_real_power_flow_equation_8_7..
	(variable_real_power_flow_8_7) =e= (1.61712247324614*variable_switched_voltage_square_8_7 + 13.6979785969084*variable_voltage_product_imaginary_7_8 - 1.61712247324614*variable_voltage_product_real_7_8)
Equation linear_constraint_real_power_flow_equation_8_9 ;
linear_constraint_real_power_flow_equation_8_9..
	(variable_real_power_flow_8_9) =e= (1.18760437929115*variable_switched_voltage_square_8_9 - 5.97513453330859*variable_voltage_product_imaginary_8_9 - 1.18760437929115*variable_voltage_product_real_8_9)
Equation linear_constraint_real_power_flow_equation_9_8 ;
linear_constraint_real_power_flow_equation_9_8..
	(variable_real_power_flow_9_8) =e= (1.18760437929115*variable_switched_voltage_square_9_8 + 5.97513453330859*variable_voltage_product_imaginary_8_9 - 1.18760437929115*variable_voltage_product_real_8_9)
Equation linear_constraint_reactive_power_flow_equation_1_4 ;
linear_constraint_reactive_power_flow_equation_1_4..
	(variable_reactive_power_flow_1_4) =e= (17.3611111111111*variable_switched_voltage_square_1_4 - 17.3611111111111*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_4_1 ;
linear_constraint_reactive_power_flow_equation_4_1..
	(variable_reactive_power_flow_4_1) =e= (17.3611111111111*variable_switched_voltage_square_4_1 - 17.3611111111111*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_2_8 ;
linear_constraint_reactive_power_flow_equation_2_8..
	(variable_reactive_power_flow_2_8) =e= (16.0*variable_switched_voltage_square_2_8 - 16.0*variable_voltage_product_real_2_8)
Equation linear_constraint_reactive_power_flow_equation_8_2 ;
linear_constraint_reactive_power_flow_equation_8_2..
	(variable_reactive_power_flow_8_2) =e= (16.0*variable_switched_voltage_square_8_2 - 16.0*variable_voltage_product_real_2_8)
Equation linear_constraint_reactive_power_flow_equation_3_6 ;
linear_constraint_reactive_power_flow_equation_3_6..
	(variable_reactive_power_flow_3_6) =e= (17.0648464163823*variable_switched_voltage_square_3_6 - 17.0648464163823*variable_voltage_product_real_3_6)
Equation linear_constraint_reactive_power_flow_equation_6_3 ;
linear_constraint_reactive_power_flow_equation_6_3..
	(variable_reactive_power_flow_6_3) =e= (17.0648464163823*variable_switched_voltage_square_6_3 - 17.0648464163823*variable_voltage_product_real_3_6)
Equation linear_constraint_reactive_power_flow_equation_4_5 ;
linear_constraint_reactive_power_flow_equation_4_5..
	(variable_reactive_power_flow_4_5) =e= (10.4316820518679*variable_switched_voltage_square_4_5 + 1.94219124871473*variable_voltage_product_imaginary_4_5 - 10.5106820518679*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_5_4 ;
linear_constraint_reactive_power_flow_equation_5_4..
	(variable_reactive_power_flow_5_4) =e= (10.4316820518679*variable_switched_voltage_square_5_4 - 1.94219124871473*variable_voltage_product_imaginary_4_5 - 10.5106820518679*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_4_9 ;
linear_constraint_reactive_power_flow_equation_4_9..
	(variable_reactive_power_flow_4_9) =e= (11.5160955631399*variable_switched_voltage_square_4_9 + 1.36518771331058*variable_voltage_product_imaginary_4_9 - 11.6040955631399*variable_voltage_product_real_4_9)
Equation linear_constraint_reactive_power_flow_equation_9_4 ;
linear_constraint_reactive_power_flow_equation_9_4..
	(variable_reactive_power_flow_9_4) =e= (11.5160955631399*variable_switched_voltage_square_9_4 - 1.36518771331058*variable_voltage_product_imaginary_4_9 - 11.6040955631399*variable_voltage_product_real_4_9)
Equation linear_constraint_reactive_power_flow_equation_5_6 ;
linear_constraint_reactive_power_flow_equation_5_6..
	(variable_reactive_power_flow_5_6) =e= (5.40924496236153*variable_switched_voltage_square_5_6 + 1.28200913842411*variable_voltage_product_imaginary_5_6 - 5.58824496236153*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_6_5 ;
linear_constraint_reactive_power_flow_equation_6_5..
	(variable_reactive_power_flow_6_5) =e= (5.40924496236153*variable_switched_voltage_square_6_5 - 1.28200913842411*variable_voltage_product_imaginary_5_6 - 5.58824496236153*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_6_7 ;
linear_constraint_reactive_power_flow_equation_6_7..
	(variable_reactive_power_flow_6_7) =e= (9.67977042636317*variable_switched_voltage_square_6_7 + 1.1550874808901*variable_voltage_product_imaginary_6_7 - 9.78427042636317*variable_voltage_product_real_6_7)
Equation linear_constraint_reactive_power_flow_equation_7_6 ;
linear_constraint_reactive_power_flow_equation_7_6..
	(variable_reactive_power_flow_7_6) =e= (9.67977042636317*variable_switched_voltage_square_7_6 - 1.1550874808901*variable_voltage_product_imaginary_6_7 - 9.78427042636317*variable_voltage_product_real_6_7)
Equation linear_constraint_reactive_power_flow_equation_7_8 ;
linear_constraint_reactive_power_flow_equation_7_8..
	(variable_reactive_power_flow_7_8) =e= (13.6234785969084*variable_switched_voltage_square_7_8 + 1.61712247324614*variable_voltage_product_imaginary_7_8 - 13.6979785969084*variable_voltage_product_real_7_8)
Equation linear_constraint_reactive_power_flow_equation_8_7 ;
linear_constraint_reactive_power_flow_equation_8_7..
	(variable_reactive_power_flow_8_7) =e= (13.6234785969084*variable_switched_voltage_square_8_7 - 1.61712247324614*variable_voltage_product_imaginary_7_8 - 13.6979785969084*variable_voltage_product_real_7_8)
Equation linear_constraint_reactive_power_flow_equation_8_9 ;
linear_constraint_reactive_power_flow_equation_8_9..
	(variable_reactive_power_flow_8_9) =e= (5.82213453330859*variable_switched_voltage_square_8_9 + 1.18760437929115*variable_voltage_product_imaginary_8_9 - 5.97513453330859*variable_voltage_product_real_8_9)
Equation linear_constraint_reactive_power_flow_equation_9_8 ;
linear_constraint_reactive_power_flow_equation_9_8..
	(variable_reactive_power_flow_9_8) =e= (5.82213453330859*variable_switched_voltage_square_9_8 - 1.18760437929115*variable_voltage_product_imaginary_8_9 - 5.97513453330859*variable_voltage_product_real_8_9)
Equation nonlinear_constraint_thermal_limit_1_4 ;
nonlinear_constraint_thermal_limit_1_4..
	power(variable_reactive_power_flow_1_4,2) + power(variable_real_power_flow_1_4,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_4_1 ;
nonlinear_constraint_thermal_limit_4_1..
	power(variable_reactive_power_flow_4_1,2) + power(variable_real_power_flow_4_1,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_2_8 ;
nonlinear_constraint_thermal_limit_2_8..
	power(variable_reactive_power_flow_2_8,2) + power(variable_real_power_flow_2_8,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_8_2 ;
nonlinear_constraint_thermal_limit_8_2..
	power(variable_reactive_power_flow_8_2,2) + power(variable_real_power_flow_8_2,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_3_6 ;
nonlinear_constraint_thermal_limit_3_6..
	power(variable_reactive_power_flow_3_6,2) + power(variable_real_power_flow_3_6,2) =l= 9.0
Equation nonlinear_constraint_thermal_limit_6_3 ;
nonlinear_constraint_thermal_limit_6_3..
	power(variable_reactive_power_flow_6_3,2) + power(variable_real_power_flow_6_3,2) =l= 9.0
Equation nonlinear_constraint_thermal_limit_4_5 ;
nonlinear_constraint_thermal_limit_4_5..
	power(variable_reactive_power_flow_4_5,2) + power(variable_real_power_flow_4_5,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_5_4 ;
nonlinear_constraint_thermal_limit_5_4..
	power(variable_reactive_power_flow_5_4,2) + power(variable_real_power_flow_5_4,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_4_9 ;
nonlinear_constraint_thermal_limit_4_9..
	power(variable_reactive_power_flow_4_9,2) + power(variable_real_power_flow_4_9,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_9_4 ;
nonlinear_constraint_thermal_limit_9_4..
	power(variable_reactive_power_flow_9_4,2) + power(variable_real_power_flow_9_4,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_5_6 ;
nonlinear_constraint_thermal_limit_5_6..
	power(variable_reactive_power_flow_5_6,2) + power(variable_real_power_flow_5_6,2) =l= 2.25
Equation nonlinear_constraint_thermal_limit_6_5 ;
nonlinear_constraint_thermal_limit_6_5..
	power(variable_reactive_power_flow_6_5,2) + power(variable_real_power_flow_6_5,2) =l= 2.25
Equation nonlinear_constraint_thermal_limit_6_7 ;
nonlinear_constraint_thermal_limit_6_7..
	power(variable_reactive_power_flow_6_7,2) + power(variable_real_power_flow_6_7,2) =l= 2.25
Equation nonlinear_constraint_thermal_limit_7_6 ;
nonlinear_constraint_thermal_limit_7_6..
	power(variable_reactive_power_flow_7_6,2) + power(variable_real_power_flow_7_6,2) =l= 2.25
Equation nonlinear_constraint_thermal_limit_7_8 ;
nonlinear_constraint_thermal_limit_7_8..
	power(variable_reactive_power_flow_7_8,2) + power(variable_real_power_flow_7_8,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_8_7 ;
nonlinear_constraint_thermal_limit_8_7..
	power(variable_reactive_power_flow_8_7,2) + power(variable_real_power_flow_8_7,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_8_9 ;
nonlinear_constraint_thermal_limit_8_9..
	power(variable_reactive_power_flow_8_9,2) + power(variable_real_power_flow_8_9,2) =l= 6.25
Equation nonlinear_constraint_thermal_limit_9_8 ;
nonlinear_constraint_thermal_limit_9_8..
	power(variable_reactive_power_flow_9_8,2) + power(variable_real_power_flow_9_8,2) =l= 6.25
Equation linear_constraint_reference_rectangular_1 ;
linear_constraint_reference_rectangular_1..
	(variable_voltage_real_1) =e= (0)
Equation linear_constraint_tan_bound_lower_1_4 ;
linear_constraint_tan_bound_lower_1_4..
	variable_voltage_product_imaginary_1_4 - 0.577351901726381*variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_tan_bound_lower_2_8 ;
linear_constraint_tan_bound_lower_2_8..
	variable_voltage_product_imaginary_2_8 - 0.577351901726381*variable_voltage_product_real_2_8 =l= 0
Equation linear_constraint_tan_bound_lower_3_6 ;
linear_constraint_tan_bound_lower_3_6..
	variable_voltage_product_imaginary_3_6 - 0.577351901726381*variable_voltage_product_real_3_6 =l= 0
Equation linear_constraint_tan_bound_lower_4_5 ;
linear_constraint_tan_bound_lower_4_5..
	variable_voltage_product_imaginary_4_5 - 0.577351901726381*variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_tan_bound_lower_4_9 ;
linear_constraint_tan_bound_lower_4_9..
	variable_voltage_product_imaginary_4_9 - 0.577351901726381*variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_tan_bound_lower_5_6 ;
linear_constraint_tan_bound_lower_5_6..
	variable_voltage_product_imaginary_5_6 - 0.577351901726381*variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_tan_bound_lower_6_7 ;
linear_constraint_tan_bound_lower_6_7..
	variable_voltage_product_imaginary_6_7 - 0.577351901726381*variable_voltage_product_real_6_7 =l= 0
Equation linear_constraint_tan_bound_lower_7_8 ;
linear_constraint_tan_bound_lower_7_8..
	variable_voltage_product_imaginary_7_8 - 0.577351901726381*variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_tan_bound_lower_8_9 ;
linear_constraint_tan_bound_lower_8_9..
	variable_voltage_product_imaginary_8_9 - 0.577351901726381*variable_voltage_product_real_8_9 =l= 0
Equation linear_constraint_tan_bound_upper_1_4 ;
linear_constraint_tan_bound_upper_1_4..
	-variable_voltage_product_imaginary_1_4 - 0.577351901726381*variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_tan_bound_upper_2_8 ;
linear_constraint_tan_bound_upper_2_8..
	-variable_voltage_product_imaginary_2_8 - 0.577351901726381*variable_voltage_product_real_2_8 =l= 0
Equation linear_constraint_tan_bound_upper_3_6 ;
linear_constraint_tan_bound_upper_3_6..
	-variable_voltage_product_imaginary_3_6 - 0.577351901726381*variable_voltage_product_real_3_6 =l= 0
Equation linear_constraint_tan_bound_upper_4_5 ;
linear_constraint_tan_bound_upper_4_5..
	-variable_voltage_product_imaginary_4_5 - 0.577351901726381*variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_tan_bound_upper_4_9 ;
linear_constraint_tan_bound_upper_4_9..
	-variable_voltage_product_imaginary_4_9 - 0.577351901726381*variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_tan_bound_upper_5_6 ;
linear_constraint_tan_bound_upper_5_6..
	-variable_voltage_product_imaginary_5_6 - 0.577351901726381*variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_tan_bound_upper_6_7 ;
linear_constraint_tan_bound_upper_6_7..
	-variable_voltage_product_imaginary_6_7 - 0.577351901726381*variable_voltage_product_real_6_7 =l= 0
Equation linear_constraint_tan_bound_upper_7_8 ;
linear_constraint_tan_bound_upper_7_8..
	-variable_voltage_product_imaginary_7_8 - 0.577351901726381*variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_tan_bound_upper_8_9 ;
linear_constraint_tan_bound_upper_8_9..
	-variable_voltage_product_imaginary_8_9 - 0.577351901726381*variable_voltage_product_real_8_9 =l= 0
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	0.494*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_2 ;
linear_constraint_generator_switch_lower_2..
	0.678*variable_generator_switch_2 - variable_real_power_gen_2 =l= 0
Equation linear_constraint_generator_switch_lower_3 ;
linear_constraint_generator_switch_lower_3..
	0.904*variable_generator_switch_3 - variable_real_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	2.47*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_2 ;
linear_constraint_generator_switch_upper_2..
	3.39*variable_generator_switch_2 - variable_real_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_upper_3 ;
linear_constraint_generator_switch_upper_3..
	4.52*variable_generator_switch_3 - variable_real_power_gen_3 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-3.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2 ;
linear_constraint_generator_switch__reactive_lower_2..
	-3.0*variable_generator_switch_2 - variable_reactive_power_gen_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_3 ;
linear_constraint_generator_switch__reactive_lower_3..
	-3.0*variable_generator_switch_3 - variable_reactive_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	3.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2 ;
linear_constraint_generator_switch_reactive_upper_2..
	3.0*variable_generator_switch_2 - variable_reactive_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_3 ;
linear_constraint_generator_switch_reactive_upper_3..
	3.0*variable_generator_switch_3 - variable_reactive_power_gen_3 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_4 ;
linear_constraint_voltage_product_real_lower_1_4..
	-variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_8 ;
linear_constraint_voltage_product_real_lower_2_8..
	-variable_voltage_product_real_2_8 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_6 ;
linear_constraint_voltage_product_real_lower_3_6..
	-variable_voltage_product_real_3_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_5 ;
linear_constraint_voltage_product_real_lower_4_5..
	-variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_9 ;
linear_constraint_voltage_product_real_lower_4_9..
	-variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_voltage_product_real_lower_5_6 ;
linear_constraint_voltage_product_real_lower_5_6..
	-variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_7 ;
linear_constraint_voltage_product_real_lower_6_7..
	-variable_voltage_product_real_6_7 =l= 0
Equation linear_constraint_voltage_product_real_lower_7_8 ;
linear_constraint_voltage_product_real_lower_7_8..
	-variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_voltage_product_real_lower_8_9 ;
linear_constraint_voltage_product_real_lower_8_9..
	-variable_voltage_product_real_8_9 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_4 ;
linear_constraint_voltage_product_real_upper_1_4..
	1.21*variable_transmission_switch_1_4 - variable_voltage_product_real_1_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_8 ;
linear_constraint_voltage_product_real_upper_2_8..
	1.21*variable_transmission_switch_2_8 - variable_voltage_product_real_2_8 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_6 ;
linear_constraint_voltage_product_real_upper_3_6..
	1.21*variable_transmission_switch_3_6 - variable_voltage_product_real_3_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_5 ;
linear_constraint_voltage_product_real_upper_4_5..
	1.21*variable_transmission_switch_4_5 - variable_voltage_product_real_4_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_9 ;
linear_constraint_voltage_product_real_upper_4_9..
	1.21*variable_transmission_switch_4_9 - variable_voltage_product_real_4_9 =g= 0
Equation linear_constraint_voltage_product_real_upper_5_6 ;
linear_constraint_voltage_product_real_upper_5_6..
	1.21*variable_transmission_switch_5_6 - variable_voltage_product_real_5_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_7 ;
linear_constraint_voltage_product_real_upper_6_7..
	1.21*variable_transmission_switch_6_7 - variable_voltage_product_real_6_7 =g= 0
Equation linear_constraint_voltage_product_real_upper_7_8 ;
linear_constraint_voltage_product_real_upper_7_8..
	1.21*variable_transmission_switch_7_8 - variable_voltage_product_real_7_8 =g= 0
Equation linear_constraint_voltage_product_real_upper_8_9 ;
linear_constraint_voltage_product_real_upper_8_9..
	1.21*variable_transmission_switch_8_9 - variable_voltage_product_real_8_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_4 ;
linear_constraint_voltage_product_imaginary_lower_1_4..
	-1.21*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_8 ;
linear_constraint_voltage_product_imaginary_lower_2_8..
	-1.21*variable_transmission_switch_2_8 - variable_voltage_product_imaginary_2_8 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_6 ;
linear_constraint_voltage_product_imaginary_lower_3_6..
	-1.21*variable_transmission_switch_3_6 - variable_voltage_product_imaginary_3_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_5 ;
linear_constraint_voltage_product_imaginary_lower_4_5..
	-1.21*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_9 ;
linear_constraint_voltage_product_imaginary_lower_4_9..
	-1.21*variable_transmission_switch_4_9 - variable_voltage_product_imaginary_4_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_5_6 ;
linear_constraint_voltage_product_imaginary_lower_5_6..
	-1.21*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_7 ;
linear_constraint_voltage_product_imaginary_lower_6_7..
	-1.21*variable_transmission_switch_6_7 - variable_voltage_product_imaginary_6_7 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_7_8 ;
linear_constraint_voltage_product_imaginary_lower_7_8..
	-1.21*variable_transmission_switch_7_8 - variable_voltage_product_imaginary_7_8 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_8_9 ;
linear_constraint_voltage_product_imaginary_lower_8_9..
	-1.21*variable_transmission_switch_8_9 - variable_voltage_product_imaginary_8_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_4 ;
linear_constraint_voltage_product_imaginary_upper_1_4..
	1.21*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_8 ;
linear_constraint_voltage_product_imaginary_upper_2_8..
	1.21*variable_transmission_switch_2_8 - variable_voltage_product_imaginary_2_8 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_6 ;
linear_constraint_voltage_product_imaginary_upper_3_6..
	1.21*variable_transmission_switch_3_6 - variable_voltage_product_imaginary_3_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_5 ;
linear_constraint_voltage_product_imaginary_upper_4_5..
	1.21*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_9 ;
linear_constraint_voltage_product_imaginary_upper_4_9..
	1.21*variable_transmission_switch_4_9 - variable_voltage_product_imaginary_4_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_5_6 ;
linear_constraint_voltage_product_imaginary_upper_5_6..
	1.21*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_7 ;
linear_constraint_voltage_product_imaginary_upper_6_7..
	1.21*variable_transmission_switch_6_7 - variable_voltage_product_imaginary_6_7 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_7_8 ;
linear_constraint_voltage_product_imaginary_upper_7_8..
	1.21*variable_transmission_switch_7_8 - variable_voltage_product_imaginary_7_8 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_8_9 ;
linear_constraint_voltage_product_imaginary_upper_8_9..
	1.21*variable_transmission_switch_8_9 - variable_voltage_product_imaginary_8_9 =g= 0
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
Equation linear_constraint_voltage_square_big_m_2_8_1 ;
linear_constraint_voltage_square_big_m_2_8_1..
	-variable_switched_voltage_square_2_8 + 0.81*variable_transmission_switch_2_8 =l= 0
Equation linear_constraint_voltage_square_big_m_2_8_2 ;
linear_constraint_voltage_square_big_m_2_8_2..
	variable_switched_voltage_square_2_8 - 1.21*variable_transmission_switch_2_8 =l= 0
Equation linear_constraint_voltage_square_big_m_2_8_3 ;
linear_constraint_voltage_square_big_m_2_8_3..
	-variable_switched_voltage_square_2_8 + 1.21*variable_transmission_switch_2_8 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_8_4 ;
linear_constraint_voltage_square_big_m_2_8_4..
	variable_switched_voltage_square_2_8 - 0.81*variable_transmission_switch_2_8 - variable_voltage_square_2 =l= -0.81
Equation linear_constraint_voltage_square_big_m_8_2_1 ;
linear_constraint_voltage_square_big_m_8_2_1..
	-variable_switched_voltage_square_8_2 + 0.81*variable_transmission_switch_2_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_2_2 ;
linear_constraint_voltage_square_big_m_8_2_2..
	variable_switched_voltage_square_8_2 - 1.21*variable_transmission_switch_2_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_2_3 ;
linear_constraint_voltage_square_big_m_8_2_3..
	-variable_switched_voltage_square_8_2 + 1.21*variable_transmission_switch_2_8 + variable_voltage_square_8 =l= 1.21
Equation linear_constraint_voltage_square_big_m_8_2_4 ;
linear_constraint_voltage_square_big_m_8_2_4..
	variable_switched_voltage_square_8_2 - 0.81*variable_transmission_switch_2_8 - variable_voltage_square_8 =l= -0.81
Equation linear_constraint_voltage_square_big_m_3_6_1 ;
linear_constraint_voltage_square_big_m_3_6_1..
	-variable_switched_voltage_square_3_6 + 0.81*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_3_6_2 ;
linear_constraint_voltage_square_big_m_3_6_2..
	variable_switched_voltage_square_3_6 - 1.21*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_3_6_3 ;
linear_constraint_voltage_square_big_m_3_6_3..
	-variable_switched_voltage_square_3_6 + 1.21*variable_transmission_switch_3_6 + variable_voltage_square_3 =l= 1.21
Equation linear_constraint_voltage_square_big_m_3_6_4 ;
linear_constraint_voltage_square_big_m_3_6_4..
	variable_switched_voltage_square_3_6 - 0.81*variable_transmission_switch_3_6 - variable_voltage_square_3 =l= -0.81
Equation linear_constraint_voltage_square_big_m_6_3_1 ;
linear_constraint_voltage_square_big_m_6_3_1..
	-variable_switched_voltage_square_6_3 + 0.81*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_3_2 ;
linear_constraint_voltage_square_big_m_6_3_2..
	variable_switched_voltage_square_6_3 - 1.21*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_3_3 ;
linear_constraint_voltage_square_big_m_6_3_3..
	-variable_switched_voltage_square_6_3 + 1.21*variable_transmission_switch_3_6 + variable_voltage_square_6 =l= 1.21
Equation linear_constraint_voltage_square_big_m_6_3_4 ;
linear_constraint_voltage_square_big_m_6_3_4..
	variable_switched_voltage_square_6_3 - 0.81*variable_transmission_switch_3_6 - variable_voltage_square_6 =l= -0.81
Equation linear_constraint_voltage_square_big_m_4_5_1 ;
linear_constraint_voltage_square_big_m_4_5_1..
	-variable_switched_voltage_square_4_5 + 0.81*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_4_5_2 ;
linear_constraint_voltage_square_big_m_4_5_2..
	variable_switched_voltage_square_4_5 - 1.21*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_4_5_3 ;
linear_constraint_voltage_square_big_m_4_5_3..
	-variable_switched_voltage_square_4_5 + 1.21*variable_transmission_switch_4_5 + variable_voltage_square_4 =l= 1.21
Equation linear_constraint_voltage_square_big_m_4_5_4 ;
linear_constraint_voltage_square_big_m_4_5_4..
	variable_switched_voltage_square_4_5 - 0.81*variable_transmission_switch_4_5 - variable_voltage_square_4 =l= -0.81
Equation linear_constraint_voltage_square_big_m_5_4_1 ;
linear_constraint_voltage_square_big_m_5_4_1..
	-variable_switched_voltage_square_5_4 + 0.81*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_4_2 ;
linear_constraint_voltage_square_big_m_5_4_2..
	variable_switched_voltage_square_5_4 - 1.21*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_4_3 ;
linear_constraint_voltage_square_big_m_5_4_3..
	-variable_switched_voltage_square_5_4 + 1.21*variable_transmission_switch_4_5 + variable_voltage_square_5 =l= 1.21
Equation linear_constraint_voltage_square_big_m_5_4_4 ;
linear_constraint_voltage_square_big_m_5_4_4..
	variable_switched_voltage_square_5_4 - 0.81*variable_transmission_switch_4_5 - variable_voltage_square_5 =l= -0.81
Equation linear_constraint_voltage_square_big_m_4_9_1 ;
linear_constraint_voltage_square_big_m_4_9_1..
	-variable_switched_voltage_square_4_9 + 0.81*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_4_9_2 ;
linear_constraint_voltage_square_big_m_4_9_2..
	variable_switched_voltage_square_4_9 - 1.21*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_4_9_3 ;
linear_constraint_voltage_square_big_m_4_9_3..
	-variable_switched_voltage_square_4_9 + 1.21*variable_transmission_switch_4_9 + variable_voltage_square_4 =l= 1.21
Equation linear_constraint_voltage_square_big_m_4_9_4 ;
linear_constraint_voltage_square_big_m_4_9_4..
	variable_switched_voltage_square_4_9 - 0.81*variable_transmission_switch_4_9 - variable_voltage_square_4 =l= -0.81
Equation linear_constraint_voltage_square_big_m_9_4_1 ;
linear_constraint_voltage_square_big_m_9_4_1..
	-variable_switched_voltage_square_9_4 + 0.81*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_4_2 ;
linear_constraint_voltage_square_big_m_9_4_2..
	variable_switched_voltage_square_9_4 - 1.21*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_4_3 ;
linear_constraint_voltage_square_big_m_9_4_3..
	-variable_switched_voltage_square_9_4 + 1.21*variable_transmission_switch_4_9 + variable_voltage_square_9 =l= 1.21
Equation linear_constraint_voltage_square_big_m_9_4_4 ;
linear_constraint_voltage_square_big_m_9_4_4..
	variable_switched_voltage_square_9_4 - 0.81*variable_transmission_switch_4_9 - variable_voltage_square_9 =l= -0.81
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
Equation linear_constraint_voltage_square_big_m_6_7_1 ;
linear_constraint_voltage_square_big_m_6_7_1..
	-variable_switched_voltage_square_6_7 + 0.81*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_6_7_2 ;
linear_constraint_voltage_square_big_m_6_7_2..
	variable_switched_voltage_square_6_7 - 1.21*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_6_7_3 ;
linear_constraint_voltage_square_big_m_6_7_3..
	-variable_switched_voltage_square_6_7 + 1.21*variable_transmission_switch_6_7 + variable_voltage_square_6 =l= 1.21
Equation linear_constraint_voltage_square_big_m_6_7_4 ;
linear_constraint_voltage_square_big_m_6_7_4..
	variable_switched_voltage_square_6_7 - 0.81*variable_transmission_switch_6_7 - variable_voltage_square_6 =l= -0.81
Equation linear_constraint_voltage_square_big_m_7_6_1 ;
linear_constraint_voltage_square_big_m_7_6_1..
	-variable_switched_voltage_square_7_6 + 0.81*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_6_2 ;
linear_constraint_voltage_square_big_m_7_6_2..
	variable_switched_voltage_square_7_6 - 1.21*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_6_3 ;
linear_constraint_voltage_square_big_m_7_6_3..
	-variable_switched_voltage_square_7_6 + 1.21*variable_transmission_switch_6_7 + variable_voltage_square_7 =l= 1.21
Equation linear_constraint_voltage_square_big_m_7_6_4 ;
linear_constraint_voltage_square_big_m_7_6_4..
	variable_switched_voltage_square_7_6 - 0.81*variable_transmission_switch_6_7 - variable_voltage_square_7 =l= -0.81
Equation linear_constraint_voltage_square_big_m_7_8_1 ;
linear_constraint_voltage_square_big_m_7_8_1..
	-variable_switched_voltage_square_7_8 + 0.81*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_7_8_2 ;
linear_constraint_voltage_square_big_m_7_8_2..
	variable_switched_voltage_square_7_8 - 1.21*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_7_8_3 ;
linear_constraint_voltage_square_big_m_7_8_3..
	-variable_switched_voltage_square_7_8 + 1.21*variable_transmission_switch_7_8 + variable_voltage_square_7 =l= 1.21
Equation linear_constraint_voltage_square_big_m_7_8_4 ;
linear_constraint_voltage_square_big_m_7_8_4..
	variable_switched_voltage_square_7_8 - 0.81*variable_transmission_switch_7_8 - variable_voltage_square_7 =l= -0.81
Equation linear_constraint_voltage_square_big_m_8_7_1 ;
linear_constraint_voltage_square_big_m_8_7_1..
	-variable_switched_voltage_square_8_7 + 0.81*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_7_2 ;
linear_constraint_voltage_square_big_m_8_7_2..
	variable_switched_voltage_square_8_7 - 1.21*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_7_3 ;
linear_constraint_voltage_square_big_m_8_7_3..
	-variable_switched_voltage_square_8_7 + 1.21*variable_transmission_switch_7_8 + variable_voltage_square_8 =l= 1.21
Equation linear_constraint_voltage_square_big_m_8_7_4 ;
linear_constraint_voltage_square_big_m_8_7_4..
	variable_switched_voltage_square_8_7 - 0.81*variable_transmission_switch_7_8 - variable_voltage_square_8 =l= -0.81
Equation linear_constraint_voltage_square_big_m_8_9_1 ;
linear_constraint_voltage_square_big_m_8_9_1..
	-variable_switched_voltage_square_8_9 + 0.81*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_8_9_2 ;
linear_constraint_voltage_square_big_m_8_9_2..
	variable_switched_voltage_square_8_9 - 1.21*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_8_9_3 ;
linear_constraint_voltage_square_big_m_8_9_3..
	-variable_switched_voltage_square_8_9 + 1.21*variable_transmission_switch_8_9 + variable_voltage_square_8 =l= 1.21
Equation linear_constraint_voltage_square_big_m_8_9_4 ;
linear_constraint_voltage_square_big_m_8_9_4..
	variable_switched_voltage_square_8_9 - 0.81*variable_transmission_switch_8_9 - variable_voltage_square_8 =l= -0.81
Equation linear_constraint_voltage_square_big_m_9_8_1 ;
linear_constraint_voltage_square_big_m_9_8_1..
	-variable_switched_voltage_square_9_8 + 0.81*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_8_2 ;
linear_constraint_voltage_square_big_m_9_8_2..
	variable_switched_voltage_square_9_8 - 1.21*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_8_3 ;
linear_constraint_voltage_square_big_m_9_8_3..
	-variable_switched_voltage_square_9_8 + 1.21*variable_transmission_switch_8_9 + variable_voltage_square_9 =l= 1.21
Equation linear_constraint_voltage_square_big_m_9_8_4 ;
linear_constraint_voltage_square_big_m_9_8_4..
	variable_switched_voltage_square_9_8 - 0.81*variable_transmission_switch_8_9 - variable_voltage_square_9 =l= -0.81
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 1.1326*variable_curtailment_binaries_1_1 - 2.2652*variable_curtailment_binaries_1_2 - 3.0202*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 1.1326*variable_curtailment_binaries_3_1 - 2.2652*variable_curtailment_binaries_3_2 - 3.0202*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_option_5 ;
linear_constraint_curtailment_option_5..
	(variable_curtailed_feed_in_5 - 1.1326*variable_curtailment_binaries_5_1 - 2.2652*variable_curtailment_binaries_5_2 - 3.0202*variable_curtailment_binaries_5_3) =e= (0)
Equation linear_constraint_curtailment_option_7 ;
linear_constraint_curtailment_option_7..
	(variable_curtailed_feed_in_7 - 1.1326*variable_curtailment_binaries_7_1 - 2.2652*variable_curtailment_binaries_7_2 - 3.0202*variable_curtailment_binaries_7_3) =e= (0)
Equation linear_constraint_curtailment_option_9 ;
linear_constraint_curtailment_option_9..
	(variable_curtailed_feed_in_9 - 1.1326*variable_curtailment_binaries_9_1 - 2.2652*variable_curtailment_binaries_9_2 - 3.0202*variable_curtailment_binaries_9_3) =e= (0)
Equation linear_constraint_curtailment_sos_1 ;
linear_constraint_curtailment_sos_1..
	variable_curtailment_binaries_1_1 + variable_curtailment_binaries_1_2 + variable_curtailment_binaries_1_3 =l= 1
Equation linear_constraint_curtailment_sos_3 ;
linear_constraint_curtailment_sos_3..
	variable_curtailment_binaries_3_1 + variable_curtailment_binaries_3_2 + variable_curtailment_binaries_3_3 =l= 1
Equation linear_constraint_curtailment_sos_5 ;
linear_constraint_curtailment_sos_5..
	variable_curtailment_binaries_5_1 + variable_curtailment_binaries_5_2 + variable_curtailment_binaries_5_3 =l= 1
Equation linear_constraint_curtailment_sos_7 ;
linear_constraint_curtailment_sos_7..
	variable_curtailment_binaries_7_1 + variable_curtailment_binaries_7_2 + variable_curtailment_binaries_7_3 =l= 1
Equation linear_constraint_curtailment_sos_9 ;
linear_constraint_curtailment_sos_9..
	variable_curtailment_binaries_9_1 + variable_curtailment_binaries_9_2 + variable_curtailment_binaries_9_3 =l= 1

*===== SECTION: MODEL DEFINITION
Model minlp /all/ ;

*===== SECTION: MODEL OPTIONS AND SOLVE
option optcr = 0.0001 ;
option ResLim = 7200 ;
option MINLP = antigone ;
Solve minlp min objval using MINLP ;
