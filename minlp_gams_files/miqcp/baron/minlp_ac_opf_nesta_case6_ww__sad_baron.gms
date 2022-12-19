$title "minlp_ac_opf_nesta_case6_ww__sad"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1 ;
Binary Variable variable_generator_switch_2 ;
Binary Variable variable_generator_switch_3 ;
Scalar variable_voltage_square_1 / 1.1025 / ;
Scalar variable_voltage_square_2 / 1.1025 / ;
Scalar variable_voltage_square_3 / 1.1449 / ;
Free Variable variable_voltage_square_4 ;
	variable_voltage_square_4.lo = 0.9025 ;
	variable_voltage_square_4.up = 1.1025 ;
Free Variable variable_voltage_square_5 ;
	variable_voltage_square_5.lo = 0.9025 ;
	variable_voltage_square_5.up = 1.1025 ;
Free Variable variable_voltage_square_6 ;
	variable_voltage_square_6.lo = 0.9025 ;
	variable_voltage_square_6.up = 1.1025 ;
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
Free Variable variable_angle_difference_1_2 ;
	variable_angle_difference_1_2.lo = -0.0636 ;
	variable_angle_difference_1_2.up = 0.0636 ;
Free Variable variable_angle_difference_1_4 ;
	variable_angle_difference_1_4.lo = -0.0636 ;
	variable_angle_difference_1_4.up = 0.0636 ;
Free Variable variable_angle_difference_1_5 ;
	variable_angle_difference_1_5.lo = -0.0636 ;
	variable_angle_difference_1_5.up = 0.0636 ;
Free Variable variable_angle_difference_2_3 ;
	variable_angle_difference_2_3.lo = -0.0636 ;
	variable_angle_difference_2_3.up = 0.0636 ;
Free Variable variable_angle_difference_2_4 ;
	variable_angle_difference_2_4.lo = -0.0636 ;
	variable_angle_difference_2_4.up = 0.0636 ;
Free Variable variable_angle_difference_2_5 ;
	variable_angle_difference_2_5.lo = -0.0636 ;
	variable_angle_difference_2_5.up = 0.0636 ;
Free Variable variable_angle_difference_2_6 ;
	variable_angle_difference_2_6.lo = -0.0636 ;
	variable_angle_difference_2_6.up = 0.0636 ;
Free Variable variable_angle_difference_3_5 ;
	variable_angle_difference_3_5.lo = -0.0636 ;
	variable_angle_difference_3_5.up = 0.0636 ;
Free Variable variable_angle_difference_3_6 ;
	variable_angle_difference_3_6.lo = -0.0636 ;
	variable_angle_difference_3_6.up = 0.0636 ;
Free Variable variable_angle_difference_4_5 ;
	variable_angle_difference_4_5.lo = -0.0636 ;
	variable_angle_difference_4_5.up = 0.0636 ;
Free Variable variable_angle_difference_5_6 ;
	variable_angle_difference_5_6.lo = -0.0636 ;
	variable_angle_difference_5_6.up = 0.0636 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 2.0 ;
Free Variable variable_real_power_gen_2 ;
	variable_real_power_gen_2.lo = 0.0 ;
	variable_real_power_gen_2.up = 1.5 ;
Free Variable variable_real_power_gen_3 ;
	variable_real_power_gen_3.lo = 0.0 ;
	variable_real_power_gen_3.up = 1.8 ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -1.0 ;
	variable_reactive_power_gen_1.up = 1.0 ;
Free Variable variable_reactive_power_gen_2 ;
	variable_reactive_power_gen_2.lo = -1.0 ;
	variable_reactive_power_gen_2.up = 1.0 ;
Free Variable variable_reactive_power_gen_3 ;
	variable_reactive_power_gen_3.lo = -1.0 ;
	variable_reactive_power_gen_3.up = 1.0 ;
Free Variable variable_tan_subst_1_2 ;
	variable_tan_subst_1_2.lo = -0.0636859 ;
	variable_tan_subst_1_2.up = 0.0636859 ;
Free Variable variable_tan_subst_1_4 ;
	variable_tan_subst_1_4.lo = -0.0636859 ;
	variable_tan_subst_1_4.up = 0.0636859 ;
Free Variable variable_tan_subst_1_5 ;
	variable_tan_subst_1_5.lo = -0.0636859 ;
	variable_tan_subst_1_5.up = 0.0636859 ;
Free Variable variable_tan_subst_2_3 ;
	variable_tan_subst_2_3.lo = -0.0636859 ;
	variable_tan_subst_2_3.up = 0.0636859 ;
Free Variable variable_tan_subst_2_4 ;
	variable_tan_subst_2_4.lo = -0.0636859 ;
	variable_tan_subst_2_4.up = 0.0636859 ;
Free Variable variable_tan_subst_2_5 ;
	variable_tan_subst_2_5.lo = -0.0636859 ;
	variable_tan_subst_2_5.up = 0.0636859 ;
Free Variable variable_tan_subst_2_6 ;
	variable_tan_subst_2_6.lo = -0.0636859 ;
	variable_tan_subst_2_6.up = 0.0636859 ;
Free Variable variable_tan_subst_3_5 ;
	variable_tan_subst_3_5.lo = -0.0636859 ;
	variable_tan_subst_3_5.up = 0.0636859 ;
Free Variable variable_tan_subst_3_6 ;
	variable_tan_subst_3_6.lo = -0.0636859 ;
	variable_tan_subst_3_6.up = 0.0636859 ;
Free Variable variable_tan_subst_4_5 ;
	variable_tan_subst_4_5.lo = -0.0636859 ;
	variable_tan_subst_4_5.up = 0.0636859 ;
Free Variable variable_tan_subst_5_6 ;
	variable_tan_subst_5_6.lo = -0.0636859 ;
	variable_tan_subst_5_6.up = 0.0636859 ;
Free Variable variable_tan_delta_1_2 ;
	variable_tan_delta_1_2.lo = 0.0 ;
	variable_tan_delta_1_2.up = 1.0 ;
Free Variable variable_tan_delta_1_4 ;
	variable_tan_delta_1_4.lo = 0.0 ;
	variable_tan_delta_1_4.up = 1.0 ;
Free Variable variable_tan_delta_1_5 ;
	variable_tan_delta_1_5.lo = 0.0 ;
	variable_tan_delta_1_5.up = 1.0 ;
Free Variable variable_tan_delta_2_3 ;
	variable_tan_delta_2_3.lo = 0.0 ;
	variable_tan_delta_2_3.up = 1.0 ;
Free Variable variable_tan_delta_2_4 ;
	variable_tan_delta_2_4.lo = 0.0 ;
	variable_tan_delta_2_4.up = 1.0 ;
Free Variable variable_tan_delta_2_5 ;
	variable_tan_delta_2_5.lo = 0.0 ;
	variable_tan_delta_2_5.up = 1.0 ;
Free Variable variable_tan_delta_2_6 ;
	variable_tan_delta_2_6.lo = 0.0 ;
	variable_tan_delta_2_6.up = 1.0 ;
Free Variable variable_tan_delta_3_5 ;
	variable_tan_delta_3_5.lo = 0.0 ;
	variable_tan_delta_3_5.up = 1.0 ;
Free Variable variable_tan_delta_3_6 ;
	variable_tan_delta_3_6.lo = 0.0 ;
	variable_tan_delta_3_6.up = 1.0 ;
Free Variable variable_tan_delta_4_5 ;
	variable_tan_delta_4_5.lo = 0.0 ;
	variable_tan_delta_4_5.up = 1.0 ;
Free Variable variable_tan_delta_5_6 ;
	variable_tan_delta_5_6.lo = 0.0 ;
	variable_tan_delta_5_6.up = 1.0 ;
Free Variable variable_tan_error_1_2 ;
	variable_tan_error_1_2.lo = -3.31e-05 ;
	variable_tan_error_1_2.up = 3.31e-05 ;
Free Variable variable_tan_error_1_4 ;
	variable_tan_error_1_4.lo = -3.31e-05 ;
	variable_tan_error_1_4.up = 3.31e-05 ;
Free Variable variable_tan_error_1_5 ;
	variable_tan_error_1_5.lo = -3.31e-05 ;
	variable_tan_error_1_5.up = 3.31e-05 ;
Free Variable variable_tan_error_2_3 ;
	variable_tan_error_2_3.lo = -3.31e-05 ;
	variable_tan_error_2_3.up = 3.31e-05 ;
Free Variable variable_tan_error_2_4 ;
	variable_tan_error_2_4.lo = -3.31e-05 ;
	variable_tan_error_2_4.up = 3.31e-05 ;
Free Variable variable_tan_error_2_5 ;
	variable_tan_error_2_5.lo = -3.31e-05 ;
	variable_tan_error_2_5.up = 3.31e-05 ;
Free Variable variable_tan_error_2_6 ;
	variable_tan_error_2_6.lo = -3.31e-05 ;
	variable_tan_error_2_6.up = 3.31e-05 ;
Free Variable variable_tan_error_3_5 ;
	variable_tan_error_3_5.lo = -3.31e-05 ;
	variable_tan_error_3_5.up = 3.31e-05 ;
Free Variable variable_tan_error_3_6 ;
	variable_tan_error_3_6.lo = -3.31e-05 ;
	variable_tan_error_3_6.up = 3.31e-05 ;
Free Variable variable_tan_error_4_5 ;
	variable_tan_error_4_5.lo = -3.31e-05 ;
	variable_tan_error_4_5.up = 3.31e-05 ;
Free Variable variable_tan_error_5_6 ;
	variable_tan_error_5_6.lo = -3.31e-05 ;
	variable_tan_error_5_6.up = 3.31e-05 ;
Binary Variable variable_transmission_switch_1_2 ;
Binary Variable variable_transmission_switch_1_4 ;
Binary Variable variable_transmission_switch_1_5 ;
Binary Variable variable_transmission_switch_2_3 ;
Binary Variable variable_transmission_switch_2_4 ;
Binary Variable variable_transmission_switch_2_5 ;
Binary Variable variable_transmission_switch_2_6 ;
Binary Variable variable_transmission_switch_3_5 ;
Binary Variable variable_transmission_switch_3_6 ;
Binary Variable variable_transmission_switch_4_5 ;
Binary Variable variable_transmission_switch_5_6 ;
Free Variable variable_switched_voltage_square_1_2 ;
	variable_switched_voltage_square_1_2.lo = 0.0 ;
	variable_switched_voltage_square_1_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_1 ;
	variable_switched_voltage_square_2_1.lo = 0.0 ;
	variable_switched_voltage_square_2_1.up = 1.1025 ;
Free Variable variable_switched_voltage_square_1_4 ;
	variable_switched_voltage_square_1_4.lo = 0.0 ;
	variable_switched_voltage_square_1_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_1 ;
	variable_switched_voltage_square_4_1.lo = 0.0 ;
	variable_switched_voltage_square_4_1.up = 1.1025 ;
Free Variable variable_switched_voltage_square_1_5 ;
	variable_switched_voltage_square_1_5.lo = 0.0 ;
	variable_switched_voltage_square_1_5.up = 1.1025 ;
Free Variable variable_switched_voltage_square_5_1 ;
	variable_switched_voltage_square_5_1.lo = 0.0 ;
	variable_switched_voltage_square_5_1.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_3 ;
	variable_switched_voltage_square_2_3.lo = 0.0 ;
	variable_switched_voltage_square_2_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_2 ;
	variable_switched_voltage_square_3_2.lo = 0.0 ;
	variable_switched_voltage_square_3_2.up = 1.1449 ;
Free Variable variable_switched_voltage_square_2_4 ;
	variable_switched_voltage_square_2_4.lo = 0.0 ;
	variable_switched_voltage_square_2_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_2 ;
	variable_switched_voltage_square_4_2.lo = 0.0 ;
	variable_switched_voltage_square_4_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_5 ;
	variable_switched_voltage_square_2_5.lo = 0.0 ;
	variable_switched_voltage_square_2_5.up = 1.1025 ;
Free Variable variable_switched_voltage_square_5_2 ;
	variable_switched_voltage_square_5_2.lo = 0.0 ;
	variable_switched_voltage_square_5_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_6 ;
	variable_switched_voltage_square_2_6.lo = 0.0 ;
	variable_switched_voltage_square_2_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_2 ;
	variable_switched_voltage_square_6_2.lo = 0.0 ;
	variable_switched_voltage_square_6_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_5 ;
	variable_switched_voltage_square_3_5.lo = 0.0 ;
	variable_switched_voltage_square_3_5.up = 1.1449 ;
Free Variable variable_switched_voltage_square_5_3 ;
	variable_switched_voltage_square_5_3.lo = 0.0 ;
	variable_switched_voltage_square_5_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_6 ;
	variable_switched_voltage_square_3_6.lo = 0.0 ;
	variable_switched_voltage_square_3_6.up = 1.1449 ;
Free Variable variable_switched_voltage_square_6_3 ;
	variable_switched_voltage_square_6_3.lo = 0.0 ;
	variable_switched_voltage_square_6_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_5 ;
	variable_switched_voltage_square_4_5.lo = 0.0 ;
	variable_switched_voltage_square_4_5.up = 1.1025 ;
Free Variable variable_switched_voltage_square_5_4 ;
	variable_switched_voltage_square_5_4.lo = 0.0 ;
	variable_switched_voltage_square_5_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_5_6 ;
	variable_switched_voltage_square_5_6.lo = 0.0 ;
	variable_switched_voltage_square_5_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_5 ;
	variable_switched_voltage_square_6_5.lo = 0.0 ;
	variable_switched_voltage_square_6_5.up = 1.1025 ;
Free Variable variable_real_power_flow_1_2 ;
	variable_real_power_flow_1_2.lo = -0.4 ;
	variable_real_power_flow_1_2.up = 0.4 ;
Free Variable variable_real_power_flow_2_1 ;
	variable_real_power_flow_2_1.lo = -0.4 ;
	variable_real_power_flow_2_1.up = 0.4 ;
Free Variable variable_real_power_flow_1_4 ;
	variable_real_power_flow_1_4.lo = -0.6 ;
	variable_real_power_flow_1_4.up = 0.6 ;
Free Variable variable_real_power_flow_4_1 ;
	variable_real_power_flow_4_1.lo = -0.6 ;
	variable_real_power_flow_4_1.up = 0.6 ;
Free Variable variable_real_power_flow_1_5 ;
	variable_real_power_flow_1_5.lo = -0.4 ;
	variable_real_power_flow_1_5.up = 0.4 ;
Free Variable variable_real_power_flow_5_1 ;
	variable_real_power_flow_5_1.lo = -0.4 ;
	variable_real_power_flow_5_1.up = 0.4 ;
Free Variable variable_real_power_flow_2_3 ;
	variable_real_power_flow_2_3.lo = -0.4 ;
	variable_real_power_flow_2_3.up = 0.4 ;
Free Variable variable_real_power_flow_3_2 ;
	variable_real_power_flow_3_2.lo = -0.4 ;
	variable_real_power_flow_3_2.up = 0.4 ;
Free Variable variable_real_power_flow_2_4 ;
	variable_real_power_flow_2_4.lo = -0.6 ;
	variable_real_power_flow_2_4.up = 0.6 ;
Free Variable variable_real_power_flow_4_2 ;
	variable_real_power_flow_4_2.lo = -0.6 ;
	variable_real_power_flow_4_2.up = 0.6 ;
Free Variable variable_real_power_flow_2_5 ;
	variable_real_power_flow_2_5.lo = -0.3 ;
	variable_real_power_flow_2_5.up = 0.3 ;
Free Variable variable_real_power_flow_5_2 ;
	variable_real_power_flow_5_2.lo = -0.3 ;
	variable_real_power_flow_5_2.up = 0.3 ;
Free Variable variable_real_power_flow_2_6 ;
	variable_real_power_flow_2_6.lo = -0.9 ;
	variable_real_power_flow_2_6.up = 0.9 ;
Free Variable variable_real_power_flow_6_2 ;
	variable_real_power_flow_6_2.lo = -0.9 ;
	variable_real_power_flow_6_2.up = 0.9 ;
Free Variable variable_real_power_flow_3_5 ;
	variable_real_power_flow_3_5.lo = -0.7 ;
	variable_real_power_flow_3_5.up = 0.7 ;
Free Variable variable_real_power_flow_5_3 ;
	variable_real_power_flow_5_3.lo = -0.7 ;
	variable_real_power_flow_5_3.up = 0.7 ;
Free Variable variable_real_power_flow_3_6 ;
	variable_real_power_flow_3_6.lo = -0.8 ;
	variable_real_power_flow_3_6.up = 0.8 ;
Free Variable variable_real_power_flow_6_3 ;
	variable_real_power_flow_6_3.lo = -0.8 ;
	variable_real_power_flow_6_3.up = 0.8 ;
Free Variable variable_real_power_flow_4_5 ;
	variable_real_power_flow_4_5.lo = -0.2 ;
	variable_real_power_flow_4_5.up = 0.2 ;
Free Variable variable_real_power_flow_5_4 ;
	variable_real_power_flow_5_4.lo = -0.2 ;
	variable_real_power_flow_5_4.up = 0.2 ;
Free Variable variable_real_power_flow_5_6 ;
	variable_real_power_flow_5_6.lo = -0.4 ;
	variable_real_power_flow_5_6.up = 0.4 ;
Free Variable variable_real_power_flow_6_5 ;
	variable_real_power_flow_6_5.lo = -0.4 ;
	variable_real_power_flow_6_5.up = 0.4 ;
Free Variable variable_reactive_power_flow_1_2 ;
	variable_reactive_power_flow_1_2.lo = -0.4 ;
	variable_reactive_power_flow_1_2.up = 0.4 ;
Free Variable variable_reactive_power_flow_2_1 ;
	variable_reactive_power_flow_2_1.lo = -0.4 ;
	variable_reactive_power_flow_2_1.up = 0.4 ;
Free Variable variable_reactive_power_flow_1_4 ;
	variable_reactive_power_flow_1_4.lo = -0.6 ;
	variable_reactive_power_flow_1_4.up = 0.6 ;
Free Variable variable_reactive_power_flow_4_1 ;
	variable_reactive_power_flow_4_1.lo = -0.6 ;
	variable_reactive_power_flow_4_1.up = 0.6 ;
Free Variable variable_reactive_power_flow_1_5 ;
	variable_reactive_power_flow_1_5.lo = -0.4 ;
	variable_reactive_power_flow_1_5.up = 0.4 ;
Free Variable variable_reactive_power_flow_5_1 ;
	variable_reactive_power_flow_5_1.lo = -0.4 ;
	variable_reactive_power_flow_5_1.up = 0.4 ;
Free Variable variable_reactive_power_flow_2_3 ;
	variable_reactive_power_flow_2_3.lo = -0.4 ;
	variable_reactive_power_flow_2_3.up = 0.4 ;
Free Variable variable_reactive_power_flow_3_2 ;
	variable_reactive_power_flow_3_2.lo = -0.4 ;
	variable_reactive_power_flow_3_2.up = 0.4 ;
Free Variable variable_reactive_power_flow_2_4 ;
	variable_reactive_power_flow_2_4.lo = -0.6 ;
	variable_reactive_power_flow_2_4.up = 0.6 ;
Free Variable variable_reactive_power_flow_4_2 ;
	variable_reactive_power_flow_4_2.lo = -0.6 ;
	variable_reactive_power_flow_4_2.up = 0.6 ;
Free Variable variable_reactive_power_flow_2_5 ;
	variable_reactive_power_flow_2_5.lo = -0.3 ;
	variable_reactive_power_flow_2_5.up = 0.3 ;
Free Variable variable_reactive_power_flow_5_2 ;
	variable_reactive_power_flow_5_2.lo = -0.3 ;
	variable_reactive_power_flow_5_2.up = 0.3 ;
Free Variable variable_reactive_power_flow_2_6 ;
	variable_reactive_power_flow_2_6.lo = -0.9 ;
	variable_reactive_power_flow_2_6.up = 0.9 ;
Free Variable variable_reactive_power_flow_6_2 ;
	variable_reactive_power_flow_6_2.lo = -0.9 ;
	variable_reactive_power_flow_6_2.up = 0.9 ;
Free Variable variable_reactive_power_flow_3_5 ;
	variable_reactive_power_flow_3_5.lo = -0.7 ;
	variable_reactive_power_flow_3_5.up = 0.7 ;
Free Variable variable_reactive_power_flow_5_3 ;
	variable_reactive_power_flow_5_3.lo = -0.7 ;
	variable_reactive_power_flow_5_3.up = 0.7 ;
Free Variable variable_reactive_power_flow_3_6 ;
	variable_reactive_power_flow_3_6.lo = -0.8 ;
	variable_reactive_power_flow_3_6.up = 0.8 ;
Free Variable variable_reactive_power_flow_6_3 ;
	variable_reactive_power_flow_6_3.lo = -0.8 ;
	variable_reactive_power_flow_6_3.up = 0.8 ;
Free Variable variable_reactive_power_flow_4_5 ;
	variable_reactive_power_flow_4_5.lo = -0.2 ;
	variable_reactive_power_flow_4_5.up = 0.2 ;
Free Variable variable_reactive_power_flow_5_4 ;
	variable_reactive_power_flow_5_4.lo = -0.2 ;
	variable_reactive_power_flow_5_4.up = 0.2 ;
Free Variable variable_reactive_power_flow_5_6 ;
	variable_reactive_power_flow_5_6.lo = -0.4 ;
	variable_reactive_power_flow_5_6.up = 0.4 ;
Free Variable variable_reactive_power_flow_6_5 ;
	variable_reactive_power_flow_6_5.lo = -0.4 ;
	variable_reactive_power_flow_6_5.up = 0.4 ;
Free Variable variable_voltage_product_real_1_2 ;
	variable_voltage_product_real_1_2.lo = -1.1025 ;
	variable_voltage_product_real_1_2.up = 1.1025 ;
Free Variable variable_voltage_product_real_1_4 ;
	variable_voltage_product_real_1_4.lo = -1.1025 ;
	variable_voltage_product_real_1_4.up = 1.1025 ;
Free Variable variable_voltage_product_real_1_5 ;
	variable_voltage_product_real_1_5.lo = -1.1025 ;
	variable_voltage_product_real_1_5.up = 1.1025 ;
Free Variable variable_voltage_product_real_2_3 ;
	variable_voltage_product_real_2_3.lo = -1.1235 ;
	variable_voltage_product_real_2_3.up = 1.1235 ;
Free Variable variable_voltage_product_real_2_4 ;
	variable_voltage_product_real_2_4.lo = -1.1025 ;
	variable_voltage_product_real_2_4.up = 1.1025 ;
Free Variable variable_voltage_product_real_2_5 ;
	variable_voltage_product_real_2_5.lo = -1.1025 ;
	variable_voltage_product_real_2_5.up = 1.1025 ;
Free Variable variable_voltage_product_real_2_6 ;
	variable_voltage_product_real_2_6.lo = -1.1025 ;
	variable_voltage_product_real_2_6.up = 1.1025 ;
Free Variable variable_voltage_product_real_3_5 ;
	variable_voltage_product_real_3_5.lo = -1.1235 ;
	variable_voltage_product_real_3_5.up = 1.1235 ;
Free Variable variable_voltage_product_real_3_6 ;
	variable_voltage_product_real_3_6.lo = -1.1235 ;
	variable_voltage_product_real_3_6.up = 1.1235 ;
Free Variable variable_voltage_product_real_4_5 ;
	variable_voltage_product_real_4_5.lo = -1.1025 ;
	variable_voltage_product_real_4_5.up = 1.1025 ;
Free Variable variable_voltage_product_real_5_6 ;
	variable_voltage_product_real_5_6.lo = -1.1025 ;
	variable_voltage_product_real_5_6.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_1_2 ;
	variable_voltage_product_imaginary_1_2.lo = -1.1025 ;
	variable_voltage_product_imaginary_1_2.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_1_4 ;
	variable_voltage_product_imaginary_1_4.lo = -1.1025 ;
	variable_voltage_product_imaginary_1_4.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_1_5 ;
	variable_voltage_product_imaginary_1_5.lo = -1.1025 ;
	variable_voltage_product_imaginary_1_5.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_2_3 ;
	variable_voltage_product_imaginary_2_3.lo = -1.1235 ;
	variable_voltage_product_imaginary_2_3.up = 1.1235 ;
Free Variable variable_voltage_product_imaginary_2_4 ;
	variable_voltage_product_imaginary_2_4.lo = -1.1025 ;
	variable_voltage_product_imaginary_2_4.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_2_5 ;
	variable_voltage_product_imaginary_2_5.lo = -1.1025 ;
	variable_voltage_product_imaginary_2_5.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_2_6 ;
	variable_voltage_product_imaginary_2_6.lo = -1.1025 ;
	variable_voltage_product_imaginary_2_6.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_3_5 ;
	variable_voltage_product_imaginary_3_5.lo = -1.1235 ;
	variable_voltage_product_imaginary_3_5.up = 1.1235 ;
Free Variable variable_voltage_product_imaginary_3_6 ;
	variable_voltage_product_imaginary_3_6.lo = -1.1235 ;
	variable_voltage_product_imaginary_3_6.up = 1.1235 ;
Free Variable variable_voltage_product_imaginary_4_5 ;
	variable_voltage_product_imaginary_4_5.lo = -1.1025 ;
	variable_voltage_product_imaginary_4_5.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_5_6 ;
	variable_voltage_product_imaginary_5_6.lo = -1.1025 ;
	variable_voltage_product_imaginary_5_6.up = 1.1025 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 1.4 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 1.4 ;
Free Variable variable_curtailed_feed_in_5 ;
	variable_curtailed_feed_in_5.lo = 0.0 ;
	variable_curtailed_feed_in_5.up = 1.4 ;
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
	objval =e= -1350.94*variable_curtailed_feed_in_1 - 1350.94*variable_curtailed_feed_in_3 - 1350.94*variable_curtailed_feed_in_5 + 213.1*variable_generator_switch_1 + 200.0*variable_generator_switch_2 + 240.0*variable_generator_switch_3 + 53.3*power(variable_real_power_gen_1,2) + 1166.9*variable_real_power_gen_1 + 88.9*power(variable_real_power_gen_2,2) + 1033.3*variable_real_power_gen_2 + 74.1*power(variable_real_power_gen_3,2) + 1083.3*variable_real_power_gen_3 + 11347.896
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_4 - variable_real_power_flow_1_5 + variable_real_power_gen_1) =e= (0.0)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_3 - variable_real_power_flow_2_4 - variable_real_power_flow_2_5 - variable_real_power_flow_2_6 + variable_real_power_gen_2) =e= (0.0)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_2 - variable_real_power_flow_3_5 - variable_real_power_flow_3_6 + variable_real_power_gen_3) =e= (0.0)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_1 - variable_real_power_flow_4_2 - variable_real_power_flow_4_5) =e= (0.7)
Equation linear_constraint_real_flow_conservation_5 ;
linear_constraint_real_flow_conservation_5..
	(variable_curtailed_feed_in_5 - variable_real_power_flow_5_1 - variable_real_power_flow_5_2 - variable_real_power_flow_5_3 - variable_real_power_flow_5_4 - variable_real_power_flow_5_6) =e= (0.7)
Equation linear_constraint_real_flow_conservation_6 ;
linear_constraint_real_flow_conservation_6..
	(-variable_real_power_flow_6_2 - variable_real_power_flow_6_3 - variable_real_power_flow_6_5) =e= (0.7)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_2 - variable_reactive_power_flow_1_4 - variable_reactive_power_flow_1_5 + variable_reactive_power_gen_1) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_1 - variable_reactive_power_flow_2_3 - variable_reactive_power_flow_2_4 - variable_reactive_power_flow_2_5 - variable_reactive_power_flow_2_6 + variable_reactive_power_gen_2) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_2 - variable_reactive_power_flow_3_5 - variable_reactive_power_flow_3_6 + variable_reactive_power_gen_3) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_1 - variable_reactive_power_flow_4_2 - variable_reactive_power_flow_4_5) =e= (0.7)
Equation linear_constraint_reactive_flow_conservation_5 ;
linear_constraint_reactive_flow_conservation_5..
	(0.48*variable_curtailed_feed_in_5 - variable_reactive_power_flow_5_1 - variable_reactive_power_flow_5_2 - variable_reactive_power_flow_5_3 - variable_reactive_power_flow_5_4 - variable_reactive_power_flow_5_6) =e= (0.7)
Equation linear_constraint_reactive_flow_conservation_6 ;
linear_constraint_reactive_flow_conservation_6..
	(-variable_reactive_power_flow_6_2 - variable_reactive_power_flow_6_3 - variable_reactive_power_flow_6_5) =e= (0.7)
Equation linear_constraint_real_power_flow_equation_1_2 ;
linear_constraint_real_power_flow_equation_1_2..
	(variable_real_power_flow_1_2) =e= (2.0*variable_switched_voltage_square_1_2 - 4.0*variable_voltage_product_imaginary_1_2 - 2.0*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_1 ;
linear_constraint_real_power_flow_equation_2_1..
	(variable_real_power_flow_2_1) =e= (2.0*variable_switched_voltage_square_2_1 + 4.0*variable_voltage_product_imaginary_1_2 - 2.0*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_1_4 ;
linear_constraint_real_power_flow_equation_1_4..
	(variable_real_power_flow_1_4) =e= (1.17647058823529*variable_switched_voltage_square_1_4 - 4.70588235294118*variable_voltage_product_imaginary_1_4 - 1.17647058823529*variable_voltage_product_real_1_4)
Equation linear_constraint_real_power_flow_equation_4_1 ;
linear_constraint_real_power_flow_equation_4_1..
	(variable_real_power_flow_4_1) =e= (1.17647058823529*variable_switched_voltage_square_4_1 + 4.70588235294118*variable_voltage_product_imaginary_1_4 - 1.17647058823529*variable_voltage_product_real_1_4)
Equation linear_constraint_real_power_flow_equation_1_5 ;
linear_constraint_real_power_flow_equation_1_5..
	(variable_real_power_flow_1_5) =e= (0.829875518672199*variable_switched_voltage_square_1_5 - 3.11203319502075*variable_voltage_product_imaginary_1_5 - 0.829875518672199*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_5_1 ;
linear_constraint_real_power_flow_equation_5_1..
	(variable_real_power_flow_5_1) =e= (0.829875518672199*variable_switched_voltage_square_5_1 + 3.11203319502075*variable_voltage_product_imaginary_1_5 - 0.829875518672199*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_2_3 ;
linear_constraint_real_power_flow_equation_2_3..
	(variable_real_power_flow_2_3) =e= (0.769230769230769*variable_switched_voltage_square_2_3 - 3.84615384615385*variable_voltage_product_imaginary_2_3 - 0.769230769230769*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_3_2 ;
linear_constraint_real_power_flow_equation_3_2..
	(variable_real_power_flow_3_2) =e= (0.769230769230769*variable_switched_voltage_square_3_2 + 3.84615384615385*variable_voltage_product_imaginary_2_3 - 0.769230769230769*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_2_4 ;
linear_constraint_real_power_flow_equation_2_4..
	(variable_real_power_flow_2_4) =e= (4.0*variable_switched_voltage_square_2_4 - 8.0*variable_voltage_product_imaginary_2_4 - 4.0*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_4_2 ;
linear_constraint_real_power_flow_equation_4_2..
	(variable_real_power_flow_4_2) =e= (4.0*variable_switched_voltage_square_4_2 + 8.0*variable_voltage_product_imaginary_2_4 - 4.0*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_2_5 ;
linear_constraint_real_power_flow_equation_2_5..
	(variable_real_power_flow_2_5) =e= (1.0*variable_switched_voltage_square_2_5 - 3.0*variable_voltage_product_imaginary_2_5 - 1.0*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_5_2 ;
linear_constraint_real_power_flow_equation_5_2..
	(variable_real_power_flow_5_2) =e= (1.0*variable_switched_voltage_square_5_2 + 3.0*variable_voltage_product_imaginary_2_5 - 1.0*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_2_6 ;
linear_constraint_real_power_flow_equation_2_6..
	(variable_real_power_flow_2_6) =e= (1.55902004454343*variable_switched_voltage_square_2_6 - 4.4543429844098*variable_voltage_product_imaginary_2_6 - 1.55902004454343*variable_voltage_product_real_2_6)
Equation linear_constraint_real_power_flow_equation_6_2 ;
linear_constraint_real_power_flow_equation_6_2..
	(variable_real_power_flow_6_2) =e= (1.55902004454343*variable_switched_voltage_square_6_2 + 4.4543429844098*variable_voltage_product_imaginary_2_6 - 1.55902004454343*variable_voltage_product_real_2_6)
Equation linear_constraint_real_power_flow_equation_3_5 ;
linear_constraint_real_power_flow_equation_3_5..
	(variable_real_power_flow_3_5) =e= (1.46341463414634*variable_switched_voltage_square_3_5 - 3.17073170731707*variable_voltage_product_imaginary_3_5 - 1.46341463414634*variable_voltage_product_real_3_5)
Equation linear_constraint_real_power_flow_equation_5_3 ;
linear_constraint_real_power_flow_equation_5_3..
	(variable_real_power_flow_5_3) =e= (1.46341463414634*variable_switched_voltage_square_5_3 + 3.17073170731707*variable_voltage_product_imaginary_3_5 - 1.46341463414634*variable_voltage_product_real_3_5)
Equation linear_constraint_real_power_flow_equation_3_6 ;
linear_constraint_real_power_flow_equation_3_6..
	(variable_real_power_flow_3_6) =e= (1.92307692307692*variable_switched_voltage_square_3_6 - 9.61538461538461*variable_voltage_product_imaginary_3_6 - 1.92307692307692*variable_voltage_product_real_3_6)
Equation linear_constraint_real_power_flow_equation_6_3 ;
linear_constraint_real_power_flow_equation_6_3..
	(variable_real_power_flow_6_3) =e= (1.92307692307692*variable_switched_voltage_square_6_3 + 9.61538461538461*variable_voltage_product_imaginary_3_6 - 1.92307692307692*variable_voltage_product_real_3_6)
Equation linear_constraint_real_power_flow_equation_4_5 ;
linear_constraint_real_power_flow_equation_4_5..
	(variable_real_power_flow_4_5) =e= (1.0*variable_switched_voltage_square_4_5 - 2.0*variable_voltage_product_imaginary_4_5 - 1.0*variable_voltage_product_real_4_5)
Equation linear_constraint_real_power_flow_equation_5_4 ;
linear_constraint_real_power_flow_equation_5_4..
	(variable_real_power_flow_5_4) =e= (1.0*variable_switched_voltage_square_5_4 + 2.0*variable_voltage_product_imaginary_4_5 - 1.0*variable_voltage_product_real_4_5)
Equation linear_constraint_real_power_flow_equation_5_6 ;
linear_constraint_real_power_flow_equation_5_6..
	(variable_real_power_flow_5_6) =e= (1.0*variable_switched_voltage_square_5_6 - 3.0*variable_voltage_product_imaginary_5_6 - 1.0*variable_voltage_product_real_5_6)
Equation linear_constraint_real_power_flow_equation_6_5 ;
linear_constraint_real_power_flow_equation_6_5..
	(variable_real_power_flow_6_5) =e= (1.0*variable_switched_voltage_square_6_5 + 3.0*variable_voltage_product_imaginary_5_6 - 1.0*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_1_2 ;
linear_constraint_reactive_power_flow_equation_1_2..
	(variable_reactive_power_flow_1_2) =e= (3.98*variable_switched_voltage_square_1_2 + 2.0*variable_voltage_product_imaginary_1_2 - 4.0*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_1 ;
linear_constraint_reactive_power_flow_equation_2_1..
	(variable_reactive_power_flow_2_1) =e= (3.98*variable_switched_voltage_square_2_1 - 2.0*variable_voltage_product_imaginary_1_2 - 4.0*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_1_4 ;
linear_constraint_reactive_power_flow_equation_1_4..
	(variable_reactive_power_flow_1_4) =e= (4.68588235294118*variable_switched_voltage_square_1_4 + 1.17647058823529*variable_voltage_product_imaginary_1_4 - 4.70588235294118*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_4_1 ;
linear_constraint_reactive_power_flow_equation_4_1..
	(variable_reactive_power_flow_4_1) =e= (4.68588235294118*variable_switched_voltage_square_4_1 - 1.17647058823529*variable_voltage_product_imaginary_1_4 - 4.70588235294118*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_1_5 ;
linear_constraint_reactive_power_flow_equation_1_5..
	(variable_reactive_power_flow_1_5) =e= (3.08203319502075*variable_switched_voltage_square_1_5 + 0.829875518672199*variable_voltage_product_imaginary_1_5 - 3.11203319502075*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_5_1 ;
linear_constraint_reactive_power_flow_equation_5_1..
	(variable_reactive_power_flow_5_1) =e= (3.08203319502075*variable_switched_voltage_square_5_1 - 0.829875518672199*variable_voltage_product_imaginary_1_5 - 3.11203319502075*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_2_3 ;
linear_constraint_reactive_power_flow_equation_2_3..
	(variable_reactive_power_flow_2_3) =e= (3.81615384615385*variable_switched_voltage_square_2_3 + 0.769230769230769*variable_voltage_product_imaginary_2_3 - 3.84615384615385*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_3_2 ;
linear_constraint_reactive_power_flow_equation_3_2..
	(variable_reactive_power_flow_3_2) =e= (3.81615384615385*variable_switched_voltage_square_3_2 - 0.769230769230769*variable_voltage_product_imaginary_2_3 - 3.84615384615385*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_2_4 ;
linear_constraint_reactive_power_flow_equation_2_4..
	(variable_reactive_power_flow_2_4) =e= (7.99*variable_switched_voltage_square_2_4 + 4.0*variable_voltage_product_imaginary_2_4 - 8.0*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_4_2 ;
linear_constraint_reactive_power_flow_equation_4_2..
	(variable_reactive_power_flow_4_2) =e= (7.99*variable_switched_voltage_square_4_2 - 4.0*variable_voltage_product_imaginary_2_4 - 8.0*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_2_5 ;
linear_constraint_reactive_power_flow_equation_2_5..
	(variable_reactive_power_flow_2_5) =e= (2.98*variable_switched_voltage_square_2_5 + 1.0*variable_voltage_product_imaginary_2_5 - 3.0*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_5_2 ;
linear_constraint_reactive_power_flow_equation_5_2..
	(variable_reactive_power_flow_5_2) =e= (2.98*variable_switched_voltage_square_5_2 - 1.0*variable_voltage_product_imaginary_2_5 - 3.0*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_2_6 ;
linear_constraint_reactive_power_flow_equation_2_6..
	(variable_reactive_power_flow_2_6) =e= (4.4293429844098*variable_switched_voltage_square_2_6 + 1.55902004454343*variable_voltage_product_imaginary_2_6 - 4.4543429844098*variable_voltage_product_real_2_6)
Equation linear_constraint_reactive_power_flow_equation_6_2 ;
linear_constraint_reactive_power_flow_equation_6_2..
	(variable_reactive_power_flow_6_2) =e= (4.4293429844098*variable_switched_voltage_square_6_2 - 1.55902004454343*variable_voltage_product_imaginary_2_6 - 4.4543429844098*variable_voltage_product_real_2_6)
Equation linear_constraint_reactive_power_flow_equation_3_5 ;
linear_constraint_reactive_power_flow_equation_3_5..
	(variable_reactive_power_flow_3_5) =e= (3.14573170731707*variable_switched_voltage_square_3_5 + 1.46341463414634*variable_voltage_product_imaginary_3_5 - 3.17073170731707*variable_voltage_product_real_3_5)
Equation linear_constraint_reactive_power_flow_equation_5_3 ;
linear_constraint_reactive_power_flow_equation_5_3..
	(variable_reactive_power_flow_5_3) =e= (3.14573170731707*variable_switched_voltage_square_5_3 - 1.46341463414634*variable_voltage_product_imaginary_3_5 - 3.17073170731707*variable_voltage_product_real_3_5)
Equation linear_constraint_reactive_power_flow_equation_3_6 ;
linear_constraint_reactive_power_flow_equation_3_6..
	(variable_reactive_power_flow_3_6) =e= (9.60538461538462*variable_switched_voltage_square_3_6 + 1.92307692307692*variable_voltage_product_imaginary_3_6 - 9.61538461538461*variable_voltage_product_real_3_6)
Equation linear_constraint_reactive_power_flow_equation_6_3 ;
linear_constraint_reactive_power_flow_equation_6_3..
	(variable_reactive_power_flow_6_3) =e= (9.60538461538462*variable_switched_voltage_square_6_3 - 1.92307692307692*variable_voltage_product_imaginary_3_6 - 9.61538461538461*variable_voltage_product_real_3_6)
Equation linear_constraint_reactive_power_flow_equation_4_5 ;
linear_constraint_reactive_power_flow_equation_4_5..
	(variable_reactive_power_flow_4_5) =e= (1.96*variable_switched_voltage_square_4_5 + 1.0*variable_voltage_product_imaginary_4_5 - 2.0*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_5_4 ;
linear_constraint_reactive_power_flow_equation_5_4..
	(variable_reactive_power_flow_5_4) =e= (1.96*variable_switched_voltage_square_5_4 - 1.0*variable_voltage_product_imaginary_4_5 - 2.0*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_5_6 ;
linear_constraint_reactive_power_flow_equation_5_6..
	(variable_reactive_power_flow_5_6) =e= (2.97*variable_switched_voltage_square_5_6 + 1.0*variable_voltage_product_imaginary_5_6 - 3.0*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_6_5 ;
linear_constraint_reactive_power_flow_equation_6_5..
	(variable_reactive_power_flow_6_5) =e= (2.97*variable_switched_voltage_square_6_5 - 1.0*variable_voltage_product_imaginary_5_6 - 3.0*variable_voltage_product_real_5_6)
Equation nonlinear_constraint_conic_quadratic_1_2 ;
nonlinear_constraint_conic_quadratic_1_2..
	(power(variable_voltage_product_imaginary_1_2,2) + power(variable_voltage_product_real_1_2,2)) =e= (variable_switched_voltage_square_1_2*variable_switched_voltage_square_2_1)
Equation nonlinear_constraint_conic_quadratic_1_4 ;
nonlinear_constraint_conic_quadratic_1_4..
	(power(variable_voltage_product_imaginary_1_4,2) + power(variable_voltage_product_real_1_4,2)) =e= (variable_switched_voltage_square_1_4*variable_switched_voltage_square_4_1)
Equation nonlinear_constraint_conic_quadratic_1_5 ;
nonlinear_constraint_conic_quadratic_1_5..
	(power(variable_voltage_product_imaginary_1_5,2) + power(variable_voltage_product_real_1_5,2)) =e= (variable_switched_voltage_square_1_5*variable_switched_voltage_square_5_1)
Equation nonlinear_constraint_conic_quadratic_2_3 ;
nonlinear_constraint_conic_quadratic_2_3..
	(power(variable_voltage_product_imaginary_2_3,2) + power(variable_voltage_product_real_2_3,2)) =e= (variable_switched_voltage_square_2_3*variable_switched_voltage_square_3_2)
Equation nonlinear_constraint_conic_quadratic_2_4 ;
nonlinear_constraint_conic_quadratic_2_4..
	(power(variable_voltage_product_imaginary_2_4,2) + power(variable_voltage_product_real_2_4,2)) =e= (variable_switched_voltage_square_2_4*variable_switched_voltage_square_4_2)
Equation nonlinear_constraint_conic_quadratic_2_5 ;
nonlinear_constraint_conic_quadratic_2_5..
	(power(variable_voltage_product_imaginary_2_5,2) + power(variable_voltage_product_real_2_5,2)) =e= (variable_switched_voltage_square_2_5*variable_switched_voltage_square_5_2)
Equation nonlinear_constraint_conic_quadratic_2_6 ;
nonlinear_constraint_conic_quadratic_2_6..
	(power(variable_voltage_product_imaginary_2_6,2) + power(variable_voltage_product_real_2_6,2)) =e= (variable_switched_voltage_square_2_6*variable_switched_voltage_square_6_2)
Equation nonlinear_constraint_conic_quadratic_3_5 ;
nonlinear_constraint_conic_quadratic_3_5..
	(power(variable_voltage_product_imaginary_3_5,2) + power(variable_voltage_product_real_3_5,2)) =e= (variable_switched_voltage_square_3_5*variable_switched_voltage_square_5_3)
Equation nonlinear_constraint_conic_quadratic_3_6 ;
nonlinear_constraint_conic_quadratic_3_6..
	(power(variable_voltage_product_imaginary_3_6,2) + power(variable_voltage_product_real_3_6,2)) =e= (variable_switched_voltage_square_3_6*variable_switched_voltage_square_6_3)
Equation nonlinear_constraint_conic_quadratic_4_5 ;
nonlinear_constraint_conic_quadratic_4_5..
	(power(variable_voltage_product_imaginary_4_5,2) + power(variable_voltage_product_real_4_5,2)) =e= (variable_switched_voltage_square_4_5*variable_switched_voltage_square_5_4)
Equation nonlinear_constraint_conic_quadratic_5_6 ;
nonlinear_constraint_conic_quadratic_5_6..
	(power(variable_voltage_product_imaginary_5_6,2) + power(variable_voltage_product_real_5_6,2)) =e= (variable_switched_voltage_square_5_6*variable_switched_voltage_square_6_5)
Equation nonlinear_constraint_trigonometric_1_2 ;
nonlinear_constraint_trigonometric_1_2..
	(-variable_tan_subst_1_2*variable_voltage_product_real_1_2) =e= (variable_voltage_product_imaginary_1_2)
Equation nonlinear_constraint_trigonometric_1_4 ;
nonlinear_constraint_trigonometric_1_4..
	(-variable_tan_subst_1_4*variable_voltage_product_real_1_4) =e= (variable_voltage_product_imaginary_1_4)
Equation nonlinear_constraint_trigonometric_1_5 ;
nonlinear_constraint_trigonometric_1_5..
	(-variable_tan_subst_1_5*variable_voltage_product_real_1_5) =e= (variable_voltage_product_imaginary_1_5)
Equation nonlinear_constraint_trigonometric_2_3 ;
nonlinear_constraint_trigonometric_2_3..
	(-variable_tan_subst_2_3*variable_voltage_product_real_2_3) =e= (variable_voltage_product_imaginary_2_3)
Equation nonlinear_constraint_trigonometric_2_4 ;
nonlinear_constraint_trigonometric_2_4..
	(-variable_tan_subst_2_4*variable_voltage_product_real_2_4) =e= (variable_voltage_product_imaginary_2_4)
Equation nonlinear_constraint_trigonometric_2_5 ;
nonlinear_constraint_trigonometric_2_5..
	(-variable_tan_subst_2_5*variable_voltage_product_real_2_5) =e= (variable_voltage_product_imaginary_2_5)
Equation nonlinear_constraint_trigonometric_2_6 ;
nonlinear_constraint_trigonometric_2_6..
	(-variable_tan_subst_2_6*variable_voltage_product_real_2_6) =e= (variable_voltage_product_imaginary_2_6)
Equation nonlinear_constraint_trigonometric_3_5 ;
nonlinear_constraint_trigonometric_3_5..
	(-variable_tan_subst_3_5*variable_voltage_product_real_3_5) =e= (variable_voltage_product_imaginary_3_5)
Equation nonlinear_constraint_trigonometric_3_6 ;
nonlinear_constraint_trigonometric_3_6..
	(-variable_tan_subst_3_6*variable_voltage_product_real_3_6) =e= (variable_voltage_product_imaginary_3_6)
Equation nonlinear_constraint_trigonometric_4_5 ;
nonlinear_constraint_trigonometric_4_5..
	(-variable_tan_subst_4_5*variable_voltage_product_real_4_5) =e= (variable_voltage_product_imaginary_4_5)
Equation nonlinear_constraint_trigonometric_5_6 ;
nonlinear_constraint_trigonometric_5_6..
	(-variable_tan_subst_5_6*variable_voltage_product_real_5_6) =e= (variable_voltage_product_imaginary_5_6)
Equation nonlinear_constraint_thermal_limit_1_2 ;
nonlinear_constraint_thermal_limit_1_2..
	power(variable_reactive_power_flow_1_2,2) + power(variable_real_power_flow_1_2,2) =l= 0.16
Equation nonlinear_constraint_thermal_limit_2_1 ;
nonlinear_constraint_thermal_limit_2_1..
	power(variable_reactive_power_flow_2_1,2) + power(variable_real_power_flow_2_1,2) =l= 0.16
Equation nonlinear_constraint_thermal_limit_1_4 ;
nonlinear_constraint_thermal_limit_1_4..
	power(variable_reactive_power_flow_1_4,2) + power(variable_real_power_flow_1_4,2) =l= 0.36
Equation nonlinear_constraint_thermal_limit_4_1 ;
nonlinear_constraint_thermal_limit_4_1..
	power(variable_reactive_power_flow_4_1,2) + power(variable_real_power_flow_4_1,2) =l= 0.36
Equation nonlinear_constraint_thermal_limit_1_5 ;
nonlinear_constraint_thermal_limit_1_5..
	power(variable_reactive_power_flow_1_5,2) + power(variable_real_power_flow_1_5,2) =l= 0.16
Equation nonlinear_constraint_thermal_limit_5_1 ;
nonlinear_constraint_thermal_limit_5_1..
	power(variable_reactive_power_flow_5_1,2) + power(variable_real_power_flow_5_1,2) =l= 0.16
Equation nonlinear_constraint_thermal_limit_2_3 ;
nonlinear_constraint_thermal_limit_2_3..
	power(variable_reactive_power_flow_2_3,2) + power(variable_real_power_flow_2_3,2) =l= 0.16
Equation nonlinear_constraint_thermal_limit_3_2 ;
nonlinear_constraint_thermal_limit_3_2..
	power(variable_reactive_power_flow_3_2,2) + power(variable_real_power_flow_3_2,2) =l= 0.16
Equation nonlinear_constraint_thermal_limit_2_4 ;
nonlinear_constraint_thermal_limit_2_4..
	power(variable_reactive_power_flow_2_4,2) + power(variable_real_power_flow_2_4,2) =l= 0.36
Equation nonlinear_constraint_thermal_limit_4_2 ;
nonlinear_constraint_thermal_limit_4_2..
	power(variable_reactive_power_flow_4_2,2) + power(variable_real_power_flow_4_2,2) =l= 0.36
Equation nonlinear_constraint_thermal_limit_2_5 ;
nonlinear_constraint_thermal_limit_2_5..
	power(variable_reactive_power_flow_2_5,2) + power(variable_real_power_flow_2_5,2) =l= 0.09
Equation nonlinear_constraint_thermal_limit_5_2 ;
nonlinear_constraint_thermal_limit_5_2..
	power(variable_reactive_power_flow_5_2,2) + power(variable_real_power_flow_5_2,2) =l= 0.09
Equation nonlinear_constraint_thermal_limit_2_6 ;
nonlinear_constraint_thermal_limit_2_6..
	power(variable_reactive_power_flow_2_6,2) + power(variable_real_power_flow_2_6,2) =l= 0.81
Equation nonlinear_constraint_thermal_limit_6_2 ;
nonlinear_constraint_thermal_limit_6_2..
	power(variable_reactive_power_flow_6_2,2) + power(variable_real_power_flow_6_2,2) =l= 0.81
Equation nonlinear_constraint_thermal_limit_3_5 ;
nonlinear_constraint_thermal_limit_3_5..
	power(variable_reactive_power_flow_3_5,2) + power(variable_real_power_flow_3_5,2) =l= 0.49
Equation nonlinear_constraint_thermal_limit_5_3 ;
nonlinear_constraint_thermal_limit_5_3..
	power(variable_reactive_power_flow_5_3,2) + power(variable_real_power_flow_5_3,2) =l= 0.49
Equation nonlinear_constraint_thermal_limit_3_6 ;
nonlinear_constraint_thermal_limit_3_6..
	power(variable_reactive_power_flow_3_6,2) + power(variable_real_power_flow_3_6,2) =l= 0.64
Equation nonlinear_constraint_thermal_limit_6_3 ;
nonlinear_constraint_thermal_limit_6_3..
	power(variable_reactive_power_flow_6_3,2) + power(variable_real_power_flow_6_3,2) =l= 0.64
Equation nonlinear_constraint_thermal_limit_4_5 ;
nonlinear_constraint_thermal_limit_4_5..
	power(variable_reactive_power_flow_4_5,2) + power(variable_real_power_flow_4_5,2) =l= 0.04
Equation nonlinear_constraint_thermal_limit_5_4 ;
nonlinear_constraint_thermal_limit_5_4..
	power(variable_reactive_power_flow_5_4,2) + power(variable_real_power_flow_5_4,2) =l= 0.04
Equation nonlinear_constraint_thermal_limit_5_6 ;
nonlinear_constraint_thermal_limit_5_6..
	power(variable_reactive_power_flow_5_6,2) + power(variable_real_power_flow_5_6,2) =l= 0.16
Equation nonlinear_constraint_thermal_limit_6_5 ;
nonlinear_constraint_thermal_limit_6_5..
	power(variable_reactive_power_flow_6_5,2) + power(variable_real_power_flow_6_5,2) =l= 0.16
Equation linear_constraint_reference_angle_1 ;
linear_constraint_reference_angle_1..
	(variable_phase_angle_1) =e= (0)
Equation linear_constraint_angle_difference_equation_1_2 ;
linear_constraint_angle_difference_equation_1_2..
	(variable_angle_difference_1_2 - variable_phase_angle_1 + variable_phase_angle_2) =e= (0.0)
Equation linear_constraint_angle_difference_equation_1_4 ;
linear_constraint_angle_difference_equation_1_4..
	(variable_angle_difference_1_4 - variable_phase_angle_1 + variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_angle_difference_equation_1_5 ;
linear_constraint_angle_difference_equation_1_5..
	(variable_angle_difference_1_5 - variable_phase_angle_1 + variable_phase_angle_5) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_3 ;
linear_constraint_angle_difference_equation_2_3..
	(variable_angle_difference_2_3 - variable_phase_angle_2 + variable_phase_angle_3) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_4 ;
linear_constraint_angle_difference_equation_2_4..
	(variable_angle_difference_2_4 - variable_phase_angle_2 + variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_5 ;
linear_constraint_angle_difference_equation_2_5..
	(variable_angle_difference_2_5 - variable_phase_angle_2 + variable_phase_angle_5) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_6 ;
linear_constraint_angle_difference_equation_2_6..
	(variable_angle_difference_2_6 - variable_phase_angle_2 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_3_5 ;
linear_constraint_angle_difference_equation_3_5..
	(variable_angle_difference_3_5 - variable_phase_angle_3 + variable_phase_angle_5) =e= (0.0)
Equation linear_constraint_angle_difference_equation_3_6 ;
linear_constraint_angle_difference_equation_3_6..
	(variable_angle_difference_3_6 - variable_phase_angle_3 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_4_5 ;
linear_constraint_angle_difference_equation_4_5..
	(variable_angle_difference_4_5 - variable_phase_angle_4 + variable_phase_angle_5) =e= (0.0)
Equation linear_constraint_angle_difference_equation_5_6 ;
linear_constraint_angle_difference_equation_5_6..
	(variable_angle_difference_5_6 - variable_phase_angle_5 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_tan_subst_x_value_1_2 ;
linear_constraint_tan_subst_x_value_1_2..
	(variable_angle_difference_1_2) =e= (0.1272*variable_tan_delta_1_2 - 0.0636)
Equation linear_constraint_tan_subst_x_value_1_4 ;
linear_constraint_tan_subst_x_value_1_4..
	(variable_angle_difference_1_4) =e= (0.1272*variable_tan_delta_1_4 - 0.0636)
Equation linear_constraint_tan_subst_x_value_1_5 ;
linear_constraint_tan_subst_x_value_1_5..
	(variable_angle_difference_1_5) =e= (0.1272*variable_tan_delta_1_5 - 0.0636)
Equation linear_constraint_tan_subst_x_value_2_3 ;
linear_constraint_tan_subst_x_value_2_3..
	(variable_angle_difference_2_3) =e= (0.1272*variable_tan_delta_2_3 - 0.0636)
Equation linear_constraint_tan_subst_x_value_2_4 ;
linear_constraint_tan_subst_x_value_2_4..
	(variable_angle_difference_2_4) =e= (0.1272*variable_tan_delta_2_4 - 0.0636)
Equation linear_constraint_tan_subst_x_value_2_5 ;
linear_constraint_tan_subst_x_value_2_5..
	(variable_angle_difference_2_5) =e= (0.1272*variable_tan_delta_2_5 - 0.0636)
Equation linear_constraint_tan_subst_x_value_2_6 ;
linear_constraint_tan_subst_x_value_2_6..
	(variable_angle_difference_2_6) =e= (0.1272*variable_tan_delta_2_6 - 0.0636)
Equation linear_constraint_tan_subst_x_value_3_5 ;
linear_constraint_tan_subst_x_value_3_5..
	(variable_angle_difference_3_5) =e= (0.1272*variable_tan_delta_3_5 - 0.0636)
Equation linear_constraint_tan_subst_x_value_3_6 ;
linear_constraint_tan_subst_x_value_3_6..
	(variable_angle_difference_3_6) =e= (0.1272*variable_tan_delta_3_6 - 0.0636)
Equation linear_constraint_tan_subst_x_value_4_5 ;
linear_constraint_tan_subst_x_value_4_5..
	(variable_angle_difference_4_5) =e= (0.1272*variable_tan_delta_4_5 - 0.0636)
Equation linear_constraint_tan_subst_x_value_5_6 ;
linear_constraint_tan_subst_x_value_5_6..
	(variable_angle_difference_5_6) =e= (0.1272*variable_tan_delta_5_6 - 0.0636)
Equation linear_constraint_tan_subst_y_value_1_2 ;
linear_constraint_tan_subst_y_value_1_2..
	(variable_tan_subst_1_2) =e= (0.127371784253528*variable_tan_delta_1_2 + variable_tan_error_1_2 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_1_4 ;
linear_constraint_tan_subst_y_value_1_4..
	(variable_tan_subst_1_4) =e= (0.127371784253528*variable_tan_delta_1_4 + variable_tan_error_1_4 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_1_5 ;
linear_constraint_tan_subst_y_value_1_5..
	(variable_tan_subst_1_5) =e= (0.127371784253528*variable_tan_delta_1_5 + variable_tan_error_1_5 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_2_3 ;
linear_constraint_tan_subst_y_value_2_3..
	(variable_tan_subst_2_3) =e= (0.127371784253528*variable_tan_delta_2_3 + variable_tan_error_2_3 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_2_4 ;
linear_constraint_tan_subst_y_value_2_4..
	(variable_tan_subst_2_4) =e= (0.127371784253528*variable_tan_delta_2_4 + variable_tan_error_2_4 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_2_5 ;
linear_constraint_tan_subst_y_value_2_5..
	(variable_tan_subst_2_5) =e= (0.127371784253528*variable_tan_delta_2_5 + variable_tan_error_2_5 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_2_6 ;
linear_constraint_tan_subst_y_value_2_6..
	(variable_tan_subst_2_6) =e= (0.127371784253528*variable_tan_delta_2_6 + variable_tan_error_2_6 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_3_5 ;
linear_constraint_tan_subst_y_value_3_5..
	(variable_tan_subst_3_5) =e= (0.127371784253528*variable_tan_delta_3_5 + variable_tan_error_3_5 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_3_6 ;
linear_constraint_tan_subst_y_value_3_6..
	(variable_tan_subst_3_6) =e= (0.127371784253528*variable_tan_delta_3_6 + variable_tan_error_3_6 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_4_5 ;
linear_constraint_tan_subst_y_value_4_5..
	(variable_tan_subst_4_5) =e= (0.127371784253528*variable_tan_delta_4_5 + variable_tan_error_4_5 - 0.0636858921267642)
Equation linear_constraint_tan_subst_y_value_5_6 ;
linear_constraint_tan_subst_y_value_5_6..
	(variable_tan_subst_5_6) =e= (0.127371784253528*variable_tan_delta_5_6 + variable_tan_error_5_6 - 0.0636858921267642)
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	0.4*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_2 ;
linear_constraint_generator_switch_lower_2..
	0.3*variable_generator_switch_2 - variable_real_power_gen_2 =l= 0
Equation linear_constraint_generator_switch_lower_3 ;
linear_constraint_generator_switch_lower_3..
	0.36*variable_generator_switch_3 - variable_real_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	2.0*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_2 ;
linear_constraint_generator_switch_upper_2..
	1.5*variable_generator_switch_2 - variable_real_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_upper_3 ;
linear_constraint_generator_switch_upper_3..
	1.8*variable_generator_switch_3 - variable_real_power_gen_3 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-1.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2 ;
linear_constraint_generator_switch__reactive_lower_2..
	-1.0*variable_generator_switch_2 - variable_reactive_power_gen_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_3 ;
linear_constraint_generator_switch__reactive_lower_3..
	-1.0*variable_generator_switch_3 - variable_reactive_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	1.0*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2 ;
linear_constraint_generator_switch_reactive_upper_2..
	1.0*variable_generator_switch_2 - variable_reactive_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_3 ;
linear_constraint_generator_switch_reactive_upper_3..
	1.0*variable_generator_switch_3 - variable_reactive_power_gen_3 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-1.1025*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_4 ;
linear_constraint_voltage_product_real_lower_1_4..
	-1.1025*variable_transmission_switch_1_4 - variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_5 ;
linear_constraint_voltage_product_real_lower_1_5..
	-1.1025*variable_transmission_switch_1_5 - variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_3 ;
linear_constraint_voltage_product_real_lower_2_3..
	-1.1235*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_4 ;
linear_constraint_voltage_product_real_lower_2_4..
	-1.1025*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_5 ;
linear_constraint_voltage_product_real_lower_2_5..
	-1.1025*variable_transmission_switch_2_5 - variable_voltage_product_real_2_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_6 ;
linear_constraint_voltage_product_real_lower_2_6..
	-1.1025*variable_transmission_switch_2_6 - variable_voltage_product_real_2_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_5 ;
linear_constraint_voltage_product_real_lower_3_5..
	-1.1235*variable_transmission_switch_3_5 - variable_voltage_product_real_3_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_6 ;
linear_constraint_voltage_product_real_lower_3_6..
	-1.1235*variable_transmission_switch_3_6 - variable_voltage_product_real_3_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_5 ;
linear_constraint_voltage_product_real_lower_4_5..
	-1.1025*variable_transmission_switch_4_5 - variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_5_6 ;
linear_constraint_voltage_product_real_lower_5_6..
	-1.1025*variable_transmission_switch_5_6 - variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_2 ;
linear_constraint_voltage_product_real_upper_1_2..
	1.1025*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_4 ;
linear_constraint_voltage_product_real_upper_1_4..
	1.1025*variable_transmission_switch_1_4 - variable_voltage_product_real_1_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_5 ;
linear_constraint_voltage_product_real_upper_1_5..
	1.1025*variable_transmission_switch_1_5 - variable_voltage_product_real_1_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_3 ;
linear_constraint_voltage_product_real_upper_2_3..
	1.1235*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_4 ;
linear_constraint_voltage_product_real_upper_2_4..
	1.1025*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_5 ;
linear_constraint_voltage_product_real_upper_2_5..
	1.1025*variable_transmission_switch_2_5 - variable_voltage_product_real_2_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_6 ;
linear_constraint_voltage_product_real_upper_2_6..
	1.1025*variable_transmission_switch_2_6 - variable_voltage_product_real_2_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_5 ;
linear_constraint_voltage_product_real_upper_3_5..
	1.1235*variable_transmission_switch_3_5 - variable_voltage_product_real_3_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_6 ;
linear_constraint_voltage_product_real_upper_3_6..
	1.1235*variable_transmission_switch_3_6 - variable_voltage_product_real_3_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_5 ;
linear_constraint_voltage_product_real_upper_4_5..
	1.1025*variable_transmission_switch_4_5 - variable_voltage_product_real_4_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_5_6 ;
linear_constraint_voltage_product_real_upper_5_6..
	1.1025*variable_transmission_switch_5_6 - variable_voltage_product_real_5_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_2 ;
linear_constraint_voltage_product_imaginary_lower_1_2..
	-1.1025*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_4 ;
linear_constraint_voltage_product_imaginary_lower_1_4..
	-1.1025*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_5 ;
linear_constraint_voltage_product_imaginary_lower_1_5..
	-1.1025*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_3 ;
linear_constraint_voltage_product_imaginary_lower_2_3..
	-1.1235*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_4 ;
linear_constraint_voltage_product_imaginary_lower_2_4..
	-1.1025*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_5 ;
linear_constraint_voltage_product_imaginary_lower_2_5..
	-1.1025*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_6 ;
linear_constraint_voltage_product_imaginary_lower_2_6..
	-1.1025*variable_transmission_switch_2_6 - variable_voltage_product_imaginary_2_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_5 ;
linear_constraint_voltage_product_imaginary_lower_3_5..
	-1.1235*variable_transmission_switch_3_5 - variable_voltage_product_imaginary_3_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_6 ;
linear_constraint_voltage_product_imaginary_lower_3_6..
	-1.1235*variable_transmission_switch_3_6 - variable_voltage_product_imaginary_3_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_5 ;
linear_constraint_voltage_product_imaginary_lower_4_5..
	-1.1025*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_5_6 ;
linear_constraint_voltage_product_imaginary_lower_5_6..
	-1.1025*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_2 ;
linear_constraint_voltage_product_imaginary_upper_1_2..
	1.1025*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_4 ;
linear_constraint_voltage_product_imaginary_upper_1_4..
	1.1025*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_5 ;
linear_constraint_voltage_product_imaginary_upper_1_5..
	1.1025*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_3 ;
linear_constraint_voltage_product_imaginary_upper_2_3..
	1.1235*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_4 ;
linear_constraint_voltage_product_imaginary_upper_2_4..
	1.1025*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_5 ;
linear_constraint_voltage_product_imaginary_upper_2_5..
	1.1025*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_6 ;
linear_constraint_voltage_product_imaginary_upper_2_6..
	1.1025*variable_transmission_switch_2_6 - variable_voltage_product_imaginary_2_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_5 ;
linear_constraint_voltage_product_imaginary_upper_3_5..
	1.1235*variable_transmission_switch_3_5 - variable_voltage_product_imaginary_3_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_6 ;
linear_constraint_voltage_product_imaginary_upper_3_6..
	1.1235*variable_transmission_switch_3_6 - variable_voltage_product_imaginary_3_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_5 ;
linear_constraint_voltage_product_imaginary_upper_4_5..
	1.1025*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_5_6 ;
linear_constraint_voltage_product_imaginary_upper_5_6..
	1.1025*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =g= 0
Equation linear_constraint_voltage_square_big_m_1_2_1 ;
linear_constraint_voltage_square_big_m_1_2_1..
	-variable_switched_voltage_square_1_2 + 1.1025*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_2 ;
linear_constraint_voltage_square_big_m_1_2_2..
	variable_switched_voltage_square_1_2 - 1.1025*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_3 ;
linear_constraint_voltage_square_big_m_1_2_3..
	-variable_switched_voltage_square_1_2 + 1.1025*variable_transmission_switch_1_2 + variable_voltage_square_1 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_1_2_4 ;
linear_constraint_voltage_square_big_m_1_2_4..
	variable_switched_voltage_square_1_2 - 1.1025*variable_transmission_switch_1_2 - variable_voltage_square_1 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_2_1_1 ;
linear_constraint_voltage_square_big_m_2_1_1..
	-variable_switched_voltage_square_2_1 + 1.1025*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_2 ;
linear_constraint_voltage_square_big_m_2_1_2..
	variable_switched_voltage_square_2_1 - 1.1025*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_3 ;
linear_constraint_voltage_square_big_m_2_1_3..
	-variable_switched_voltage_square_2_1 + 1.1025*variable_transmission_switch_1_2 + variable_voltage_square_2 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_2_1_4 ;
linear_constraint_voltage_square_big_m_2_1_4..
	variable_switched_voltage_square_2_1 - 1.1025*variable_transmission_switch_1_2 - variable_voltage_square_2 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_1_4_1 ;
linear_constraint_voltage_square_big_m_1_4_1..
	-variable_switched_voltage_square_1_4 + 1.1025*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_1_4_2 ;
linear_constraint_voltage_square_big_m_1_4_2..
	variable_switched_voltage_square_1_4 - 1.1025*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_1_4_3 ;
linear_constraint_voltage_square_big_m_1_4_3..
	-variable_switched_voltage_square_1_4 + 1.1025*variable_transmission_switch_1_4 + variable_voltage_square_1 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_1_4_4 ;
linear_constraint_voltage_square_big_m_1_4_4..
	variable_switched_voltage_square_1_4 - 1.1025*variable_transmission_switch_1_4 - variable_voltage_square_1 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_4_1_1 ;
linear_constraint_voltage_square_big_m_4_1_1..
	-variable_switched_voltage_square_4_1 + 0.902499999*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_1_2 ;
linear_constraint_voltage_square_big_m_4_1_2..
	variable_switched_voltage_square_4_1 - 1.1025*variable_transmission_switch_1_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_1_3 ;
linear_constraint_voltage_square_big_m_4_1_3..
	-variable_switched_voltage_square_4_1 + 1.1025*variable_transmission_switch_1_4 + variable_voltage_square_4 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_4_1_4 ;
linear_constraint_voltage_square_big_m_4_1_4..
	variable_switched_voltage_square_4_1 - 0.902499999*variable_transmission_switch_1_4 - variable_voltage_square_4 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_1_5_1 ;
linear_constraint_voltage_square_big_m_1_5_1..
	-variable_switched_voltage_square_1_5 + 1.1025*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_2 ;
linear_constraint_voltage_square_big_m_1_5_2..
	variable_switched_voltage_square_1_5 - 1.1025*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_3 ;
linear_constraint_voltage_square_big_m_1_5_3..
	-variable_switched_voltage_square_1_5 + 1.1025*variable_transmission_switch_1_5 + variable_voltage_square_1 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_1_5_4 ;
linear_constraint_voltage_square_big_m_1_5_4..
	variable_switched_voltage_square_1_5 - 1.1025*variable_transmission_switch_1_5 - variable_voltage_square_1 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_5_1_1 ;
linear_constraint_voltage_square_big_m_5_1_1..
	-variable_switched_voltage_square_5_1 + 0.902499999*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_1_2 ;
linear_constraint_voltage_square_big_m_5_1_2..
	variable_switched_voltage_square_5_1 - 1.1025*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_1_3 ;
linear_constraint_voltage_square_big_m_5_1_3..
	-variable_switched_voltage_square_5_1 + 1.1025*variable_transmission_switch_1_5 + variable_voltage_square_5 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_5_1_4 ;
linear_constraint_voltage_square_big_m_5_1_4..
	variable_switched_voltage_square_5_1 - 0.902499999*variable_transmission_switch_1_5 - variable_voltage_square_5 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_2_3_1 ;
linear_constraint_voltage_square_big_m_2_3_1..
	-variable_switched_voltage_square_2_3 + 1.1025*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_2_3_2 ;
linear_constraint_voltage_square_big_m_2_3_2..
	variable_switched_voltage_square_2_3 - 1.1025*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_2_3_3 ;
linear_constraint_voltage_square_big_m_2_3_3..
	-variable_switched_voltage_square_2_3 + 1.1025*variable_transmission_switch_2_3 + variable_voltage_square_2 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_2_3_4 ;
linear_constraint_voltage_square_big_m_2_3_4..
	variable_switched_voltage_square_2_3 - 1.1025*variable_transmission_switch_2_3 - variable_voltage_square_2 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_3_2_1 ;
linear_constraint_voltage_square_big_m_3_2_1..
	-variable_switched_voltage_square_3_2 + 1.1449*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_2_2 ;
linear_constraint_voltage_square_big_m_3_2_2..
	variable_switched_voltage_square_3_2 - 1.1449*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_2_3 ;
linear_constraint_voltage_square_big_m_3_2_3..
	-variable_switched_voltage_square_3_2 + 1.1449*variable_transmission_switch_2_3 + variable_voltage_square_3 =l= 1.1449
Equation linear_constraint_voltage_square_big_m_3_2_4 ;
linear_constraint_voltage_square_big_m_3_2_4..
	variable_switched_voltage_square_3_2 - 1.1449*variable_transmission_switch_2_3 - variable_voltage_square_3 =l= -1.1449
Equation linear_constraint_voltage_square_big_m_2_4_1 ;
linear_constraint_voltage_square_big_m_2_4_1..
	-variable_switched_voltage_square_2_4 + 1.1025*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_2 ;
linear_constraint_voltage_square_big_m_2_4_2..
	variable_switched_voltage_square_2_4 - 1.1025*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_3 ;
linear_constraint_voltage_square_big_m_2_4_3..
	-variable_switched_voltage_square_2_4 + 1.1025*variable_transmission_switch_2_4 + variable_voltage_square_2 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_2_4_4 ;
linear_constraint_voltage_square_big_m_2_4_4..
	variable_switched_voltage_square_2_4 - 1.1025*variable_transmission_switch_2_4 - variable_voltage_square_2 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_4_2_1 ;
linear_constraint_voltage_square_big_m_4_2_1..
	-variable_switched_voltage_square_4_2 + 0.902499999*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_2_2 ;
linear_constraint_voltage_square_big_m_4_2_2..
	variable_switched_voltage_square_4_2 - 1.1025*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_2_3 ;
linear_constraint_voltage_square_big_m_4_2_3..
	-variable_switched_voltage_square_4_2 + 1.1025*variable_transmission_switch_2_4 + variable_voltage_square_4 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_4_2_4 ;
linear_constraint_voltage_square_big_m_4_2_4..
	variable_switched_voltage_square_4_2 - 0.902499999*variable_transmission_switch_2_4 - variable_voltage_square_4 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_2_5_1 ;
linear_constraint_voltage_square_big_m_2_5_1..
	-variable_switched_voltage_square_2_5 + 1.1025*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_2 ;
linear_constraint_voltage_square_big_m_2_5_2..
	variable_switched_voltage_square_2_5 - 1.1025*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_3 ;
linear_constraint_voltage_square_big_m_2_5_3..
	-variable_switched_voltage_square_2_5 + 1.1025*variable_transmission_switch_2_5 + variable_voltage_square_2 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_2_5_4 ;
linear_constraint_voltage_square_big_m_2_5_4..
	variable_switched_voltage_square_2_5 - 1.1025*variable_transmission_switch_2_5 - variable_voltage_square_2 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_5_2_1 ;
linear_constraint_voltage_square_big_m_5_2_1..
	-variable_switched_voltage_square_5_2 + 0.902499999*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_2_2 ;
linear_constraint_voltage_square_big_m_5_2_2..
	variable_switched_voltage_square_5_2 - 1.1025*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_2_3 ;
linear_constraint_voltage_square_big_m_5_2_3..
	-variable_switched_voltage_square_5_2 + 1.1025*variable_transmission_switch_2_5 + variable_voltage_square_5 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_5_2_4 ;
linear_constraint_voltage_square_big_m_5_2_4..
	variable_switched_voltage_square_5_2 - 0.902499999*variable_transmission_switch_2_5 - variable_voltage_square_5 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_2_6_1 ;
linear_constraint_voltage_square_big_m_2_6_1..
	-variable_switched_voltage_square_2_6 + 1.1025*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_2_6_2 ;
linear_constraint_voltage_square_big_m_2_6_2..
	variable_switched_voltage_square_2_6 - 1.1025*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_2_6_3 ;
linear_constraint_voltage_square_big_m_2_6_3..
	-variable_switched_voltage_square_2_6 + 1.1025*variable_transmission_switch_2_6 + variable_voltage_square_2 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_2_6_4 ;
linear_constraint_voltage_square_big_m_2_6_4..
	variable_switched_voltage_square_2_6 - 1.1025*variable_transmission_switch_2_6 - variable_voltage_square_2 =l= -1.1025
Equation linear_constraint_voltage_square_big_m_6_2_1 ;
linear_constraint_voltage_square_big_m_6_2_1..
	-variable_switched_voltage_square_6_2 + 0.902499999*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_2_2 ;
linear_constraint_voltage_square_big_m_6_2_2..
	variable_switched_voltage_square_6_2 - 1.1025*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_2_3 ;
linear_constraint_voltage_square_big_m_6_2_3..
	-variable_switched_voltage_square_6_2 + 1.1025*variable_transmission_switch_2_6 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_2_4 ;
linear_constraint_voltage_square_big_m_6_2_4..
	variable_switched_voltage_square_6_2 - 0.902499999*variable_transmission_switch_2_6 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_3_5_1 ;
linear_constraint_voltage_square_big_m_3_5_1..
	-variable_switched_voltage_square_3_5 + 1.1449*variable_transmission_switch_3_5 =l= 0
Equation linear_constraint_voltage_square_big_m_3_5_2 ;
linear_constraint_voltage_square_big_m_3_5_2..
	variable_switched_voltage_square_3_5 - 1.1449*variable_transmission_switch_3_5 =l= 0
Equation linear_constraint_voltage_square_big_m_3_5_3 ;
linear_constraint_voltage_square_big_m_3_5_3..
	-variable_switched_voltage_square_3_5 + 1.1449*variable_transmission_switch_3_5 + variable_voltage_square_3 =l= 1.1449
Equation linear_constraint_voltage_square_big_m_3_5_4 ;
linear_constraint_voltage_square_big_m_3_5_4..
	variable_switched_voltage_square_3_5 - 1.1449*variable_transmission_switch_3_5 - variable_voltage_square_3 =l= -1.1449
Equation linear_constraint_voltage_square_big_m_5_3_1 ;
linear_constraint_voltage_square_big_m_5_3_1..
	-variable_switched_voltage_square_5_3 + 0.902499999*variable_transmission_switch_3_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_3_2 ;
linear_constraint_voltage_square_big_m_5_3_2..
	variable_switched_voltage_square_5_3 - 1.1025*variable_transmission_switch_3_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_3_3 ;
linear_constraint_voltage_square_big_m_5_3_3..
	-variable_switched_voltage_square_5_3 + 1.1025*variable_transmission_switch_3_5 + variable_voltage_square_5 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_5_3_4 ;
linear_constraint_voltage_square_big_m_5_3_4..
	variable_switched_voltage_square_5_3 - 0.902499999*variable_transmission_switch_3_5 - variable_voltage_square_5 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_3_6_1 ;
linear_constraint_voltage_square_big_m_3_6_1..
	-variable_switched_voltage_square_3_6 + 1.1449*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_3_6_2 ;
linear_constraint_voltage_square_big_m_3_6_2..
	variable_switched_voltage_square_3_6 - 1.1449*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_3_6_3 ;
linear_constraint_voltage_square_big_m_3_6_3..
	-variable_switched_voltage_square_3_6 + 1.1449*variable_transmission_switch_3_6 + variable_voltage_square_3 =l= 1.1449
Equation linear_constraint_voltage_square_big_m_3_6_4 ;
linear_constraint_voltage_square_big_m_3_6_4..
	variable_switched_voltage_square_3_6 - 1.1449*variable_transmission_switch_3_6 - variable_voltage_square_3 =l= -1.1449
Equation linear_constraint_voltage_square_big_m_6_3_1 ;
linear_constraint_voltage_square_big_m_6_3_1..
	-variable_switched_voltage_square_6_3 + 0.902499999*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_3_2 ;
linear_constraint_voltage_square_big_m_6_3_2..
	variable_switched_voltage_square_6_3 - 1.1025*variable_transmission_switch_3_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_3_3 ;
linear_constraint_voltage_square_big_m_6_3_3..
	-variable_switched_voltage_square_6_3 + 1.1025*variable_transmission_switch_3_6 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_3_4 ;
linear_constraint_voltage_square_big_m_6_3_4..
	variable_switched_voltage_square_6_3 - 0.902499999*variable_transmission_switch_3_6 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_4_5_1 ;
linear_constraint_voltage_square_big_m_4_5_1..
	-variable_switched_voltage_square_4_5 + 0.902499999*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_4_5_2 ;
linear_constraint_voltage_square_big_m_4_5_2..
	variable_switched_voltage_square_4_5 - 1.1025*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_4_5_3 ;
linear_constraint_voltage_square_big_m_4_5_3..
	-variable_switched_voltage_square_4_5 + 1.1025*variable_transmission_switch_4_5 + variable_voltage_square_4 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_4_5_4 ;
linear_constraint_voltage_square_big_m_4_5_4..
	variable_switched_voltage_square_4_5 - 0.902499999*variable_transmission_switch_4_5 - variable_voltage_square_4 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_5_4_1 ;
linear_constraint_voltage_square_big_m_5_4_1..
	-variable_switched_voltage_square_5_4 + 0.902499999*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_4_2 ;
linear_constraint_voltage_square_big_m_5_4_2..
	variable_switched_voltage_square_5_4 - 1.1025*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_4_3 ;
linear_constraint_voltage_square_big_m_5_4_3..
	-variable_switched_voltage_square_5_4 + 1.1025*variable_transmission_switch_4_5 + variable_voltage_square_5 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_5_4_4 ;
linear_constraint_voltage_square_big_m_5_4_4..
	variable_switched_voltage_square_5_4 - 0.902499999*variable_transmission_switch_4_5 - variable_voltage_square_5 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_5_6_1 ;
linear_constraint_voltage_square_big_m_5_6_1..
	-variable_switched_voltage_square_5_6 + 0.902499999*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_5_6_2 ;
linear_constraint_voltage_square_big_m_5_6_2..
	variable_switched_voltage_square_5_6 - 1.1025*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_5_6_3 ;
linear_constraint_voltage_square_big_m_5_6_3..
	-variable_switched_voltage_square_5_6 + 1.1025*variable_transmission_switch_5_6 + variable_voltage_square_5 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_5_6_4 ;
linear_constraint_voltage_square_big_m_5_6_4..
	variable_switched_voltage_square_5_6 - 0.902499999*variable_transmission_switch_5_6 - variable_voltage_square_5 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_6_5_1 ;
linear_constraint_voltage_square_big_m_6_5_1..
	-variable_switched_voltage_square_6_5 + 0.902499999*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_5_2 ;
linear_constraint_voltage_square_big_m_6_5_2..
	variable_switched_voltage_square_6_5 - 1.1025*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_5_3 ;
linear_constraint_voltage_square_big_m_6_5_3..
	-variable_switched_voltage_square_6_5 + 1.1025*variable_transmission_switch_5_6 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_5_4 ;
linear_constraint_voltage_square_big_m_6_5_4..
	variable_switched_voltage_square_6_5 - 0.902499999*variable_transmission_switch_5_6 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 0.525*variable_curtailment_binaries_1_1 - 1.05*variable_curtailment_binaries_1_2 - 1.4*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 0.525*variable_curtailment_binaries_3_1 - 1.05*variable_curtailment_binaries_3_2 - 1.4*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_option_5 ;
linear_constraint_curtailment_option_5..
	(variable_curtailed_feed_in_5 - 0.525*variable_curtailment_binaries_5_1 - 1.05*variable_curtailment_binaries_5_2 - 1.4*variable_curtailment_binaries_5_3) =e= (0)
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
option MIQCP = baron ;
Solve minlp min objval using MIQCP ;
