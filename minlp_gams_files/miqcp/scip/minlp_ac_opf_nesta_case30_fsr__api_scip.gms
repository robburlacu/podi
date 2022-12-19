$title "minlp_ac_opf_nesta_case30_fsr__api"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1 ;
Binary Variable variable_generator_switch_2 ;
Binary Variable variable_generator_switch_13 ;
Binary Variable variable_generator_switch_22 ;
Binary Variable variable_generator_switch_23 ;
Binary Variable variable_generator_switch_27 ;
Free Variable variable_voltage_square_1 ;
	variable_voltage_square_1.lo = 0.9025 ;
	variable_voltage_square_1.up = 1.1025 ;
Free Variable variable_voltage_square_2 ;
	variable_voltage_square_2.lo = 0.9025 ;
	variable_voltage_square_2.up = 1.21 ;
Free Variable variable_voltage_square_3 ;
	variable_voltage_square_3.lo = 0.9025 ;
	variable_voltage_square_3.up = 1.1025 ;
Free Variable variable_voltage_square_4 ;
	variable_voltage_square_4.lo = 0.9025 ;
	variable_voltage_square_4.up = 1.1025 ;
Free Variable variable_voltage_square_5 ;
	variable_voltage_square_5.lo = 0.9025 ;
	variable_voltage_square_5.up = 1.1025 ;
Free Variable variable_voltage_square_6 ;
	variable_voltage_square_6.lo = 0.9025 ;
	variable_voltage_square_6.up = 1.1025 ;
Free Variable variable_voltage_square_7 ;
	variable_voltage_square_7.lo = 0.9025 ;
	variable_voltage_square_7.up = 1.1025 ;
Free Variable variable_voltage_square_8 ;
	variable_voltage_square_8.lo = 0.9025 ;
	variable_voltage_square_8.up = 1.1025 ;
Free Variable variable_voltage_square_9 ;
	variable_voltage_square_9.lo = 0.9025 ;
	variable_voltage_square_9.up = 1.1025 ;
Free Variable variable_voltage_square_10 ;
	variable_voltage_square_10.lo = 0.9025 ;
	variable_voltage_square_10.up = 1.1025 ;
Free Variable variable_voltage_square_11 ;
	variable_voltage_square_11.lo = 0.9025 ;
	variable_voltage_square_11.up = 1.1025 ;
Free Variable variable_voltage_square_12 ;
	variable_voltage_square_12.lo = 0.9025 ;
	variable_voltage_square_12.up = 1.1025 ;
Free Variable variable_voltage_square_13 ;
	variable_voltage_square_13.lo = 0.9025 ;
	variable_voltage_square_13.up = 1.21 ;
Free Variable variable_voltage_square_14 ;
	variable_voltage_square_14.lo = 0.9025 ;
	variable_voltage_square_14.up = 1.1025 ;
Free Variable variable_voltage_square_15 ;
	variable_voltage_square_15.lo = 0.9025 ;
	variable_voltage_square_15.up = 1.1025 ;
Free Variable variable_voltage_square_16 ;
	variable_voltage_square_16.lo = 0.9025 ;
	variable_voltage_square_16.up = 1.1025 ;
Free Variable variable_voltage_square_17 ;
	variable_voltage_square_17.lo = 0.9025 ;
	variable_voltage_square_17.up = 1.1025 ;
Free Variable variable_voltage_square_18 ;
	variable_voltage_square_18.lo = 0.9025 ;
	variable_voltage_square_18.up = 1.1025 ;
Free Variable variable_voltage_square_19 ;
	variable_voltage_square_19.lo = 0.9025 ;
	variable_voltage_square_19.up = 1.1025 ;
Free Variable variable_voltage_square_20 ;
	variable_voltage_square_20.lo = 0.9025 ;
	variable_voltage_square_20.up = 1.1025 ;
Free Variable variable_voltage_square_21 ;
	variable_voltage_square_21.lo = 0.9025 ;
	variable_voltage_square_21.up = 1.1025 ;
Free Variable variable_voltage_square_22 ;
	variable_voltage_square_22.lo = 0.9025 ;
	variable_voltage_square_22.up = 1.21 ;
Free Variable variable_voltage_square_23 ;
	variable_voltage_square_23.lo = 0.9025 ;
	variable_voltage_square_23.up = 1.21 ;
Free Variable variable_voltage_square_24 ;
	variable_voltage_square_24.lo = 0.9025 ;
	variable_voltage_square_24.up = 1.1025 ;
Free Variable variable_voltage_square_25 ;
	variable_voltage_square_25.lo = 0.9025 ;
	variable_voltage_square_25.up = 1.1025 ;
Free Variable variable_voltage_square_26 ;
	variable_voltage_square_26.lo = 0.9025 ;
	variable_voltage_square_26.up = 1.1025 ;
Free Variable variable_voltage_square_27 ;
	variable_voltage_square_27.lo = 0.9025 ;
	variable_voltage_square_27.up = 1.21 ;
Free Variable variable_voltage_square_28 ;
	variable_voltage_square_28.lo = 0.9025 ;
	variable_voltage_square_28.up = 1.1025 ;
Free Variable variable_voltage_square_29 ;
	variable_voltage_square_29.lo = 0.9025 ;
	variable_voltage_square_29.up = 1.1025 ;
Free Variable variable_voltage_square_30 ;
	variable_voltage_square_30.lo = 0.9025 ;
	variable_voltage_square_30.up = 1.1025 ;
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
Free Variable variable_phase_angle_7 ;
	variable_phase_angle_7.lo = -6.2832 ;
	variable_phase_angle_7.up = 6.2832 ;
Free Variable variable_phase_angle_8 ;
	variable_phase_angle_8.lo = -6.2832 ;
	variable_phase_angle_8.up = 6.2832 ;
Free Variable variable_phase_angle_9 ;
	variable_phase_angle_9.lo = -6.2832 ;
	variable_phase_angle_9.up = 6.2832 ;
Free Variable variable_phase_angle_10 ;
	variable_phase_angle_10.lo = -6.2832 ;
	variable_phase_angle_10.up = 6.2832 ;
Free Variable variable_phase_angle_11 ;
	variable_phase_angle_11.lo = -6.2832 ;
	variable_phase_angle_11.up = 6.2832 ;
Free Variable variable_phase_angle_12 ;
	variable_phase_angle_12.lo = -6.2832 ;
	variable_phase_angle_12.up = 6.2832 ;
Free Variable variable_phase_angle_13 ;
	variable_phase_angle_13.lo = -6.2832 ;
	variable_phase_angle_13.up = 6.2832 ;
Free Variable variable_phase_angle_14 ;
	variable_phase_angle_14.lo = -6.2832 ;
	variable_phase_angle_14.up = 6.2832 ;
Free Variable variable_phase_angle_15 ;
	variable_phase_angle_15.lo = -6.2832 ;
	variable_phase_angle_15.up = 6.2832 ;
Free Variable variable_phase_angle_16 ;
	variable_phase_angle_16.lo = -6.2832 ;
	variable_phase_angle_16.up = 6.2832 ;
Free Variable variable_phase_angle_17 ;
	variable_phase_angle_17.lo = -6.2832 ;
	variable_phase_angle_17.up = 6.2832 ;
Free Variable variable_phase_angle_18 ;
	variable_phase_angle_18.lo = -6.2832 ;
	variable_phase_angle_18.up = 6.2832 ;
Free Variable variable_phase_angle_19 ;
	variable_phase_angle_19.lo = -6.2832 ;
	variable_phase_angle_19.up = 6.2832 ;
Free Variable variable_phase_angle_20 ;
	variable_phase_angle_20.lo = -6.2832 ;
	variable_phase_angle_20.up = 6.2832 ;
Free Variable variable_phase_angle_21 ;
	variable_phase_angle_21.lo = -6.2832 ;
	variable_phase_angle_21.up = 6.2832 ;
Free Variable variable_phase_angle_22 ;
	variable_phase_angle_22.lo = -6.2832 ;
	variable_phase_angle_22.up = 6.2832 ;
Free Variable variable_phase_angle_23 ;
	variable_phase_angle_23.lo = -6.2832 ;
	variable_phase_angle_23.up = 6.2832 ;
Free Variable variable_phase_angle_24 ;
	variable_phase_angle_24.lo = -6.2832 ;
	variable_phase_angle_24.up = 6.2832 ;
Free Variable variable_phase_angle_25 ;
	variable_phase_angle_25.lo = -6.2832 ;
	variable_phase_angle_25.up = 6.2832 ;
Free Variable variable_phase_angle_26 ;
	variable_phase_angle_26.lo = -6.2832 ;
	variable_phase_angle_26.up = 6.2832 ;
Free Variable variable_phase_angle_27 ;
	variable_phase_angle_27.lo = -6.2832 ;
	variable_phase_angle_27.up = 6.2832 ;
Free Variable variable_phase_angle_28 ;
	variable_phase_angle_28.lo = -6.2832 ;
	variable_phase_angle_28.up = 6.2832 ;
Free Variable variable_phase_angle_29 ;
	variable_phase_angle_29.lo = -6.2832 ;
	variable_phase_angle_29.up = 6.2832 ;
Free Variable variable_phase_angle_30 ;
	variable_phase_angle_30.lo = -6.2832 ;
	variable_phase_angle_30.up = 6.2832 ;
Free Variable variable_angle_difference_1_2 ;
	variable_angle_difference_1_2.lo = -0.5236 ;
	variable_angle_difference_1_2.up = 0.5236 ;
Free Variable variable_angle_difference_1_3 ;
	variable_angle_difference_1_3.lo = -0.5236 ;
	variable_angle_difference_1_3.up = 0.5236 ;
Free Variable variable_angle_difference_2_4 ;
	variable_angle_difference_2_4.lo = -0.5236 ;
	variable_angle_difference_2_4.up = 0.5236 ;
Free Variable variable_angle_difference_2_5 ;
	variable_angle_difference_2_5.lo = -0.5236 ;
	variable_angle_difference_2_5.up = 0.5236 ;
Free Variable variable_angle_difference_2_6 ;
	variable_angle_difference_2_6.lo = -0.5236 ;
	variable_angle_difference_2_6.up = 0.5236 ;
Free Variable variable_angle_difference_3_4 ;
	variable_angle_difference_3_4.lo = -0.5236 ;
	variable_angle_difference_3_4.up = 0.5236 ;
Free Variable variable_angle_difference_4_6 ;
	variable_angle_difference_4_6.lo = -0.5236 ;
	variable_angle_difference_4_6.up = 0.5236 ;
Free Variable variable_angle_difference_4_12 ;
	variable_angle_difference_4_12.lo = -0.5236 ;
	variable_angle_difference_4_12.up = 0.5236 ;
Free Variable variable_angle_difference_5_7 ;
	variable_angle_difference_5_7.lo = -0.5236 ;
	variable_angle_difference_5_7.up = 0.5236 ;
Free Variable variable_angle_difference_6_7 ;
	variable_angle_difference_6_7.lo = -0.5236 ;
	variable_angle_difference_6_7.up = 0.5236 ;
Free Variable variable_angle_difference_6_8 ;
	variable_angle_difference_6_8.lo = -0.5236 ;
	variable_angle_difference_6_8.up = 0.5236 ;
Free Variable variable_angle_difference_6_9 ;
	variable_angle_difference_6_9.lo = -0.5236 ;
	variable_angle_difference_6_9.up = 0.5236 ;
Free Variable variable_angle_difference_6_10 ;
	variable_angle_difference_6_10.lo = -0.5236 ;
	variable_angle_difference_6_10.up = 0.5236 ;
Free Variable variable_angle_difference_6_28 ;
	variable_angle_difference_6_28.lo = -0.5236 ;
	variable_angle_difference_6_28.up = 0.5236 ;
Free Variable variable_angle_difference_8_28 ;
	variable_angle_difference_8_28.lo = -0.5236 ;
	variable_angle_difference_8_28.up = 0.5236 ;
Free Variable variable_angle_difference_9_11 ;
	variable_angle_difference_9_11.lo = -0.5236 ;
	variable_angle_difference_9_11.up = 0.5236 ;
Free Variable variable_angle_difference_9_10 ;
	variable_angle_difference_9_10.lo = -0.5236 ;
	variable_angle_difference_9_10.up = 0.5236 ;
Free Variable variable_angle_difference_10_20 ;
	variable_angle_difference_10_20.lo = -0.5236 ;
	variable_angle_difference_10_20.up = 0.5236 ;
Free Variable variable_angle_difference_10_17 ;
	variable_angle_difference_10_17.lo = -0.5236 ;
	variable_angle_difference_10_17.up = 0.5236 ;
Free Variable variable_angle_difference_10_21 ;
	variable_angle_difference_10_21.lo = -0.5236 ;
	variable_angle_difference_10_21.up = 0.5236 ;
Free Variable variable_angle_difference_10_22 ;
	variable_angle_difference_10_22.lo = -0.5236 ;
	variable_angle_difference_10_22.up = 0.5236 ;
Free Variable variable_angle_difference_12_13 ;
	variable_angle_difference_12_13.lo = -0.5236 ;
	variable_angle_difference_12_13.up = 0.5236 ;
Free Variable variable_angle_difference_12_14 ;
	variable_angle_difference_12_14.lo = -0.5236 ;
	variable_angle_difference_12_14.up = 0.5236 ;
Free Variable variable_angle_difference_12_15 ;
	variable_angle_difference_12_15.lo = -0.5236 ;
	variable_angle_difference_12_15.up = 0.5236 ;
Free Variable variable_angle_difference_12_16 ;
	variable_angle_difference_12_16.lo = -0.5236 ;
	variable_angle_difference_12_16.up = 0.5236 ;
Free Variable variable_angle_difference_14_15 ;
	variable_angle_difference_14_15.lo = -0.5236 ;
	variable_angle_difference_14_15.up = 0.5236 ;
Free Variable variable_angle_difference_15_18 ;
	variable_angle_difference_15_18.lo = -0.5236 ;
	variable_angle_difference_15_18.up = 0.5236 ;
Free Variable variable_angle_difference_15_23 ;
	variable_angle_difference_15_23.lo = -0.5236 ;
	variable_angle_difference_15_23.up = 0.5236 ;
Free Variable variable_angle_difference_16_17 ;
	variable_angle_difference_16_17.lo = -0.5236 ;
	variable_angle_difference_16_17.up = 0.5236 ;
Free Variable variable_angle_difference_18_19 ;
	variable_angle_difference_18_19.lo = -0.5236 ;
	variable_angle_difference_18_19.up = 0.5236 ;
Free Variable variable_angle_difference_19_20 ;
	variable_angle_difference_19_20.lo = -0.5236 ;
	variable_angle_difference_19_20.up = 0.5236 ;
Free Variable variable_angle_difference_21_22 ;
	variable_angle_difference_21_22.lo = -0.5236 ;
	variable_angle_difference_21_22.up = 0.5236 ;
Free Variable variable_angle_difference_22_24 ;
	variable_angle_difference_22_24.lo = -0.5236 ;
	variable_angle_difference_22_24.up = 0.5236 ;
Free Variable variable_angle_difference_23_24 ;
	variable_angle_difference_23_24.lo = -0.5236 ;
	variable_angle_difference_23_24.up = 0.5236 ;
Free Variable variable_angle_difference_24_25 ;
	variable_angle_difference_24_25.lo = -0.5236 ;
	variable_angle_difference_24_25.up = 0.5236 ;
Free Variable variable_angle_difference_25_26 ;
	variable_angle_difference_25_26.lo = -0.5236 ;
	variable_angle_difference_25_26.up = 0.5236 ;
Free Variable variable_angle_difference_25_27 ;
	variable_angle_difference_25_27.lo = -0.5236 ;
	variable_angle_difference_25_27.up = 0.5236 ;
Free Variable variable_angle_difference_27_28 ;
	variable_angle_difference_27_28.lo = -0.5236 ;
	variable_angle_difference_27_28.up = 0.5236 ;
Free Variable variable_angle_difference_27_29 ;
	variable_angle_difference_27_29.lo = -0.5236 ;
	variable_angle_difference_27_29.up = 0.5236 ;
Free Variable variable_angle_difference_27_30 ;
	variable_angle_difference_27_30.lo = -0.5236 ;
	variable_angle_difference_27_30.up = 0.5236 ;
Free Variable variable_angle_difference_29_30 ;
	variable_angle_difference_29_30.lo = -0.5236 ;
	variable_angle_difference_29_30.up = 0.5236 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 2.31 ;
Free Variable variable_real_power_gen_2 ;
	variable_real_power_gen_2.lo = 0.0 ;
	variable_real_power_gen_2.up = 0.81 ;
Free Variable variable_real_power_gen_13 ;
	variable_real_power_gen_13.lo = 0.0 ;
	variable_real_power_gen_13.up = 1.67 ;
Free Variable variable_real_power_gen_22 ;
	variable_real_power_gen_22.lo = 0.0 ;
	variable_real_power_gen_22.up = 0.34 ;
Free Variable variable_real_power_gen_23 ;
	variable_real_power_gen_23.lo = 0.0 ;
	variable_real_power_gen_23.up = 0.5 ;
Free Variable variable_real_power_gen_27 ;
	variable_real_power_gen_27.lo = 0.0 ;
	variable_real_power_gen_27.up = 2.56 ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -1.704 ;
	variable_reactive_power_gen_1.up = 2.5 ;
Free Variable variable_reactive_power_gen_2 ;
	variable_reactive_power_gen_2.lo = -1.596 ;
	variable_reactive_power_gen_2.up = 1.596 ;
Free Variable variable_reactive_power_gen_13 ;
	variable_reactive_power_gen_13.lo = -0.84 ;
	variable_reactive_power_gen_13.up = 0.84 ;
Free Variable variable_reactive_power_gen_22 ;
	variable_reactive_power_gen_22.lo = -0.3 ;
	variable_reactive_power_gen_22.up = 0.8 ;
Free Variable variable_reactive_power_gen_23 ;
	variable_reactive_power_gen_23.lo = -0.25 ;
	variable_reactive_power_gen_23.up = 0.5 ;
Free Variable variable_reactive_power_gen_27 ;
	variable_reactive_power_gen_27.lo = -1.28 ;
	variable_reactive_power_gen_27.up = 1.28 ;
Free Variable variable_tan_subst_1_2 ;
	variable_tan_subst_1_2.lo = -0.5773519 ;
	variable_tan_subst_1_2.up = 0.5773519 ;
Free Variable variable_tan_subst_1_3 ;
	variable_tan_subst_1_3.lo = -0.5773519 ;
	variable_tan_subst_1_3.up = 0.5773519 ;
Free Variable variable_tan_subst_2_4 ;
	variable_tan_subst_2_4.lo = -0.5773519 ;
	variable_tan_subst_2_4.up = 0.5773519 ;
Free Variable variable_tan_subst_2_5 ;
	variable_tan_subst_2_5.lo = -0.5773519 ;
	variable_tan_subst_2_5.up = 0.5773519 ;
Free Variable variable_tan_subst_2_6 ;
	variable_tan_subst_2_6.lo = -0.5773519 ;
	variable_tan_subst_2_6.up = 0.5773519 ;
Free Variable variable_tan_subst_3_4 ;
	variable_tan_subst_3_4.lo = -0.5773519 ;
	variable_tan_subst_3_4.up = 0.5773519 ;
Free Variable variable_tan_subst_4_6 ;
	variable_tan_subst_4_6.lo = -0.5773519 ;
	variable_tan_subst_4_6.up = 0.5773519 ;
Free Variable variable_tan_subst_4_12 ;
	variable_tan_subst_4_12.lo = -0.5773519 ;
	variable_tan_subst_4_12.up = 0.5773519 ;
Free Variable variable_tan_subst_5_7 ;
	variable_tan_subst_5_7.lo = -0.5773519 ;
	variable_tan_subst_5_7.up = 0.5773519 ;
Free Variable variable_tan_subst_6_7 ;
	variable_tan_subst_6_7.lo = -0.5773519 ;
	variable_tan_subst_6_7.up = 0.5773519 ;
Free Variable variable_tan_subst_6_8 ;
	variable_tan_subst_6_8.lo = -0.5773519 ;
	variable_tan_subst_6_8.up = 0.5773519 ;
Free Variable variable_tan_subst_6_9 ;
	variable_tan_subst_6_9.lo = -0.5773519 ;
	variable_tan_subst_6_9.up = 0.5773519 ;
Free Variable variable_tan_subst_6_10 ;
	variable_tan_subst_6_10.lo = -0.5773519 ;
	variable_tan_subst_6_10.up = 0.5773519 ;
Free Variable variable_tan_subst_6_28 ;
	variable_tan_subst_6_28.lo = -0.5773519 ;
	variable_tan_subst_6_28.up = 0.5773519 ;
Free Variable variable_tan_subst_8_28 ;
	variable_tan_subst_8_28.lo = -0.5773519 ;
	variable_tan_subst_8_28.up = 0.5773519 ;
Free Variable variable_tan_subst_9_11 ;
	variable_tan_subst_9_11.lo = -0.5773519 ;
	variable_tan_subst_9_11.up = 0.5773519 ;
Free Variable variable_tan_subst_9_10 ;
	variable_tan_subst_9_10.lo = -0.5773519 ;
	variable_tan_subst_9_10.up = 0.5773519 ;
Free Variable variable_tan_subst_10_20 ;
	variable_tan_subst_10_20.lo = -0.5773519 ;
	variable_tan_subst_10_20.up = 0.5773519 ;
Free Variable variable_tan_subst_10_17 ;
	variable_tan_subst_10_17.lo = -0.5773519 ;
	variable_tan_subst_10_17.up = 0.5773519 ;
Free Variable variable_tan_subst_10_21 ;
	variable_tan_subst_10_21.lo = -0.5773519 ;
	variable_tan_subst_10_21.up = 0.5773519 ;
Free Variable variable_tan_subst_10_22 ;
	variable_tan_subst_10_22.lo = -0.5773519 ;
	variable_tan_subst_10_22.up = 0.5773519 ;
Free Variable variable_tan_subst_12_13 ;
	variable_tan_subst_12_13.lo = -0.5773519 ;
	variable_tan_subst_12_13.up = 0.5773519 ;
Free Variable variable_tan_subst_12_14 ;
	variable_tan_subst_12_14.lo = -0.5773519 ;
	variable_tan_subst_12_14.up = 0.5773519 ;
Free Variable variable_tan_subst_12_15 ;
	variable_tan_subst_12_15.lo = -0.5773519 ;
	variable_tan_subst_12_15.up = 0.5773519 ;
Free Variable variable_tan_subst_12_16 ;
	variable_tan_subst_12_16.lo = -0.5773519 ;
	variable_tan_subst_12_16.up = 0.5773519 ;
Free Variable variable_tan_subst_14_15 ;
	variable_tan_subst_14_15.lo = -0.5773519 ;
	variable_tan_subst_14_15.up = 0.5773519 ;
Free Variable variable_tan_subst_15_18 ;
	variable_tan_subst_15_18.lo = -0.5773519 ;
	variable_tan_subst_15_18.up = 0.5773519 ;
Free Variable variable_tan_subst_15_23 ;
	variable_tan_subst_15_23.lo = -0.5773519 ;
	variable_tan_subst_15_23.up = 0.5773519 ;
Free Variable variable_tan_subst_16_17 ;
	variable_tan_subst_16_17.lo = -0.5773519 ;
	variable_tan_subst_16_17.up = 0.5773519 ;
Free Variable variable_tan_subst_18_19 ;
	variable_tan_subst_18_19.lo = -0.5773519 ;
	variable_tan_subst_18_19.up = 0.5773519 ;
Free Variable variable_tan_subst_19_20 ;
	variable_tan_subst_19_20.lo = -0.5773519 ;
	variable_tan_subst_19_20.up = 0.5773519 ;
Free Variable variable_tan_subst_21_22 ;
	variable_tan_subst_21_22.lo = -0.5773519 ;
	variable_tan_subst_21_22.up = 0.5773519 ;
Free Variable variable_tan_subst_22_24 ;
	variable_tan_subst_22_24.lo = -0.5773519 ;
	variable_tan_subst_22_24.up = 0.5773519 ;
Free Variable variable_tan_subst_23_24 ;
	variable_tan_subst_23_24.lo = -0.5773519 ;
	variable_tan_subst_23_24.up = 0.5773519 ;
Free Variable variable_tan_subst_24_25 ;
	variable_tan_subst_24_25.lo = -0.5773519 ;
	variable_tan_subst_24_25.up = 0.5773519 ;
Free Variable variable_tan_subst_25_26 ;
	variable_tan_subst_25_26.lo = -0.5773519 ;
	variable_tan_subst_25_26.up = 0.5773519 ;
Free Variable variable_tan_subst_25_27 ;
	variable_tan_subst_25_27.lo = -0.5773519 ;
	variable_tan_subst_25_27.up = 0.5773519 ;
Free Variable variable_tan_subst_27_28 ;
	variable_tan_subst_27_28.lo = -0.5773519 ;
	variable_tan_subst_27_28.up = 0.5773519 ;
Free Variable variable_tan_subst_27_29 ;
	variable_tan_subst_27_29.lo = -0.5773519 ;
	variable_tan_subst_27_29.up = 0.5773519 ;
Free Variable variable_tan_subst_27_30 ;
	variable_tan_subst_27_30.lo = -0.5773519 ;
	variable_tan_subst_27_30.up = 0.5773519 ;
Free Variable variable_tan_subst_29_30 ;
	variable_tan_subst_29_30.lo = -0.5773519 ;
	variable_tan_subst_29_30.up = 0.5773519 ;
Free Variable variable_tan_delta_1_2 ;
	variable_tan_delta_1_2.lo = 0.0 ;
	variable_tan_delta_1_2.up = 1.0 ;
Free Variable variable_tan_delta_1_3 ;
	variable_tan_delta_1_3.lo = 0.0 ;
	variable_tan_delta_1_3.up = 1.0 ;
Free Variable variable_tan_delta_2_4 ;
	variable_tan_delta_2_4.lo = 0.0 ;
	variable_tan_delta_2_4.up = 1.0 ;
Free Variable variable_tan_delta_2_5 ;
	variable_tan_delta_2_5.lo = 0.0 ;
	variable_tan_delta_2_5.up = 1.0 ;
Free Variable variable_tan_delta_2_6 ;
	variable_tan_delta_2_6.lo = 0.0 ;
	variable_tan_delta_2_6.up = 1.0 ;
Free Variable variable_tan_delta_3_4 ;
	variable_tan_delta_3_4.lo = 0.0 ;
	variable_tan_delta_3_4.up = 1.0 ;
Free Variable variable_tan_delta_4_6 ;
	variable_tan_delta_4_6.lo = 0.0 ;
	variable_tan_delta_4_6.up = 1.0 ;
Free Variable variable_tan_delta_4_12 ;
	variable_tan_delta_4_12.lo = 0.0 ;
	variable_tan_delta_4_12.up = 1.0 ;
Free Variable variable_tan_delta_5_7 ;
	variable_tan_delta_5_7.lo = 0.0 ;
	variable_tan_delta_5_7.up = 1.0 ;
Free Variable variable_tan_delta_6_7 ;
	variable_tan_delta_6_7.lo = 0.0 ;
	variable_tan_delta_6_7.up = 1.0 ;
Free Variable variable_tan_delta_6_8 ;
	variable_tan_delta_6_8.lo = 0.0 ;
	variable_tan_delta_6_8.up = 1.0 ;
Free Variable variable_tan_delta_6_9 ;
	variable_tan_delta_6_9.lo = 0.0 ;
	variable_tan_delta_6_9.up = 1.0 ;
Free Variable variable_tan_delta_6_10 ;
	variable_tan_delta_6_10.lo = 0.0 ;
	variable_tan_delta_6_10.up = 1.0 ;
Free Variable variable_tan_delta_6_28 ;
	variable_tan_delta_6_28.lo = 0.0 ;
	variable_tan_delta_6_28.up = 1.0 ;
Free Variable variable_tan_delta_8_28 ;
	variable_tan_delta_8_28.lo = 0.0 ;
	variable_tan_delta_8_28.up = 1.0 ;
Free Variable variable_tan_delta_9_11 ;
	variable_tan_delta_9_11.lo = 0.0 ;
	variable_tan_delta_9_11.up = 1.0 ;
Free Variable variable_tan_delta_9_10 ;
	variable_tan_delta_9_10.lo = 0.0 ;
	variable_tan_delta_9_10.up = 1.0 ;
Free Variable variable_tan_delta_10_20 ;
	variable_tan_delta_10_20.lo = 0.0 ;
	variable_tan_delta_10_20.up = 1.0 ;
Free Variable variable_tan_delta_10_17 ;
	variable_tan_delta_10_17.lo = 0.0 ;
	variable_tan_delta_10_17.up = 1.0 ;
Free Variable variable_tan_delta_10_21 ;
	variable_tan_delta_10_21.lo = 0.0 ;
	variable_tan_delta_10_21.up = 1.0 ;
Free Variable variable_tan_delta_10_22 ;
	variable_tan_delta_10_22.lo = 0.0 ;
	variable_tan_delta_10_22.up = 1.0 ;
Free Variable variable_tan_delta_12_13 ;
	variable_tan_delta_12_13.lo = 0.0 ;
	variable_tan_delta_12_13.up = 1.0 ;
Free Variable variable_tan_delta_12_14 ;
	variable_tan_delta_12_14.lo = 0.0 ;
	variable_tan_delta_12_14.up = 1.0 ;
Free Variable variable_tan_delta_12_15 ;
	variable_tan_delta_12_15.lo = 0.0 ;
	variable_tan_delta_12_15.up = 1.0 ;
Free Variable variable_tan_delta_12_16 ;
	variable_tan_delta_12_16.lo = 0.0 ;
	variable_tan_delta_12_16.up = 1.0 ;
Free Variable variable_tan_delta_14_15 ;
	variable_tan_delta_14_15.lo = 0.0 ;
	variable_tan_delta_14_15.up = 1.0 ;
Free Variable variable_tan_delta_15_18 ;
	variable_tan_delta_15_18.lo = 0.0 ;
	variable_tan_delta_15_18.up = 1.0 ;
Free Variable variable_tan_delta_15_23 ;
	variable_tan_delta_15_23.lo = 0.0 ;
	variable_tan_delta_15_23.up = 1.0 ;
Free Variable variable_tan_delta_16_17 ;
	variable_tan_delta_16_17.lo = 0.0 ;
	variable_tan_delta_16_17.up = 1.0 ;
Free Variable variable_tan_delta_18_19 ;
	variable_tan_delta_18_19.lo = 0.0 ;
	variable_tan_delta_18_19.up = 1.0 ;
Free Variable variable_tan_delta_19_20 ;
	variable_tan_delta_19_20.lo = 0.0 ;
	variable_tan_delta_19_20.up = 1.0 ;
Free Variable variable_tan_delta_21_22 ;
	variable_tan_delta_21_22.lo = 0.0 ;
	variable_tan_delta_21_22.up = 1.0 ;
Free Variable variable_tan_delta_22_24 ;
	variable_tan_delta_22_24.lo = 0.0 ;
	variable_tan_delta_22_24.up = 1.0 ;
Free Variable variable_tan_delta_23_24 ;
	variable_tan_delta_23_24.lo = 0.0 ;
	variable_tan_delta_23_24.up = 1.0 ;
Free Variable variable_tan_delta_24_25 ;
	variable_tan_delta_24_25.lo = 0.0 ;
	variable_tan_delta_24_25.up = 1.0 ;
Free Variable variable_tan_delta_25_26 ;
	variable_tan_delta_25_26.lo = 0.0 ;
	variable_tan_delta_25_26.up = 1.0 ;
Free Variable variable_tan_delta_25_27 ;
	variable_tan_delta_25_27.lo = 0.0 ;
	variable_tan_delta_25_27.up = 1.0 ;
Free Variable variable_tan_delta_27_28 ;
	variable_tan_delta_27_28.lo = 0.0 ;
	variable_tan_delta_27_28.up = 1.0 ;
Free Variable variable_tan_delta_27_29 ;
	variable_tan_delta_27_29.lo = 0.0 ;
	variable_tan_delta_27_29.up = 1.0 ;
Free Variable variable_tan_delta_27_30 ;
	variable_tan_delta_27_30.lo = 0.0 ;
	variable_tan_delta_27_30.up = 1.0 ;
Free Variable variable_tan_delta_29_30 ;
	variable_tan_delta_29_30.lo = 0.0 ;
	variable_tan_delta_29_30.up = 1.0 ;
Free Variable variable_tan_error_1_2 ;
	variable_tan_error_1_2.lo = -0.0214966 ;
	variable_tan_error_1_2.up = 0.0214966 ;
Free Variable variable_tan_error_1_3 ;
	variable_tan_error_1_3.lo = -0.0214966 ;
	variable_tan_error_1_3.up = 0.0214966 ;
Free Variable variable_tan_error_2_4 ;
	variable_tan_error_2_4.lo = -0.0214966 ;
	variable_tan_error_2_4.up = 0.0214966 ;
Free Variable variable_tan_error_2_5 ;
	variable_tan_error_2_5.lo = -0.0214966 ;
	variable_tan_error_2_5.up = 0.0214966 ;
Free Variable variable_tan_error_2_6 ;
	variable_tan_error_2_6.lo = -0.0214966 ;
	variable_tan_error_2_6.up = 0.0214966 ;
Free Variable variable_tan_error_3_4 ;
	variable_tan_error_3_4.lo = -0.0214966 ;
	variable_tan_error_3_4.up = 0.0214966 ;
Free Variable variable_tan_error_4_6 ;
	variable_tan_error_4_6.lo = -0.0214966 ;
	variable_tan_error_4_6.up = 0.0214966 ;
Free Variable variable_tan_error_4_12 ;
	variable_tan_error_4_12.lo = -0.0214966 ;
	variable_tan_error_4_12.up = 0.0214966 ;
Free Variable variable_tan_error_5_7 ;
	variable_tan_error_5_7.lo = -0.0214966 ;
	variable_tan_error_5_7.up = 0.0214966 ;
Free Variable variable_tan_error_6_7 ;
	variable_tan_error_6_7.lo = -0.0214966 ;
	variable_tan_error_6_7.up = 0.0214966 ;
Free Variable variable_tan_error_6_8 ;
	variable_tan_error_6_8.lo = -0.0214966 ;
	variable_tan_error_6_8.up = 0.0214966 ;
Free Variable variable_tan_error_6_9 ;
	variable_tan_error_6_9.lo = -0.0214966 ;
	variable_tan_error_6_9.up = 0.0214966 ;
Free Variable variable_tan_error_6_10 ;
	variable_tan_error_6_10.lo = -0.0214966 ;
	variable_tan_error_6_10.up = 0.0214966 ;
Free Variable variable_tan_error_6_28 ;
	variable_tan_error_6_28.lo = -0.0214966 ;
	variable_tan_error_6_28.up = 0.0214966 ;
Free Variable variable_tan_error_8_28 ;
	variable_tan_error_8_28.lo = -0.0214966 ;
	variable_tan_error_8_28.up = 0.0214966 ;
Free Variable variable_tan_error_9_11 ;
	variable_tan_error_9_11.lo = -0.0214966 ;
	variable_tan_error_9_11.up = 0.0214966 ;
Free Variable variable_tan_error_9_10 ;
	variable_tan_error_9_10.lo = -0.0214966 ;
	variable_tan_error_9_10.up = 0.0214966 ;
Free Variable variable_tan_error_10_20 ;
	variable_tan_error_10_20.lo = -0.0214966 ;
	variable_tan_error_10_20.up = 0.0214966 ;
Free Variable variable_tan_error_10_17 ;
	variable_tan_error_10_17.lo = -0.0214966 ;
	variable_tan_error_10_17.up = 0.0214966 ;
Free Variable variable_tan_error_10_21 ;
	variable_tan_error_10_21.lo = -0.0214966 ;
	variable_tan_error_10_21.up = 0.0214966 ;
Free Variable variable_tan_error_10_22 ;
	variable_tan_error_10_22.lo = -0.0214966 ;
	variable_tan_error_10_22.up = 0.0214966 ;
Free Variable variable_tan_error_12_13 ;
	variable_tan_error_12_13.lo = -0.0214966 ;
	variable_tan_error_12_13.up = 0.0214966 ;
Free Variable variable_tan_error_12_14 ;
	variable_tan_error_12_14.lo = -0.0214966 ;
	variable_tan_error_12_14.up = 0.0214966 ;
Free Variable variable_tan_error_12_15 ;
	variable_tan_error_12_15.lo = -0.0214966 ;
	variable_tan_error_12_15.up = 0.0214966 ;
Free Variable variable_tan_error_12_16 ;
	variable_tan_error_12_16.lo = -0.0214966 ;
	variable_tan_error_12_16.up = 0.0214966 ;
Free Variable variable_tan_error_14_15 ;
	variable_tan_error_14_15.lo = -0.0214966 ;
	variable_tan_error_14_15.up = 0.0214966 ;
Free Variable variable_tan_error_15_18 ;
	variable_tan_error_15_18.lo = -0.0214966 ;
	variable_tan_error_15_18.up = 0.0214966 ;
Free Variable variable_tan_error_15_23 ;
	variable_tan_error_15_23.lo = -0.0214966 ;
	variable_tan_error_15_23.up = 0.0214966 ;
Free Variable variable_tan_error_16_17 ;
	variable_tan_error_16_17.lo = -0.0214966 ;
	variable_tan_error_16_17.up = 0.0214966 ;
Free Variable variable_tan_error_18_19 ;
	variable_tan_error_18_19.lo = -0.0214966 ;
	variable_tan_error_18_19.up = 0.0214966 ;
Free Variable variable_tan_error_19_20 ;
	variable_tan_error_19_20.lo = -0.0214966 ;
	variable_tan_error_19_20.up = 0.0214966 ;
Free Variable variable_tan_error_21_22 ;
	variable_tan_error_21_22.lo = -0.0214966 ;
	variable_tan_error_21_22.up = 0.0214966 ;
Free Variable variable_tan_error_22_24 ;
	variable_tan_error_22_24.lo = -0.0214966 ;
	variable_tan_error_22_24.up = 0.0214966 ;
Free Variable variable_tan_error_23_24 ;
	variable_tan_error_23_24.lo = -0.0214966 ;
	variable_tan_error_23_24.up = 0.0214966 ;
Free Variable variable_tan_error_24_25 ;
	variable_tan_error_24_25.lo = -0.0214966 ;
	variable_tan_error_24_25.up = 0.0214966 ;
Free Variable variable_tan_error_25_26 ;
	variable_tan_error_25_26.lo = -0.0214966 ;
	variable_tan_error_25_26.up = 0.0214966 ;
Free Variable variable_tan_error_25_27 ;
	variable_tan_error_25_27.lo = -0.0214966 ;
	variable_tan_error_25_27.up = 0.0214966 ;
Free Variable variable_tan_error_27_28 ;
	variable_tan_error_27_28.lo = -0.0214966 ;
	variable_tan_error_27_28.up = 0.0214966 ;
Free Variable variable_tan_error_27_29 ;
	variable_tan_error_27_29.lo = -0.0214966 ;
	variable_tan_error_27_29.up = 0.0214966 ;
Free Variable variable_tan_error_27_30 ;
	variable_tan_error_27_30.lo = -0.0214966 ;
	variable_tan_error_27_30.up = 0.0214966 ;
Free Variable variable_tan_error_29_30 ;
	variable_tan_error_29_30.lo = -0.0214966 ;
	variable_tan_error_29_30.up = 0.0214966 ;
Binary Variable variable_transmission_switch_1_2 ;
Binary Variable variable_transmission_switch_1_3 ;
Binary Variable variable_transmission_switch_2_4 ;
Binary Variable variable_transmission_switch_2_5 ;
Binary Variable variable_transmission_switch_2_6 ;
Binary Variable variable_transmission_switch_3_4 ;
Binary Variable variable_transmission_switch_4_6 ;
Binary Variable variable_transmission_switch_4_12 ;
Binary Variable variable_transmission_switch_5_7 ;
Binary Variable variable_transmission_switch_6_7 ;
Binary Variable variable_transmission_switch_6_8 ;
Binary Variable variable_transmission_switch_6_9 ;
Binary Variable variable_transmission_switch_6_10 ;
Binary Variable variable_transmission_switch_6_28 ;
Binary Variable variable_transmission_switch_8_28 ;
Binary Variable variable_transmission_switch_9_11 ;
Binary Variable variable_transmission_switch_9_10 ;
Binary Variable variable_transmission_switch_10_20 ;
Binary Variable variable_transmission_switch_10_17 ;
Binary Variable variable_transmission_switch_10_21 ;
Binary Variable variable_transmission_switch_10_22 ;
Binary Variable variable_transmission_switch_12_13 ;
Binary Variable variable_transmission_switch_12_14 ;
Binary Variable variable_transmission_switch_12_15 ;
Binary Variable variable_transmission_switch_12_16 ;
Binary Variable variable_transmission_switch_14_15 ;
Binary Variable variable_transmission_switch_15_18 ;
Binary Variable variable_transmission_switch_15_23 ;
Binary Variable variable_transmission_switch_16_17 ;
Binary Variable variable_transmission_switch_18_19 ;
Binary Variable variable_transmission_switch_19_20 ;
Binary Variable variable_transmission_switch_21_22 ;
Binary Variable variable_transmission_switch_22_24 ;
Binary Variable variable_transmission_switch_23_24 ;
Binary Variable variable_transmission_switch_24_25 ;
Binary Variable variable_transmission_switch_25_26 ;
Binary Variable variable_transmission_switch_25_27 ;
Binary Variable variable_transmission_switch_27_28 ;
Binary Variable variable_transmission_switch_27_29 ;
Binary Variable variable_transmission_switch_27_30 ;
Binary Variable variable_transmission_switch_29_30 ;
Free Variable variable_switched_voltage_square_1_2 ;
	variable_switched_voltage_square_1_2.lo = 0.0 ;
	variable_switched_voltage_square_1_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_1 ;
	variable_switched_voltage_square_2_1.lo = 0.0 ;
	variable_switched_voltage_square_2_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_1_3 ;
	variable_switched_voltage_square_1_3.lo = 0.0 ;
	variable_switched_voltage_square_1_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_1 ;
	variable_switched_voltage_square_3_1.lo = 0.0 ;
	variable_switched_voltage_square_3_1.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_4 ;
	variable_switched_voltage_square_2_4.lo = 0.0 ;
	variable_switched_voltage_square_2_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_2 ;
	variable_switched_voltage_square_4_2.lo = 0.0 ;
	variable_switched_voltage_square_4_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_5 ;
	variable_switched_voltage_square_2_5.lo = 0.0 ;
	variable_switched_voltage_square_2_5.up = 1.21 ;
Free Variable variable_switched_voltage_square_5_2 ;
	variable_switched_voltage_square_5_2.lo = 0.0 ;
	variable_switched_voltage_square_5_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_6 ;
	variable_switched_voltage_square_2_6.lo = 0.0 ;
	variable_switched_voltage_square_2_6.up = 1.21 ;
Free Variable variable_switched_voltage_square_6_2 ;
	variable_switched_voltage_square_6_2.lo = 0.0 ;
	variable_switched_voltage_square_6_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_4 ;
	variable_switched_voltage_square_3_4.lo = 0.0 ;
	variable_switched_voltage_square_3_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_3 ;
	variable_switched_voltage_square_4_3.lo = 0.0 ;
	variable_switched_voltage_square_4_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_6 ;
	variable_switched_voltage_square_4_6.lo = 0.0 ;
	variable_switched_voltage_square_4_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_4 ;
	variable_switched_voltage_square_6_4.lo = 0.0 ;
	variable_switched_voltage_square_6_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_12 ;
	variable_switched_voltage_square_4_12.lo = 0.0 ;
	variable_switched_voltage_square_4_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_12_4 ;
	variable_switched_voltage_square_12_4.lo = 0.0 ;
	variable_switched_voltage_square_12_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_5_7 ;
	variable_switched_voltage_square_5_7.lo = 0.0 ;
	variable_switched_voltage_square_5_7.up = 1.1025 ;
Free Variable variable_switched_voltage_square_7_5 ;
	variable_switched_voltage_square_7_5.lo = 0.0 ;
	variable_switched_voltage_square_7_5.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_7 ;
	variable_switched_voltage_square_6_7.lo = 0.0 ;
	variable_switched_voltage_square_6_7.up = 1.1025 ;
Free Variable variable_switched_voltage_square_7_6 ;
	variable_switched_voltage_square_7_6.lo = 0.0 ;
	variable_switched_voltage_square_7_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_8 ;
	variable_switched_voltage_square_6_8.lo = 0.0 ;
	variable_switched_voltage_square_6_8.up = 1.1025 ;
Free Variable variable_switched_voltage_square_8_6 ;
	variable_switched_voltage_square_8_6.lo = 0.0 ;
	variable_switched_voltage_square_8_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_9 ;
	variable_switched_voltage_square_6_9.lo = 0.0 ;
	variable_switched_voltage_square_6_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_6 ;
	variable_switched_voltage_square_9_6.lo = 0.0 ;
	variable_switched_voltage_square_9_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_10 ;
	variable_switched_voltage_square_6_10.lo = 0.0 ;
	variable_switched_voltage_square_6_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_6 ;
	variable_switched_voltage_square_10_6.lo = 0.0 ;
	variable_switched_voltage_square_10_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_28 ;
	variable_switched_voltage_square_6_28.lo = 0.0 ;
	variable_switched_voltage_square_6_28.up = 1.1025 ;
Free Variable variable_switched_voltage_square_28_6 ;
	variable_switched_voltage_square_28_6.lo = 0.0 ;
	variable_switched_voltage_square_28_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_8_28 ;
	variable_switched_voltage_square_8_28.lo = 0.0 ;
	variable_switched_voltage_square_8_28.up = 1.1025 ;
Free Variable variable_switched_voltage_square_28_8 ;
	variable_switched_voltage_square_28_8.lo = 0.0 ;
	variable_switched_voltage_square_28_8.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_11 ;
	variable_switched_voltage_square_9_11.lo = 0.0 ;
	variable_switched_voltage_square_9_11.up = 1.1025 ;
Free Variable variable_switched_voltage_square_11_9 ;
	variable_switched_voltage_square_11_9.lo = 0.0 ;
	variable_switched_voltage_square_11_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_10 ;
	variable_switched_voltage_square_9_10.lo = 0.0 ;
	variable_switched_voltage_square_9_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_9 ;
	variable_switched_voltage_square_10_9.lo = 0.0 ;
	variable_switched_voltage_square_10_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_20 ;
	variable_switched_voltage_square_10_20.lo = 0.0 ;
	variable_switched_voltage_square_10_20.up = 1.1025 ;
Free Variable variable_switched_voltage_square_20_10 ;
	variable_switched_voltage_square_20_10.lo = 0.0 ;
	variable_switched_voltage_square_20_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_17 ;
	variable_switched_voltage_square_10_17.lo = 0.0 ;
	variable_switched_voltage_square_10_17.up = 1.1025 ;
Free Variable variable_switched_voltage_square_17_10 ;
	variable_switched_voltage_square_17_10.lo = 0.0 ;
	variable_switched_voltage_square_17_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_21 ;
	variable_switched_voltage_square_10_21.lo = 0.0 ;
	variable_switched_voltage_square_10_21.up = 1.1025 ;
Free Variable variable_switched_voltage_square_21_10 ;
	variable_switched_voltage_square_21_10.lo = 0.0 ;
	variable_switched_voltage_square_21_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_22 ;
	variable_switched_voltage_square_10_22.lo = 0.0 ;
	variable_switched_voltage_square_10_22.up = 1.1025 ;
Free Variable variable_switched_voltage_square_22_10 ;
	variable_switched_voltage_square_22_10.lo = 0.0 ;
	variable_switched_voltage_square_22_10.up = 1.21 ;
Free Variable variable_switched_voltage_square_12_13 ;
	variable_switched_voltage_square_12_13.lo = 0.0 ;
	variable_switched_voltage_square_12_13.up = 1.1025 ;
Free Variable variable_switched_voltage_square_13_12 ;
	variable_switched_voltage_square_13_12.lo = 0.0 ;
	variable_switched_voltage_square_13_12.up = 1.21 ;
Free Variable variable_switched_voltage_square_12_14 ;
	variable_switched_voltage_square_12_14.lo = 0.0 ;
	variable_switched_voltage_square_12_14.up = 1.1025 ;
Free Variable variable_switched_voltage_square_14_12 ;
	variable_switched_voltage_square_14_12.lo = 0.0 ;
	variable_switched_voltage_square_14_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_12_15 ;
	variable_switched_voltage_square_12_15.lo = 0.0 ;
	variable_switched_voltage_square_12_15.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_12 ;
	variable_switched_voltage_square_15_12.lo = 0.0 ;
	variable_switched_voltage_square_15_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_12_16 ;
	variable_switched_voltage_square_12_16.lo = 0.0 ;
	variable_switched_voltage_square_12_16.up = 1.1025 ;
Free Variable variable_switched_voltage_square_16_12 ;
	variable_switched_voltage_square_16_12.lo = 0.0 ;
	variable_switched_voltage_square_16_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_14_15 ;
	variable_switched_voltage_square_14_15.lo = 0.0 ;
	variable_switched_voltage_square_14_15.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_14 ;
	variable_switched_voltage_square_15_14.lo = 0.0 ;
	variable_switched_voltage_square_15_14.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_18 ;
	variable_switched_voltage_square_15_18.lo = 0.0 ;
	variable_switched_voltage_square_15_18.up = 1.1025 ;
Free Variable variable_switched_voltage_square_18_15 ;
	variable_switched_voltage_square_18_15.lo = 0.0 ;
	variable_switched_voltage_square_18_15.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_23 ;
	variable_switched_voltage_square_15_23.lo = 0.0 ;
	variable_switched_voltage_square_15_23.up = 1.1025 ;
Free Variable variable_switched_voltage_square_23_15 ;
	variable_switched_voltage_square_23_15.lo = 0.0 ;
	variable_switched_voltage_square_23_15.up = 1.21 ;
Free Variable variable_switched_voltage_square_16_17 ;
	variable_switched_voltage_square_16_17.lo = 0.0 ;
	variable_switched_voltage_square_16_17.up = 1.1025 ;
Free Variable variable_switched_voltage_square_17_16 ;
	variable_switched_voltage_square_17_16.lo = 0.0 ;
	variable_switched_voltage_square_17_16.up = 1.1025 ;
Free Variable variable_switched_voltage_square_18_19 ;
	variable_switched_voltage_square_18_19.lo = 0.0 ;
	variable_switched_voltage_square_18_19.up = 1.1025 ;
Free Variable variable_switched_voltage_square_19_18 ;
	variable_switched_voltage_square_19_18.lo = 0.0 ;
	variable_switched_voltage_square_19_18.up = 1.1025 ;
Free Variable variable_switched_voltage_square_19_20 ;
	variable_switched_voltage_square_19_20.lo = 0.0 ;
	variable_switched_voltage_square_19_20.up = 1.1025 ;
Free Variable variable_switched_voltage_square_20_19 ;
	variable_switched_voltage_square_20_19.lo = 0.0 ;
	variable_switched_voltage_square_20_19.up = 1.1025 ;
Free Variable variable_switched_voltage_square_21_22 ;
	variable_switched_voltage_square_21_22.lo = 0.0 ;
	variable_switched_voltage_square_21_22.up = 1.1025 ;
Free Variable variable_switched_voltage_square_22_21 ;
	variable_switched_voltage_square_22_21.lo = 0.0 ;
	variable_switched_voltage_square_22_21.up = 1.21 ;
Free Variable variable_switched_voltage_square_22_24 ;
	variable_switched_voltage_square_22_24.lo = 0.0 ;
	variable_switched_voltage_square_22_24.up = 1.21 ;
Free Variable variable_switched_voltage_square_24_22 ;
	variable_switched_voltage_square_24_22.lo = 0.0 ;
	variable_switched_voltage_square_24_22.up = 1.1025 ;
Free Variable variable_switched_voltage_square_23_24 ;
	variable_switched_voltage_square_23_24.lo = 0.0 ;
	variable_switched_voltage_square_23_24.up = 1.21 ;
Free Variable variable_switched_voltage_square_24_23 ;
	variable_switched_voltage_square_24_23.lo = 0.0 ;
	variable_switched_voltage_square_24_23.up = 1.1025 ;
Free Variable variable_switched_voltage_square_24_25 ;
	variable_switched_voltage_square_24_25.lo = 0.0 ;
	variable_switched_voltage_square_24_25.up = 1.1025 ;
Free Variable variable_switched_voltage_square_25_24 ;
	variable_switched_voltage_square_25_24.lo = 0.0 ;
	variable_switched_voltage_square_25_24.up = 1.1025 ;
Free Variable variable_switched_voltage_square_25_26 ;
	variable_switched_voltage_square_25_26.lo = 0.0 ;
	variable_switched_voltage_square_25_26.up = 1.1025 ;
Free Variable variable_switched_voltage_square_26_25 ;
	variable_switched_voltage_square_26_25.lo = 0.0 ;
	variable_switched_voltage_square_26_25.up = 1.1025 ;
Free Variable variable_switched_voltage_square_25_27 ;
	variable_switched_voltage_square_25_27.lo = 0.0 ;
	variable_switched_voltage_square_25_27.up = 1.1025 ;
Free Variable variable_switched_voltage_square_27_25 ;
	variable_switched_voltage_square_27_25.lo = 0.0 ;
	variable_switched_voltage_square_27_25.up = 1.21 ;
Free Variable variable_switched_voltage_square_27_28 ;
	variable_switched_voltage_square_27_28.lo = 0.0 ;
	variable_switched_voltage_square_27_28.up = 1.21 ;
Free Variable variable_switched_voltage_square_28_27 ;
	variable_switched_voltage_square_28_27.lo = 0.0 ;
	variable_switched_voltage_square_28_27.up = 1.1025 ;
Free Variable variable_switched_voltage_square_27_29 ;
	variable_switched_voltage_square_27_29.lo = 0.0 ;
	variable_switched_voltage_square_27_29.up = 1.21 ;
Free Variable variable_switched_voltage_square_29_27 ;
	variable_switched_voltage_square_29_27.lo = 0.0 ;
	variable_switched_voltage_square_29_27.up = 1.1025 ;
Free Variable variable_switched_voltage_square_27_30 ;
	variable_switched_voltage_square_27_30.lo = 0.0 ;
	variable_switched_voltage_square_27_30.up = 1.21 ;
Free Variable variable_switched_voltage_square_30_27 ;
	variable_switched_voltage_square_30_27.lo = 0.0 ;
	variable_switched_voltage_square_30_27.up = 1.1025 ;
Free Variable variable_switched_voltage_square_29_30 ;
	variable_switched_voltage_square_29_30.lo = 0.0 ;
	variable_switched_voltage_square_29_30.up = 1.1025 ;
Free Variable variable_switched_voltage_square_30_29 ;
	variable_switched_voltage_square_30_29.lo = 0.0 ;
	variable_switched_voltage_square_30_29.up = 1.1025 ;
Free Variable variable_real_power_flow_1_2 ;
	variable_real_power_flow_1_2.lo = -1.3 ;
	variable_real_power_flow_1_2.up = 1.3 ;
Free Variable variable_real_power_flow_2_1 ;
	variable_real_power_flow_2_1.lo = -1.3 ;
	variable_real_power_flow_2_1.up = 1.3 ;
Free Variable variable_real_power_flow_1_3 ;
	variable_real_power_flow_1_3.lo = -1.3 ;
	variable_real_power_flow_1_3.up = 1.3 ;
Free Variable variable_real_power_flow_3_1 ;
	variable_real_power_flow_3_1.lo = -1.3 ;
	variable_real_power_flow_3_1.up = 1.3 ;
Free Variable variable_real_power_flow_2_4 ;
	variable_real_power_flow_2_4.lo = -0.65 ;
	variable_real_power_flow_2_4.up = 0.65 ;
Free Variable variable_real_power_flow_4_2 ;
	variable_real_power_flow_4_2.lo = -0.65 ;
	variable_real_power_flow_4_2.up = 0.65 ;
Free Variable variable_real_power_flow_2_5 ;
	variable_real_power_flow_2_5.lo = -1.3 ;
	variable_real_power_flow_2_5.up = 1.3 ;
Free Variable variable_real_power_flow_5_2 ;
	variable_real_power_flow_5_2.lo = -1.3 ;
	variable_real_power_flow_5_2.up = 1.3 ;
Free Variable variable_real_power_flow_2_6 ;
	variable_real_power_flow_2_6.lo = -0.65 ;
	variable_real_power_flow_2_6.up = 0.65 ;
Free Variable variable_real_power_flow_6_2 ;
	variable_real_power_flow_6_2.lo = -0.65 ;
	variable_real_power_flow_6_2.up = 0.65 ;
Free Variable variable_real_power_flow_3_4 ;
	variable_real_power_flow_3_4.lo = -1.3 ;
	variable_real_power_flow_3_4.up = 1.3 ;
Free Variable variable_real_power_flow_4_3 ;
	variable_real_power_flow_4_3.lo = -1.3 ;
	variable_real_power_flow_4_3.up = 1.3 ;
Free Variable variable_real_power_flow_4_6 ;
	variable_real_power_flow_4_6.lo = -0.9 ;
	variable_real_power_flow_4_6.up = 0.9 ;
Free Variable variable_real_power_flow_6_4 ;
	variable_real_power_flow_6_4.lo = -0.9 ;
	variable_real_power_flow_6_4.up = 0.9 ;
Free Variable variable_real_power_flow_4_12 ;
	variable_real_power_flow_4_12.lo = -0.65 ;
	variable_real_power_flow_4_12.up = 0.65 ;
Free Variable variable_real_power_flow_12_4 ;
	variable_real_power_flow_12_4.lo = -0.65 ;
	variable_real_power_flow_12_4.up = 0.65 ;
Free Variable variable_real_power_flow_5_7 ;
	variable_real_power_flow_5_7.lo = -0.7 ;
	variable_real_power_flow_5_7.up = 0.7 ;
Free Variable variable_real_power_flow_7_5 ;
	variable_real_power_flow_7_5.lo = -0.7 ;
	variable_real_power_flow_7_5.up = 0.7 ;
Free Variable variable_real_power_flow_6_7 ;
	variable_real_power_flow_6_7.lo = -1.3 ;
	variable_real_power_flow_6_7.up = 1.3 ;
Free Variable variable_real_power_flow_7_6 ;
	variable_real_power_flow_7_6.lo = -1.3 ;
	variable_real_power_flow_7_6.up = 1.3 ;
Free Variable variable_real_power_flow_6_8 ;
	variable_real_power_flow_6_8.lo = -0.32 ;
	variable_real_power_flow_6_8.up = 0.32 ;
Free Variable variable_real_power_flow_8_6 ;
	variable_real_power_flow_8_6.lo = -0.32 ;
	variable_real_power_flow_8_6.up = 0.32 ;
Free Variable variable_real_power_flow_6_9 ;
	variable_real_power_flow_6_9.lo = -0.65 ;
	variable_real_power_flow_6_9.up = 0.65 ;
Free Variable variable_real_power_flow_9_6 ;
	variable_real_power_flow_9_6.lo = -0.65 ;
	variable_real_power_flow_9_6.up = 0.65 ;
Free Variable variable_real_power_flow_6_10 ;
	variable_real_power_flow_6_10.lo = -0.32 ;
	variable_real_power_flow_6_10.up = 0.32 ;
Free Variable variable_real_power_flow_10_6 ;
	variable_real_power_flow_10_6.lo = -0.32 ;
	variable_real_power_flow_10_6.up = 0.32 ;
Free Variable variable_real_power_flow_6_28 ;
	variable_real_power_flow_6_28.lo = -0.32 ;
	variable_real_power_flow_6_28.up = 0.32 ;
Free Variable variable_real_power_flow_28_6 ;
	variable_real_power_flow_28_6.lo = -0.32 ;
	variable_real_power_flow_28_6.up = 0.32 ;
Free Variable variable_real_power_flow_8_28 ;
	variable_real_power_flow_8_28.lo = -0.32 ;
	variable_real_power_flow_8_28.up = 0.32 ;
Free Variable variable_real_power_flow_28_8 ;
	variable_real_power_flow_28_8.lo = -0.32 ;
	variable_real_power_flow_28_8.up = 0.32 ;
Free Variable variable_real_power_flow_9_11 ;
	variable_real_power_flow_9_11.lo = -0.65 ;
	variable_real_power_flow_9_11.up = 0.65 ;
Free Variable variable_real_power_flow_11_9 ;
	variable_real_power_flow_11_9.lo = -0.65 ;
	variable_real_power_flow_11_9.up = 0.65 ;
Free Variable variable_real_power_flow_9_10 ;
	variable_real_power_flow_9_10.lo = -0.65 ;
	variable_real_power_flow_9_10.up = 0.65 ;
Free Variable variable_real_power_flow_10_9 ;
	variable_real_power_flow_10_9.lo = -0.65 ;
	variable_real_power_flow_10_9.up = 0.65 ;
Free Variable variable_real_power_flow_10_20 ;
	variable_real_power_flow_10_20.lo = -0.32 ;
	variable_real_power_flow_10_20.up = 0.32 ;
Free Variable variable_real_power_flow_20_10 ;
	variable_real_power_flow_20_10.lo = -0.32 ;
	variable_real_power_flow_20_10.up = 0.32 ;
Free Variable variable_real_power_flow_10_17 ;
	variable_real_power_flow_10_17.lo = -0.32 ;
	variable_real_power_flow_10_17.up = 0.32 ;
Free Variable variable_real_power_flow_17_10 ;
	variable_real_power_flow_17_10.lo = -0.32 ;
	variable_real_power_flow_17_10.up = 0.32 ;
Free Variable variable_real_power_flow_10_21 ;
	variable_real_power_flow_10_21.lo = -0.32 ;
	variable_real_power_flow_10_21.up = 0.32 ;
Free Variable variable_real_power_flow_21_10 ;
	variable_real_power_flow_21_10.lo = -0.32 ;
	variable_real_power_flow_21_10.up = 0.32 ;
Free Variable variable_real_power_flow_10_22 ;
	variable_real_power_flow_10_22.lo = -0.32 ;
	variable_real_power_flow_10_22.up = 0.32 ;
Free Variable variable_real_power_flow_22_10 ;
	variable_real_power_flow_22_10.lo = -0.32 ;
	variable_real_power_flow_22_10.up = 0.32 ;
Free Variable variable_real_power_flow_12_13 ;
	variable_real_power_flow_12_13.lo = -0.65 ;
	variable_real_power_flow_12_13.up = 0.65 ;
Free Variable variable_real_power_flow_13_12 ;
	variable_real_power_flow_13_12.lo = -0.65 ;
	variable_real_power_flow_13_12.up = 0.65 ;
Free Variable variable_real_power_flow_12_14 ;
	variable_real_power_flow_12_14.lo = -0.32 ;
	variable_real_power_flow_12_14.up = 0.32 ;
Free Variable variable_real_power_flow_14_12 ;
	variable_real_power_flow_14_12.lo = -0.32 ;
	variable_real_power_flow_14_12.up = 0.32 ;
Free Variable variable_real_power_flow_12_15 ;
	variable_real_power_flow_12_15.lo = -0.32 ;
	variable_real_power_flow_12_15.up = 0.32 ;
Free Variable variable_real_power_flow_15_12 ;
	variable_real_power_flow_15_12.lo = -0.32 ;
	variable_real_power_flow_15_12.up = 0.32 ;
Free Variable variable_real_power_flow_12_16 ;
	variable_real_power_flow_12_16.lo = -0.32 ;
	variable_real_power_flow_12_16.up = 0.32 ;
Free Variable variable_real_power_flow_16_12 ;
	variable_real_power_flow_16_12.lo = -0.32 ;
	variable_real_power_flow_16_12.up = 0.32 ;
Free Variable variable_real_power_flow_14_15 ;
	variable_real_power_flow_14_15.lo = -0.16 ;
	variable_real_power_flow_14_15.up = 0.16 ;
Free Variable variable_real_power_flow_15_14 ;
	variable_real_power_flow_15_14.lo = -0.16 ;
	variable_real_power_flow_15_14.up = 0.16 ;
Free Variable variable_real_power_flow_15_18 ;
	variable_real_power_flow_15_18.lo = -0.16 ;
	variable_real_power_flow_15_18.up = 0.16 ;
Free Variable variable_real_power_flow_18_15 ;
	variable_real_power_flow_18_15.lo = -0.16 ;
	variable_real_power_flow_18_15.up = 0.16 ;
Free Variable variable_real_power_flow_15_23 ;
	variable_real_power_flow_15_23.lo = -0.16 ;
	variable_real_power_flow_15_23.up = 0.16 ;
Free Variable variable_real_power_flow_23_15 ;
	variable_real_power_flow_23_15.lo = -0.16 ;
	variable_real_power_flow_23_15.up = 0.16 ;
Free Variable variable_real_power_flow_16_17 ;
	variable_real_power_flow_16_17.lo = -0.16 ;
	variable_real_power_flow_16_17.up = 0.16 ;
Free Variable variable_real_power_flow_17_16 ;
	variable_real_power_flow_17_16.lo = -0.16 ;
	variable_real_power_flow_17_16.up = 0.16 ;
Free Variable variable_real_power_flow_18_19 ;
	variable_real_power_flow_18_19.lo = -0.16 ;
	variable_real_power_flow_18_19.up = 0.16 ;
Free Variable variable_real_power_flow_19_18 ;
	variable_real_power_flow_19_18.lo = -0.16 ;
	variable_real_power_flow_19_18.up = 0.16 ;
Free Variable variable_real_power_flow_19_20 ;
	variable_real_power_flow_19_20.lo = -0.32 ;
	variable_real_power_flow_19_20.up = 0.32 ;
Free Variable variable_real_power_flow_20_19 ;
	variable_real_power_flow_20_19.lo = -0.32 ;
	variable_real_power_flow_20_19.up = 0.32 ;
Free Variable variable_real_power_flow_21_22 ;
	variable_real_power_flow_21_22.lo = -0.32 ;
	variable_real_power_flow_21_22.up = 0.32 ;
Free Variable variable_real_power_flow_22_21 ;
	variable_real_power_flow_22_21.lo = -0.32 ;
	variable_real_power_flow_22_21.up = 0.32 ;
Free Variable variable_real_power_flow_22_24 ;
	variable_real_power_flow_22_24.lo = -0.16 ;
	variable_real_power_flow_22_24.up = 0.16 ;
Free Variable variable_real_power_flow_24_22 ;
	variable_real_power_flow_24_22.lo = -0.16 ;
	variable_real_power_flow_24_22.up = 0.16 ;
Free Variable variable_real_power_flow_23_24 ;
	variable_real_power_flow_23_24.lo = -0.16 ;
	variable_real_power_flow_23_24.up = 0.16 ;
Free Variable variable_real_power_flow_24_23 ;
	variable_real_power_flow_24_23.lo = -0.16 ;
	variable_real_power_flow_24_23.up = 0.16 ;
Free Variable variable_real_power_flow_24_25 ;
	variable_real_power_flow_24_25.lo = -0.16 ;
	variable_real_power_flow_24_25.up = 0.16 ;
Free Variable variable_real_power_flow_25_24 ;
	variable_real_power_flow_25_24.lo = -0.16 ;
	variable_real_power_flow_25_24.up = 0.16 ;
Free Variable variable_real_power_flow_25_26 ;
	variable_real_power_flow_25_26.lo = -0.16 ;
	variable_real_power_flow_25_26.up = 0.16 ;
Free Variable variable_real_power_flow_26_25 ;
	variable_real_power_flow_26_25.lo = -0.16 ;
	variable_real_power_flow_26_25.up = 0.16 ;
Free Variable variable_real_power_flow_25_27 ;
	variable_real_power_flow_25_27.lo = -0.16 ;
	variable_real_power_flow_25_27.up = 0.16 ;
Free Variable variable_real_power_flow_27_25 ;
	variable_real_power_flow_27_25.lo = -0.16 ;
	variable_real_power_flow_27_25.up = 0.16 ;
Free Variable variable_real_power_flow_27_28 ;
	variable_real_power_flow_27_28.lo = -0.65 ;
	variable_real_power_flow_27_28.up = 0.65 ;
Free Variable variable_real_power_flow_28_27 ;
	variable_real_power_flow_28_27.lo = -0.65 ;
	variable_real_power_flow_28_27.up = 0.65 ;
Free Variable variable_real_power_flow_27_29 ;
	variable_real_power_flow_27_29.lo = -0.16 ;
	variable_real_power_flow_27_29.up = 0.16 ;
Free Variable variable_real_power_flow_29_27 ;
	variable_real_power_flow_29_27.lo = -0.16 ;
	variable_real_power_flow_29_27.up = 0.16 ;
Free Variable variable_real_power_flow_27_30 ;
	variable_real_power_flow_27_30.lo = -0.16 ;
	variable_real_power_flow_27_30.up = 0.16 ;
Free Variable variable_real_power_flow_30_27 ;
	variable_real_power_flow_30_27.lo = -0.16 ;
	variable_real_power_flow_30_27.up = 0.16 ;
Free Variable variable_real_power_flow_29_30 ;
	variable_real_power_flow_29_30.lo = -0.16 ;
	variable_real_power_flow_29_30.up = 0.16 ;
Free Variable variable_real_power_flow_30_29 ;
	variable_real_power_flow_30_29.lo = -0.16 ;
	variable_real_power_flow_30_29.up = 0.16 ;
Free Variable variable_reactive_power_flow_1_2 ;
	variable_reactive_power_flow_1_2.lo = -1.3 ;
	variable_reactive_power_flow_1_2.up = 1.3 ;
Free Variable variable_reactive_power_flow_2_1 ;
	variable_reactive_power_flow_2_1.lo = -1.3 ;
	variable_reactive_power_flow_2_1.up = 1.3 ;
Free Variable variable_reactive_power_flow_1_3 ;
	variable_reactive_power_flow_1_3.lo = -1.3 ;
	variable_reactive_power_flow_1_3.up = 1.3 ;
Free Variable variable_reactive_power_flow_3_1 ;
	variable_reactive_power_flow_3_1.lo = -1.3 ;
	variable_reactive_power_flow_3_1.up = 1.3 ;
Free Variable variable_reactive_power_flow_2_4 ;
	variable_reactive_power_flow_2_4.lo = -0.65 ;
	variable_reactive_power_flow_2_4.up = 0.65 ;
Free Variable variable_reactive_power_flow_4_2 ;
	variable_reactive_power_flow_4_2.lo = -0.65 ;
	variable_reactive_power_flow_4_2.up = 0.65 ;
Free Variable variable_reactive_power_flow_2_5 ;
	variable_reactive_power_flow_2_5.lo = -1.3 ;
	variable_reactive_power_flow_2_5.up = 1.3 ;
Free Variable variable_reactive_power_flow_5_2 ;
	variable_reactive_power_flow_5_2.lo = -1.3 ;
	variable_reactive_power_flow_5_2.up = 1.3 ;
Free Variable variable_reactive_power_flow_2_6 ;
	variable_reactive_power_flow_2_6.lo = -0.65 ;
	variable_reactive_power_flow_2_6.up = 0.65 ;
Free Variable variable_reactive_power_flow_6_2 ;
	variable_reactive_power_flow_6_2.lo = -0.65 ;
	variable_reactive_power_flow_6_2.up = 0.65 ;
Free Variable variable_reactive_power_flow_3_4 ;
	variable_reactive_power_flow_3_4.lo = -1.3 ;
	variable_reactive_power_flow_3_4.up = 1.3 ;
Free Variable variable_reactive_power_flow_4_3 ;
	variable_reactive_power_flow_4_3.lo = -1.3 ;
	variable_reactive_power_flow_4_3.up = 1.3 ;
Free Variable variable_reactive_power_flow_4_6 ;
	variable_reactive_power_flow_4_6.lo = -0.9 ;
	variable_reactive_power_flow_4_6.up = 0.9 ;
Free Variable variable_reactive_power_flow_6_4 ;
	variable_reactive_power_flow_6_4.lo = -0.9 ;
	variable_reactive_power_flow_6_4.up = 0.9 ;
Free Variable variable_reactive_power_flow_4_12 ;
	variable_reactive_power_flow_4_12.lo = -0.65 ;
	variable_reactive_power_flow_4_12.up = 0.65 ;
Free Variable variable_reactive_power_flow_12_4 ;
	variable_reactive_power_flow_12_4.lo = -0.65 ;
	variable_reactive_power_flow_12_4.up = 0.65 ;
Free Variable variable_reactive_power_flow_5_7 ;
	variable_reactive_power_flow_5_7.lo = -0.7 ;
	variable_reactive_power_flow_5_7.up = 0.7 ;
Free Variable variable_reactive_power_flow_7_5 ;
	variable_reactive_power_flow_7_5.lo = -0.7 ;
	variable_reactive_power_flow_7_5.up = 0.7 ;
Free Variable variable_reactive_power_flow_6_7 ;
	variable_reactive_power_flow_6_7.lo = -1.3 ;
	variable_reactive_power_flow_6_7.up = 1.3 ;
Free Variable variable_reactive_power_flow_7_6 ;
	variable_reactive_power_flow_7_6.lo = -1.3 ;
	variable_reactive_power_flow_7_6.up = 1.3 ;
Free Variable variable_reactive_power_flow_6_8 ;
	variable_reactive_power_flow_6_8.lo = -0.32 ;
	variable_reactive_power_flow_6_8.up = 0.32 ;
Free Variable variable_reactive_power_flow_8_6 ;
	variable_reactive_power_flow_8_6.lo = -0.32 ;
	variable_reactive_power_flow_8_6.up = 0.32 ;
Free Variable variable_reactive_power_flow_6_9 ;
	variable_reactive_power_flow_6_9.lo = -0.65 ;
	variable_reactive_power_flow_6_9.up = 0.65 ;
Free Variable variable_reactive_power_flow_9_6 ;
	variable_reactive_power_flow_9_6.lo = -0.65 ;
	variable_reactive_power_flow_9_6.up = 0.65 ;
Free Variable variable_reactive_power_flow_6_10 ;
	variable_reactive_power_flow_6_10.lo = -0.32 ;
	variable_reactive_power_flow_6_10.up = 0.32 ;
Free Variable variable_reactive_power_flow_10_6 ;
	variable_reactive_power_flow_10_6.lo = -0.32 ;
	variable_reactive_power_flow_10_6.up = 0.32 ;
Free Variable variable_reactive_power_flow_6_28 ;
	variable_reactive_power_flow_6_28.lo = -0.32 ;
	variable_reactive_power_flow_6_28.up = 0.32 ;
Free Variable variable_reactive_power_flow_28_6 ;
	variable_reactive_power_flow_28_6.lo = -0.32 ;
	variable_reactive_power_flow_28_6.up = 0.32 ;
Free Variable variable_reactive_power_flow_8_28 ;
	variable_reactive_power_flow_8_28.lo = -0.32 ;
	variable_reactive_power_flow_8_28.up = 0.32 ;
Free Variable variable_reactive_power_flow_28_8 ;
	variable_reactive_power_flow_28_8.lo = -0.32 ;
	variable_reactive_power_flow_28_8.up = 0.32 ;
Free Variable variable_reactive_power_flow_9_11 ;
	variable_reactive_power_flow_9_11.lo = -0.65 ;
	variable_reactive_power_flow_9_11.up = 0.65 ;
Free Variable variable_reactive_power_flow_11_9 ;
	variable_reactive_power_flow_11_9.lo = -0.65 ;
	variable_reactive_power_flow_11_9.up = 0.65 ;
Free Variable variable_reactive_power_flow_9_10 ;
	variable_reactive_power_flow_9_10.lo = -0.65 ;
	variable_reactive_power_flow_9_10.up = 0.65 ;
Free Variable variable_reactive_power_flow_10_9 ;
	variable_reactive_power_flow_10_9.lo = -0.65 ;
	variable_reactive_power_flow_10_9.up = 0.65 ;
Free Variable variable_reactive_power_flow_10_20 ;
	variable_reactive_power_flow_10_20.lo = -0.32 ;
	variable_reactive_power_flow_10_20.up = 0.32 ;
Free Variable variable_reactive_power_flow_20_10 ;
	variable_reactive_power_flow_20_10.lo = -0.32 ;
	variable_reactive_power_flow_20_10.up = 0.32 ;
Free Variable variable_reactive_power_flow_10_17 ;
	variable_reactive_power_flow_10_17.lo = -0.32 ;
	variable_reactive_power_flow_10_17.up = 0.32 ;
Free Variable variable_reactive_power_flow_17_10 ;
	variable_reactive_power_flow_17_10.lo = -0.32 ;
	variable_reactive_power_flow_17_10.up = 0.32 ;
Free Variable variable_reactive_power_flow_10_21 ;
	variable_reactive_power_flow_10_21.lo = -0.32 ;
	variable_reactive_power_flow_10_21.up = 0.32 ;
Free Variable variable_reactive_power_flow_21_10 ;
	variable_reactive_power_flow_21_10.lo = -0.32 ;
	variable_reactive_power_flow_21_10.up = 0.32 ;
Free Variable variable_reactive_power_flow_10_22 ;
	variable_reactive_power_flow_10_22.lo = -0.32 ;
	variable_reactive_power_flow_10_22.up = 0.32 ;
Free Variable variable_reactive_power_flow_22_10 ;
	variable_reactive_power_flow_22_10.lo = -0.32 ;
	variable_reactive_power_flow_22_10.up = 0.32 ;
Free Variable variable_reactive_power_flow_12_13 ;
	variable_reactive_power_flow_12_13.lo = -0.65 ;
	variable_reactive_power_flow_12_13.up = 0.65 ;
Free Variable variable_reactive_power_flow_13_12 ;
	variable_reactive_power_flow_13_12.lo = -0.65 ;
	variable_reactive_power_flow_13_12.up = 0.65 ;
Free Variable variable_reactive_power_flow_12_14 ;
	variable_reactive_power_flow_12_14.lo = -0.32 ;
	variable_reactive_power_flow_12_14.up = 0.32 ;
Free Variable variable_reactive_power_flow_14_12 ;
	variable_reactive_power_flow_14_12.lo = -0.32 ;
	variable_reactive_power_flow_14_12.up = 0.32 ;
Free Variable variable_reactive_power_flow_12_15 ;
	variable_reactive_power_flow_12_15.lo = -0.32 ;
	variable_reactive_power_flow_12_15.up = 0.32 ;
Free Variable variable_reactive_power_flow_15_12 ;
	variable_reactive_power_flow_15_12.lo = -0.32 ;
	variable_reactive_power_flow_15_12.up = 0.32 ;
Free Variable variable_reactive_power_flow_12_16 ;
	variable_reactive_power_flow_12_16.lo = -0.32 ;
	variable_reactive_power_flow_12_16.up = 0.32 ;
Free Variable variable_reactive_power_flow_16_12 ;
	variable_reactive_power_flow_16_12.lo = -0.32 ;
	variable_reactive_power_flow_16_12.up = 0.32 ;
Free Variable variable_reactive_power_flow_14_15 ;
	variable_reactive_power_flow_14_15.lo = -0.16 ;
	variable_reactive_power_flow_14_15.up = 0.16 ;
Free Variable variable_reactive_power_flow_15_14 ;
	variable_reactive_power_flow_15_14.lo = -0.16 ;
	variable_reactive_power_flow_15_14.up = 0.16 ;
Free Variable variable_reactive_power_flow_15_18 ;
	variable_reactive_power_flow_15_18.lo = -0.16 ;
	variable_reactive_power_flow_15_18.up = 0.16 ;
Free Variable variable_reactive_power_flow_18_15 ;
	variable_reactive_power_flow_18_15.lo = -0.16 ;
	variable_reactive_power_flow_18_15.up = 0.16 ;
Free Variable variable_reactive_power_flow_15_23 ;
	variable_reactive_power_flow_15_23.lo = -0.16 ;
	variable_reactive_power_flow_15_23.up = 0.16 ;
Free Variable variable_reactive_power_flow_23_15 ;
	variable_reactive_power_flow_23_15.lo = -0.16 ;
	variable_reactive_power_flow_23_15.up = 0.16 ;
Free Variable variable_reactive_power_flow_16_17 ;
	variable_reactive_power_flow_16_17.lo = -0.16 ;
	variable_reactive_power_flow_16_17.up = 0.16 ;
Free Variable variable_reactive_power_flow_17_16 ;
	variable_reactive_power_flow_17_16.lo = -0.16 ;
	variable_reactive_power_flow_17_16.up = 0.16 ;
Free Variable variable_reactive_power_flow_18_19 ;
	variable_reactive_power_flow_18_19.lo = -0.16 ;
	variable_reactive_power_flow_18_19.up = 0.16 ;
Free Variable variable_reactive_power_flow_19_18 ;
	variable_reactive_power_flow_19_18.lo = -0.16 ;
	variable_reactive_power_flow_19_18.up = 0.16 ;
Free Variable variable_reactive_power_flow_19_20 ;
	variable_reactive_power_flow_19_20.lo = -0.32 ;
	variable_reactive_power_flow_19_20.up = 0.32 ;
Free Variable variable_reactive_power_flow_20_19 ;
	variable_reactive_power_flow_20_19.lo = -0.32 ;
	variable_reactive_power_flow_20_19.up = 0.32 ;
Free Variable variable_reactive_power_flow_21_22 ;
	variable_reactive_power_flow_21_22.lo = -0.32 ;
	variable_reactive_power_flow_21_22.up = 0.32 ;
Free Variable variable_reactive_power_flow_22_21 ;
	variable_reactive_power_flow_22_21.lo = -0.32 ;
	variable_reactive_power_flow_22_21.up = 0.32 ;
Free Variable variable_reactive_power_flow_22_24 ;
	variable_reactive_power_flow_22_24.lo = -0.16 ;
	variable_reactive_power_flow_22_24.up = 0.16 ;
Free Variable variable_reactive_power_flow_24_22 ;
	variable_reactive_power_flow_24_22.lo = -0.16 ;
	variable_reactive_power_flow_24_22.up = 0.16 ;
Free Variable variable_reactive_power_flow_23_24 ;
	variable_reactive_power_flow_23_24.lo = -0.16 ;
	variable_reactive_power_flow_23_24.up = 0.16 ;
Free Variable variable_reactive_power_flow_24_23 ;
	variable_reactive_power_flow_24_23.lo = -0.16 ;
	variable_reactive_power_flow_24_23.up = 0.16 ;
Free Variable variable_reactive_power_flow_24_25 ;
	variable_reactive_power_flow_24_25.lo = -0.16 ;
	variable_reactive_power_flow_24_25.up = 0.16 ;
Free Variable variable_reactive_power_flow_25_24 ;
	variable_reactive_power_flow_25_24.lo = -0.16 ;
	variable_reactive_power_flow_25_24.up = 0.16 ;
Free Variable variable_reactive_power_flow_25_26 ;
	variable_reactive_power_flow_25_26.lo = -0.16 ;
	variable_reactive_power_flow_25_26.up = 0.16 ;
Free Variable variable_reactive_power_flow_26_25 ;
	variable_reactive_power_flow_26_25.lo = -0.16 ;
	variable_reactive_power_flow_26_25.up = 0.16 ;
Free Variable variable_reactive_power_flow_25_27 ;
	variable_reactive_power_flow_25_27.lo = -0.16 ;
	variable_reactive_power_flow_25_27.up = 0.16 ;
Free Variable variable_reactive_power_flow_27_25 ;
	variable_reactive_power_flow_27_25.lo = -0.16 ;
	variable_reactive_power_flow_27_25.up = 0.16 ;
Free Variable variable_reactive_power_flow_27_28 ;
	variable_reactive_power_flow_27_28.lo = -0.65 ;
	variable_reactive_power_flow_27_28.up = 0.65 ;
Free Variable variable_reactive_power_flow_28_27 ;
	variable_reactive_power_flow_28_27.lo = -0.65 ;
	variable_reactive_power_flow_28_27.up = 0.65 ;
Free Variable variable_reactive_power_flow_27_29 ;
	variable_reactive_power_flow_27_29.lo = -0.16 ;
	variable_reactive_power_flow_27_29.up = 0.16 ;
Free Variable variable_reactive_power_flow_29_27 ;
	variable_reactive_power_flow_29_27.lo = -0.16 ;
	variable_reactive_power_flow_29_27.up = 0.16 ;
Free Variable variable_reactive_power_flow_27_30 ;
	variable_reactive_power_flow_27_30.lo = -0.16 ;
	variable_reactive_power_flow_27_30.up = 0.16 ;
Free Variable variable_reactive_power_flow_30_27 ;
	variable_reactive_power_flow_30_27.lo = -0.16 ;
	variable_reactive_power_flow_30_27.up = 0.16 ;
Free Variable variable_reactive_power_flow_29_30 ;
	variable_reactive_power_flow_29_30.lo = -0.16 ;
	variable_reactive_power_flow_29_30.up = 0.16 ;
Free Variable variable_reactive_power_flow_30_29 ;
	variable_reactive_power_flow_30_29.lo = -0.16 ;
	variable_reactive_power_flow_30_29.up = 0.16 ;
Free Variable variable_voltage_product_real_1_2 ;
	variable_voltage_product_real_1_2.lo = -1.155 ;
	variable_voltage_product_real_1_2.up = 1.155 ;
Free Variable variable_voltage_product_real_1_3 ;
	variable_voltage_product_real_1_3.lo = -1.1025 ;
	variable_voltage_product_real_1_3.up = 1.1025 ;
Free Variable variable_voltage_product_real_2_4 ;
	variable_voltage_product_real_2_4.lo = -1.155 ;
	variable_voltage_product_real_2_4.up = 1.155 ;
Free Variable variable_voltage_product_real_2_5 ;
	variable_voltage_product_real_2_5.lo = -1.155 ;
	variable_voltage_product_real_2_5.up = 1.155 ;
Free Variable variable_voltage_product_real_2_6 ;
	variable_voltage_product_real_2_6.lo = -1.155 ;
	variable_voltage_product_real_2_6.up = 1.155 ;
Free Variable variable_voltage_product_real_3_4 ;
	variable_voltage_product_real_3_4.lo = -1.1025 ;
	variable_voltage_product_real_3_4.up = 1.1025 ;
Free Variable variable_voltage_product_real_4_6 ;
	variable_voltage_product_real_4_6.lo = -1.1025 ;
	variable_voltage_product_real_4_6.up = 1.1025 ;
Free Variable variable_voltage_product_real_4_12 ;
	variable_voltage_product_real_4_12.lo = -1.1025 ;
	variable_voltage_product_real_4_12.up = 1.1025 ;
Free Variable variable_voltage_product_real_5_7 ;
	variable_voltage_product_real_5_7.lo = -1.1025 ;
	variable_voltage_product_real_5_7.up = 1.1025 ;
Free Variable variable_voltage_product_real_6_7 ;
	variable_voltage_product_real_6_7.lo = -1.1025 ;
	variable_voltage_product_real_6_7.up = 1.1025 ;
Free Variable variable_voltage_product_real_6_8 ;
	variable_voltage_product_real_6_8.lo = -1.1025 ;
	variable_voltage_product_real_6_8.up = 1.1025 ;
Free Variable variable_voltage_product_real_6_9 ;
	variable_voltage_product_real_6_9.lo = -1.1025 ;
	variable_voltage_product_real_6_9.up = 1.1025 ;
Free Variable variable_voltage_product_real_6_10 ;
	variable_voltage_product_real_6_10.lo = -1.1025 ;
	variable_voltage_product_real_6_10.up = 1.1025 ;
Free Variable variable_voltage_product_real_6_28 ;
	variable_voltage_product_real_6_28.lo = -1.1025 ;
	variable_voltage_product_real_6_28.up = 1.1025 ;
Free Variable variable_voltage_product_real_8_28 ;
	variable_voltage_product_real_8_28.lo = -1.1025 ;
	variable_voltage_product_real_8_28.up = 1.1025 ;
Free Variable variable_voltage_product_real_9_11 ;
	variable_voltage_product_real_9_11.lo = -1.1025 ;
	variable_voltage_product_real_9_11.up = 1.1025 ;
Free Variable variable_voltage_product_real_9_10 ;
	variable_voltage_product_real_9_10.lo = -1.1025 ;
	variable_voltage_product_real_9_10.up = 1.1025 ;
Free Variable variable_voltage_product_real_10_20 ;
	variable_voltage_product_real_10_20.lo = -1.1025 ;
	variable_voltage_product_real_10_20.up = 1.1025 ;
Free Variable variable_voltage_product_real_10_17 ;
	variable_voltage_product_real_10_17.lo = -1.1025 ;
	variable_voltage_product_real_10_17.up = 1.1025 ;
Free Variable variable_voltage_product_real_10_21 ;
	variable_voltage_product_real_10_21.lo = -1.1025 ;
	variable_voltage_product_real_10_21.up = 1.1025 ;
Free Variable variable_voltage_product_real_10_22 ;
	variable_voltage_product_real_10_22.lo = -1.155 ;
	variable_voltage_product_real_10_22.up = 1.155 ;
Free Variable variable_voltage_product_real_12_13 ;
	variable_voltage_product_real_12_13.lo = -1.155 ;
	variable_voltage_product_real_12_13.up = 1.155 ;
Free Variable variable_voltage_product_real_12_14 ;
	variable_voltage_product_real_12_14.lo = -1.1025 ;
	variable_voltage_product_real_12_14.up = 1.1025 ;
Free Variable variable_voltage_product_real_12_15 ;
	variable_voltage_product_real_12_15.lo = -1.1025 ;
	variable_voltage_product_real_12_15.up = 1.1025 ;
Free Variable variable_voltage_product_real_12_16 ;
	variable_voltage_product_real_12_16.lo = -1.1025 ;
	variable_voltage_product_real_12_16.up = 1.1025 ;
Free Variable variable_voltage_product_real_14_15 ;
	variable_voltage_product_real_14_15.lo = -1.1025 ;
	variable_voltage_product_real_14_15.up = 1.1025 ;
Free Variable variable_voltage_product_real_15_18 ;
	variable_voltage_product_real_15_18.lo = -1.1025 ;
	variable_voltage_product_real_15_18.up = 1.1025 ;
Free Variable variable_voltage_product_real_15_23 ;
	variable_voltage_product_real_15_23.lo = -1.155 ;
	variable_voltage_product_real_15_23.up = 1.155 ;
Free Variable variable_voltage_product_real_16_17 ;
	variable_voltage_product_real_16_17.lo = -1.1025 ;
	variable_voltage_product_real_16_17.up = 1.1025 ;
Free Variable variable_voltage_product_real_18_19 ;
	variable_voltage_product_real_18_19.lo = -1.1025 ;
	variable_voltage_product_real_18_19.up = 1.1025 ;
Free Variable variable_voltage_product_real_19_20 ;
	variable_voltage_product_real_19_20.lo = -1.1025 ;
	variable_voltage_product_real_19_20.up = 1.1025 ;
Free Variable variable_voltage_product_real_21_22 ;
	variable_voltage_product_real_21_22.lo = -1.155 ;
	variable_voltage_product_real_21_22.up = 1.155 ;
Free Variable variable_voltage_product_real_22_24 ;
	variable_voltage_product_real_22_24.lo = -1.155 ;
	variable_voltage_product_real_22_24.up = 1.155 ;
Free Variable variable_voltage_product_real_23_24 ;
	variable_voltage_product_real_23_24.lo = -1.155 ;
	variable_voltage_product_real_23_24.up = 1.155 ;
Free Variable variable_voltage_product_real_24_25 ;
	variable_voltage_product_real_24_25.lo = -1.1025 ;
	variable_voltage_product_real_24_25.up = 1.1025 ;
Free Variable variable_voltage_product_real_25_26 ;
	variable_voltage_product_real_25_26.lo = -1.1025 ;
	variable_voltage_product_real_25_26.up = 1.1025 ;
Free Variable variable_voltage_product_real_25_27 ;
	variable_voltage_product_real_25_27.lo = -1.155 ;
	variable_voltage_product_real_25_27.up = 1.155 ;
Free Variable variable_voltage_product_real_27_28 ;
	variable_voltage_product_real_27_28.lo = -1.155 ;
	variable_voltage_product_real_27_28.up = 1.155 ;
Free Variable variable_voltage_product_real_27_29 ;
	variable_voltage_product_real_27_29.lo = -1.155 ;
	variable_voltage_product_real_27_29.up = 1.155 ;
Free Variable variable_voltage_product_real_27_30 ;
	variable_voltage_product_real_27_30.lo = -1.155 ;
	variable_voltage_product_real_27_30.up = 1.155 ;
Free Variable variable_voltage_product_real_29_30 ;
	variable_voltage_product_real_29_30.lo = -1.1025 ;
	variable_voltage_product_real_29_30.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_1_2 ;
	variable_voltage_product_imaginary_1_2.lo = -1.155 ;
	variable_voltage_product_imaginary_1_2.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_1_3 ;
	variable_voltage_product_imaginary_1_3.lo = -1.1025 ;
	variable_voltage_product_imaginary_1_3.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_2_4 ;
	variable_voltage_product_imaginary_2_4.lo = -1.155 ;
	variable_voltage_product_imaginary_2_4.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_2_5 ;
	variable_voltage_product_imaginary_2_5.lo = -1.155 ;
	variable_voltage_product_imaginary_2_5.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_2_6 ;
	variable_voltage_product_imaginary_2_6.lo = -1.155 ;
	variable_voltage_product_imaginary_2_6.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_3_4 ;
	variable_voltage_product_imaginary_3_4.lo = -1.1025 ;
	variable_voltage_product_imaginary_3_4.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_4_6 ;
	variable_voltage_product_imaginary_4_6.lo = -1.1025 ;
	variable_voltage_product_imaginary_4_6.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_4_12 ;
	variable_voltage_product_imaginary_4_12.lo = -1.1025 ;
	variable_voltage_product_imaginary_4_12.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_5_7 ;
	variable_voltage_product_imaginary_5_7.lo = -1.1025 ;
	variable_voltage_product_imaginary_5_7.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_6_7 ;
	variable_voltage_product_imaginary_6_7.lo = -1.1025 ;
	variable_voltage_product_imaginary_6_7.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_6_8 ;
	variable_voltage_product_imaginary_6_8.lo = -1.1025 ;
	variable_voltage_product_imaginary_6_8.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_6_9 ;
	variable_voltage_product_imaginary_6_9.lo = -1.1025 ;
	variable_voltage_product_imaginary_6_9.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_6_10 ;
	variable_voltage_product_imaginary_6_10.lo = -1.1025 ;
	variable_voltage_product_imaginary_6_10.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_6_28 ;
	variable_voltage_product_imaginary_6_28.lo = -1.1025 ;
	variable_voltage_product_imaginary_6_28.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_8_28 ;
	variable_voltage_product_imaginary_8_28.lo = -1.1025 ;
	variable_voltage_product_imaginary_8_28.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_9_11 ;
	variable_voltage_product_imaginary_9_11.lo = -1.1025 ;
	variable_voltage_product_imaginary_9_11.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_9_10 ;
	variable_voltage_product_imaginary_9_10.lo = -1.1025 ;
	variable_voltage_product_imaginary_9_10.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_10_20 ;
	variable_voltage_product_imaginary_10_20.lo = -1.1025 ;
	variable_voltage_product_imaginary_10_20.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_10_17 ;
	variable_voltage_product_imaginary_10_17.lo = -1.1025 ;
	variable_voltage_product_imaginary_10_17.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_10_21 ;
	variable_voltage_product_imaginary_10_21.lo = -1.1025 ;
	variable_voltage_product_imaginary_10_21.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_10_22 ;
	variable_voltage_product_imaginary_10_22.lo = -1.155 ;
	variable_voltage_product_imaginary_10_22.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_12_13 ;
	variable_voltage_product_imaginary_12_13.lo = -1.155 ;
	variable_voltage_product_imaginary_12_13.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_12_14 ;
	variable_voltage_product_imaginary_12_14.lo = -1.1025 ;
	variable_voltage_product_imaginary_12_14.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_12_15 ;
	variable_voltage_product_imaginary_12_15.lo = -1.1025 ;
	variable_voltage_product_imaginary_12_15.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_12_16 ;
	variable_voltage_product_imaginary_12_16.lo = -1.1025 ;
	variable_voltage_product_imaginary_12_16.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_14_15 ;
	variable_voltage_product_imaginary_14_15.lo = -1.1025 ;
	variable_voltage_product_imaginary_14_15.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_15_18 ;
	variable_voltage_product_imaginary_15_18.lo = -1.1025 ;
	variable_voltage_product_imaginary_15_18.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_15_23 ;
	variable_voltage_product_imaginary_15_23.lo = -1.155 ;
	variable_voltage_product_imaginary_15_23.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_16_17 ;
	variable_voltage_product_imaginary_16_17.lo = -1.1025 ;
	variable_voltage_product_imaginary_16_17.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_18_19 ;
	variable_voltage_product_imaginary_18_19.lo = -1.1025 ;
	variable_voltage_product_imaginary_18_19.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_19_20 ;
	variable_voltage_product_imaginary_19_20.lo = -1.1025 ;
	variable_voltage_product_imaginary_19_20.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_21_22 ;
	variable_voltage_product_imaginary_21_22.lo = -1.155 ;
	variable_voltage_product_imaginary_21_22.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_22_24 ;
	variable_voltage_product_imaginary_22_24.lo = -1.155 ;
	variable_voltage_product_imaginary_22_24.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_23_24 ;
	variable_voltage_product_imaginary_23_24.lo = -1.155 ;
	variable_voltage_product_imaginary_23_24.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_24_25 ;
	variable_voltage_product_imaginary_24_25.lo = -1.1025 ;
	variable_voltage_product_imaginary_24_25.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_25_26 ;
	variable_voltage_product_imaginary_25_26.lo = -1.1025 ;
	variable_voltage_product_imaginary_25_26.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_25_27 ;
	variable_voltage_product_imaginary_25_27.lo = -1.155 ;
	variable_voltage_product_imaginary_25_27.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_27_28 ;
	variable_voltage_product_imaginary_27_28.lo = -1.155 ;
	variable_voltage_product_imaginary_27_28.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_27_29 ;
	variable_voltage_product_imaginary_27_29.lo = -1.155 ;
	variable_voltage_product_imaginary_27_29.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_27_30 ;
	variable_voltage_product_imaginary_27_30.lo = -1.155 ;
	variable_voltage_product_imaginary_27_30.up = 1.155 ;
Free Variable variable_voltage_product_imaginary_29_30 ;
	variable_voltage_product_imaginary_29_30.lo = -1.1025 ;
	variable_voltage_product_imaginary_29_30.up = 1.1025 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_5 ;
	variable_curtailed_feed_in_5.lo = 0.0 ;
	variable_curtailed_feed_in_5.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_7 ;
	variable_curtailed_feed_in_7.lo = 0.0 ;
	variable_curtailed_feed_in_7.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_9 ;
	variable_curtailed_feed_in_9.lo = 0.0 ;
	variable_curtailed_feed_in_9.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_11 ;
	variable_curtailed_feed_in_11.lo = 0.0 ;
	variable_curtailed_feed_in_11.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_13 ;
	variable_curtailed_feed_in_13.lo = 0.0 ;
	variable_curtailed_feed_in_13.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_15 ;
	variable_curtailed_feed_in_15.lo = 0.0 ;
	variable_curtailed_feed_in_15.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_17 ;
	variable_curtailed_feed_in_17.lo = 0.0 ;
	variable_curtailed_feed_in_17.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_19 ;
	variable_curtailed_feed_in_19.lo = 0.0 ;
	variable_curtailed_feed_in_19.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_21 ;
	variable_curtailed_feed_in_21.lo = 0.0 ;
	variable_curtailed_feed_in_21.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_23 ;
	variable_curtailed_feed_in_23.lo = 0.0 ;
	variable_curtailed_feed_in_23.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_25 ;
	variable_curtailed_feed_in_25.lo = 0.0 ;
	variable_curtailed_feed_in_25.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_27 ;
	variable_curtailed_feed_in_27.lo = 0.0 ;
	variable_curtailed_feed_in_27.up = 0.2756 ;
Free Variable variable_curtailed_feed_in_29 ;
	variable_curtailed_feed_in_29.lo = 0.0 ;
	variable_curtailed_feed_in_29.up = 0.2756 ;
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
Binary Variable variable_curtailment_binaries_11_1 ;
Binary Variable variable_curtailment_binaries_11_2 ;
Binary Variable variable_curtailment_binaries_11_3 ;
Binary Variable variable_curtailment_binaries_13_1 ;
Binary Variable variable_curtailment_binaries_13_2 ;
Binary Variable variable_curtailment_binaries_13_3 ;
Binary Variable variable_curtailment_binaries_15_1 ;
Binary Variable variable_curtailment_binaries_15_2 ;
Binary Variable variable_curtailment_binaries_15_3 ;
Binary Variable variable_curtailment_binaries_17_1 ;
Binary Variable variable_curtailment_binaries_17_2 ;
Binary Variable variable_curtailment_binaries_17_3 ;
Binary Variable variable_curtailment_binaries_19_1 ;
Binary Variable variable_curtailment_binaries_19_2 ;
Binary Variable variable_curtailment_binaries_19_3 ;
Binary Variable variable_curtailment_binaries_21_1 ;
Binary Variable variable_curtailment_binaries_21_2 ;
Binary Variable variable_curtailment_binaries_21_3 ;
Binary Variable variable_curtailment_binaries_23_1 ;
Binary Variable variable_curtailment_binaries_23_2 ;
Binary Variable variable_curtailment_binaries_23_3 ;
Binary Variable variable_curtailment_binaries_25_1 ;
Binary Variable variable_curtailment_binaries_25_2 ;
Binary Variable variable_curtailment_binaries_25_3 ;
Binary Variable variable_curtailment_binaries_27_1 ;
Binary Variable variable_curtailment_binaries_27_2 ;
Binary Variable variable_curtailment_binaries_27_3 ;
Binary Variable variable_curtailment_binaries_29_1 ;
Binary Variable variable_curtailment_binaries_29_2 ;
Binary Variable variable_curtailment_binaries_29_3 ;

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -207.9565*variable_curtailed_feed_in_1 - 207.9565*variable_curtailed_feed_in_11 - 207.9565*variable_curtailed_feed_in_13 - 207.9565*variable_curtailed_feed_in_15 - 207.9565*variable_curtailed_feed_in_17 - 207.9565*variable_curtailed_feed_in_19 - 207.9565*variable_curtailed_feed_in_21 - 207.9565*variable_curtailed_feed_in_23 - 207.9565*variable_curtailed_feed_in_25 - 207.9565*variable_curtailed_feed_in_27 - 207.9565*variable_curtailed_feed_in_29 - 207.9565*variable_curtailed_feed_in_3 - 207.9565*variable_curtailed_feed_in_5 - 207.9565*variable_curtailed_feed_in_7 - 207.9565*variable_curtailed_feed_in_9 + 92.1004*variable_real_power_gen_1 + 98.6613*variable_real_power_gen_13 + 127.9805*variable_real_power_gen_2 + 120.2104*variable_real_power_gen_22 + 689.2848*variable_real_power_gen_23 + 119.5014*variable_real_power_gen_27 + 1719.384342
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_3 + variable_real_power_gen_1) =e= (0.0)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_4 - variable_real_power_flow_2_5 - variable_real_power_flow_2_6 + variable_real_power_gen_2) =e= (0.2371)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_1 - variable_real_power_flow_3_4) =e= (0.0262)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_12 - variable_real_power_flow_4_2 - variable_real_power_flow_4_3 - variable_real_power_flow_4_6) =e= (0.083)
Equation linear_constraint_real_flow_conservation_5 ;
linear_constraint_real_flow_conservation_5..
	(variable_curtailed_feed_in_5 - variable_real_power_flow_5_2 - variable_real_power_flow_5_7) =e= (0.0)
Equation linear_constraint_real_flow_conservation_6 ;
linear_constraint_real_flow_conservation_6..
	(-variable_real_power_flow_6_10 - variable_real_power_flow_6_2 - variable_real_power_flow_6_28 - variable_real_power_flow_6_4 - variable_real_power_flow_6_7 - variable_real_power_flow_6_8 - variable_real_power_flow_6_9) =e= (0.0)
Equation linear_constraint_real_flow_conservation_7 ;
linear_constraint_real_flow_conservation_7..
	(variable_curtailed_feed_in_7 - variable_real_power_flow_7_5 - variable_real_power_flow_7_6) =e= (0.2491)
Equation linear_constraint_real_flow_conservation_8 ;
linear_constraint_real_flow_conservation_8..
	(-variable_real_power_flow_8_28 - variable_real_power_flow_8_6) =e= (0.3278)
Equation linear_constraint_real_flow_conservation_9 ;
linear_constraint_real_flow_conservation_9..
	(variable_curtailed_feed_in_9 - variable_real_power_flow_9_10 - variable_real_power_flow_9_11 - variable_real_power_flow_9_6) =e= (0.0)
Equation linear_constraint_real_flow_conservation_10 ;
linear_constraint_real_flow_conservation_10..
	(-variable_real_power_flow_10_17 - variable_real_power_flow_10_20 - variable_real_power_flow_10_21 - variable_real_power_flow_10_22 - variable_real_power_flow_10_6 - variable_real_power_flow_10_9) =e= (0.0634)
Equation linear_constraint_real_flow_conservation_11 ;
linear_constraint_real_flow_conservation_11..
	(variable_curtailed_feed_in_11 - variable_real_power_flow_11_9) =e= (0.0)
Equation linear_constraint_real_flow_conservation_12 ;
linear_constraint_real_flow_conservation_12..
	(-variable_real_power_flow_12_13 - variable_real_power_flow_12_14 - variable_real_power_flow_12_15 - variable_real_power_flow_12_16 - variable_real_power_flow_12_4) =e= (0.1224)
Equation linear_constraint_real_flow_conservation_13 ;
linear_constraint_real_flow_conservation_13..
	(variable_curtailed_feed_in_13 - variable_real_power_flow_13_12 + variable_real_power_gen_13) =e= (0.0)
Equation linear_constraint_real_flow_conservation_14 ;
linear_constraint_real_flow_conservation_14..
	(-variable_real_power_flow_14_12 - variable_real_power_flow_14_15) =e= (0.0677)
Equation linear_constraint_real_flow_conservation_15 ;
linear_constraint_real_flow_conservation_15..
	(variable_curtailed_feed_in_15 - variable_real_power_flow_15_12 - variable_real_power_flow_15_14 - variable_real_power_flow_15_18 - variable_real_power_flow_15_23) =e= (0.0896)
Equation linear_constraint_real_flow_conservation_16 ;
linear_constraint_real_flow_conservation_16..
	(-variable_real_power_flow_16_12 - variable_real_power_flow_16_17) =e= (0.0382)
Equation linear_constraint_real_flow_conservation_17 ;
linear_constraint_real_flow_conservation_17..
	(variable_curtailed_feed_in_17 - variable_real_power_flow_17_10 - variable_real_power_flow_17_16) =e= (0.0983)
Equation linear_constraint_real_flow_conservation_18 ;
linear_constraint_real_flow_conservation_18..
	(-variable_real_power_flow_18_15 - variable_real_power_flow_18_19) =e= (0.035)
Equation linear_constraint_real_flow_conservation_19 ;
linear_constraint_real_flow_conservation_19..
	(variable_curtailed_feed_in_19 - variable_real_power_flow_19_18 - variable_real_power_flow_19_20) =e= (0.1038)
Equation linear_constraint_real_flow_conservation_20 ;
linear_constraint_real_flow_conservation_20..
	(-variable_real_power_flow_20_10 - variable_real_power_flow_20_19) =e= (0.024)
Equation linear_constraint_real_flow_conservation_21 ;
linear_constraint_real_flow_conservation_21..
	(variable_curtailed_feed_in_21 - variable_real_power_flow_21_10 - variable_real_power_flow_21_22) =e= (0.1912)
Equation linear_constraint_real_flow_conservation_22 ;
linear_constraint_real_flow_conservation_22..
	(-variable_real_power_flow_22_10 - variable_real_power_flow_22_21 - variable_real_power_flow_22_24 + variable_real_power_gen_22) =e= (0.0)
Equation linear_constraint_real_flow_conservation_23 ;
linear_constraint_real_flow_conservation_23..
	(variable_curtailed_feed_in_23 - variable_real_power_flow_23_15 - variable_real_power_flow_23_24 + variable_real_power_gen_23) =e= (0.035)
Equation linear_constraint_real_flow_conservation_24 ;
linear_constraint_real_flow_conservation_24..
	(-variable_real_power_flow_24_22 - variable_real_power_flow_24_23 - variable_real_power_flow_24_25) =e= (0.0951)
Equation linear_constraint_real_flow_conservation_25 ;
linear_constraint_real_flow_conservation_25..
	(variable_curtailed_feed_in_25 - variable_real_power_flow_25_24 - variable_real_power_flow_25_26 - variable_real_power_flow_25_27) =e= (0.0)
Equation linear_constraint_real_flow_conservation_26 ;
linear_constraint_real_flow_conservation_26..
	(-variable_real_power_flow_26_25) =e= (0.0382)
Equation linear_constraint_real_flow_conservation_27 ;
linear_constraint_real_flow_conservation_27..
	(variable_curtailed_feed_in_27 - variable_real_power_flow_27_25 - variable_real_power_flow_27_28 - variable_real_power_flow_27_29 - variable_real_power_flow_27_30 + variable_real_power_gen_27) =e= (0.0)
Equation linear_constraint_real_flow_conservation_28 ;
linear_constraint_real_flow_conservation_28..
	(-variable_real_power_flow_28_27 - variable_real_power_flow_28_6 - variable_real_power_flow_28_8) =e= (0.0)
Equation linear_constraint_real_flow_conservation_29 ;
linear_constraint_real_flow_conservation_29..
	(variable_curtailed_feed_in_29 - variable_real_power_flow_29_27 - variable_real_power_flow_29_30) =e= (0.0262)
Equation linear_constraint_real_flow_conservation_30 ;
linear_constraint_real_flow_conservation_30..
	(-variable_real_power_flow_30_27 - variable_real_power_flow_30_29) =e= (0.1158)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_2 - variable_reactive_power_flow_1_3 + variable_reactive_power_gen_1) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_1 - variable_reactive_power_flow_2_4 - variable_reactive_power_flow_2_5 - variable_reactive_power_flow_2_6 + variable_reactive_power_gen_2) =e= (0.127)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_1 - variable_reactive_power_flow_3_4) =e= (0.012)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_12 - variable_reactive_power_flow_4_2 - variable_reactive_power_flow_4_3 - variable_reactive_power_flow_4_6) =e= (0.016)
Equation linear_constraint_reactive_flow_conservation_5 ;
linear_constraint_reactive_flow_conservation_5..
	(0.48*variable_curtailed_feed_in_5 - variable_reactive_power_flow_5_2 - variable_reactive_power_flow_5_7 + 0.0019*variable_voltage_square_5) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_6 ;
linear_constraint_reactive_flow_conservation_6..
	(-variable_reactive_power_flow_6_10 - variable_reactive_power_flow_6_2 - variable_reactive_power_flow_6_28 - variable_reactive_power_flow_6_4 - variable_reactive_power_flow_6_7 - variable_reactive_power_flow_6_8 - variable_reactive_power_flow_6_9) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_7 ;
linear_constraint_reactive_flow_conservation_7..
	(0.48*variable_curtailed_feed_in_7 - variable_reactive_power_flow_7_5 - variable_reactive_power_flow_7_6) =e= (0.109)
Equation linear_constraint_reactive_flow_conservation_8 ;
linear_constraint_reactive_flow_conservation_8..
	(-variable_reactive_power_flow_8_28 - variable_reactive_power_flow_8_6) =e= (0.3)
Equation linear_constraint_reactive_flow_conservation_9 ;
linear_constraint_reactive_flow_conservation_9..
	(0.48*variable_curtailed_feed_in_9 - variable_reactive_power_flow_9_10 - variable_reactive_power_flow_9_11 - variable_reactive_power_flow_9_6) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_10 ;
linear_constraint_reactive_flow_conservation_10..
	(-variable_reactive_power_flow_10_17 - variable_reactive_power_flow_10_20 - variable_reactive_power_flow_10_21 - variable_reactive_power_flow_10_22 - variable_reactive_power_flow_10_6 - variable_reactive_power_flow_10_9) =e= (0.02)
Equation linear_constraint_reactive_flow_conservation_11 ;
linear_constraint_reactive_flow_conservation_11..
	(0.48*variable_curtailed_feed_in_11 - variable_reactive_power_flow_11_9) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_12 ;
linear_constraint_reactive_flow_conservation_12..
	(-variable_reactive_power_flow_12_13 - variable_reactive_power_flow_12_14 - variable_reactive_power_flow_12_15 - variable_reactive_power_flow_12_16 - variable_reactive_power_flow_12_4) =e= (0.075)
Equation linear_constraint_reactive_flow_conservation_13 ;
linear_constraint_reactive_flow_conservation_13..
	(0.48*variable_curtailed_feed_in_13 - variable_reactive_power_flow_13_12 + variable_reactive_power_gen_13) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_14 ;
linear_constraint_reactive_flow_conservation_14..
	(-variable_reactive_power_flow_14_12 - variable_reactive_power_flow_14_15) =e= (0.016)
Equation linear_constraint_reactive_flow_conservation_15 ;
linear_constraint_reactive_flow_conservation_15..
	(0.48*variable_curtailed_feed_in_15 - variable_reactive_power_flow_15_12 - variable_reactive_power_flow_15_14 - variable_reactive_power_flow_15_18 - variable_reactive_power_flow_15_23) =e= (0.025)
Equation linear_constraint_reactive_flow_conservation_16 ;
linear_constraint_reactive_flow_conservation_16..
	(-variable_reactive_power_flow_16_12 - variable_reactive_power_flow_16_17) =e= (0.018)
Equation linear_constraint_reactive_flow_conservation_17 ;
linear_constraint_reactive_flow_conservation_17..
	(0.48*variable_curtailed_feed_in_17 - variable_reactive_power_flow_17_10 - variable_reactive_power_flow_17_16) =e= (0.058)
Equation linear_constraint_reactive_flow_conservation_18 ;
linear_constraint_reactive_flow_conservation_18..
	(-variable_reactive_power_flow_18_15 - variable_reactive_power_flow_18_19) =e= (0.009)
Equation linear_constraint_reactive_flow_conservation_19 ;
linear_constraint_reactive_flow_conservation_19..
	(0.48*variable_curtailed_feed_in_19 - variable_reactive_power_flow_19_18 - variable_reactive_power_flow_19_20) =e= (0.034)
Equation linear_constraint_reactive_flow_conservation_20 ;
linear_constraint_reactive_flow_conservation_20..
	(-variable_reactive_power_flow_20_10 - variable_reactive_power_flow_20_19) =e= (0.007)
Equation linear_constraint_reactive_flow_conservation_21 ;
linear_constraint_reactive_flow_conservation_21..
	(0.48*variable_curtailed_feed_in_21 - variable_reactive_power_flow_21_10 - variable_reactive_power_flow_21_22) =e= (0.112)
Equation linear_constraint_reactive_flow_conservation_22 ;
linear_constraint_reactive_flow_conservation_22..
	(-variable_reactive_power_flow_22_10 - variable_reactive_power_flow_22_21 - variable_reactive_power_flow_22_24 + variable_reactive_power_gen_22) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_23 ;
linear_constraint_reactive_flow_conservation_23..
	(0.48*variable_curtailed_feed_in_23 - variable_reactive_power_flow_23_15 - variable_reactive_power_flow_23_24 + variable_reactive_power_gen_23) =e= (0.016)
Equation linear_constraint_reactive_flow_conservation_24 ;
linear_constraint_reactive_flow_conservation_24..
	(-variable_reactive_power_flow_24_22 - variable_reactive_power_flow_24_23 - variable_reactive_power_flow_24_25 + 0.0004*variable_voltage_square_24) =e= (0.067)
Equation linear_constraint_reactive_flow_conservation_25 ;
linear_constraint_reactive_flow_conservation_25..
	(0.48*variable_curtailed_feed_in_25 - variable_reactive_power_flow_25_24 - variable_reactive_power_flow_25_26 - variable_reactive_power_flow_25_27) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_26 ;
linear_constraint_reactive_flow_conservation_26..
	(-variable_reactive_power_flow_26_25) =e= (0.023)
Equation linear_constraint_reactive_flow_conservation_27 ;
linear_constraint_reactive_flow_conservation_27..
	(0.48*variable_curtailed_feed_in_27 - variable_reactive_power_flow_27_25 - variable_reactive_power_flow_27_28 - variable_reactive_power_flow_27_29 - variable_reactive_power_flow_27_30 + variable_reactive_power_gen_27) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_28 ;
linear_constraint_reactive_flow_conservation_28..
	(-variable_reactive_power_flow_28_27 - variable_reactive_power_flow_28_6 - variable_reactive_power_flow_28_8) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_29 ;
linear_constraint_reactive_flow_conservation_29..
	(0.48*variable_curtailed_feed_in_29 - variable_reactive_power_flow_29_27 - variable_reactive_power_flow_29_30) =e= (0.009)
Equation linear_constraint_reactive_flow_conservation_30 ;
linear_constraint_reactive_flow_conservation_30..
	(-variable_reactive_power_flow_30_27 - variable_reactive_power_flow_30_29) =e= (0.019)
Equation linear_constraint_real_power_flow_equation_1_2 ;
linear_constraint_real_power_flow_equation_1_2..
	(variable_real_power_flow_1_2) =e= (5.22464617988566*variable_switched_voltage_square_1_2 - 15.6467268408034*variable_voltage_product_imaginary_1_2 - 5.22464617988566*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_1 ;
linear_constraint_real_power_flow_equation_2_1..
	(variable_real_power_flow_2_1) =e= (5.22464617988566*variable_switched_voltage_square_2_1 + 15.6467268408034*variable_voltage_product_imaginary_1_2 - 5.22464617988566*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_1_3 ;
linear_constraint_real_power_flow_equation_1_3..
	(variable_real_power_flow_1_3) =e= (1.24373728746401*variable_switched_voltage_square_1_3 - 5.09602092120209*variable_voltage_product_imaginary_1_3 - 1.24373728746401*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_3_1 ;
linear_constraint_real_power_flow_equation_3_1..
	(variable_real_power_flow_3_1) =e= (1.24373728746401*variable_switched_voltage_square_3_1 + 5.09602092120209*variable_voltage_product_imaginary_1_3 - 1.24373728746401*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_2_4 ;
linear_constraint_real_power_flow_equation_2_4..
	(variable_real_power_flow_2_4) =e= (1.70553031669903*variable_switched_voltage_square_2_4 - 5.19737922825651*variable_voltage_product_imaginary_2_4 - 1.70553031669903*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_4_2 ;
linear_constraint_real_power_flow_equation_4_2..
	(variable_real_power_flow_4_2) =e= (1.70553031669903*variable_switched_voltage_square_4_2 + 5.19737922825651*variable_voltage_product_imaginary_2_4 - 1.70553031669903*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_2_5 ;
linear_constraint_real_power_flow_equation_2_5..
	(variable_real_power_flow_2_5) =e= (1.13596078817388*variable_switched_voltage_square_2_5 - 4.77247932828136*variable_voltage_product_imaginary_2_5 - 1.13596078817388*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_5_2 ;
linear_constraint_real_power_flow_equation_5_2..
	(variable_real_power_flow_5_2) =e= (1.13596078817388*variable_switched_voltage_square_5_2 + 4.77247932828136*variable_voltage_product_imaginary_2_5 - 1.13596078817388*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_2_6 ;
linear_constraint_real_power_flow_equation_2_6..
	(variable_real_power_flow_2_6) =e= (1.68614488076547*variable_switched_voltage_square_2_6 - 5.11647749533481*variable_voltage_product_imaginary_2_6 - 1.68614488076547*variable_voltage_product_real_2_6)
Equation linear_constraint_real_power_flow_equation_6_2 ;
linear_constraint_real_power_flow_equation_6_2..
	(variable_real_power_flow_6_2) =e= (1.68614488076547*variable_switched_voltage_square_6_2 + 5.11647749533481*variable_voltage_product_imaginary_2_6 - 1.68614488076547*variable_voltage_product_real_2_6)
Equation linear_constraint_real_power_flow_equation_3_4 ;
linear_constraint_real_power_flow_equation_3_4..
	(variable_real_power_flow_3_4) =e= (8.19544904231211*variable_switched_voltage_square_3_4 - 23.5308726290628*variable_voltage_product_imaginary_3_4 - 8.19544904231211*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_3 ;
linear_constraint_real_power_flow_equation_4_3..
	(variable_real_power_flow_4_3) =e= (8.19544904231211*variable_switched_voltage_square_4_3 + 23.5308726290628*variable_voltage_product_imaginary_3_4 - 8.19544904231211*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_6 ;
linear_constraint_real_power_flow_equation_4_6..
	(variable_real_power_flow_4_6) =e= (6.41312373017456*variable_switched_voltage_square_4_6 - 22.3112035654812*variable_voltage_product_imaginary_4_6 - 6.41312373017456*variable_voltage_product_real_4_6)
Equation linear_constraint_real_power_flow_equation_6_4 ;
linear_constraint_real_power_flow_equation_6_4..
	(variable_real_power_flow_6_4) =e= (6.41312373017456*variable_switched_voltage_square_6_4 + 22.3112035654812*variable_voltage_product_imaginary_4_6 - 6.41312373017456*variable_voltage_product_real_4_6)
Equation linear_constraint_real_power_flow_equation_4_12 ;
linear_constraint_real_power_flow_equation_4_12..
	(variable_real_power_flow_4_12) =e= (-3.90625*variable_voltage_product_imaginary_4_12)
Equation linear_constraint_real_power_flow_equation_12_4 ;
linear_constraint_real_power_flow_equation_12_4..
	(variable_real_power_flow_12_4) =e= (3.90625*variable_voltage_product_imaginary_4_12)
Equation linear_constraint_real_power_flow_equation_5_7 ;
linear_constraint_real_power_flow_equation_5_7..
	(variable_real_power_flow_5_7) =e= (2.95402003596198*variable_switched_voltage_square_5_7 - 7.4492679167737*variable_voltage_product_imaginary_5_7 - 2.95402003596198*variable_voltage_product_real_5_7)
Equation linear_constraint_real_power_flow_equation_7_5 ;
linear_constraint_real_power_flow_equation_7_5..
	(variable_real_power_flow_7_5) =e= (2.95402003596198*variable_switched_voltage_square_7_5 + 7.4492679167737*variable_voltage_product_imaginary_5_7 - 2.95402003596198*variable_voltage_product_real_5_7)
Equation linear_constraint_real_power_flow_equation_6_7 ;
linear_constraint_real_power_flow_equation_6_7..
	(variable_real_power_flow_6_7) =e= (3.59021042398099*variable_switched_voltage_square_6_7 - 11.0261144107281*variable_voltage_product_imaginary_6_7 - 3.59021042398099*variable_voltage_product_real_6_7)
Equation linear_constraint_real_power_flow_equation_7_6 ;
linear_constraint_real_power_flow_equation_7_6..
	(variable_real_power_flow_7_6) =e= (3.59021042398099*variable_switched_voltage_square_7_6 + 11.0261144107281*variable_voltage_product_imaginary_6_7 - 3.59021042398099*variable_voltage_product_real_6_7)
Equation linear_constraint_real_power_flow_equation_6_8 ;
linear_constraint_real_power_flow_equation_6_8..
	(variable_real_power_flow_6_8) =e= (6.28930817610063*variable_switched_voltage_square_6_8 - 22.0125786163522*variable_voltage_product_imaginary_6_8 - 6.28930817610063*variable_voltage_product_real_6_8)
Equation linear_constraint_real_power_flow_equation_8_6 ;
linear_constraint_real_power_flow_equation_8_6..
	(variable_real_power_flow_8_6) =e= (6.28930817610063*variable_switched_voltage_square_8_6 + 22.0125786163522*variable_voltage_product_imaginary_6_8 - 6.28930817610063*variable_voltage_product_real_6_8)
Equation linear_constraint_real_power_flow_equation_6_9 ;
linear_constraint_real_power_flow_equation_6_9..
	(variable_real_power_flow_6_9) =e= (-4.80769230769231*variable_voltage_product_imaginary_6_9)
Equation linear_constraint_real_power_flow_equation_9_6 ;
linear_constraint_real_power_flow_equation_9_6..
	(variable_real_power_flow_9_6) =e= (4.80769230769231*variable_voltage_product_imaginary_6_9)
Equation linear_constraint_real_power_flow_equation_6_10 ;
linear_constraint_real_power_flow_equation_6_10..
	(variable_real_power_flow_6_10) =e= (-1.79856115107914*variable_voltage_product_imaginary_6_10)
Equation linear_constraint_real_power_flow_equation_10_6 ;
linear_constraint_real_power_flow_equation_10_6..
	(variable_real_power_flow_10_6) =e= (1.79856115107914*variable_voltage_product_imaginary_6_10)
Equation linear_constraint_real_power_flow_equation_6_28 ;
linear_constraint_real_power_flow_equation_6_28..
	(variable_real_power_flow_6_28) =e= (4.36284405801292*variable_switched_voltage_square_6_28 - 15.4635715428979*variable_voltage_product_imaginary_6_28 - 4.36284405801292*variable_voltage_product_real_6_28)
Equation linear_constraint_real_power_flow_equation_28_6 ;
linear_constraint_real_power_flow_equation_28_6..
	(variable_real_power_flow_28_6) =e= (4.36284405801292*variable_switched_voltage_square_28_6 + 15.4635715428979*variable_voltage_product_imaginary_6_28 - 4.36284405801292*variable_voltage_product_real_6_28)
Equation linear_constraint_real_power_flow_equation_8_28 ;
linear_constraint_real_power_flow_equation_8_28..
	(variable_real_power_flow_8_28) =e= (1.44397906139545*variable_switched_voltage_square_8_28 - 4.54081465847625*variable_voltage_product_imaginary_8_28 - 1.44397906139545*variable_voltage_product_real_8_28)
Equation linear_constraint_real_power_flow_equation_28_8 ;
linear_constraint_real_power_flow_equation_28_8..
	(variable_real_power_flow_28_8) =e= (1.44397906139545*variable_switched_voltage_square_28_8 + 4.54081465847625*variable_voltage_product_imaginary_8_28 - 1.44397906139545*variable_voltage_product_real_8_28)
Equation linear_constraint_real_power_flow_equation_9_11 ;
linear_constraint_real_power_flow_equation_9_11..
	(variable_real_power_flow_9_11) =e= (-4.80769230769231*variable_voltage_product_imaginary_9_11)
Equation linear_constraint_real_power_flow_equation_11_9 ;
linear_constraint_real_power_flow_equation_11_9..
	(variable_real_power_flow_11_9) =e= (4.80769230769231*variable_voltage_product_imaginary_9_11)
Equation linear_constraint_real_power_flow_equation_9_10 ;
linear_constraint_real_power_flow_equation_9_10..
	(variable_real_power_flow_9_10) =e= (-9.09090909090909*variable_voltage_product_imaginary_9_10)
Equation linear_constraint_real_power_flow_equation_10_9 ;
linear_constraint_real_power_flow_equation_10_9..
	(variable_real_power_flow_10_9) =e= (9.09090909090909*variable_voltage_product_imaginary_9_10)
Equation linear_constraint_real_power_flow_equation_10_20 ;
linear_constraint_real_power_flow_equation_10_20..
	(variable_real_power_flow_10_20) =e= (1.78483031526663*variable_switched_voltage_square_10_20 - 3.98535828943083*variable_voltage_product_imaginary_10_20 - 1.78483031526663*variable_voltage_product_real_10_20)
Equation linear_constraint_real_power_flow_equation_20_10 ;
linear_constraint_real_power_flow_equation_20_10..
	(variable_real_power_flow_20_10) =e= (1.78483031526663*variable_switched_voltage_square_20_10 + 3.98535828943083*variable_voltage_product_imaginary_10_20 - 1.78483031526663*variable_voltage_product_real_10_20)
Equation linear_constraint_real_power_flow_equation_10_17 ;
linear_constraint_real_power_flow_equation_10_17..
	(variable_real_power_flow_10_17) =e= (3.95603912571535*variable_switched_voltage_square_10_17 - 10.3174477198441*variable_voltage_product_imaginary_10_17 - 3.95603912571535*variable_voltage_product_real_10_17)
Equation linear_constraint_real_power_flow_equation_17_10 ;
linear_constraint_real_power_flow_equation_17_10..
	(variable_real_power_flow_17_10) =e= (3.95603912571535*variable_switched_voltage_square_17_10 + 10.3174477198441*variable_voltage_product_imaginary_10_17 - 3.95603912571535*variable_voltage_product_real_10_17)
Equation linear_constraint_real_power_flow_equation_10_21 ;
linear_constraint_real_power_flow_equation_10_21..
	(variable_real_power_flow_10_21) =e= (5.10185382015965*variable_switched_voltage_square_10_21 - 10.9807141129298*variable_voltage_product_imaginary_10_21 - 5.10185382015965*variable_voltage_product_real_10_21)
Equation linear_constraint_real_power_flow_equation_21_10 ;
linear_constraint_real_power_flow_equation_21_10..
	(variable_real_power_flow_21_10) =e= (5.10185382015965*variable_switched_voltage_square_21_10 + 10.9807141129298*variable_voltage_product_imaginary_10_21 - 5.10185382015965*variable_voltage_product_real_10_21)
Equation linear_constraint_real_power_flow_equation_10_22 ;
linear_constraint_real_power_flow_equation_10_22..
	(variable_real_power_flow_10_22) =e= (2.6193195533826*variable_switched_voltage_square_10_22 - 5.40077030332945*variable_voltage_product_imaginary_10_22 - 2.6193195533826*variable_voltage_product_real_10_22)
Equation linear_constraint_real_power_flow_equation_22_10 ;
linear_constraint_real_power_flow_equation_22_10..
	(variable_real_power_flow_22_10) =e= (2.6193195533826*variable_switched_voltage_square_22_10 + 5.40077030332945*variable_voltage_product_imaginary_10_22 - 2.6193195533826*variable_voltage_product_real_10_22)
Equation linear_constraint_real_power_flow_equation_12_13 ;
linear_constraint_real_power_flow_equation_12_13..
	(variable_real_power_flow_12_13) =e= (-7.14285714285714*variable_voltage_product_imaginary_12_13)
Equation linear_constraint_real_power_flow_equation_13_12 ;
linear_constraint_real_power_flow_equation_13_12..
	(variable_real_power_flow_13_12) =e= (7.14285714285714*variable_voltage_product_imaginary_12_13)
Equation linear_constraint_real_power_flow_equation_12_14 ;
linear_constraint_real_power_flow_equation_12_14..
	(variable_real_power_flow_12_14) =e= (1.52656760883956*variable_switched_voltage_square_12_14 - 3.17342527296542*variable_voltage_product_imaginary_12_14 - 1.52656760883956*variable_voltage_product_real_12_14)
Equation linear_constraint_real_power_flow_equation_14_12 ;
linear_constraint_real_power_flow_equation_14_12..
	(variable_real_power_flow_14_12) =e= (1.52656760883956*variable_switched_voltage_square_14_12 + 3.17342527296542*variable_voltage_product_imaginary_12_14 - 1.52656760883956*variable_voltage_product_real_12_14)
Equation linear_constraint_real_power_flow_equation_12_15 ;
linear_constraint_real_power_flow_equation_12_15..
	(variable_real_power_flow_12_15) =e= (3.09539618265643*variable_switched_voltage_square_12_15 - 6.09727586432626*variable_voltage_product_imaginary_12_15 - 3.09539618265643*variable_voltage_product_real_12_15)
Equation linear_constraint_real_power_flow_equation_15_12 ;
linear_constraint_real_power_flow_equation_15_12..
	(variable_real_power_flow_15_12) =e= (3.09539618265643*variable_switched_voltage_square_15_12 + 6.09727586432626*variable_voltage_product_imaginary_12_15 - 3.09539618265643*variable_voltage_product_real_12_15)
Equation linear_constraint_real_power_flow_equation_12_16 ;
linear_constraint_real_power_flow_equation_12_16..
	(variable_real_power_flow_12_16) =e= (1.95199779228017*variable_switched_voltage_square_12_16 - 4.10435937911185*variable_voltage_product_imaginary_12_16 - 1.95199779228017*variable_voltage_product_real_12_16)
Equation linear_constraint_real_power_flow_equation_16_12 ;
linear_constraint_real_power_flow_equation_16_12..
	(variable_real_power_flow_16_12) =e= (1.95199779228017*variable_switched_voltage_square_16_12 + 4.10435937911185*variable_voltage_product_imaginary_12_16 - 1.95199779228017*variable_voltage_product_real_12_16)
Equation linear_constraint_real_power_flow_equation_14_15 ;
linear_constraint_real_power_flow_equation_14_15..
	(variable_real_power_flow_14_15) =e= (2.49095226399946*variable_switched_voltage_square_14_15 - 2.25087405936965*variable_voltage_product_imaginary_14_15 - 2.49095226399946*variable_voltage_product_real_14_15)
Equation linear_constraint_real_power_flow_equation_15_14 ;
linear_constraint_real_power_flow_equation_15_14..
	(variable_real_power_flow_15_14) =e= (2.49095226399946*variable_switched_voltage_square_15_14 + 2.25087405936965*variable_voltage_product_imaginary_14_15 - 2.49095226399946*variable_voltage_product_real_14_15)
Equation linear_constraint_real_power_flow_equation_15_18 ;
linear_constraint_real_power_flow_equation_15_18..
	(variable_real_power_flow_15_18) =e= (1.80769961776445*variable_switched_voltage_square_15_18 - 3.69142398580871*variable_voltage_product_imaginary_15_18 - 1.80769961776445*variable_voltage_product_real_15_18)
Equation linear_constraint_real_power_flow_equation_18_15 ;
linear_constraint_real_power_flow_equation_18_15..
	(variable_real_power_flow_18_15) =e= (1.80769961776445*variable_switched_voltage_square_18_15 + 3.69142398580871*variable_voltage_product_imaginary_15_18 - 1.80769961776445*variable_voltage_product_real_15_18)
Equation linear_constraint_real_power_flow_equation_15_23 ;
linear_constraint_real_power_flow_equation_15_23..
	(variable_real_power_flow_15_23) =e= (1.96834894890166*variable_switched_voltage_square_15_23 - 3.97606487678136*variable_voltage_product_imaginary_15_23 - 1.96834894890166*variable_voltage_product_real_15_23)
Equation linear_constraint_real_power_flow_equation_23_15 ;
linear_constraint_real_power_flow_equation_23_15..
	(variable_real_power_flow_23_15) =e= (1.96834894890166*variable_switched_voltage_square_23_15 + 3.97606487678136*variable_voltage_product_imaginary_15_23 - 1.96834894890166*variable_voltage_product_real_15_23)
Equation linear_constraint_real_power_flow_equation_16_17 ;
linear_constraint_real_power_flow_equation_16_17..
	(variable_real_power_flow_16_17) =e= (1.86780306464775*variable_switched_voltage_square_16_17 - 4.37936349623719*variable_voltage_product_imaginary_16_17 - 1.86780306464775*variable_voltage_product_real_16_17)
Equation linear_constraint_real_power_flow_equation_17_16 ;
linear_constraint_real_power_flow_equation_17_16..
	(variable_real_power_flow_17_16) =e= (1.86780306464775*variable_switched_voltage_square_17_16 + 4.37936349623719*variable_voltage_product_imaginary_16_17 - 1.86780306464775*variable_voltage_product_real_16_17)
Equation linear_constraint_real_power_flow_equation_18_19 ;
linear_constraint_real_power_flow_equation_18_19..
	(variable_real_power_flow_18_19) =e= (3.07568643400872*variable_switched_voltage_square_18_19 - 6.21875879927897*variable_voltage_product_imaginary_18_19 - 3.07568643400872*variable_voltage_product_real_18_19)
Equation linear_constraint_real_power_flow_equation_19_18 ;
linear_constraint_real_power_flow_equation_19_18..
	(variable_real_power_flow_19_18) =e= (3.07568643400872*variable_switched_voltage_square_19_18 + 6.21875879927897*variable_voltage_product_imaginary_18_19 - 3.07568643400872*variable_voltage_product_real_18_19)
Equation linear_constraint_real_power_flow_equation_19_20 ;
linear_constraint_real_power_flow_equation_19_20..
	(variable_real_power_flow_19_20) =e= (5.88235294117647*variable_switched_voltage_square_19_20 - 11.7647058823529*variable_voltage_product_imaginary_19_20 - 5.88235294117647*variable_voltage_product_real_19_20)
Equation linear_constraint_real_power_flow_equation_20_19 ;
linear_constraint_real_power_flow_equation_20_19..
	(variable_real_power_flow_20_19) =e= (5.88235294117647*variable_switched_voltage_square_20_19 + 11.7647058823529*variable_voltage_product_imaginary_19_20 - 5.88235294117647*variable_voltage_product_real_19_20)
Equation linear_constraint_real_power_flow_equation_21_22 ;
linear_constraint_real_power_flow_equation_21_22..
	(variable_real_power_flow_21_22) =e= (16.7746413697362*variable_switched_voltage_square_21_22 - 34.1277186487737*variable_voltage_product_imaginary_21_22 - 16.7746413697362*variable_voltage_product_real_21_22)
Equation linear_constraint_real_power_flow_equation_22_21 ;
linear_constraint_real_power_flow_equation_22_21..
	(variable_real_power_flow_22_21) =e= (16.7746413697362*variable_switched_voltage_square_22_21 + 34.1277186487737*variable_voltage_product_imaginary_21_22 - 16.7746413697362*variable_voltage_product_real_21_22)
Equation linear_constraint_real_power_flow_equation_22_24 ;
linear_constraint_real_power_flow_equation_22_24..
	(variable_real_power_flow_22_24) =e= (2.54053815225556*variable_switched_voltage_square_22_24 - 3.95440286307604*variable_voltage_product_imaginary_22_24 - 2.54053815225556*variable_voltage_product_real_22_24)
Equation linear_constraint_real_power_flow_equation_24_22 ;
linear_constraint_real_power_flow_equation_24_22..
	(variable_real_power_flow_24_22) =e= (2.54053815225556*variable_switched_voltage_square_24_22 + 3.95440286307604*variable_voltage_product_imaginary_22_24 - 2.54053815225556*variable_voltage_product_real_22_24)
Equation linear_constraint_real_power_flow_equation_23_24 ;
linear_constraint_real_power_flow_equation_23_24..
	(variable_real_power_flow_23_24) =e= (1.46140560648333*variable_switched_voltage_square_23_24 - 2.98923874053408*variable_voltage_product_imaginary_23_24 - 1.46140560648333*variable_voltage_product_real_23_24)
Equation linear_constraint_real_power_flow_equation_24_23 ;
linear_constraint_real_power_flow_equation_24_23..
	(variable_real_power_flow_24_23) =e= (1.46140560648333*variable_switched_voltage_square_24_23 + 2.98923874053408*variable_voltage_product_imaginary_23_24 - 1.46140560648333*variable_voltage_product_real_23_24)
Equation linear_constraint_real_power_flow_equation_24_25 ;
linear_constraint_real_power_flow_equation_24_25..
	(variable_real_power_flow_24_25) =e= (1.30989294387425*variable_switched_voltage_square_24_25 - 2.28762205370505*variable_voltage_product_imaginary_24_25 - 1.30989294387425*variable_voltage_product_real_24_25)
Equation linear_constraint_real_power_flow_equation_25_24 ;
linear_constraint_real_power_flow_equation_25_24..
	(variable_real_power_flow_25_24) =e= (1.30989294387425*variable_switched_voltage_square_25_24 + 2.28762205370505*variable_voltage_product_imaginary_24_25 - 1.30989294387425*variable_voltage_product_real_24_25)
Equation linear_constraint_real_power_flow_equation_25_26 ;
linear_constraint_real_power_flow_equation_25_26..
	(variable_real_power_flow_25_26) =e= (1.21653011944949*variable_switched_voltage_square_25_26 - 1.8171440463475*variable_voltage_product_imaginary_25_26 - 1.21653011944949*variable_voltage_product_real_25_26)
Equation linear_constraint_real_power_flow_equation_26_25 ;
linear_constraint_real_power_flow_equation_26_25..
	(variable_real_power_flow_26_25) =e= (1.21653011944949*variable_switched_voltage_square_26_25 + 1.8171440463475*variable_voltage_product_imaginary_25_26 - 1.21653011944949*variable_voltage_product_real_25_26)
Equation linear_constraint_real_power_flow_equation_25_27 ;
linear_constraint_real_power_flow_equation_25_27..
	(variable_real_power_flow_25_27) =e= (1.96929201699825*variable_switched_voltage_square_25_27 - 3.76021266191706*variable_voltage_product_imaginary_25_27 - 1.96929201699825*variable_voltage_product_real_25_27)
Equation linear_constraint_real_power_flow_equation_27_25 ;
linear_constraint_real_power_flow_equation_27_25..
	(variable_real_power_flow_27_25) =e= (1.96929201699825*variable_switched_voltage_square_27_25 + 3.76021266191706*variable_voltage_product_imaginary_25_27 - 1.96929201699825*variable_voltage_product_real_25_27)
Equation linear_constraint_real_power_flow_equation_27_28 ;
linear_constraint_real_power_flow_equation_27_28..
	(variable_real_power_flow_27_28) =e= (-2.52525252525253*variable_voltage_product_imaginary_27_28)
Equation linear_constraint_real_power_flow_equation_28_27 ;
linear_constraint_real_power_flow_equation_28_27..
	(variable_real_power_flow_28_27) =e= (2.52525252525253*variable_voltage_product_imaginary_27_28)
Equation linear_constraint_real_power_flow_equation_27_29 ;
linear_constraint_real_power_flow_equation_27_29..
	(variable_real_power_flow_27_29) =e= (0.99553355095268*variable_switched_voltage_square_27_29 - 1.88100584035782*variable_voltage_product_imaginary_27_29 - 0.99553355095268*variable_voltage_product_real_27_29)
Equation linear_constraint_real_power_flow_equation_29_27 ;
linear_constraint_real_power_flow_equation_29_27..
	(variable_real_power_flow_29_27) =e= (0.99553355095268*variable_switched_voltage_square_29_27 + 1.88100584035782*variable_voltage_product_imaginary_27_29 - 0.99553355095268*variable_voltage_product_real_27_29)
Equation linear_constraint_real_power_flow_equation_27_30 ;
linear_constraint_real_power_flow_equation_27_30..
	(variable_real_power_flow_27_30) =e= (0.687455902827657*variable_switched_voltage_square_27_30 - 1.29397149479772*variable_voltage_product_imaginary_27_30 - 0.687455902827657*variable_voltage_product_real_27_30)
Equation linear_constraint_real_power_flow_equation_30_27 ;
linear_constraint_real_power_flow_equation_30_27..
	(variable_real_power_flow_30_27) =e= (0.687455902827657*variable_switched_voltage_square_30_27 + 1.29397149479772*variable_voltage_product_imaginary_27_30 - 0.687455902827657*variable_voltage_product_real_27_30)
Equation linear_constraint_real_power_flow_equation_29_30 ;
linear_constraint_real_power_flow_equation_29_30..
	(variable_real_power_flow_29_30) =e= (0.912053207032276*variable_switched_voltage_square_29_30 - 1.72335856084923*variable_voltage_product_imaginary_29_30 - 0.912053207032276*variable_voltage_product_real_29_30)
Equation linear_constraint_real_power_flow_equation_30_29 ;
linear_constraint_real_power_flow_equation_30_29..
	(variable_real_power_flow_30_29) =e= (0.912053207032276*variable_switched_voltage_square_30_29 + 1.72335856084923*variable_voltage_product_imaginary_29_30 - 0.912053207032276*variable_voltage_product_real_29_30)
Equation linear_constraint_reactive_power_flow_equation_1_2 ;
linear_constraint_reactive_power_flow_equation_1_2..
	(variable_reactive_power_flow_1_2) =e= (15.6335268408034*variable_switched_voltage_square_1_2 + 5.22464617988566*variable_voltage_product_imaginary_1_2 - 15.6467268408034*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_1 ;
linear_constraint_reactive_power_flow_equation_2_1..
	(variable_reactive_power_flow_2_1) =e= (15.6335268408034*variable_switched_voltage_square_2_1 - 5.22464617988566*variable_voltage_product_imaginary_1_2 - 15.6467268408034*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_1_3 ;
linear_constraint_reactive_power_flow_equation_1_3..
	(variable_reactive_power_flow_1_3) =e= (5.08582092120209*variable_switched_voltage_square_1_3 + 1.24373728746401*variable_voltage_product_imaginary_1_3 - 5.09602092120209*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_3_1 ;
linear_constraint_reactive_power_flow_equation_3_1..
	(variable_reactive_power_flow_3_1) =e= (5.08582092120209*variable_switched_voltage_square_3_1 - 1.24373728746401*variable_voltage_product_imaginary_1_3 - 5.09602092120209*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_2_4 ;
linear_constraint_reactive_power_flow_equation_2_4..
	(variable_reactive_power_flow_2_4) =e= (5.18817922825651*variable_switched_voltage_square_2_4 + 1.70553031669903*variable_voltage_product_imaginary_2_4 - 5.19737922825651*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_4_2 ;
linear_constraint_reactive_power_flow_equation_4_2..
	(variable_reactive_power_flow_4_2) =e= (5.18817922825651*variable_switched_voltage_square_4_2 - 1.70553031669903*variable_voltage_product_imaginary_2_4 - 5.19737922825651*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_2_5 ;
linear_constraint_reactive_power_flow_equation_2_5..
	(variable_reactive_power_flow_2_5) =e= (4.76202932828136*variable_switched_voltage_square_2_5 + 1.13596078817388*variable_voltage_product_imaginary_2_5 - 4.77247932828136*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_5_2 ;
linear_constraint_reactive_power_flow_equation_5_2..
	(variable_reactive_power_flow_5_2) =e= (4.76202932828136*variable_switched_voltage_square_5_2 - 1.13596078817388*variable_voltage_product_imaginary_2_5 - 4.77247932828136*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_2_6 ;
linear_constraint_reactive_power_flow_equation_2_6..
	(variable_reactive_power_flow_2_6) =e= (5.10712749533481*variable_switched_voltage_square_2_6 + 1.68614488076547*variable_voltage_product_imaginary_2_6 - 5.11647749533481*variable_voltage_product_real_2_6)
Equation linear_constraint_reactive_power_flow_equation_6_2 ;
linear_constraint_reactive_power_flow_equation_6_2..
	(variable_reactive_power_flow_6_2) =e= (5.10712749533481*variable_switched_voltage_square_6_2 - 1.68614488076547*variable_voltage_product_imaginary_2_6 - 5.11647749533481*variable_voltage_product_real_2_6)
Equation linear_constraint_reactive_power_flow_equation_3_4 ;
linear_constraint_reactive_power_flow_equation_3_4..
	(variable_reactive_power_flow_3_4) =e= (23.5287726290628*variable_switched_voltage_square_3_4 + 8.19544904231211*variable_voltage_product_imaginary_3_4 - 23.5308726290628*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_3 ;
linear_constraint_reactive_power_flow_equation_4_3..
	(variable_reactive_power_flow_4_3) =e= (23.5287726290628*variable_switched_voltage_square_4_3 - 8.19544904231211*variable_voltage_product_imaginary_3_4 - 23.5308726290628*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_6 ;
linear_constraint_reactive_power_flow_equation_4_6..
	(variable_reactive_power_flow_4_6) =e= (22.3089535654812*variable_switched_voltage_square_4_6 + 6.41312373017456*variable_voltage_product_imaginary_4_6 - 22.3112035654812*variable_voltage_product_real_4_6)
Equation linear_constraint_reactive_power_flow_equation_6_4 ;
linear_constraint_reactive_power_flow_equation_6_4..
	(variable_reactive_power_flow_6_4) =e= (22.3089535654812*variable_switched_voltage_square_6_4 - 6.41312373017456*variable_voltage_product_imaginary_4_6 - 22.3112035654812*variable_voltage_product_real_4_6)
Equation linear_constraint_reactive_power_flow_equation_4_12 ;
linear_constraint_reactive_power_flow_equation_4_12..
	(variable_reactive_power_flow_4_12) =e= (3.90625*variable_switched_voltage_square_4_12 - 3.90625*variable_voltage_product_real_4_12)
Equation linear_constraint_reactive_power_flow_equation_12_4 ;
linear_constraint_reactive_power_flow_equation_12_4..
	(variable_reactive_power_flow_12_4) =e= (3.90625*variable_switched_voltage_square_12_4 - 3.90625*variable_voltage_product_real_4_12)
Equation linear_constraint_reactive_power_flow_equation_5_7 ;
linear_constraint_reactive_power_flow_equation_5_7..
	(variable_reactive_power_flow_5_7) =e= (7.4441679167737*variable_switched_voltage_square_5_7 + 2.95402003596198*variable_voltage_product_imaginary_5_7 - 7.4492679167737*variable_voltage_product_real_5_7)
Equation linear_constraint_reactive_power_flow_equation_7_5 ;
linear_constraint_reactive_power_flow_equation_7_5..
	(variable_reactive_power_flow_7_5) =e= (7.4441679167737*variable_switched_voltage_square_7_5 - 2.95402003596198*variable_voltage_product_imaginary_5_7 - 7.4492679167737*variable_voltage_product_real_5_7)
Equation linear_constraint_reactive_power_flow_equation_6_7 ;
linear_constraint_reactive_power_flow_equation_6_7..
	(variable_reactive_power_flow_6_7) =e= (11.0218644107281*variable_switched_voltage_square_6_7 + 3.59021042398099*variable_voltage_product_imaginary_6_7 - 11.0261144107281*variable_voltage_product_real_6_7)
Equation linear_constraint_reactive_power_flow_equation_7_6 ;
linear_constraint_reactive_power_flow_equation_7_6..
	(variable_reactive_power_flow_7_6) =e= (11.0218644107281*variable_switched_voltage_square_7_6 - 3.59021042398099*variable_voltage_product_imaginary_6_7 - 11.0261144107281*variable_voltage_product_real_6_7)
Equation linear_constraint_reactive_power_flow_equation_6_8 ;
linear_constraint_reactive_power_flow_equation_6_8..
	(variable_reactive_power_flow_6_8) =e= (22.0103286163522*variable_switched_voltage_square_6_8 + 6.28930817610063*variable_voltage_product_imaginary_6_8 - 22.0125786163522*variable_voltage_product_real_6_8)
Equation linear_constraint_reactive_power_flow_equation_8_6 ;
linear_constraint_reactive_power_flow_equation_8_6..
	(variable_reactive_power_flow_8_6) =e= (22.0103286163522*variable_switched_voltage_square_8_6 - 6.28930817610063*variable_voltage_product_imaginary_6_8 - 22.0125786163522*variable_voltage_product_real_6_8)
Equation linear_constraint_reactive_power_flow_equation_6_9 ;
linear_constraint_reactive_power_flow_equation_6_9..
	(variable_reactive_power_flow_6_9) =e= (4.80769230769231*variable_switched_voltage_square_6_9 - 4.80769230769231*variable_voltage_product_real_6_9)
Equation linear_constraint_reactive_power_flow_equation_9_6 ;
linear_constraint_reactive_power_flow_equation_9_6..
	(variable_reactive_power_flow_9_6) =e= (4.80769230769231*variable_switched_voltage_square_9_6 - 4.80769230769231*variable_voltage_product_real_6_9)
Equation linear_constraint_reactive_power_flow_equation_6_10 ;
linear_constraint_reactive_power_flow_equation_6_10..
	(variable_reactive_power_flow_6_10) =e= (1.79856115107914*variable_switched_voltage_square_6_10 - 1.79856115107914*variable_voltage_product_real_6_10)
Equation linear_constraint_reactive_power_flow_equation_10_6 ;
linear_constraint_reactive_power_flow_equation_10_6..
	(variable_reactive_power_flow_10_6) =e= (1.79856115107914*variable_switched_voltage_square_10_6 - 1.79856115107914*variable_voltage_product_real_6_10)
Equation linear_constraint_reactive_power_flow_equation_6_28 ;
linear_constraint_reactive_power_flow_equation_6_28..
	(variable_reactive_power_flow_6_28) =e= (15.4603215428979*variable_switched_voltage_square_6_28 + 4.36284405801292*variable_voltage_product_imaginary_6_28 - 15.4635715428979*variable_voltage_product_real_6_28)
Equation linear_constraint_reactive_power_flow_equation_28_6 ;
linear_constraint_reactive_power_flow_equation_28_6..
	(variable_reactive_power_flow_28_6) =e= (15.4603215428979*variable_switched_voltage_square_28_6 - 4.36284405801292*variable_voltage_product_imaginary_6_28 - 15.4635715428979*variable_voltage_product_real_6_28)
Equation linear_constraint_reactive_power_flow_equation_8_28 ;
linear_constraint_reactive_power_flow_equation_8_28..
	(variable_reactive_power_flow_8_28) =e= (4.53011465847625*variable_switched_voltage_square_8_28 + 1.44397906139545*variable_voltage_product_imaginary_8_28 - 4.54081465847625*variable_voltage_product_real_8_28)
Equation linear_constraint_reactive_power_flow_equation_28_8 ;
linear_constraint_reactive_power_flow_equation_28_8..
	(variable_reactive_power_flow_28_8) =e= (4.53011465847625*variable_switched_voltage_square_28_8 - 1.44397906139545*variable_voltage_product_imaginary_8_28 - 4.54081465847625*variable_voltage_product_real_8_28)
Equation linear_constraint_reactive_power_flow_equation_9_11 ;
linear_constraint_reactive_power_flow_equation_9_11..
	(variable_reactive_power_flow_9_11) =e= (4.80769230769231*variable_switched_voltage_square_9_11 - 4.80769230769231*variable_voltage_product_real_9_11)
Equation linear_constraint_reactive_power_flow_equation_11_9 ;
linear_constraint_reactive_power_flow_equation_11_9..
	(variable_reactive_power_flow_11_9) =e= (4.80769230769231*variable_switched_voltage_square_11_9 - 4.80769230769231*variable_voltage_product_real_9_11)
Equation linear_constraint_reactive_power_flow_equation_9_10 ;
linear_constraint_reactive_power_flow_equation_9_10..
	(variable_reactive_power_flow_9_10) =e= (9.09090909090909*variable_switched_voltage_square_9_10 - 9.09090909090909*variable_voltage_product_real_9_10)
Equation linear_constraint_reactive_power_flow_equation_10_9 ;
linear_constraint_reactive_power_flow_equation_10_9..
	(variable_reactive_power_flow_10_9) =e= (9.09090909090909*variable_switched_voltage_square_10_9 - 9.09090909090909*variable_voltage_product_real_9_10)
Equation linear_constraint_reactive_power_flow_equation_10_20 ;
linear_constraint_reactive_power_flow_equation_10_20..
	(variable_reactive_power_flow_10_20) =e= (3.98535828943083*variable_switched_voltage_square_10_20 + 1.78483031526663*variable_voltage_product_imaginary_10_20 - 3.98535828943083*variable_voltage_product_real_10_20)
Equation linear_constraint_reactive_power_flow_equation_20_10 ;
linear_constraint_reactive_power_flow_equation_20_10..
	(variable_reactive_power_flow_20_10) =e= (3.98535828943083*variable_switched_voltage_square_20_10 - 1.78483031526663*variable_voltage_product_imaginary_10_20 - 3.98535828943083*variable_voltage_product_real_10_20)
Equation linear_constraint_reactive_power_flow_equation_10_17 ;
linear_constraint_reactive_power_flow_equation_10_17..
	(variable_reactive_power_flow_10_17) =e= (10.3174477198441*variable_switched_voltage_square_10_17 + 3.95603912571535*variable_voltage_product_imaginary_10_17 - 10.3174477198441*variable_voltage_product_real_10_17)
Equation linear_constraint_reactive_power_flow_equation_17_10 ;
linear_constraint_reactive_power_flow_equation_17_10..
	(variable_reactive_power_flow_17_10) =e= (10.3174477198441*variable_switched_voltage_square_17_10 - 3.95603912571535*variable_voltage_product_imaginary_10_17 - 10.3174477198441*variable_voltage_product_real_10_17)
Equation linear_constraint_reactive_power_flow_equation_10_21 ;
linear_constraint_reactive_power_flow_equation_10_21..
	(variable_reactive_power_flow_10_21) =e= (10.9807141129298*variable_switched_voltage_square_10_21 + 5.10185382015965*variable_voltage_product_imaginary_10_21 - 10.9807141129298*variable_voltage_product_real_10_21)
Equation linear_constraint_reactive_power_flow_equation_21_10 ;
linear_constraint_reactive_power_flow_equation_21_10..
	(variable_reactive_power_flow_21_10) =e= (10.9807141129298*variable_switched_voltage_square_21_10 - 5.10185382015965*variable_voltage_product_imaginary_10_21 - 10.9807141129298*variable_voltage_product_real_10_21)
Equation linear_constraint_reactive_power_flow_equation_10_22 ;
linear_constraint_reactive_power_flow_equation_10_22..
	(variable_reactive_power_flow_10_22) =e= (5.40077030332945*variable_switched_voltage_square_10_22 + 2.6193195533826*variable_voltage_product_imaginary_10_22 - 5.40077030332945*variable_voltage_product_real_10_22)
Equation linear_constraint_reactive_power_flow_equation_22_10 ;
linear_constraint_reactive_power_flow_equation_22_10..
	(variable_reactive_power_flow_22_10) =e= (5.40077030332945*variable_switched_voltage_square_22_10 - 2.6193195533826*variable_voltage_product_imaginary_10_22 - 5.40077030332945*variable_voltage_product_real_10_22)
Equation linear_constraint_reactive_power_flow_equation_12_13 ;
linear_constraint_reactive_power_flow_equation_12_13..
	(variable_reactive_power_flow_12_13) =e= (7.14285714285714*variable_switched_voltage_square_12_13 - 7.14285714285714*variable_voltage_product_real_12_13)
Equation linear_constraint_reactive_power_flow_equation_13_12 ;
linear_constraint_reactive_power_flow_equation_13_12..
	(variable_reactive_power_flow_13_12) =e= (7.14285714285714*variable_switched_voltage_square_13_12 - 7.14285714285714*variable_voltage_product_real_12_13)
Equation linear_constraint_reactive_power_flow_equation_12_14 ;
linear_constraint_reactive_power_flow_equation_12_14..
	(variable_reactive_power_flow_12_14) =e= (3.17342527296542*variable_switched_voltage_square_12_14 + 1.52656760883956*variable_voltage_product_imaginary_12_14 - 3.17342527296542*variable_voltage_product_real_12_14)
Equation linear_constraint_reactive_power_flow_equation_14_12 ;
linear_constraint_reactive_power_flow_equation_14_12..
	(variable_reactive_power_flow_14_12) =e= (3.17342527296542*variable_switched_voltage_square_14_12 - 1.52656760883956*variable_voltage_product_imaginary_12_14 - 3.17342527296542*variable_voltage_product_real_12_14)
Equation linear_constraint_reactive_power_flow_equation_12_15 ;
linear_constraint_reactive_power_flow_equation_12_15..
	(variable_reactive_power_flow_12_15) =e= (6.09727586432626*variable_switched_voltage_square_12_15 + 3.09539618265643*variable_voltage_product_imaginary_12_15 - 6.09727586432626*variable_voltage_product_real_12_15)
Equation linear_constraint_reactive_power_flow_equation_15_12 ;
linear_constraint_reactive_power_flow_equation_15_12..
	(variable_reactive_power_flow_15_12) =e= (6.09727586432626*variable_switched_voltage_square_15_12 - 3.09539618265643*variable_voltage_product_imaginary_12_15 - 6.09727586432626*variable_voltage_product_real_12_15)
Equation linear_constraint_reactive_power_flow_equation_12_16 ;
linear_constraint_reactive_power_flow_equation_12_16..
	(variable_reactive_power_flow_12_16) =e= (4.10435937911185*variable_switched_voltage_square_12_16 + 1.95199779228017*variable_voltage_product_imaginary_12_16 - 4.10435937911185*variable_voltage_product_real_12_16)
Equation linear_constraint_reactive_power_flow_equation_16_12 ;
linear_constraint_reactive_power_flow_equation_16_12..
	(variable_reactive_power_flow_16_12) =e= (4.10435937911185*variable_switched_voltage_square_16_12 - 1.95199779228017*variable_voltage_product_imaginary_12_16 - 4.10435937911185*variable_voltage_product_real_12_16)
Equation linear_constraint_reactive_power_flow_equation_14_15 ;
linear_constraint_reactive_power_flow_equation_14_15..
	(variable_reactive_power_flow_14_15) =e= (2.25087405936965*variable_switched_voltage_square_14_15 + 2.49095226399946*variable_voltage_product_imaginary_14_15 - 2.25087405936965*variable_voltage_product_real_14_15)
Equation linear_constraint_reactive_power_flow_equation_15_14 ;
linear_constraint_reactive_power_flow_equation_15_14..
	(variable_reactive_power_flow_15_14) =e= (2.25087405936965*variable_switched_voltage_square_15_14 - 2.49095226399946*variable_voltage_product_imaginary_14_15 - 2.25087405936965*variable_voltage_product_real_14_15)
Equation linear_constraint_reactive_power_flow_equation_15_18 ;
linear_constraint_reactive_power_flow_equation_15_18..
	(variable_reactive_power_flow_15_18) =e= (3.69142398580871*variable_switched_voltage_square_15_18 + 1.80769961776445*variable_voltage_product_imaginary_15_18 - 3.69142398580871*variable_voltage_product_real_15_18)
Equation linear_constraint_reactive_power_flow_equation_18_15 ;
linear_constraint_reactive_power_flow_equation_18_15..
	(variable_reactive_power_flow_18_15) =e= (3.69142398580871*variable_switched_voltage_square_18_15 - 1.80769961776445*variable_voltage_product_imaginary_15_18 - 3.69142398580871*variable_voltage_product_real_15_18)
Equation linear_constraint_reactive_power_flow_equation_15_23 ;
linear_constraint_reactive_power_flow_equation_15_23..
	(variable_reactive_power_flow_15_23) =e= (3.97606487678136*variable_switched_voltage_square_15_23 + 1.96834894890166*variable_voltage_product_imaginary_15_23 - 3.97606487678136*variable_voltage_product_real_15_23)
Equation linear_constraint_reactive_power_flow_equation_23_15 ;
linear_constraint_reactive_power_flow_equation_23_15..
	(variable_reactive_power_flow_23_15) =e= (3.97606487678136*variable_switched_voltage_square_23_15 - 1.96834894890166*variable_voltage_product_imaginary_15_23 - 3.97606487678136*variable_voltage_product_real_15_23)
Equation linear_constraint_reactive_power_flow_equation_16_17 ;
linear_constraint_reactive_power_flow_equation_16_17..
	(variable_reactive_power_flow_16_17) =e= (4.37936349623719*variable_switched_voltage_square_16_17 + 1.86780306464775*variable_voltage_product_imaginary_16_17 - 4.37936349623719*variable_voltage_product_real_16_17)
Equation linear_constraint_reactive_power_flow_equation_17_16 ;
linear_constraint_reactive_power_flow_equation_17_16..
	(variable_reactive_power_flow_17_16) =e= (4.37936349623719*variable_switched_voltage_square_17_16 - 1.86780306464775*variable_voltage_product_imaginary_16_17 - 4.37936349623719*variable_voltage_product_real_16_17)
Equation linear_constraint_reactive_power_flow_equation_18_19 ;
linear_constraint_reactive_power_flow_equation_18_19..
	(variable_reactive_power_flow_18_19) =e= (6.21875879927897*variable_switched_voltage_square_18_19 + 3.07568643400872*variable_voltage_product_imaginary_18_19 - 6.21875879927897*variable_voltage_product_real_18_19)
Equation linear_constraint_reactive_power_flow_equation_19_18 ;
linear_constraint_reactive_power_flow_equation_19_18..
	(variable_reactive_power_flow_19_18) =e= (6.21875879927897*variable_switched_voltage_square_19_18 - 3.07568643400872*variable_voltage_product_imaginary_18_19 - 6.21875879927897*variable_voltage_product_real_18_19)
Equation linear_constraint_reactive_power_flow_equation_19_20 ;
linear_constraint_reactive_power_flow_equation_19_20..
	(variable_reactive_power_flow_19_20) =e= (11.7647058823529*variable_switched_voltage_square_19_20 + 5.88235294117647*variable_voltage_product_imaginary_19_20 - 11.7647058823529*variable_voltage_product_real_19_20)
Equation linear_constraint_reactive_power_flow_equation_20_19 ;
linear_constraint_reactive_power_flow_equation_20_19..
	(variable_reactive_power_flow_20_19) =e= (11.7647058823529*variable_switched_voltage_square_20_19 - 5.88235294117647*variable_voltage_product_imaginary_19_20 - 11.7647058823529*variable_voltage_product_real_19_20)
Equation linear_constraint_reactive_power_flow_equation_21_22 ;
linear_constraint_reactive_power_flow_equation_21_22..
	(variable_reactive_power_flow_21_22) =e= (34.1277186487737*variable_switched_voltage_square_21_22 + 16.7746413697362*variable_voltage_product_imaginary_21_22 - 34.1277186487737*variable_voltage_product_real_21_22)
Equation linear_constraint_reactive_power_flow_equation_22_21 ;
linear_constraint_reactive_power_flow_equation_22_21..
	(variable_reactive_power_flow_22_21) =e= (34.1277186487737*variable_switched_voltage_square_22_21 - 16.7746413697362*variable_voltage_product_imaginary_21_22 - 34.1277186487737*variable_voltage_product_real_21_22)
Equation linear_constraint_reactive_power_flow_equation_22_24 ;
linear_constraint_reactive_power_flow_equation_22_24..
	(variable_reactive_power_flow_22_24) =e= (3.95440286307604*variable_switched_voltage_square_22_24 + 2.54053815225556*variable_voltage_product_imaginary_22_24 - 3.95440286307604*variable_voltage_product_real_22_24)
Equation linear_constraint_reactive_power_flow_equation_24_22 ;
linear_constraint_reactive_power_flow_equation_24_22..
	(variable_reactive_power_flow_24_22) =e= (3.95440286307604*variable_switched_voltage_square_24_22 - 2.54053815225556*variable_voltage_product_imaginary_22_24 - 3.95440286307604*variable_voltage_product_real_22_24)
Equation linear_constraint_reactive_power_flow_equation_23_24 ;
linear_constraint_reactive_power_flow_equation_23_24..
	(variable_reactive_power_flow_23_24) =e= (2.98923874053408*variable_switched_voltage_square_23_24 + 1.46140560648333*variable_voltage_product_imaginary_23_24 - 2.98923874053408*variable_voltage_product_real_23_24)
Equation linear_constraint_reactive_power_flow_equation_24_23 ;
linear_constraint_reactive_power_flow_equation_24_23..
	(variable_reactive_power_flow_24_23) =e= (2.98923874053408*variable_switched_voltage_square_24_23 - 1.46140560648333*variable_voltage_product_imaginary_23_24 - 2.98923874053408*variable_voltage_product_real_23_24)
Equation linear_constraint_reactive_power_flow_equation_24_25 ;
linear_constraint_reactive_power_flow_equation_24_25..
	(variable_reactive_power_flow_24_25) =e= (2.28762205370505*variable_switched_voltage_square_24_25 + 1.30989294387425*variable_voltage_product_imaginary_24_25 - 2.28762205370505*variable_voltage_product_real_24_25)
Equation linear_constraint_reactive_power_flow_equation_25_24 ;
linear_constraint_reactive_power_flow_equation_25_24..
	(variable_reactive_power_flow_25_24) =e= (2.28762205370505*variable_switched_voltage_square_25_24 - 1.30989294387425*variable_voltage_product_imaginary_24_25 - 2.28762205370505*variable_voltage_product_real_24_25)
Equation linear_constraint_reactive_power_flow_equation_25_26 ;
linear_constraint_reactive_power_flow_equation_25_26..
	(variable_reactive_power_flow_25_26) =e= (1.8171440463475*variable_switched_voltage_square_25_26 + 1.21653011944949*variable_voltage_product_imaginary_25_26 - 1.8171440463475*variable_voltage_product_real_25_26)
Equation linear_constraint_reactive_power_flow_equation_26_25 ;
linear_constraint_reactive_power_flow_equation_26_25..
	(variable_reactive_power_flow_26_25) =e= (1.8171440463475*variable_switched_voltage_square_26_25 - 1.21653011944949*variable_voltage_product_imaginary_25_26 - 1.8171440463475*variable_voltage_product_real_25_26)
Equation linear_constraint_reactive_power_flow_equation_25_27 ;
linear_constraint_reactive_power_flow_equation_25_27..
	(variable_reactive_power_flow_25_27) =e= (3.76021266191706*variable_switched_voltage_square_25_27 + 1.96929201699825*variable_voltage_product_imaginary_25_27 - 3.76021266191706*variable_voltage_product_real_25_27)
Equation linear_constraint_reactive_power_flow_equation_27_25 ;
linear_constraint_reactive_power_flow_equation_27_25..
	(variable_reactive_power_flow_27_25) =e= (3.76021266191706*variable_switched_voltage_square_27_25 - 1.96929201699825*variable_voltage_product_imaginary_25_27 - 3.76021266191706*variable_voltage_product_real_25_27)
Equation linear_constraint_reactive_power_flow_equation_27_28 ;
linear_constraint_reactive_power_flow_equation_27_28..
	(variable_reactive_power_flow_27_28) =e= (2.52525252525253*variable_switched_voltage_square_27_28 - 2.52525252525253*variable_voltage_product_real_27_28)
Equation linear_constraint_reactive_power_flow_equation_28_27 ;
linear_constraint_reactive_power_flow_equation_28_27..
	(variable_reactive_power_flow_28_27) =e= (2.52525252525253*variable_switched_voltage_square_28_27 - 2.52525252525253*variable_voltage_product_real_27_28)
Equation linear_constraint_reactive_power_flow_equation_27_29 ;
linear_constraint_reactive_power_flow_equation_27_29..
	(variable_reactive_power_flow_27_29) =e= (1.88100584035782*variable_switched_voltage_square_27_29 + 0.99553355095268*variable_voltage_product_imaginary_27_29 - 1.88100584035782*variable_voltage_product_real_27_29)
Equation linear_constraint_reactive_power_flow_equation_29_27 ;
linear_constraint_reactive_power_flow_equation_29_27..
	(variable_reactive_power_flow_29_27) =e= (1.88100584035782*variable_switched_voltage_square_29_27 - 0.99553355095268*variable_voltage_product_imaginary_27_29 - 1.88100584035782*variable_voltage_product_real_27_29)
Equation linear_constraint_reactive_power_flow_equation_27_30 ;
linear_constraint_reactive_power_flow_equation_27_30..
	(variable_reactive_power_flow_27_30) =e= (1.29397149479772*variable_switched_voltage_square_27_30 + 0.687455902827657*variable_voltage_product_imaginary_27_30 - 1.29397149479772*variable_voltage_product_real_27_30)
Equation linear_constraint_reactive_power_flow_equation_30_27 ;
linear_constraint_reactive_power_flow_equation_30_27..
	(variable_reactive_power_flow_30_27) =e= (1.29397149479772*variable_switched_voltage_square_30_27 - 0.687455902827657*variable_voltage_product_imaginary_27_30 - 1.29397149479772*variable_voltage_product_real_27_30)
Equation linear_constraint_reactive_power_flow_equation_29_30 ;
linear_constraint_reactive_power_flow_equation_29_30..
	(variable_reactive_power_flow_29_30) =e= (1.72335856084923*variable_switched_voltage_square_29_30 + 0.912053207032276*variable_voltage_product_imaginary_29_30 - 1.72335856084923*variable_voltage_product_real_29_30)
Equation linear_constraint_reactive_power_flow_equation_30_29 ;
linear_constraint_reactive_power_flow_equation_30_29..
	(variable_reactive_power_flow_30_29) =e= (1.72335856084923*variable_switched_voltage_square_30_29 - 0.912053207032276*variable_voltage_product_imaginary_29_30 - 1.72335856084923*variable_voltage_product_real_29_30)
Equation nonlinear_constraint_conic_quadratic_1_2 ;
nonlinear_constraint_conic_quadratic_1_2..
	(power(variable_voltage_product_imaginary_1_2,2) + power(variable_voltage_product_real_1_2,2)) =e= (variable_switched_voltage_square_1_2*variable_switched_voltage_square_2_1)
Equation nonlinear_constraint_conic_quadratic_1_3 ;
nonlinear_constraint_conic_quadratic_1_3..
	(power(variable_voltage_product_imaginary_1_3,2) + power(variable_voltage_product_real_1_3,2)) =e= (variable_switched_voltage_square_1_3*variable_switched_voltage_square_3_1)
Equation nonlinear_constraint_conic_quadratic_2_4 ;
nonlinear_constraint_conic_quadratic_2_4..
	(power(variable_voltage_product_imaginary_2_4,2) + power(variable_voltage_product_real_2_4,2)) =e= (variable_switched_voltage_square_2_4*variable_switched_voltage_square_4_2)
Equation nonlinear_constraint_conic_quadratic_2_5 ;
nonlinear_constraint_conic_quadratic_2_5..
	(power(variable_voltage_product_imaginary_2_5,2) + power(variable_voltage_product_real_2_5,2)) =e= (variable_switched_voltage_square_2_5*variable_switched_voltage_square_5_2)
Equation nonlinear_constraint_conic_quadratic_2_6 ;
nonlinear_constraint_conic_quadratic_2_6..
	(power(variable_voltage_product_imaginary_2_6,2) + power(variable_voltage_product_real_2_6,2)) =e= (variable_switched_voltage_square_2_6*variable_switched_voltage_square_6_2)
Equation nonlinear_constraint_conic_quadratic_3_4 ;
nonlinear_constraint_conic_quadratic_3_4..
	(power(variable_voltage_product_imaginary_3_4,2) + power(variable_voltage_product_real_3_4,2)) =e= (variable_switched_voltage_square_3_4*variable_switched_voltage_square_4_3)
Equation nonlinear_constraint_conic_quadratic_4_6 ;
nonlinear_constraint_conic_quadratic_4_6..
	(power(variable_voltage_product_imaginary_4_6,2) + power(variable_voltage_product_real_4_6,2)) =e= (variable_switched_voltage_square_4_6*variable_switched_voltage_square_6_4)
Equation nonlinear_constraint_conic_quadratic_4_12 ;
nonlinear_constraint_conic_quadratic_4_12..
	(power(variable_voltage_product_imaginary_4_12,2) + power(variable_voltage_product_real_4_12,2)) =e= (variable_switched_voltage_square_12_4*variable_switched_voltage_square_4_12)
Equation nonlinear_constraint_conic_quadratic_5_7 ;
nonlinear_constraint_conic_quadratic_5_7..
	(power(variable_voltage_product_imaginary_5_7,2) + power(variable_voltage_product_real_5_7,2)) =e= (variable_switched_voltage_square_5_7*variable_switched_voltage_square_7_5)
Equation nonlinear_constraint_conic_quadratic_6_7 ;
nonlinear_constraint_conic_quadratic_6_7..
	(power(variable_voltage_product_imaginary_6_7,2) + power(variable_voltage_product_real_6_7,2)) =e= (variable_switched_voltage_square_6_7*variable_switched_voltage_square_7_6)
Equation nonlinear_constraint_conic_quadratic_6_8 ;
nonlinear_constraint_conic_quadratic_6_8..
	(power(variable_voltage_product_imaginary_6_8,2) + power(variable_voltage_product_real_6_8,2)) =e= (variable_switched_voltage_square_6_8*variable_switched_voltage_square_8_6)
Equation nonlinear_constraint_conic_quadratic_6_9 ;
nonlinear_constraint_conic_quadratic_6_9..
	(power(variable_voltage_product_imaginary_6_9,2) + power(variable_voltage_product_real_6_9,2)) =e= (variable_switched_voltage_square_6_9*variable_switched_voltage_square_9_6)
Equation nonlinear_constraint_conic_quadratic_6_10 ;
nonlinear_constraint_conic_quadratic_6_10..
	(power(variable_voltage_product_imaginary_6_10,2) + power(variable_voltage_product_real_6_10,2)) =e= (variable_switched_voltage_square_10_6*variable_switched_voltage_square_6_10)
Equation nonlinear_constraint_conic_quadratic_6_28 ;
nonlinear_constraint_conic_quadratic_6_28..
	(power(variable_voltage_product_imaginary_6_28,2) + power(variable_voltage_product_real_6_28,2)) =e= (variable_switched_voltage_square_28_6*variable_switched_voltage_square_6_28)
Equation nonlinear_constraint_conic_quadratic_8_28 ;
nonlinear_constraint_conic_quadratic_8_28..
	(power(variable_voltage_product_imaginary_8_28,2) + power(variable_voltage_product_real_8_28,2)) =e= (variable_switched_voltage_square_28_8*variable_switched_voltage_square_8_28)
Equation nonlinear_constraint_conic_quadratic_9_11 ;
nonlinear_constraint_conic_quadratic_9_11..
	(power(variable_voltage_product_imaginary_9_11,2) + power(variable_voltage_product_real_9_11,2)) =e= (variable_switched_voltage_square_11_9*variable_switched_voltage_square_9_11)
Equation nonlinear_constraint_conic_quadratic_9_10 ;
nonlinear_constraint_conic_quadratic_9_10..
	(power(variable_voltage_product_imaginary_9_10,2) + power(variable_voltage_product_real_9_10,2)) =e= (variable_switched_voltage_square_10_9*variable_switched_voltage_square_9_10)
Equation nonlinear_constraint_conic_quadratic_10_20 ;
nonlinear_constraint_conic_quadratic_10_20..
	(power(variable_voltage_product_imaginary_10_20,2) + power(variable_voltage_product_real_10_20,2)) =e= (variable_switched_voltage_square_10_20*variable_switched_voltage_square_20_10)
Equation nonlinear_constraint_conic_quadratic_10_17 ;
nonlinear_constraint_conic_quadratic_10_17..
	(power(variable_voltage_product_imaginary_10_17,2) + power(variable_voltage_product_real_10_17,2)) =e= (variable_switched_voltage_square_10_17*variable_switched_voltage_square_17_10)
Equation nonlinear_constraint_conic_quadratic_10_21 ;
nonlinear_constraint_conic_quadratic_10_21..
	(power(variable_voltage_product_imaginary_10_21,2) + power(variable_voltage_product_real_10_21,2)) =e= (variable_switched_voltage_square_10_21*variable_switched_voltage_square_21_10)
Equation nonlinear_constraint_conic_quadratic_10_22 ;
nonlinear_constraint_conic_quadratic_10_22..
	(power(variable_voltage_product_imaginary_10_22,2) + power(variable_voltage_product_real_10_22,2)) =e= (variable_switched_voltage_square_10_22*variable_switched_voltage_square_22_10)
Equation nonlinear_constraint_conic_quadratic_12_13 ;
nonlinear_constraint_conic_quadratic_12_13..
	(power(variable_voltage_product_imaginary_12_13,2) + power(variable_voltage_product_real_12_13,2)) =e= (variable_switched_voltage_square_12_13*variable_switched_voltage_square_13_12)
Equation nonlinear_constraint_conic_quadratic_12_14 ;
nonlinear_constraint_conic_quadratic_12_14..
	(power(variable_voltage_product_imaginary_12_14,2) + power(variable_voltage_product_real_12_14,2)) =e= (variable_switched_voltage_square_12_14*variable_switched_voltage_square_14_12)
Equation nonlinear_constraint_conic_quadratic_12_15 ;
nonlinear_constraint_conic_quadratic_12_15..
	(power(variable_voltage_product_imaginary_12_15,2) + power(variable_voltage_product_real_12_15,2)) =e= (variable_switched_voltage_square_12_15*variable_switched_voltage_square_15_12)
Equation nonlinear_constraint_conic_quadratic_12_16 ;
nonlinear_constraint_conic_quadratic_12_16..
	(power(variable_voltage_product_imaginary_12_16,2) + power(variable_voltage_product_real_12_16,2)) =e= (variable_switched_voltage_square_12_16*variable_switched_voltage_square_16_12)
Equation nonlinear_constraint_conic_quadratic_14_15 ;
nonlinear_constraint_conic_quadratic_14_15..
	(power(variable_voltage_product_imaginary_14_15,2) + power(variable_voltage_product_real_14_15,2)) =e= (variable_switched_voltage_square_14_15*variable_switched_voltage_square_15_14)
Equation nonlinear_constraint_conic_quadratic_15_18 ;
nonlinear_constraint_conic_quadratic_15_18..
	(power(variable_voltage_product_imaginary_15_18,2) + power(variable_voltage_product_real_15_18,2)) =e= (variable_switched_voltage_square_15_18*variable_switched_voltage_square_18_15)
Equation nonlinear_constraint_conic_quadratic_15_23 ;
nonlinear_constraint_conic_quadratic_15_23..
	(power(variable_voltage_product_imaginary_15_23,2) + power(variable_voltage_product_real_15_23,2)) =e= (variable_switched_voltage_square_15_23*variable_switched_voltage_square_23_15)
Equation nonlinear_constraint_conic_quadratic_16_17 ;
nonlinear_constraint_conic_quadratic_16_17..
	(power(variable_voltage_product_imaginary_16_17,2) + power(variable_voltage_product_real_16_17,2)) =e= (variable_switched_voltage_square_16_17*variable_switched_voltage_square_17_16)
Equation nonlinear_constraint_conic_quadratic_18_19 ;
nonlinear_constraint_conic_quadratic_18_19..
	(power(variable_voltage_product_imaginary_18_19,2) + power(variable_voltage_product_real_18_19,2)) =e= (variable_switched_voltage_square_18_19*variable_switched_voltage_square_19_18)
Equation nonlinear_constraint_conic_quadratic_19_20 ;
nonlinear_constraint_conic_quadratic_19_20..
	(power(variable_voltage_product_imaginary_19_20,2) + power(variable_voltage_product_real_19_20,2)) =e= (variable_switched_voltage_square_19_20*variable_switched_voltage_square_20_19)
Equation nonlinear_constraint_conic_quadratic_21_22 ;
nonlinear_constraint_conic_quadratic_21_22..
	(power(variable_voltage_product_imaginary_21_22,2) + power(variable_voltage_product_real_21_22,2)) =e= (variable_switched_voltage_square_21_22*variable_switched_voltage_square_22_21)
Equation nonlinear_constraint_conic_quadratic_22_24 ;
nonlinear_constraint_conic_quadratic_22_24..
	(power(variable_voltage_product_imaginary_22_24,2) + power(variable_voltage_product_real_22_24,2)) =e= (variable_switched_voltage_square_22_24*variable_switched_voltage_square_24_22)
Equation nonlinear_constraint_conic_quadratic_23_24 ;
nonlinear_constraint_conic_quadratic_23_24..
	(power(variable_voltage_product_imaginary_23_24,2) + power(variable_voltage_product_real_23_24,2)) =e= (variable_switched_voltage_square_23_24*variable_switched_voltage_square_24_23)
Equation nonlinear_constraint_conic_quadratic_24_25 ;
nonlinear_constraint_conic_quadratic_24_25..
	(power(variable_voltage_product_imaginary_24_25,2) + power(variable_voltage_product_real_24_25,2)) =e= (variable_switched_voltage_square_24_25*variable_switched_voltage_square_25_24)
Equation nonlinear_constraint_conic_quadratic_25_26 ;
nonlinear_constraint_conic_quadratic_25_26..
	(power(variable_voltage_product_imaginary_25_26,2) + power(variable_voltage_product_real_25_26,2)) =e= (variable_switched_voltage_square_25_26*variable_switched_voltage_square_26_25)
Equation nonlinear_constraint_conic_quadratic_25_27 ;
nonlinear_constraint_conic_quadratic_25_27..
	(power(variable_voltage_product_imaginary_25_27,2) + power(variable_voltage_product_real_25_27,2)) =e= (variable_switched_voltage_square_25_27*variable_switched_voltage_square_27_25)
Equation nonlinear_constraint_conic_quadratic_27_28 ;
nonlinear_constraint_conic_quadratic_27_28..
	(power(variable_voltage_product_imaginary_27_28,2) + power(variable_voltage_product_real_27_28,2)) =e= (variable_switched_voltage_square_27_28*variable_switched_voltage_square_28_27)
Equation nonlinear_constraint_conic_quadratic_27_29 ;
nonlinear_constraint_conic_quadratic_27_29..
	(power(variable_voltage_product_imaginary_27_29,2) + power(variable_voltage_product_real_27_29,2)) =e= (variable_switched_voltage_square_27_29*variable_switched_voltage_square_29_27)
Equation nonlinear_constraint_conic_quadratic_27_30 ;
nonlinear_constraint_conic_quadratic_27_30..
	(power(variable_voltage_product_imaginary_27_30,2) + power(variable_voltage_product_real_27_30,2)) =e= (variable_switched_voltage_square_27_30*variable_switched_voltage_square_30_27)
Equation nonlinear_constraint_conic_quadratic_29_30 ;
nonlinear_constraint_conic_quadratic_29_30..
	(power(variable_voltage_product_imaginary_29_30,2) + power(variable_voltage_product_real_29_30,2)) =e= (variable_switched_voltage_square_29_30*variable_switched_voltage_square_30_29)
Equation nonlinear_constraint_trigonometric_1_2 ;
nonlinear_constraint_trigonometric_1_2..
	(-variable_tan_subst_1_2*variable_voltage_product_real_1_2) =e= (variable_voltage_product_imaginary_1_2)
Equation nonlinear_constraint_trigonometric_1_3 ;
nonlinear_constraint_trigonometric_1_3..
	(-variable_tan_subst_1_3*variable_voltage_product_real_1_3) =e= (variable_voltage_product_imaginary_1_3)
Equation nonlinear_constraint_trigonometric_2_4 ;
nonlinear_constraint_trigonometric_2_4..
	(-variable_tan_subst_2_4*variable_voltage_product_real_2_4) =e= (variable_voltage_product_imaginary_2_4)
Equation nonlinear_constraint_trigonometric_2_5 ;
nonlinear_constraint_trigonometric_2_5..
	(-variable_tan_subst_2_5*variable_voltage_product_real_2_5) =e= (variable_voltage_product_imaginary_2_5)
Equation nonlinear_constraint_trigonometric_2_6 ;
nonlinear_constraint_trigonometric_2_6..
	(-variable_tan_subst_2_6*variable_voltage_product_real_2_6) =e= (variable_voltage_product_imaginary_2_6)
Equation nonlinear_constraint_trigonometric_3_4 ;
nonlinear_constraint_trigonometric_3_4..
	(-variable_tan_subst_3_4*variable_voltage_product_real_3_4) =e= (variable_voltage_product_imaginary_3_4)
Equation nonlinear_constraint_trigonometric_4_6 ;
nonlinear_constraint_trigonometric_4_6..
	(-variable_tan_subst_4_6*variable_voltage_product_real_4_6) =e= (variable_voltage_product_imaginary_4_6)
Equation nonlinear_constraint_trigonometric_4_12 ;
nonlinear_constraint_trigonometric_4_12..
	(-variable_tan_subst_4_12*variable_voltage_product_real_4_12) =e= (variable_voltage_product_imaginary_4_12)
Equation nonlinear_constraint_trigonometric_5_7 ;
nonlinear_constraint_trigonometric_5_7..
	(-variable_tan_subst_5_7*variable_voltage_product_real_5_7) =e= (variable_voltage_product_imaginary_5_7)
Equation nonlinear_constraint_trigonometric_6_7 ;
nonlinear_constraint_trigonometric_6_7..
	(-variable_tan_subst_6_7*variable_voltage_product_real_6_7) =e= (variable_voltage_product_imaginary_6_7)
Equation nonlinear_constraint_trigonometric_6_8 ;
nonlinear_constraint_trigonometric_6_8..
	(-variable_tan_subst_6_8*variable_voltage_product_real_6_8) =e= (variable_voltage_product_imaginary_6_8)
Equation nonlinear_constraint_trigonometric_6_9 ;
nonlinear_constraint_trigonometric_6_9..
	(-variable_tan_subst_6_9*variable_voltage_product_real_6_9) =e= (variable_voltage_product_imaginary_6_9)
Equation nonlinear_constraint_trigonometric_6_10 ;
nonlinear_constraint_trigonometric_6_10..
	(-variable_tan_subst_6_10*variable_voltage_product_real_6_10) =e= (variable_voltage_product_imaginary_6_10)
Equation nonlinear_constraint_trigonometric_6_28 ;
nonlinear_constraint_trigonometric_6_28..
	(-variable_tan_subst_6_28*variable_voltage_product_real_6_28) =e= (variable_voltage_product_imaginary_6_28)
Equation nonlinear_constraint_trigonometric_8_28 ;
nonlinear_constraint_trigonometric_8_28..
	(-variable_tan_subst_8_28*variable_voltage_product_real_8_28) =e= (variable_voltage_product_imaginary_8_28)
Equation nonlinear_constraint_trigonometric_9_11 ;
nonlinear_constraint_trigonometric_9_11..
	(-variable_tan_subst_9_11*variable_voltage_product_real_9_11) =e= (variable_voltage_product_imaginary_9_11)
Equation nonlinear_constraint_trigonometric_9_10 ;
nonlinear_constraint_trigonometric_9_10..
	(-variable_tan_subst_9_10*variable_voltage_product_real_9_10) =e= (variable_voltage_product_imaginary_9_10)
Equation nonlinear_constraint_trigonometric_10_20 ;
nonlinear_constraint_trigonometric_10_20..
	(-variable_tan_subst_10_20*variable_voltage_product_real_10_20) =e= (variable_voltage_product_imaginary_10_20)
Equation nonlinear_constraint_trigonometric_10_17 ;
nonlinear_constraint_trigonometric_10_17..
	(-variable_tan_subst_10_17*variable_voltage_product_real_10_17) =e= (variable_voltage_product_imaginary_10_17)
Equation nonlinear_constraint_trigonometric_10_21 ;
nonlinear_constraint_trigonometric_10_21..
	(-variable_tan_subst_10_21*variable_voltage_product_real_10_21) =e= (variable_voltage_product_imaginary_10_21)
Equation nonlinear_constraint_trigonometric_10_22 ;
nonlinear_constraint_trigonometric_10_22..
	(-variable_tan_subst_10_22*variable_voltage_product_real_10_22) =e= (variable_voltage_product_imaginary_10_22)
Equation nonlinear_constraint_trigonometric_12_13 ;
nonlinear_constraint_trigonometric_12_13..
	(-variable_tan_subst_12_13*variable_voltage_product_real_12_13) =e= (variable_voltage_product_imaginary_12_13)
Equation nonlinear_constraint_trigonometric_12_14 ;
nonlinear_constraint_trigonometric_12_14..
	(-variable_tan_subst_12_14*variable_voltage_product_real_12_14) =e= (variable_voltage_product_imaginary_12_14)
Equation nonlinear_constraint_trigonometric_12_15 ;
nonlinear_constraint_trigonometric_12_15..
	(-variable_tan_subst_12_15*variable_voltage_product_real_12_15) =e= (variable_voltage_product_imaginary_12_15)
Equation nonlinear_constraint_trigonometric_12_16 ;
nonlinear_constraint_trigonometric_12_16..
	(-variable_tan_subst_12_16*variable_voltage_product_real_12_16) =e= (variable_voltage_product_imaginary_12_16)
Equation nonlinear_constraint_trigonometric_14_15 ;
nonlinear_constraint_trigonometric_14_15..
	(-variable_tan_subst_14_15*variable_voltage_product_real_14_15) =e= (variable_voltage_product_imaginary_14_15)
Equation nonlinear_constraint_trigonometric_15_18 ;
nonlinear_constraint_trigonometric_15_18..
	(-variable_tan_subst_15_18*variable_voltage_product_real_15_18) =e= (variable_voltage_product_imaginary_15_18)
Equation nonlinear_constraint_trigonometric_15_23 ;
nonlinear_constraint_trigonometric_15_23..
	(-variable_tan_subst_15_23*variable_voltage_product_real_15_23) =e= (variable_voltage_product_imaginary_15_23)
Equation nonlinear_constraint_trigonometric_16_17 ;
nonlinear_constraint_trigonometric_16_17..
	(-variable_tan_subst_16_17*variable_voltage_product_real_16_17) =e= (variable_voltage_product_imaginary_16_17)
Equation nonlinear_constraint_trigonometric_18_19 ;
nonlinear_constraint_trigonometric_18_19..
	(-variable_tan_subst_18_19*variable_voltage_product_real_18_19) =e= (variable_voltage_product_imaginary_18_19)
Equation nonlinear_constraint_trigonometric_19_20 ;
nonlinear_constraint_trigonometric_19_20..
	(-variable_tan_subst_19_20*variable_voltage_product_real_19_20) =e= (variable_voltage_product_imaginary_19_20)
Equation nonlinear_constraint_trigonometric_21_22 ;
nonlinear_constraint_trigonometric_21_22..
	(-variable_tan_subst_21_22*variable_voltage_product_real_21_22) =e= (variable_voltage_product_imaginary_21_22)
Equation nonlinear_constraint_trigonometric_22_24 ;
nonlinear_constraint_trigonometric_22_24..
	(-variable_tan_subst_22_24*variable_voltage_product_real_22_24) =e= (variable_voltage_product_imaginary_22_24)
Equation nonlinear_constraint_trigonometric_23_24 ;
nonlinear_constraint_trigonometric_23_24..
	(-variable_tan_subst_23_24*variable_voltage_product_real_23_24) =e= (variable_voltage_product_imaginary_23_24)
Equation nonlinear_constraint_trigonometric_24_25 ;
nonlinear_constraint_trigonometric_24_25..
	(-variable_tan_subst_24_25*variable_voltage_product_real_24_25) =e= (variable_voltage_product_imaginary_24_25)
Equation nonlinear_constraint_trigonometric_25_26 ;
nonlinear_constraint_trigonometric_25_26..
	(-variable_tan_subst_25_26*variable_voltage_product_real_25_26) =e= (variable_voltage_product_imaginary_25_26)
Equation nonlinear_constraint_trigonometric_25_27 ;
nonlinear_constraint_trigonometric_25_27..
	(-variable_tan_subst_25_27*variable_voltage_product_real_25_27) =e= (variable_voltage_product_imaginary_25_27)
Equation nonlinear_constraint_trigonometric_27_28 ;
nonlinear_constraint_trigonometric_27_28..
	(-variable_tan_subst_27_28*variable_voltage_product_real_27_28) =e= (variable_voltage_product_imaginary_27_28)
Equation nonlinear_constraint_trigonometric_27_29 ;
nonlinear_constraint_trigonometric_27_29..
	(-variable_tan_subst_27_29*variable_voltage_product_real_27_29) =e= (variable_voltage_product_imaginary_27_29)
Equation nonlinear_constraint_trigonometric_27_30 ;
nonlinear_constraint_trigonometric_27_30..
	(-variable_tan_subst_27_30*variable_voltage_product_real_27_30) =e= (variable_voltage_product_imaginary_27_30)
Equation nonlinear_constraint_trigonometric_29_30 ;
nonlinear_constraint_trigonometric_29_30..
	(-variable_tan_subst_29_30*variable_voltage_product_real_29_30) =e= (variable_voltage_product_imaginary_29_30)
Equation nonlinear_constraint_thermal_limit_1_2 ;
nonlinear_constraint_thermal_limit_1_2..
	power(variable_reactive_power_flow_1_2,2) + power(variable_real_power_flow_1_2,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_2_1 ;
nonlinear_constraint_thermal_limit_2_1..
	power(variable_reactive_power_flow_2_1,2) + power(variable_real_power_flow_2_1,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_1_3 ;
nonlinear_constraint_thermal_limit_1_3..
	power(variable_reactive_power_flow_1_3,2) + power(variable_real_power_flow_1_3,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_3_1 ;
nonlinear_constraint_thermal_limit_3_1..
	power(variable_reactive_power_flow_3_1,2) + power(variable_real_power_flow_3_1,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_2_4 ;
nonlinear_constraint_thermal_limit_2_4..
	power(variable_reactive_power_flow_2_4,2) + power(variable_real_power_flow_2_4,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_4_2 ;
nonlinear_constraint_thermal_limit_4_2..
	power(variable_reactive_power_flow_4_2,2) + power(variable_real_power_flow_4_2,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_2_5 ;
nonlinear_constraint_thermal_limit_2_5..
	power(variable_reactive_power_flow_2_5,2) + power(variable_real_power_flow_2_5,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_5_2 ;
nonlinear_constraint_thermal_limit_5_2..
	power(variable_reactive_power_flow_5_2,2) + power(variable_real_power_flow_5_2,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_2_6 ;
nonlinear_constraint_thermal_limit_2_6..
	power(variable_reactive_power_flow_2_6,2) + power(variable_real_power_flow_2_6,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_6_2 ;
nonlinear_constraint_thermal_limit_6_2..
	power(variable_reactive_power_flow_6_2,2) + power(variable_real_power_flow_6_2,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_3_4 ;
nonlinear_constraint_thermal_limit_3_4..
	power(variable_reactive_power_flow_3_4,2) + power(variable_real_power_flow_3_4,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_4_3 ;
nonlinear_constraint_thermal_limit_4_3..
	power(variable_reactive_power_flow_4_3,2) + power(variable_real_power_flow_4_3,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_4_6 ;
nonlinear_constraint_thermal_limit_4_6..
	power(variable_reactive_power_flow_4_6,2) + power(variable_real_power_flow_4_6,2) =l= 0.81
Equation nonlinear_constraint_thermal_limit_6_4 ;
nonlinear_constraint_thermal_limit_6_4..
	power(variable_reactive_power_flow_6_4,2) + power(variable_real_power_flow_6_4,2) =l= 0.81
Equation nonlinear_constraint_thermal_limit_4_12 ;
nonlinear_constraint_thermal_limit_4_12..
	power(variable_reactive_power_flow_4_12,2) + power(variable_real_power_flow_4_12,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_12_4 ;
nonlinear_constraint_thermal_limit_12_4..
	power(variable_reactive_power_flow_12_4,2) + power(variable_real_power_flow_12_4,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_5_7 ;
nonlinear_constraint_thermal_limit_5_7..
	power(variable_reactive_power_flow_5_7,2) + power(variable_real_power_flow_5_7,2) =l= 0.49
Equation nonlinear_constraint_thermal_limit_7_5 ;
nonlinear_constraint_thermal_limit_7_5..
	power(variable_reactive_power_flow_7_5,2) + power(variable_real_power_flow_7_5,2) =l= 0.49
Equation nonlinear_constraint_thermal_limit_6_7 ;
nonlinear_constraint_thermal_limit_6_7..
	power(variable_reactive_power_flow_6_7,2) + power(variable_real_power_flow_6_7,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_7_6 ;
nonlinear_constraint_thermal_limit_7_6..
	power(variable_reactive_power_flow_7_6,2) + power(variable_real_power_flow_7_6,2) =l= 1.69
Equation nonlinear_constraint_thermal_limit_6_8 ;
nonlinear_constraint_thermal_limit_6_8..
	power(variable_reactive_power_flow_6_8,2) + power(variable_real_power_flow_6_8,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_8_6 ;
nonlinear_constraint_thermal_limit_8_6..
	power(variable_reactive_power_flow_8_6,2) + power(variable_real_power_flow_8_6,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_6_9 ;
nonlinear_constraint_thermal_limit_6_9..
	power(variable_reactive_power_flow_6_9,2) + power(variable_real_power_flow_6_9,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_9_6 ;
nonlinear_constraint_thermal_limit_9_6..
	power(variable_reactive_power_flow_9_6,2) + power(variable_real_power_flow_9_6,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_6_10 ;
nonlinear_constraint_thermal_limit_6_10..
	power(variable_reactive_power_flow_6_10,2) + power(variable_real_power_flow_6_10,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_10_6 ;
nonlinear_constraint_thermal_limit_10_6..
	power(variable_reactive_power_flow_10_6,2) + power(variable_real_power_flow_10_6,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_6_28 ;
nonlinear_constraint_thermal_limit_6_28..
	power(variable_reactive_power_flow_6_28,2) + power(variable_real_power_flow_6_28,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_28_6 ;
nonlinear_constraint_thermal_limit_28_6..
	power(variable_reactive_power_flow_28_6,2) + power(variable_real_power_flow_28_6,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_8_28 ;
nonlinear_constraint_thermal_limit_8_28..
	power(variable_reactive_power_flow_8_28,2) + power(variable_real_power_flow_8_28,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_28_8 ;
nonlinear_constraint_thermal_limit_28_8..
	power(variable_reactive_power_flow_28_8,2) + power(variable_real_power_flow_28_8,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_9_11 ;
nonlinear_constraint_thermal_limit_9_11..
	power(variable_reactive_power_flow_9_11,2) + power(variable_real_power_flow_9_11,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_11_9 ;
nonlinear_constraint_thermal_limit_11_9..
	power(variable_reactive_power_flow_11_9,2) + power(variable_real_power_flow_11_9,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_9_10 ;
nonlinear_constraint_thermal_limit_9_10..
	power(variable_reactive_power_flow_9_10,2) + power(variable_real_power_flow_9_10,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_10_9 ;
nonlinear_constraint_thermal_limit_10_9..
	power(variable_reactive_power_flow_10_9,2) + power(variable_real_power_flow_10_9,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_10_20 ;
nonlinear_constraint_thermal_limit_10_20..
	power(variable_reactive_power_flow_10_20,2) + power(variable_real_power_flow_10_20,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_20_10 ;
nonlinear_constraint_thermal_limit_20_10..
	power(variable_reactive_power_flow_20_10,2) + power(variable_real_power_flow_20_10,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_10_17 ;
nonlinear_constraint_thermal_limit_10_17..
	power(variable_reactive_power_flow_10_17,2) + power(variable_real_power_flow_10_17,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_17_10 ;
nonlinear_constraint_thermal_limit_17_10..
	power(variable_reactive_power_flow_17_10,2) + power(variable_real_power_flow_17_10,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_10_21 ;
nonlinear_constraint_thermal_limit_10_21..
	power(variable_reactive_power_flow_10_21,2) + power(variable_real_power_flow_10_21,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_21_10 ;
nonlinear_constraint_thermal_limit_21_10..
	power(variable_reactive_power_flow_21_10,2) + power(variable_real_power_flow_21_10,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_10_22 ;
nonlinear_constraint_thermal_limit_10_22..
	power(variable_reactive_power_flow_10_22,2) + power(variable_real_power_flow_10_22,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_22_10 ;
nonlinear_constraint_thermal_limit_22_10..
	power(variable_reactive_power_flow_22_10,2) + power(variable_real_power_flow_22_10,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_12_13 ;
nonlinear_constraint_thermal_limit_12_13..
	power(variable_reactive_power_flow_12_13,2) + power(variable_real_power_flow_12_13,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_13_12 ;
nonlinear_constraint_thermal_limit_13_12..
	power(variable_reactive_power_flow_13_12,2) + power(variable_real_power_flow_13_12,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_12_14 ;
nonlinear_constraint_thermal_limit_12_14..
	power(variable_reactive_power_flow_12_14,2) + power(variable_real_power_flow_12_14,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_14_12 ;
nonlinear_constraint_thermal_limit_14_12..
	power(variable_reactive_power_flow_14_12,2) + power(variable_real_power_flow_14_12,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_12_15 ;
nonlinear_constraint_thermal_limit_12_15..
	power(variable_reactive_power_flow_12_15,2) + power(variable_real_power_flow_12_15,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_15_12 ;
nonlinear_constraint_thermal_limit_15_12..
	power(variable_reactive_power_flow_15_12,2) + power(variable_real_power_flow_15_12,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_12_16 ;
nonlinear_constraint_thermal_limit_12_16..
	power(variable_reactive_power_flow_12_16,2) + power(variable_real_power_flow_12_16,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_16_12 ;
nonlinear_constraint_thermal_limit_16_12..
	power(variable_reactive_power_flow_16_12,2) + power(variable_real_power_flow_16_12,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_14_15 ;
nonlinear_constraint_thermal_limit_14_15..
	power(variable_reactive_power_flow_14_15,2) + power(variable_real_power_flow_14_15,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_15_14 ;
nonlinear_constraint_thermal_limit_15_14..
	power(variable_reactive_power_flow_15_14,2) + power(variable_real_power_flow_15_14,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_15_18 ;
nonlinear_constraint_thermal_limit_15_18..
	power(variable_reactive_power_flow_15_18,2) + power(variable_real_power_flow_15_18,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_18_15 ;
nonlinear_constraint_thermal_limit_18_15..
	power(variable_reactive_power_flow_18_15,2) + power(variable_real_power_flow_18_15,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_15_23 ;
nonlinear_constraint_thermal_limit_15_23..
	power(variable_reactive_power_flow_15_23,2) + power(variable_real_power_flow_15_23,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_23_15 ;
nonlinear_constraint_thermal_limit_23_15..
	power(variable_reactive_power_flow_23_15,2) + power(variable_real_power_flow_23_15,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_16_17 ;
nonlinear_constraint_thermal_limit_16_17..
	power(variable_reactive_power_flow_16_17,2) + power(variable_real_power_flow_16_17,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_17_16 ;
nonlinear_constraint_thermal_limit_17_16..
	power(variable_reactive_power_flow_17_16,2) + power(variable_real_power_flow_17_16,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_18_19 ;
nonlinear_constraint_thermal_limit_18_19..
	power(variable_reactive_power_flow_18_19,2) + power(variable_real_power_flow_18_19,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_19_18 ;
nonlinear_constraint_thermal_limit_19_18..
	power(variable_reactive_power_flow_19_18,2) + power(variable_real_power_flow_19_18,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_19_20 ;
nonlinear_constraint_thermal_limit_19_20..
	power(variable_reactive_power_flow_19_20,2) + power(variable_real_power_flow_19_20,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_20_19 ;
nonlinear_constraint_thermal_limit_20_19..
	power(variable_reactive_power_flow_20_19,2) + power(variable_real_power_flow_20_19,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_21_22 ;
nonlinear_constraint_thermal_limit_21_22..
	power(variable_reactive_power_flow_21_22,2) + power(variable_real_power_flow_21_22,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_22_21 ;
nonlinear_constraint_thermal_limit_22_21..
	power(variable_reactive_power_flow_22_21,2) + power(variable_real_power_flow_22_21,2) =l= 0.1024
Equation nonlinear_constraint_thermal_limit_22_24 ;
nonlinear_constraint_thermal_limit_22_24..
	power(variable_reactive_power_flow_22_24,2) + power(variable_real_power_flow_22_24,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_24_22 ;
nonlinear_constraint_thermal_limit_24_22..
	power(variable_reactive_power_flow_24_22,2) + power(variable_real_power_flow_24_22,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_23_24 ;
nonlinear_constraint_thermal_limit_23_24..
	power(variable_reactive_power_flow_23_24,2) + power(variable_real_power_flow_23_24,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_24_23 ;
nonlinear_constraint_thermal_limit_24_23..
	power(variable_reactive_power_flow_24_23,2) + power(variable_real_power_flow_24_23,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_24_25 ;
nonlinear_constraint_thermal_limit_24_25..
	power(variable_reactive_power_flow_24_25,2) + power(variable_real_power_flow_24_25,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_25_24 ;
nonlinear_constraint_thermal_limit_25_24..
	power(variable_reactive_power_flow_25_24,2) + power(variable_real_power_flow_25_24,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_25_26 ;
nonlinear_constraint_thermal_limit_25_26..
	power(variable_reactive_power_flow_25_26,2) + power(variable_real_power_flow_25_26,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_26_25 ;
nonlinear_constraint_thermal_limit_26_25..
	power(variable_reactive_power_flow_26_25,2) + power(variable_real_power_flow_26_25,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_25_27 ;
nonlinear_constraint_thermal_limit_25_27..
	power(variable_reactive_power_flow_25_27,2) + power(variable_real_power_flow_25_27,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_27_25 ;
nonlinear_constraint_thermal_limit_27_25..
	power(variable_reactive_power_flow_27_25,2) + power(variable_real_power_flow_27_25,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_27_28 ;
nonlinear_constraint_thermal_limit_27_28..
	power(variable_reactive_power_flow_27_28,2) + power(variable_real_power_flow_27_28,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_28_27 ;
nonlinear_constraint_thermal_limit_28_27..
	power(variable_reactive_power_flow_28_27,2) + power(variable_real_power_flow_28_27,2) =l= 0.4225
Equation nonlinear_constraint_thermal_limit_27_29 ;
nonlinear_constraint_thermal_limit_27_29..
	power(variable_reactive_power_flow_27_29,2) + power(variable_real_power_flow_27_29,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_29_27 ;
nonlinear_constraint_thermal_limit_29_27..
	power(variable_reactive_power_flow_29_27,2) + power(variable_real_power_flow_29_27,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_27_30 ;
nonlinear_constraint_thermal_limit_27_30..
	power(variable_reactive_power_flow_27_30,2) + power(variable_real_power_flow_27_30,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_30_27 ;
nonlinear_constraint_thermal_limit_30_27..
	power(variable_reactive_power_flow_30_27,2) + power(variable_real_power_flow_30_27,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_29_30 ;
nonlinear_constraint_thermal_limit_29_30..
	power(variable_reactive_power_flow_29_30,2) + power(variable_real_power_flow_29_30,2) =l= 0.0256
Equation nonlinear_constraint_thermal_limit_30_29 ;
nonlinear_constraint_thermal_limit_30_29..
	power(variable_reactive_power_flow_30_29,2) + power(variable_real_power_flow_30_29,2) =l= 0.0256
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
Equation linear_constraint_angle_difference_equation_2_5 ;
linear_constraint_angle_difference_equation_2_5..
	(variable_angle_difference_2_5 - variable_phase_angle_2 + variable_phase_angle_5) =e= (0.0)
Equation linear_constraint_angle_difference_equation_2_6 ;
linear_constraint_angle_difference_equation_2_6..
	(variable_angle_difference_2_6 - variable_phase_angle_2 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_3_4 ;
linear_constraint_angle_difference_equation_3_4..
	(variable_angle_difference_3_4 - variable_phase_angle_3 + variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_angle_difference_equation_4_6 ;
linear_constraint_angle_difference_equation_4_6..
	(variable_angle_difference_4_6 - variable_phase_angle_4 + variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_4_12 ;
linear_constraint_angle_difference_equation_4_12..
	(variable_angle_difference_4_12 + variable_phase_angle_12 - variable_phase_angle_4) =e= (0.0)
Equation linear_constraint_angle_difference_equation_5_7 ;
linear_constraint_angle_difference_equation_5_7..
	(variable_angle_difference_5_7 - variable_phase_angle_5 + variable_phase_angle_7) =e= (0.0)
Equation linear_constraint_angle_difference_equation_6_7 ;
linear_constraint_angle_difference_equation_6_7..
	(variable_angle_difference_6_7 - variable_phase_angle_6 + variable_phase_angle_7) =e= (0.0)
Equation linear_constraint_angle_difference_equation_6_8 ;
linear_constraint_angle_difference_equation_6_8..
	(variable_angle_difference_6_8 - variable_phase_angle_6 + variable_phase_angle_8) =e= (0.0)
Equation linear_constraint_angle_difference_equation_6_9 ;
linear_constraint_angle_difference_equation_6_9..
	(variable_angle_difference_6_9 - variable_phase_angle_6 + variable_phase_angle_9) =e= (0.0)
Equation linear_constraint_angle_difference_equation_6_10 ;
linear_constraint_angle_difference_equation_6_10..
	(variable_angle_difference_6_10 + variable_phase_angle_10 - variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_6_28 ;
linear_constraint_angle_difference_equation_6_28..
	(variable_angle_difference_6_28 + variable_phase_angle_28 - variable_phase_angle_6) =e= (0.0)
Equation linear_constraint_angle_difference_equation_8_28 ;
linear_constraint_angle_difference_equation_8_28..
	(variable_angle_difference_8_28 + variable_phase_angle_28 - variable_phase_angle_8) =e= (0.0)
Equation linear_constraint_angle_difference_equation_9_11 ;
linear_constraint_angle_difference_equation_9_11..
	(variable_angle_difference_9_11 + variable_phase_angle_11 - variable_phase_angle_9) =e= (0.0)
Equation linear_constraint_angle_difference_equation_9_10 ;
linear_constraint_angle_difference_equation_9_10..
	(variable_angle_difference_9_10 + variable_phase_angle_10 - variable_phase_angle_9) =e= (0.0)
Equation linear_constraint_angle_difference_equation_10_20 ;
linear_constraint_angle_difference_equation_10_20..
	(variable_angle_difference_10_20 - variable_phase_angle_10 + variable_phase_angle_20) =e= (0.0)
Equation linear_constraint_angle_difference_equation_10_17 ;
linear_constraint_angle_difference_equation_10_17..
	(variable_angle_difference_10_17 - variable_phase_angle_10 + variable_phase_angle_17) =e= (0.0)
Equation linear_constraint_angle_difference_equation_10_21 ;
linear_constraint_angle_difference_equation_10_21..
	(variable_angle_difference_10_21 - variable_phase_angle_10 + variable_phase_angle_21) =e= (0.0)
Equation linear_constraint_angle_difference_equation_10_22 ;
linear_constraint_angle_difference_equation_10_22..
	(variable_angle_difference_10_22 - variable_phase_angle_10 + variable_phase_angle_22) =e= (0.0)
Equation linear_constraint_angle_difference_equation_12_13 ;
linear_constraint_angle_difference_equation_12_13..
	(variable_angle_difference_12_13 - variable_phase_angle_12 + variable_phase_angle_13) =e= (0.0)
Equation linear_constraint_angle_difference_equation_12_14 ;
linear_constraint_angle_difference_equation_12_14..
	(variable_angle_difference_12_14 - variable_phase_angle_12 + variable_phase_angle_14) =e= (0.0)
Equation linear_constraint_angle_difference_equation_12_15 ;
linear_constraint_angle_difference_equation_12_15..
	(variable_angle_difference_12_15 - variable_phase_angle_12 + variable_phase_angle_15) =e= (0.0)
Equation linear_constraint_angle_difference_equation_12_16 ;
linear_constraint_angle_difference_equation_12_16..
	(variable_angle_difference_12_16 - variable_phase_angle_12 + variable_phase_angle_16) =e= (0.0)
Equation linear_constraint_angle_difference_equation_14_15 ;
linear_constraint_angle_difference_equation_14_15..
	(variable_angle_difference_14_15 - variable_phase_angle_14 + variable_phase_angle_15) =e= (0.0)
Equation linear_constraint_angle_difference_equation_15_18 ;
linear_constraint_angle_difference_equation_15_18..
	(variable_angle_difference_15_18 - variable_phase_angle_15 + variable_phase_angle_18) =e= (0.0)
Equation linear_constraint_angle_difference_equation_15_23 ;
linear_constraint_angle_difference_equation_15_23..
	(variable_angle_difference_15_23 - variable_phase_angle_15 + variable_phase_angle_23) =e= (0.0)
Equation linear_constraint_angle_difference_equation_16_17 ;
linear_constraint_angle_difference_equation_16_17..
	(variable_angle_difference_16_17 - variable_phase_angle_16 + variable_phase_angle_17) =e= (0.0)
Equation linear_constraint_angle_difference_equation_18_19 ;
linear_constraint_angle_difference_equation_18_19..
	(variable_angle_difference_18_19 - variable_phase_angle_18 + variable_phase_angle_19) =e= (0.0)
Equation linear_constraint_angle_difference_equation_19_20 ;
linear_constraint_angle_difference_equation_19_20..
	(variable_angle_difference_19_20 - variable_phase_angle_19 + variable_phase_angle_20) =e= (0.0)
Equation linear_constraint_angle_difference_equation_21_22 ;
linear_constraint_angle_difference_equation_21_22..
	(variable_angle_difference_21_22 - variable_phase_angle_21 + variable_phase_angle_22) =e= (0.0)
Equation linear_constraint_angle_difference_equation_22_24 ;
linear_constraint_angle_difference_equation_22_24..
	(variable_angle_difference_22_24 - variable_phase_angle_22 + variable_phase_angle_24) =e= (0.0)
Equation linear_constraint_angle_difference_equation_23_24 ;
linear_constraint_angle_difference_equation_23_24..
	(variable_angle_difference_23_24 - variable_phase_angle_23 + variable_phase_angle_24) =e= (0.0)
Equation linear_constraint_angle_difference_equation_24_25 ;
linear_constraint_angle_difference_equation_24_25..
	(variable_angle_difference_24_25 - variable_phase_angle_24 + variable_phase_angle_25) =e= (0.0)
Equation linear_constraint_angle_difference_equation_25_26 ;
linear_constraint_angle_difference_equation_25_26..
	(variable_angle_difference_25_26 - variable_phase_angle_25 + variable_phase_angle_26) =e= (0.0)
Equation linear_constraint_angle_difference_equation_25_27 ;
linear_constraint_angle_difference_equation_25_27..
	(variable_angle_difference_25_27 - variable_phase_angle_25 + variable_phase_angle_27) =e= (0.0)
Equation linear_constraint_angle_difference_equation_27_28 ;
linear_constraint_angle_difference_equation_27_28..
	(variable_angle_difference_27_28 - variable_phase_angle_27 + variable_phase_angle_28) =e= (0.0)
Equation linear_constraint_angle_difference_equation_27_29 ;
linear_constraint_angle_difference_equation_27_29..
	(variable_angle_difference_27_29 - variable_phase_angle_27 + variable_phase_angle_29) =e= (0.0)
Equation linear_constraint_angle_difference_equation_27_30 ;
linear_constraint_angle_difference_equation_27_30..
	(variable_angle_difference_27_30 - variable_phase_angle_27 + variable_phase_angle_30) =e= (0.0)
Equation linear_constraint_angle_difference_equation_29_30 ;
linear_constraint_angle_difference_equation_29_30..
	(variable_angle_difference_29_30 - variable_phase_angle_29 + variable_phase_angle_30) =e= (0.0)
Equation linear_constraint_tan_subst_x_value_1_2 ;
linear_constraint_tan_subst_x_value_1_2..
	(variable_angle_difference_1_2) =e= (1.0472*variable_tan_delta_1_2 - 0.5236)
Equation linear_constraint_tan_subst_x_value_1_3 ;
linear_constraint_tan_subst_x_value_1_3..
	(variable_angle_difference_1_3) =e= (1.0472*variable_tan_delta_1_3 - 0.5236)
Equation linear_constraint_tan_subst_x_value_2_4 ;
linear_constraint_tan_subst_x_value_2_4..
	(variable_angle_difference_2_4) =e= (1.0472*variable_tan_delta_2_4 - 0.5236)
Equation linear_constraint_tan_subst_x_value_2_5 ;
linear_constraint_tan_subst_x_value_2_5..
	(variable_angle_difference_2_5) =e= (1.0472*variable_tan_delta_2_5 - 0.5236)
Equation linear_constraint_tan_subst_x_value_2_6 ;
linear_constraint_tan_subst_x_value_2_6..
	(variable_angle_difference_2_6) =e= (1.0472*variable_tan_delta_2_6 - 0.5236)
Equation linear_constraint_tan_subst_x_value_3_4 ;
linear_constraint_tan_subst_x_value_3_4..
	(variable_angle_difference_3_4) =e= (1.0472*variable_tan_delta_3_4 - 0.5236)
Equation linear_constraint_tan_subst_x_value_4_6 ;
linear_constraint_tan_subst_x_value_4_6..
	(variable_angle_difference_4_6) =e= (1.0472*variable_tan_delta_4_6 - 0.5236)
Equation linear_constraint_tan_subst_x_value_4_12 ;
linear_constraint_tan_subst_x_value_4_12..
	(variable_angle_difference_4_12) =e= (1.0472*variable_tan_delta_4_12 - 0.5236)
Equation linear_constraint_tan_subst_x_value_5_7 ;
linear_constraint_tan_subst_x_value_5_7..
	(variable_angle_difference_5_7) =e= (1.0472*variable_tan_delta_5_7 - 0.5236)
Equation linear_constraint_tan_subst_x_value_6_7 ;
linear_constraint_tan_subst_x_value_6_7..
	(variable_angle_difference_6_7) =e= (1.0472*variable_tan_delta_6_7 - 0.5236)
Equation linear_constraint_tan_subst_x_value_6_8 ;
linear_constraint_tan_subst_x_value_6_8..
	(variable_angle_difference_6_8) =e= (1.0472*variable_tan_delta_6_8 - 0.5236)
Equation linear_constraint_tan_subst_x_value_6_9 ;
linear_constraint_tan_subst_x_value_6_9..
	(variable_angle_difference_6_9) =e= (1.0472*variable_tan_delta_6_9 - 0.5236)
Equation linear_constraint_tan_subst_x_value_6_10 ;
linear_constraint_tan_subst_x_value_6_10..
	(variable_angle_difference_6_10) =e= (1.0472*variable_tan_delta_6_10 - 0.5236)
Equation linear_constraint_tan_subst_x_value_6_28 ;
linear_constraint_tan_subst_x_value_6_28..
	(variable_angle_difference_6_28) =e= (1.0472*variable_tan_delta_6_28 - 0.5236)
Equation linear_constraint_tan_subst_x_value_8_28 ;
linear_constraint_tan_subst_x_value_8_28..
	(variable_angle_difference_8_28) =e= (1.0472*variable_tan_delta_8_28 - 0.5236)
Equation linear_constraint_tan_subst_x_value_9_11 ;
linear_constraint_tan_subst_x_value_9_11..
	(variable_angle_difference_9_11) =e= (1.0472*variable_tan_delta_9_11 - 0.5236)
Equation linear_constraint_tan_subst_x_value_9_10 ;
linear_constraint_tan_subst_x_value_9_10..
	(variable_angle_difference_9_10) =e= (1.0472*variable_tan_delta_9_10 - 0.5236)
Equation linear_constraint_tan_subst_x_value_10_20 ;
linear_constraint_tan_subst_x_value_10_20..
	(variable_angle_difference_10_20) =e= (1.0472*variable_tan_delta_10_20 - 0.5236)
Equation linear_constraint_tan_subst_x_value_10_17 ;
linear_constraint_tan_subst_x_value_10_17..
	(variable_angle_difference_10_17) =e= (1.0472*variable_tan_delta_10_17 - 0.5236)
Equation linear_constraint_tan_subst_x_value_10_21 ;
linear_constraint_tan_subst_x_value_10_21..
	(variable_angle_difference_10_21) =e= (1.0472*variable_tan_delta_10_21 - 0.5236)
Equation linear_constraint_tan_subst_x_value_10_22 ;
linear_constraint_tan_subst_x_value_10_22..
	(variable_angle_difference_10_22) =e= (1.0472*variable_tan_delta_10_22 - 0.5236)
Equation linear_constraint_tan_subst_x_value_12_13 ;
linear_constraint_tan_subst_x_value_12_13..
	(variable_angle_difference_12_13) =e= (1.0472*variable_tan_delta_12_13 - 0.5236)
Equation linear_constraint_tan_subst_x_value_12_14 ;
linear_constraint_tan_subst_x_value_12_14..
	(variable_angle_difference_12_14) =e= (1.0472*variable_tan_delta_12_14 - 0.5236)
Equation linear_constraint_tan_subst_x_value_12_15 ;
linear_constraint_tan_subst_x_value_12_15..
	(variable_angle_difference_12_15) =e= (1.0472*variable_tan_delta_12_15 - 0.5236)
Equation linear_constraint_tan_subst_x_value_12_16 ;
linear_constraint_tan_subst_x_value_12_16..
	(variable_angle_difference_12_16) =e= (1.0472*variable_tan_delta_12_16 - 0.5236)
Equation linear_constraint_tan_subst_x_value_14_15 ;
linear_constraint_tan_subst_x_value_14_15..
	(variable_angle_difference_14_15) =e= (1.0472*variable_tan_delta_14_15 - 0.5236)
Equation linear_constraint_tan_subst_x_value_15_18 ;
linear_constraint_tan_subst_x_value_15_18..
	(variable_angle_difference_15_18) =e= (1.0472*variable_tan_delta_15_18 - 0.5236)
Equation linear_constraint_tan_subst_x_value_15_23 ;
linear_constraint_tan_subst_x_value_15_23..
	(variable_angle_difference_15_23) =e= (1.0472*variable_tan_delta_15_23 - 0.5236)
Equation linear_constraint_tan_subst_x_value_16_17 ;
linear_constraint_tan_subst_x_value_16_17..
	(variable_angle_difference_16_17) =e= (1.0472*variable_tan_delta_16_17 - 0.5236)
Equation linear_constraint_tan_subst_x_value_18_19 ;
linear_constraint_tan_subst_x_value_18_19..
	(variable_angle_difference_18_19) =e= (1.0472*variable_tan_delta_18_19 - 0.5236)
Equation linear_constraint_tan_subst_x_value_19_20 ;
linear_constraint_tan_subst_x_value_19_20..
	(variable_angle_difference_19_20) =e= (1.0472*variable_tan_delta_19_20 - 0.5236)
Equation linear_constraint_tan_subst_x_value_21_22 ;
linear_constraint_tan_subst_x_value_21_22..
	(variable_angle_difference_21_22) =e= (1.0472*variable_tan_delta_21_22 - 0.5236)
Equation linear_constraint_tan_subst_x_value_22_24 ;
linear_constraint_tan_subst_x_value_22_24..
	(variable_angle_difference_22_24) =e= (1.0472*variable_tan_delta_22_24 - 0.5236)
Equation linear_constraint_tan_subst_x_value_23_24 ;
linear_constraint_tan_subst_x_value_23_24..
	(variable_angle_difference_23_24) =e= (1.0472*variable_tan_delta_23_24 - 0.5236)
Equation linear_constraint_tan_subst_x_value_24_25 ;
linear_constraint_tan_subst_x_value_24_25..
	(variable_angle_difference_24_25) =e= (1.0472*variable_tan_delta_24_25 - 0.5236)
Equation linear_constraint_tan_subst_x_value_25_26 ;
linear_constraint_tan_subst_x_value_25_26..
	(variable_angle_difference_25_26) =e= (1.0472*variable_tan_delta_25_26 - 0.5236)
Equation linear_constraint_tan_subst_x_value_25_27 ;
linear_constraint_tan_subst_x_value_25_27..
	(variable_angle_difference_25_27) =e= (1.0472*variable_tan_delta_25_27 - 0.5236)
Equation linear_constraint_tan_subst_x_value_27_28 ;
linear_constraint_tan_subst_x_value_27_28..
	(variable_angle_difference_27_28) =e= (1.0472*variable_tan_delta_27_28 - 0.5236)
Equation linear_constraint_tan_subst_x_value_27_29 ;
linear_constraint_tan_subst_x_value_27_29..
	(variable_angle_difference_27_29) =e= (1.0472*variable_tan_delta_27_29 - 0.5236)
Equation linear_constraint_tan_subst_x_value_27_30 ;
linear_constraint_tan_subst_x_value_27_30..
	(variable_angle_difference_27_30) =e= (1.0472*variable_tan_delta_27_30 - 0.5236)
Equation linear_constraint_tan_subst_x_value_29_30 ;
linear_constraint_tan_subst_x_value_29_30..
	(variable_angle_difference_29_30) =e= (1.0472*variable_tan_delta_29_30 - 0.5236)
Equation linear_constraint_tan_subst_y_value_1_2 ;
linear_constraint_tan_subst_y_value_1_2..
	(variable_tan_subst_1_2) =e= (1.15470380345276*variable_tan_delta_1_2 + variable_tan_error_1_2 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_1_3 ;
linear_constraint_tan_subst_y_value_1_3..
	(variable_tan_subst_1_3) =e= (1.15470380345276*variable_tan_delta_1_3 + variable_tan_error_1_3 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_2_4 ;
linear_constraint_tan_subst_y_value_2_4..
	(variable_tan_subst_2_4) =e= (1.15470380345276*variable_tan_delta_2_4 + variable_tan_error_2_4 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_2_5 ;
linear_constraint_tan_subst_y_value_2_5..
	(variable_tan_subst_2_5) =e= (1.15470380345276*variable_tan_delta_2_5 + variable_tan_error_2_5 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_2_6 ;
linear_constraint_tan_subst_y_value_2_6..
	(variable_tan_subst_2_6) =e= (1.15470380345276*variable_tan_delta_2_6 + variable_tan_error_2_6 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_3_4 ;
linear_constraint_tan_subst_y_value_3_4..
	(variable_tan_subst_3_4) =e= (1.15470380345276*variable_tan_delta_3_4 + variable_tan_error_3_4 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_4_6 ;
linear_constraint_tan_subst_y_value_4_6..
	(variable_tan_subst_4_6) =e= (1.15470380345276*variable_tan_delta_4_6 + variable_tan_error_4_6 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_4_12 ;
linear_constraint_tan_subst_y_value_4_12..
	(variable_tan_subst_4_12) =e= (1.15470380345276*variable_tan_delta_4_12 + variable_tan_error_4_12 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_5_7 ;
linear_constraint_tan_subst_y_value_5_7..
	(variable_tan_subst_5_7) =e= (1.15470380345276*variable_tan_delta_5_7 + variable_tan_error_5_7 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_6_7 ;
linear_constraint_tan_subst_y_value_6_7..
	(variable_tan_subst_6_7) =e= (1.15470380345276*variable_tan_delta_6_7 + variable_tan_error_6_7 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_6_8 ;
linear_constraint_tan_subst_y_value_6_8..
	(variable_tan_subst_6_8) =e= (1.15470380345276*variable_tan_delta_6_8 + variable_tan_error_6_8 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_6_9 ;
linear_constraint_tan_subst_y_value_6_9..
	(variable_tan_subst_6_9) =e= (1.15470380345276*variable_tan_delta_6_9 + variable_tan_error_6_9 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_6_10 ;
linear_constraint_tan_subst_y_value_6_10..
	(variable_tan_subst_6_10) =e= (1.15470380345276*variable_tan_delta_6_10 + variable_tan_error_6_10 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_6_28 ;
linear_constraint_tan_subst_y_value_6_28..
	(variable_tan_subst_6_28) =e= (1.15470380345276*variable_tan_delta_6_28 + variable_tan_error_6_28 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_8_28 ;
linear_constraint_tan_subst_y_value_8_28..
	(variable_tan_subst_8_28) =e= (1.15470380345276*variable_tan_delta_8_28 + variable_tan_error_8_28 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_9_11 ;
linear_constraint_tan_subst_y_value_9_11..
	(variable_tan_subst_9_11) =e= (1.15470380345276*variable_tan_delta_9_11 + variable_tan_error_9_11 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_9_10 ;
linear_constraint_tan_subst_y_value_9_10..
	(variable_tan_subst_9_10) =e= (1.15470380345276*variable_tan_delta_9_10 + variable_tan_error_9_10 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_10_20 ;
linear_constraint_tan_subst_y_value_10_20..
	(variable_tan_subst_10_20) =e= (1.15470380345276*variable_tan_delta_10_20 + variable_tan_error_10_20 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_10_17 ;
linear_constraint_tan_subst_y_value_10_17..
	(variable_tan_subst_10_17) =e= (1.15470380345276*variable_tan_delta_10_17 + variable_tan_error_10_17 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_10_21 ;
linear_constraint_tan_subst_y_value_10_21..
	(variable_tan_subst_10_21) =e= (1.15470380345276*variable_tan_delta_10_21 + variable_tan_error_10_21 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_10_22 ;
linear_constraint_tan_subst_y_value_10_22..
	(variable_tan_subst_10_22) =e= (1.15470380345276*variable_tan_delta_10_22 + variable_tan_error_10_22 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_12_13 ;
linear_constraint_tan_subst_y_value_12_13..
	(variable_tan_subst_12_13) =e= (1.15470380345276*variable_tan_delta_12_13 + variable_tan_error_12_13 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_12_14 ;
linear_constraint_tan_subst_y_value_12_14..
	(variable_tan_subst_12_14) =e= (1.15470380345276*variable_tan_delta_12_14 + variable_tan_error_12_14 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_12_15 ;
linear_constraint_tan_subst_y_value_12_15..
	(variable_tan_subst_12_15) =e= (1.15470380345276*variable_tan_delta_12_15 + variable_tan_error_12_15 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_12_16 ;
linear_constraint_tan_subst_y_value_12_16..
	(variable_tan_subst_12_16) =e= (1.15470380345276*variable_tan_delta_12_16 + variable_tan_error_12_16 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_14_15 ;
linear_constraint_tan_subst_y_value_14_15..
	(variable_tan_subst_14_15) =e= (1.15470380345276*variable_tan_delta_14_15 + variable_tan_error_14_15 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_15_18 ;
linear_constraint_tan_subst_y_value_15_18..
	(variable_tan_subst_15_18) =e= (1.15470380345276*variable_tan_delta_15_18 + variable_tan_error_15_18 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_15_23 ;
linear_constraint_tan_subst_y_value_15_23..
	(variable_tan_subst_15_23) =e= (1.15470380345276*variable_tan_delta_15_23 + variable_tan_error_15_23 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_16_17 ;
linear_constraint_tan_subst_y_value_16_17..
	(variable_tan_subst_16_17) =e= (1.15470380345276*variable_tan_delta_16_17 + variable_tan_error_16_17 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_18_19 ;
linear_constraint_tan_subst_y_value_18_19..
	(variable_tan_subst_18_19) =e= (1.15470380345276*variable_tan_delta_18_19 + variable_tan_error_18_19 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_19_20 ;
linear_constraint_tan_subst_y_value_19_20..
	(variable_tan_subst_19_20) =e= (1.15470380345276*variable_tan_delta_19_20 + variable_tan_error_19_20 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_21_22 ;
linear_constraint_tan_subst_y_value_21_22..
	(variable_tan_subst_21_22) =e= (1.15470380345276*variable_tan_delta_21_22 + variable_tan_error_21_22 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_22_24 ;
linear_constraint_tan_subst_y_value_22_24..
	(variable_tan_subst_22_24) =e= (1.15470380345276*variable_tan_delta_22_24 + variable_tan_error_22_24 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_23_24 ;
linear_constraint_tan_subst_y_value_23_24..
	(variable_tan_subst_23_24) =e= (1.15470380345276*variable_tan_delta_23_24 + variable_tan_error_23_24 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_24_25 ;
linear_constraint_tan_subst_y_value_24_25..
	(variable_tan_subst_24_25) =e= (1.15470380345276*variable_tan_delta_24_25 + variable_tan_error_24_25 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_25_26 ;
linear_constraint_tan_subst_y_value_25_26..
	(variable_tan_subst_25_26) =e= (1.15470380345276*variable_tan_delta_25_26 + variable_tan_error_25_26 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_25_27 ;
linear_constraint_tan_subst_y_value_25_27..
	(variable_tan_subst_25_27) =e= (1.15470380345276*variable_tan_delta_25_27 + variable_tan_error_25_27 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_27_28 ;
linear_constraint_tan_subst_y_value_27_28..
	(variable_tan_subst_27_28) =e= (1.15470380345276*variable_tan_delta_27_28 + variable_tan_error_27_28 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_27_29 ;
linear_constraint_tan_subst_y_value_27_29..
	(variable_tan_subst_27_29) =e= (1.15470380345276*variable_tan_delta_27_29 + variable_tan_error_27_29 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_27_30 ;
linear_constraint_tan_subst_y_value_27_30..
	(variable_tan_subst_27_30) =e= (1.15470380345276*variable_tan_delta_27_30 + variable_tan_error_27_30 - 0.577351901726381)
Equation linear_constraint_tan_subst_y_value_29_30 ;
linear_constraint_tan_subst_y_value_29_30..
	(variable_tan_subst_29_30) =e= (1.15470380345276*variable_tan_delta_29_30 + variable_tan_error_29_30 - 0.577351901726381)
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	0.462*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_2 ;
linear_constraint_generator_switch_lower_2..
	0.162*variable_generator_switch_2 - variable_real_power_gen_2 =l= 0
Equation linear_constraint_generator_switch_lower_13 ;
linear_constraint_generator_switch_lower_13..
	0.334*variable_generator_switch_13 - variable_real_power_gen_13 =l= 0
Equation linear_constraint_generator_switch_lower_22 ;
linear_constraint_generator_switch_lower_22..
	0.068*variable_generator_switch_22 - variable_real_power_gen_22 =l= 0
Equation linear_constraint_generator_switch_lower_23 ;
linear_constraint_generator_switch_lower_23..
	0.1*variable_generator_switch_23 - variable_real_power_gen_23 =l= 0
Equation linear_constraint_generator_switch_lower_27 ;
linear_constraint_generator_switch_lower_27..
	0.512*variable_generator_switch_27 - variable_real_power_gen_27 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	2.31*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_2 ;
linear_constraint_generator_switch_upper_2..
	0.81*variable_generator_switch_2 - variable_real_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_upper_13 ;
linear_constraint_generator_switch_upper_13..
	1.67*variable_generator_switch_13 - variable_real_power_gen_13 =g= 0
Equation linear_constraint_generator_switch_upper_22 ;
linear_constraint_generator_switch_upper_22..
	0.34*variable_generator_switch_22 - variable_real_power_gen_22 =g= 0
Equation linear_constraint_generator_switch_upper_23 ;
linear_constraint_generator_switch_upper_23..
	0.5*variable_generator_switch_23 - variable_real_power_gen_23 =g= 0
Equation linear_constraint_generator_switch_upper_27 ;
linear_constraint_generator_switch_upper_27..
	2.56*variable_generator_switch_27 - variable_real_power_gen_27 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-1.704*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2 ;
linear_constraint_generator_switch__reactive_lower_2..
	-1.596*variable_generator_switch_2 - variable_reactive_power_gen_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_13 ;
linear_constraint_generator_switch__reactive_lower_13..
	-0.84*variable_generator_switch_13 - variable_reactive_power_gen_13 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_22 ;
linear_constraint_generator_switch__reactive_lower_22..
	-0.3*variable_generator_switch_22 - variable_reactive_power_gen_22 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_23 ;
linear_constraint_generator_switch__reactive_lower_23..
	-0.25*variable_generator_switch_23 - variable_reactive_power_gen_23 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_27 ;
linear_constraint_generator_switch__reactive_lower_27..
	-1.28*variable_generator_switch_27 - variable_reactive_power_gen_27 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	2.5*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2 ;
linear_constraint_generator_switch_reactive_upper_2..
	1.596*variable_generator_switch_2 - variable_reactive_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_13 ;
linear_constraint_generator_switch_reactive_upper_13..
	0.84*variable_generator_switch_13 - variable_reactive_power_gen_13 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_22 ;
linear_constraint_generator_switch_reactive_upper_22..
	0.8*variable_generator_switch_22 - variable_reactive_power_gen_22 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_23 ;
linear_constraint_generator_switch_reactive_upper_23..
	0.5*variable_generator_switch_23 - variable_reactive_power_gen_23 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_27 ;
linear_constraint_generator_switch_reactive_upper_27..
	1.28*variable_generator_switch_27 - variable_reactive_power_gen_27 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-1.155000001*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_3 ;
linear_constraint_voltage_product_real_lower_1_3..
	-1.1025*variable_transmission_switch_1_3 - variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_4 ;
linear_constraint_voltage_product_real_lower_2_4..
	-1.155000001*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_5 ;
linear_constraint_voltage_product_real_lower_2_5..
	-1.155000001*variable_transmission_switch_2_5 - variable_voltage_product_real_2_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_6 ;
linear_constraint_voltage_product_real_lower_2_6..
	-1.155000001*variable_transmission_switch_2_6 - variable_voltage_product_real_2_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_4 ;
linear_constraint_voltage_product_real_lower_3_4..
	-1.1025*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_6 ;
linear_constraint_voltage_product_real_lower_4_6..
	-1.1025*variable_transmission_switch_4_6 - variable_voltage_product_real_4_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_12 ;
linear_constraint_voltage_product_real_lower_4_12..
	-1.1025*variable_transmission_switch_4_12 - variable_voltage_product_real_4_12 =l= 0
Equation linear_constraint_voltage_product_real_lower_5_7 ;
linear_constraint_voltage_product_real_lower_5_7..
	-1.1025*variable_transmission_switch_5_7 - variable_voltage_product_real_5_7 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_7 ;
linear_constraint_voltage_product_real_lower_6_7..
	-1.1025*variable_transmission_switch_6_7 - variable_voltage_product_real_6_7 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_8 ;
linear_constraint_voltage_product_real_lower_6_8..
	-1.1025*variable_transmission_switch_6_8 - variable_voltage_product_real_6_8 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_9 ;
linear_constraint_voltage_product_real_lower_6_9..
	-1.1025*variable_transmission_switch_6_9 - variable_voltage_product_real_6_9 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_10 ;
linear_constraint_voltage_product_real_lower_6_10..
	-1.1025*variable_transmission_switch_6_10 - variable_voltage_product_real_6_10 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_28 ;
linear_constraint_voltage_product_real_lower_6_28..
	-1.1025*variable_transmission_switch_6_28 - variable_voltage_product_real_6_28 =l= 0
Equation linear_constraint_voltage_product_real_lower_8_28 ;
linear_constraint_voltage_product_real_lower_8_28..
	-1.1025*variable_transmission_switch_8_28 - variable_voltage_product_real_8_28 =l= 0
Equation linear_constraint_voltage_product_real_lower_9_11 ;
linear_constraint_voltage_product_real_lower_9_11..
	-1.1025*variable_transmission_switch_9_11 - variable_voltage_product_real_9_11 =l= 0
Equation linear_constraint_voltage_product_real_lower_9_10 ;
linear_constraint_voltage_product_real_lower_9_10..
	-1.1025*variable_transmission_switch_9_10 - variable_voltage_product_real_9_10 =l= 0
Equation linear_constraint_voltage_product_real_lower_10_20 ;
linear_constraint_voltage_product_real_lower_10_20..
	-1.1025*variable_transmission_switch_10_20 - variable_voltage_product_real_10_20 =l= 0
Equation linear_constraint_voltage_product_real_lower_10_17 ;
linear_constraint_voltage_product_real_lower_10_17..
	-1.1025*variable_transmission_switch_10_17 - variable_voltage_product_real_10_17 =l= 0
Equation linear_constraint_voltage_product_real_lower_10_21 ;
linear_constraint_voltage_product_real_lower_10_21..
	-1.1025*variable_transmission_switch_10_21 - variable_voltage_product_real_10_21 =l= 0
Equation linear_constraint_voltage_product_real_lower_10_22 ;
linear_constraint_voltage_product_real_lower_10_22..
	-1.155000001*variable_transmission_switch_10_22 - variable_voltage_product_real_10_22 =l= 0
Equation linear_constraint_voltage_product_real_lower_12_13 ;
linear_constraint_voltage_product_real_lower_12_13..
	-1.155000001*variable_transmission_switch_12_13 - variable_voltage_product_real_12_13 =l= 0
Equation linear_constraint_voltage_product_real_lower_12_14 ;
linear_constraint_voltage_product_real_lower_12_14..
	-1.1025*variable_transmission_switch_12_14 - variable_voltage_product_real_12_14 =l= 0
Equation linear_constraint_voltage_product_real_lower_12_15 ;
linear_constraint_voltage_product_real_lower_12_15..
	-1.1025*variable_transmission_switch_12_15 - variable_voltage_product_real_12_15 =l= 0
Equation linear_constraint_voltage_product_real_lower_12_16 ;
linear_constraint_voltage_product_real_lower_12_16..
	-1.1025*variable_transmission_switch_12_16 - variable_voltage_product_real_12_16 =l= 0
Equation linear_constraint_voltage_product_real_lower_14_15 ;
linear_constraint_voltage_product_real_lower_14_15..
	-1.1025*variable_transmission_switch_14_15 - variable_voltage_product_real_14_15 =l= 0
Equation linear_constraint_voltage_product_real_lower_15_18 ;
linear_constraint_voltage_product_real_lower_15_18..
	-1.1025*variable_transmission_switch_15_18 - variable_voltage_product_real_15_18 =l= 0
Equation linear_constraint_voltage_product_real_lower_15_23 ;
linear_constraint_voltage_product_real_lower_15_23..
	-1.155000001*variable_transmission_switch_15_23 - variable_voltage_product_real_15_23 =l= 0
Equation linear_constraint_voltage_product_real_lower_16_17 ;
linear_constraint_voltage_product_real_lower_16_17..
	-1.1025*variable_transmission_switch_16_17 - variable_voltage_product_real_16_17 =l= 0
Equation linear_constraint_voltage_product_real_lower_18_19 ;
linear_constraint_voltage_product_real_lower_18_19..
	-1.1025*variable_transmission_switch_18_19 - variable_voltage_product_real_18_19 =l= 0
Equation linear_constraint_voltage_product_real_lower_19_20 ;
linear_constraint_voltage_product_real_lower_19_20..
	-1.1025*variable_transmission_switch_19_20 - variable_voltage_product_real_19_20 =l= 0
Equation linear_constraint_voltage_product_real_lower_21_22 ;
linear_constraint_voltage_product_real_lower_21_22..
	-1.155000001*variable_transmission_switch_21_22 - variable_voltage_product_real_21_22 =l= 0
Equation linear_constraint_voltage_product_real_lower_22_24 ;
linear_constraint_voltage_product_real_lower_22_24..
	-1.155000001*variable_transmission_switch_22_24 - variable_voltage_product_real_22_24 =l= 0
Equation linear_constraint_voltage_product_real_lower_23_24 ;
linear_constraint_voltage_product_real_lower_23_24..
	-1.155000001*variable_transmission_switch_23_24 - variable_voltage_product_real_23_24 =l= 0
Equation linear_constraint_voltage_product_real_lower_24_25 ;
linear_constraint_voltage_product_real_lower_24_25..
	-1.1025*variable_transmission_switch_24_25 - variable_voltage_product_real_24_25 =l= 0
Equation linear_constraint_voltage_product_real_lower_25_26 ;
linear_constraint_voltage_product_real_lower_25_26..
	-1.1025*variable_transmission_switch_25_26 - variable_voltage_product_real_25_26 =l= 0
Equation linear_constraint_voltage_product_real_lower_25_27 ;
linear_constraint_voltage_product_real_lower_25_27..
	-1.155000001*variable_transmission_switch_25_27 - variable_voltage_product_real_25_27 =l= 0
Equation linear_constraint_voltage_product_real_lower_27_28 ;
linear_constraint_voltage_product_real_lower_27_28..
	-1.155000001*variable_transmission_switch_27_28 - variable_voltage_product_real_27_28 =l= 0
Equation linear_constraint_voltage_product_real_lower_27_29 ;
linear_constraint_voltage_product_real_lower_27_29..
	-1.155000001*variable_transmission_switch_27_29 - variable_voltage_product_real_27_29 =l= 0
Equation linear_constraint_voltage_product_real_lower_27_30 ;
linear_constraint_voltage_product_real_lower_27_30..
	-1.155000001*variable_transmission_switch_27_30 - variable_voltage_product_real_27_30 =l= 0
Equation linear_constraint_voltage_product_real_lower_29_30 ;
linear_constraint_voltage_product_real_lower_29_30..
	-1.1025*variable_transmission_switch_29_30 - variable_voltage_product_real_29_30 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_2 ;
linear_constraint_voltage_product_real_upper_1_2..
	1.155000001*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_3 ;
linear_constraint_voltage_product_real_upper_1_3..
	1.1025*variable_transmission_switch_1_3 - variable_voltage_product_real_1_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_4 ;
linear_constraint_voltage_product_real_upper_2_4..
	1.155000001*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_5 ;
linear_constraint_voltage_product_real_upper_2_5..
	1.155000001*variable_transmission_switch_2_5 - variable_voltage_product_real_2_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_6 ;
linear_constraint_voltage_product_real_upper_2_6..
	1.155000001*variable_transmission_switch_2_6 - variable_voltage_product_real_2_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_4 ;
linear_constraint_voltage_product_real_upper_3_4..
	1.1025*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_6 ;
linear_constraint_voltage_product_real_upper_4_6..
	1.1025*variable_transmission_switch_4_6 - variable_voltage_product_real_4_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_12 ;
linear_constraint_voltage_product_real_upper_4_12..
	1.1025*variable_transmission_switch_4_12 - variable_voltage_product_real_4_12 =g= 0
Equation linear_constraint_voltage_product_real_upper_5_7 ;
linear_constraint_voltage_product_real_upper_5_7..
	1.1025*variable_transmission_switch_5_7 - variable_voltage_product_real_5_7 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_7 ;
linear_constraint_voltage_product_real_upper_6_7..
	1.1025*variable_transmission_switch_6_7 - variable_voltage_product_real_6_7 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_8 ;
linear_constraint_voltage_product_real_upper_6_8..
	1.1025*variable_transmission_switch_6_8 - variable_voltage_product_real_6_8 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_9 ;
linear_constraint_voltage_product_real_upper_6_9..
	1.1025*variable_transmission_switch_6_9 - variable_voltage_product_real_6_9 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_10 ;
linear_constraint_voltage_product_real_upper_6_10..
	1.1025*variable_transmission_switch_6_10 - variable_voltage_product_real_6_10 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_28 ;
linear_constraint_voltage_product_real_upper_6_28..
	1.1025*variable_transmission_switch_6_28 - variable_voltage_product_real_6_28 =g= 0
Equation linear_constraint_voltage_product_real_upper_8_28 ;
linear_constraint_voltage_product_real_upper_8_28..
	1.1025*variable_transmission_switch_8_28 - variable_voltage_product_real_8_28 =g= 0
Equation linear_constraint_voltage_product_real_upper_9_11 ;
linear_constraint_voltage_product_real_upper_9_11..
	1.1025*variable_transmission_switch_9_11 - variable_voltage_product_real_9_11 =g= 0
Equation linear_constraint_voltage_product_real_upper_9_10 ;
linear_constraint_voltage_product_real_upper_9_10..
	1.1025*variable_transmission_switch_9_10 - variable_voltage_product_real_9_10 =g= 0
Equation linear_constraint_voltage_product_real_upper_10_20 ;
linear_constraint_voltage_product_real_upper_10_20..
	1.1025*variable_transmission_switch_10_20 - variable_voltage_product_real_10_20 =g= 0
Equation linear_constraint_voltage_product_real_upper_10_17 ;
linear_constraint_voltage_product_real_upper_10_17..
	1.1025*variable_transmission_switch_10_17 - variable_voltage_product_real_10_17 =g= 0
Equation linear_constraint_voltage_product_real_upper_10_21 ;
linear_constraint_voltage_product_real_upper_10_21..
	1.1025*variable_transmission_switch_10_21 - variable_voltage_product_real_10_21 =g= 0
Equation linear_constraint_voltage_product_real_upper_10_22 ;
linear_constraint_voltage_product_real_upper_10_22..
	1.155000001*variable_transmission_switch_10_22 - variable_voltage_product_real_10_22 =g= 0
Equation linear_constraint_voltage_product_real_upper_12_13 ;
linear_constraint_voltage_product_real_upper_12_13..
	1.155000001*variable_transmission_switch_12_13 - variable_voltage_product_real_12_13 =g= 0
Equation linear_constraint_voltage_product_real_upper_12_14 ;
linear_constraint_voltage_product_real_upper_12_14..
	1.1025*variable_transmission_switch_12_14 - variable_voltage_product_real_12_14 =g= 0
Equation linear_constraint_voltage_product_real_upper_12_15 ;
linear_constraint_voltage_product_real_upper_12_15..
	1.1025*variable_transmission_switch_12_15 - variable_voltage_product_real_12_15 =g= 0
Equation linear_constraint_voltage_product_real_upper_12_16 ;
linear_constraint_voltage_product_real_upper_12_16..
	1.1025*variable_transmission_switch_12_16 - variable_voltage_product_real_12_16 =g= 0
Equation linear_constraint_voltage_product_real_upper_14_15 ;
linear_constraint_voltage_product_real_upper_14_15..
	1.1025*variable_transmission_switch_14_15 - variable_voltage_product_real_14_15 =g= 0
Equation linear_constraint_voltage_product_real_upper_15_18 ;
linear_constraint_voltage_product_real_upper_15_18..
	1.1025*variable_transmission_switch_15_18 - variable_voltage_product_real_15_18 =g= 0
Equation linear_constraint_voltage_product_real_upper_15_23 ;
linear_constraint_voltage_product_real_upper_15_23..
	1.155000001*variable_transmission_switch_15_23 - variable_voltage_product_real_15_23 =g= 0
Equation linear_constraint_voltage_product_real_upper_16_17 ;
linear_constraint_voltage_product_real_upper_16_17..
	1.1025*variable_transmission_switch_16_17 - variable_voltage_product_real_16_17 =g= 0
Equation linear_constraint_voltage_product_real_upper_18_19 ;
linear_constraint_voltage_product_real_upper_18_19..
	1.1025*variable_transmission_switch_18_19 - variable_voltage_product_real_18_19 =g= 0
Equation linear_constraint_voltage_product_real_upper_19_20 ;
linear_constraint_voltage_product_real_upper_19_20..
	1.1025*variable_transmission_switch_19_20 - variable_voltage_product_real_19_20 =g= 0
Equation linear_constraint_voltage_product_real_upper_21_22 ;
linear_constraint_voltage_product_real_upper_21_22..
	1.155000001*variable_transmission_switch_21_22 - variable_voltage_product_real_21_22 =g= 0
Equation linear_constraint_voltage_product_real_upper_22_24 ;
linear_constraint_voltage_product_real_upper_22_24..
	1.155000001*variable_transmission_switch_22_24 - variable_voltage_product_real_22_24 =g= 0
Equation linear_constraint_voltage_product_real_upper_23_24 ;
linear_constraint_voltage_product_real_upper_23_24..
	1.155000001*variable_transmission_switch_23_24 - variable_voltage_product_real_23_24 =g= 0
Equation linear_constraint_voltage_product_real_upper_24_25 ;
linear_constraint_voltage_product_real_upper_24_25..
	1.1025*variable_transmission_switch_24_25 - variable_voltage_product_real_24_25 =g= 0
Equation linear_constraint_voltage_product_real_upper_25_26 ;
linear_constraint_voltage_product_real_upper_25_26..
	1.1025*variable_transmission_switch_25_26 - variable_voltage_product_real_25_26 =g= 0
Equation linear_constraint_voltage_product_real_upper_25_27 ;
linear_constraint_voltage_product_real_upper_25_27..
	1.155000001*variable_transmission_switch_25_27 - variable_voltage_product_real_25_27 =g= 0
Equation linear_constraint_voltage_product_real_upper_27_28 ;
linear_constraint_voltage_product_real_upper_27_28..
	1.155000001*variable_transmission_switch_27_28 - variable_voltage_product_real_27_28 =g= 0
Equation linear_constraint_voltage_product_real_upper_27_29 ;
linear_constraint_voltage_product_real_upper_27_29..
	1.155000001*variable_transmission_switch_27_29 - variable_voltage_product_real_27_29 =g= 0
Equation linear_constraint_voltage_product_real_upper_27_30 ;
linear_constraint_voltage_product_real_upper_27_30..
	1.155000001*variable_transmission_switch_27_30 - variable_voltage_product_real_27_30 =g= 0
Equation linear_constraint_voltage_product_real_upper_29_30 ;
linear_constraint_voltage_product_real_upper_29_30..
	1.1025*variable_transmission_switch_29_30 - variable_voltage_product_real_29_30 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_2 ;
linear_constraint_voltage_product_imaginary_lower_1_2..
	-1.155000001*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_3 ;
linear_constraint_voltage_product_imaginary_lower_1_3..
	-1.1025*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_4 ;
linear_constraint_voltage_product_imaginary_lower_2_4..
	-1.155000001*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_5 ;
linear_constraint_voltage_product_imaginary_lower_2_5..
	-1.155000001*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_6 ;
linear_constraint_voltage_product_imaginary_lower_2_6..
	-1.155000001*variable_transmission_switch_2_6 - variable_voltage_product_imaginary_2_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_4 ;
linear_constraint_voltage_product_imaginary_lower_3_4..
	-1.1025*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_6 ;
linear_constraint_voltage_product_imaginary_lower_4_6..
	-1.1025*variable_transmission_switch_4_6 - variable_voltage_product_imaginary_4_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_12 ;
linear_constraint_voltage_product_imaginary_lower_4_12..
	-1.1025*variable_transmission_switch_4_12 - variable_voltage_product_imaginary_4_12 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_5_7 ;
linear_constraint_voltage_product_imaginary_lower_5_7..
	-1.1025*variable_transmission_switch_5_7 - variable_voltage_product_imaginary_5_7 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_7 ;
linear_constraint_voltage_product_imaginary_lower_6_7..
	-1.1025*variable_transmission_switch_6_7 - variable_voltage_product_imaginary_6_7 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_8 ;
linear_constraint_voltage_product_imaginary_lower_6_8..
	-1.1025*variable_transmission_switch_6_8 - variable_voltage_product_imaginary_6_8 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_9 ;
linear_constraint_voltage_product_imaginary_lower_6_9..
	-1.1025*variable_transmission_switch_6_9 - variable_voltage_product_imaginary_6_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_10 ;
linear_constraint_voltage_product_imaginary_lower_6_10..
	-1.1025*variable_transmission_switch_6_10 - variable_voltage_product_imaginary_6_10 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_28 ;
linear_constraint_voltage_product_imaginary_lower_6_28..
	-1.1025*variable_transmission_switch_6_28 - variable_voltage_product_imaginary_6_28 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_8_28 ;
linear_constraint_voltage_product_imaginary_lower_8_28..
	-1.1025*variable_transmission_switch_8_28 - variable_voltage_product_imaginary_8_28 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_9_11 ;
linear_constraint_voltage_product_imaginary_lower_9_11..
	-1.1025*variable_transmission_switch_9_11 - variable_voltage_product_imaginary_9_11 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_9_10 ;
linear_constraint_voltage_product_imaginary_lower_9_10..
	-1.1025*variable_transmission_switch_9_10 - variable_voltage_product_imaginary_9_10 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_10_20 ;
linear_constraint_voltage_product_imaginary_lower_10_20..
	-1.1025*variable_transmission_switch_10_20 - variable_voltage_product_imaginary_10_20 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_10_17 ;
linear_constraint_voltage_product_imaginary_lower_10_17..
	-1.1025*variable_transmission_switch_10_17 - variable_voltage_product_imaginary_10_17 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_10_21 ;
linear_constraint_voltage_product_imaginary_lower_10_21..
	-1.1025*variable_transmission_switch_10_21 - variable_voltage_product_imaginary_10_21 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_10_22 ;
linear_constraint_voltage_product_imaginary_lower_10_22..
	-1.155000001*variable_transmission_switch_10_22 - variable_voltage_product_imaginary_10_22 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_12_13 ;
linear_constraint_voltage_product_imaginary_lower_12_13..
	-1.155000001*variable_transmission_switch_12_13 - variable_voltage_product_imaginary_12_13 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_12_14 ;
linear_constraint_voltage_product_imaginary_lower_12_14..
	-1.1025*variable_transmission_switch_12_14 - variable_voltage_product_imaginary_12_14 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_12_15 ;
linear_constraint_voltage_product_imaginary_lower_12_15..
	-1.1025*variable_transmission_switch_12_15 - variable_voltage_product_imaginary_12_15 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_12_16 ;
linear_constraint_voltage_product_imaginary_lower_12_16..
	-1.1025*variable_transmission_switch_12_16 - variable_voltage_product_imaginary_12_16 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_14_15 ;
linear_constraint_voltage_product_imaginary_lower_14_15..
	-1.1025*variable_transmission_switch_14_15 - variable_voltage_product_imaginary_14_15 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_15_18 ;
linear_constraint_voltage_product_imaginary_lower_15_18..
	-1.1025*variable_transmission_switch_15_18 - variable_voltage_product_imaginary_15_18 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_15_23 ;
linear_constraint_voltage_product_imaginary_lower_15_23..
	-1.155000001*variable_transmission_switch_15_23 - variable_voltage_product_imaginary_15_23 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_16_17 ;
linear_constraint_voltage_product_imaginary_lower_16_17..
	-1.1025*variable_transmission_switch_16_17 - variable_voltage_product_imaginary_16_17 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_18_19 ;
linear_constraint_voltage_product_imaginary_lower_18_19..
	-1.1025*variable_transmission_switch_18_19 - variable_voltage_product_imaginary_18_19 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_19_20 ;
linear_constraint_voltage_product_imaginary_lower_19_20..
	-1.1025*variable_transmission_switch_19_20 - variable_voltage_product_imaginary_19_20 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_21_22 ;
linear_constraint_voltage_product_imaginary_lower_21_22..
	-1.155000001*variable_transmission_switch_21_22 - variable_voltage_product_imaginary_21_22 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_22_24 ;
linear_constraint_voltage_product_imaginary_lower_22_24..
	-1.155000001*variable_transmission_switch_22_24 - variable_voltage_product_imaginary_22_24 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_23_24 ;
linear_constraint_voltage_product_imaginary_lower_23_24..
	-1.155000001*variable_transmission_switch_23_24 - variable_voltage_product_imaginary_23_24 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_24_25 ;
linear_constraint_voltage_product_imaginary_lower_24_25..
	-1.1025*variable_transmission_switch_24_25 - variable_voltage_product_imaginary_24_25 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_25_26 ;
linear_constraint_voltage_product_imaginary_lower_25_26..
	-1.1025*variable_transmission_switch_25_26 - variable_voltage_product_imaginary_25_26 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_25_27 ;
linear_constraint_voltage_product_imaginary_lower_25_27..
	-1.155000001*variable_transmission_switch_25_27 - variable_voltage_product_imaginary_25_27 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_27_28 ;
linear_constraint_voltage_product_imaginary_lower_27_28..
	-1.155000001*variable_transmission_switch_27_28 - variable_voltage_product_imaginary_27_28 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_27_29 ;
linear_constraint_voltage_product_imaginary_lower_27_29..
	-1.155000001*variable_transmission_switch_27_29 - variable_voltage_product_imaginary_27_29 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_27_30 ;
linear_constraint_voltage_product_imaginary_lower_27_30..
	-1.155000001*variable_transmission_switch_27_30 - variable_voltage_product_imaginary_27_30 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_29_30 ;
linear_constraint_voltage_product_imaginary_lower_29_30..
	-1.1025*variable_transmission_switch_29_30 - variable_voltage_product_imaginary_29_30 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_2 ;
linear_constraint_voltage_product_imaginary_upper_1_2..
	1.155000001*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_3 ;
linear_constraint_voltage_product_imaginary_upper_1_3..
	1.1025*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_4 ;
linear_constraint_voltage_product_imaginary_upper_2_4..
	1.155000001*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_5 ;
linear_constraint_voltage_product_imaginary_upper_2_5..
	1.155000001*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_6 ;
linear_constraint_voltage_product_imaginary_upper_2_6..
	1.155000001*variable_transmission_switch_2_6 - variable_voltage_product_imaginary_2_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_4 ;
linear_constraint_voltage_product_imaginary_upper_3_4..
	1.1025*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_6 ;
linear_constraint_voltage_product_imaginary_upper_4_6..
	1.1025*variable_transmission_switch_4_6 - variable_voltage_product_imaginary_4_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_12 ;
linear_constraint_voltage_product_imaginary_upper_4_12..
	1.1025*variable_transmission_switch_4_12 - variable_voltage_product_imaginary_4_12 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_5_7 ;
linear_constraint_voltage_product_imaginary_upper_5_7..
	1.1025*variable_transmission_switch_5_7 - variable_voltage_product_imaginary_5_7 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_7 ;
linear_constraint_voltage_product_imaginary_upper_6_7..
	1.1025*variable_transmission_switch_6_7 - variable_voltage_product_imaginary_6_7 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_8 ;
linear_constraint_voltage_product_imaginary_upper_6_8..
	1.1025*variable_transmission_switch_6_8 - variable_voltage_product_imaginary_6_8 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_9 ;
linear_constraint_voltage_product_imaginary_upper_6_9..
	1.1025*variable_transmission_switch_6_9 - variable_voltage_product_imaginary_6_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_10 ;
linear_constraint_voltage_product_imaginary_upper_6_10..
	1.1025*variable_transmission_switch_6_10 - variable_voltage_product_imaginary_6_10 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_28 ;
linear_constraint_voltage_product_imaginary_upper_6_28..
	1.1025*variable_transmission_switch_6_28 - variable_voltage_product_imaginary_6_28 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_8_28 ;
linear_constraint_voltage_product_imaginary_upper_8_28..
	1.1025*variable_transmission_switch_8_28 - variable_voltage_product_imaginary_8_28 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_9_11 ;
linear_constraint_voltage_product_imaginary_upper_9_11..
	1.1025*variable_transmission_switch_9_11 - variable_voltage_product_imaginary_9_11 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_9_10 ;
linear_constraint_voltage_product_imaginary_upper_9_10..
	1.1025*variable_transmission_switch_9_10 - variable_voltage_product_imaginary_9_10 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_10_20 ;
linear_constraint_voltage_product_imaginary_upper_10_20..
	1.1025*variable_transmission_switch_10_20 - variable_voltage_product_imaginary_10_20 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_10_17 ;
linear_constraint_voltage_product_imaginary_upper_10_17..
	1.1025*variable_transmission_switch_10_17 - variable_voltage_product_imaginary_10_17 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_10_21 ;
linear_constraint_voltage_product_imaginary_upper_10_21..
	1.1025*variable_transmission_switch_10_21 - variable_voltage_product_imaginary_10_21 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_10_22 ;
linear_constraint_voltage_product_imaginary_upper_10_22..
	1.155000001*variable_transmission_switch_10_22 - variable_voltage_product_imaginary_10_22 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_12_13 ;
linear_constraint_voltage_product_imaginary_upper_12_13..
	1.155000001*variable_transmission_switch_12_13 - variable_voltage_product_imaginary_12_13 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_12_14 ;
linear_constraint_voltage_product_imaginary_upper_12_14..
	1.1025*variable_transmission_switch_12_14 - variable_voltage_product_imaginary_12_14 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_12_15 ;
linear_constraint_voltage_product_imaginary_upper_12_15..
	1.1025*variable_transmission_switch_12_15 - variable_voltage_product_imaginary_12_15 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_12_16 ;
linear_constraint_voltage_product_imaginary_upper_12_16..
	1.1025*variable_transmission_switch_12_16 - variable_voltage_product_imaginary_12_16 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_14_15 ;
linear_constraint_voltage_product_imaginary_upper_14_15..
	1.1025*variable_transmission_switch_14_15 - variable_voltage_product_imaginary_14_15 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_15_18 ;
linear_constraint_voltage_product_imaginary_upper_15_18..
	1.1025*variable_transmission_switch_15_18 - variable_voltage_product_imaginary_15_18 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_15_23 ;
linear_constraint_voltage_product_imaginary_upper_15_23..
	1.155000001*variable_transmission_switch_15_23 - variable_voltage_product_imaginary_15_23 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_16_17 ;
linear_constraint_voltage_product_imaginary_upper_16_17..
	1.1025*variable_transmission_switch_16_17 - variable_voltage_product_imaginary_16_17 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_18_19 ;
linear_constraint_voltage_product_imaginary_upper_18_19..
	1.1025*variable_transmission_switch_18_19 - variable_voltage_product_imaginary_18_19 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_19_20 ;
linear_constraint_voltage_product_imaginary_upper_19_20..
	1.1025*variable_transmission_switch_19_20 - variable_voltage_product_imaginary_19_20 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_21_22 ;
linear_constraint_voltage_product_imaginary_upper_21_22..
	1.155000001*variable_transmission_switch_21_22 - variable_voltage_product_imaginary_21_22 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_22_24 ;
linear_constraint_voltage_product_imaginary_upper_22_24..
	1.155000001*variable_transmission_switch_22_24 - variable_voltage_product_imaginary_22_24 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_23_24 ;
linear_constraint_voltage_product_imaginary_upper_23_24..
	1.155000001*variable_transmission_switch_23_24 - variable_voltage_product_imaginary_23_24 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_24_25 ;
linear_constraint_voltage_product_imaginary_upper_24_25..
	1.1025*variable_transmission_switch_24_25 - variable_voltage_product_imaginary_24_25 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_25_26 ;
linear_constraint_voltage_product_imaginary_upper_25_26..
	1.1025*variable_transmission_switch_25_26 - variable_voltage_product_imaginary_25_26 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_25_27 ;
linear_constraint_voltage_product_imaginary_upper_25_27..
	1.155000001*variable_transmission_switch_25_27 - variable_voltage_product_imaginary_25_27 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_27_28 ;
linear_constraint_voltage_product_imaginary_upper_27_28..
	1.155000001*variable_transmission_switch_27_28 - variable_voltage_product_imaginary_27_28 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_27_29 ;
linear_constraint_voltage_product_imaginary_upper_27_29..
	1.155000001*variable_transmission_switch_27_29 - variable_voltage_product_imaginary_27_29 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_27_30 ;
linear_constraint_voltage_product_imaginary_upper_27_30..
	1.155000001*variable_transmission_switch_27_30 - variable_voltage_product_imaginary_27_30 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_29_30 ;
linear_constraint_voltage_product_imaginary_upper_29_30..
	1.1025*variable_transmission_switch_29_30 - variable_voltage_product_imaginary_29_30 =g= 0
Equation linear_constraint_voltage_square_big_m_1_2_1 ;
linear_constraint_voltage_square_big_m_1_2_1..
	-variable_switched_voltage_square_1_2 + 0.902499999*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_2 ;
linear_constraint_voltage_square_big_m_1_2_2..
	variable_switched_voltage_square_1_2 - 1.1025*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_3 ;
linear_constraint_voltage_square_big_m_1_2_3..
	-variable_switched_voltage_square_1_2 + 1.1025*variable_transmission_switch_1_2 + variable_voltage_square_1 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_1_2_4 ;
linear_constraint_voltage_square_big_m_1_2_4..
	variable_switched_voltage_square_1_2 - 0.902499999*variable_transmission_switch_1_2 - variable_voltage_square_1 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_2_1_1 ;
linear_constraint_voltage_square_big_m_2_1_1..
	-variable_switched_voltage_square_2_1 + 0.902499999*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_2 ;
linear_constraint_voltage_square_big_m_2_1_2..
	variable_switched_voltage_square_2_1 - 1.21*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_3 ;
linear_constraint_voltage_square_big_m_2_1_3..
	-variable_switched_voltage_square_2_1 + 1.21*variable_transmission_switch_1_2 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_1_4 ;
linear_constraint_voltage_square_big_m_2_1_4..
	variable_switched_voltage_square_2_1 - 0.902499999*variable_transmission_switch_1_2 - variable_voltage_square_2 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_1_3_1 ;
linear_constraint_voltage_square_big_m_1_3_1..
	-variable_switched_voltage_square_1_3 + 0.902499999*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_1_3_2 ;
linear_constraint_voltage_square_big_m_1_3_2..
	variable_switched_voltage_square_1_3 - 1.1025*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_1_3_3 ;
linear_constraint_voltage_square_big_m_1_3_3..
	-variable_switched_voltage_square_1_3 + 1.1025*variable_transmission_switch_1_3 + variable_voltage_square_1 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_1_3_4 ;
linear_constraint_voltage_square_big_m_1_3_4..
	variable_switched_voltage_square_1_3 - 0.902499999*variable_transmission_switch_1_3 - variable_voltage_square_1 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_3_1_1 ;
linear_constraint_voltage_square_big_m_3_1_1..
	-variable_switched_voltage_square_3_1 + 0.902499999*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_1_2 ;
linear_constraint_voltage_square_big_m_3_1_2..
	variable_switched_voltage_square_3_1 - 1.1025*variable_transmission_switch_1_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_1_3 ;
linear_constraint_voltage_square_big_m_3_1_3..
	-variable_switched_voltage_square_3_1 + 1.1025*variable_transmission_switch_1_3 + variable_voltage_square_3 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_3_1_4 ;
linear_constraint_voltage_square_big_m_3_1_4..
	variable_switched_voltage_square_3_1 - 0.902499999*variable_transmission_switch_1_3 - variable_voltage_square_3 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_2_4_1 ;
linear_constraint_voltage_square_big_m_2_4_1..
	-variable_switched_voltage_square_2_4 + 0.902499999*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_2 ;
linear_constraint_voltage_square_big_m_2_4_2..
	variable_switched_voltage_square_2_4 - 1.21*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_3 ;
linear_constraint_voltage_square_big_m_2_4_3..
	-variable_switched_voltage_square_2_4 + 1.21*variable_transmission_switch_2_4 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_4_4 ;
linear_constraint_voltage_square_big_m_2_4_4..
	variable_switched_voltage_square_2_4 - 0.902499999*variable_transmission_switch_2_4 - variable_voltage_square_2 =l= -0.902499999
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
	-variable_switched_voltage_square_2_5 + 0.902499999*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_2 ;
linear_constraint_voltage_square_big_m_2_5_2..
	variable_switched_voltage_square_2_5 - 1.21*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_3 ;
linear_constraint_voltage_square_big_m_2_5_3..
	-variable_switched_voltage_square_2_5 + 1.21*variable_transmission_switch_2_5 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_5_4 ;
linear_constraint_voltage_square_big_m_2_5_4..
	variable_switched_voltage_square_2_5 - 0.902499999*variable_transmission_switch_2_5 - variable_voltage_square_2 =l= -0.902499999
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
	-variable_switched_voltage_square_2_6 + 0.902499999*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_2_6_2 ;
linear_constraint_voltage_square_big_m_2_6_2..
	variable_switched_voltage_square_2_6 - 1.21*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_2_6_3 ;
linear_constraint_voltage_square_big_m_2_6_3..
	-variable_switched_voltage_square_2_6 + 1.21*variable_transmission_switch_2_6 + variable_voltage_square_2 =l= 1.21
Equation linear_constraint_voltage_square_big_m_2_6_4 ;
linear_constraint_voltage_square_big_m_2_6_4..
	variable_switched_voltage_square_2_6 - 0.902499999*variable_transmission_switch_2_6 - variable_voltage_square_2 =l= -0.902499999
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
Equation linear_constraint_voltage_square_big_m_3_4_1 ;
linear_constraint_voltage_square_big_m_3_4_1..
	-variable_switched_voltage_square_3_4 + 0.902499999*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_3_4_2 ;
linear_constraint_voltage_square_big_m_3_4_2..
	variable_switched_voltage_square_3_4 - 1.1025*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_3_4_3 ;
linear_constraint_voltage_square_big_m_3_4_3..
	-variable_switched_voltage_square_3_4 + 1.1025*variable_transmission_switch_3_4 + variable_voltage_square_3 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_3_4_4 ;
linear_constraint_voltage_square_big_m_3_4_4..
	variable_switched_voltage_square_3_4 - 0.902499999*variable_transmission_switch_3_4 - variable_voltage_square_3 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_4_3_1 ;
linear_constraint_voltage_square_big_m_4_3_1..
	-variable_switched_voltage_square_4_3 + 0.902499999*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_3_2 ;
linear_constraint_voltage_square_big_m_4_3_2..
	variable_switched_voltage_square_4_3 - 1.1025*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_3_3 ;
linear_constraint_voltage_square_big_m_4_3_3..
	-variable_switched_voltage_square_4_3 + 1.1025*variable_transmission_switch_3_4 + variable_voltage_square_4 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_4_3_4 ;
linear_constraint_voltage_square_big_m_4_3_4..
	variable_switched_voltage_square_4_3 - 0.902499999*variable_transmission_switch_3_4 - variable_voltage_square_4 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_4_6_1 ;
linear_constraint_voltage_square_big_m_4_6_1..
	-variable_switched_voltage_square_4_6 + 0.902499999*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_4_6_2 ;
linear_constraint_voltage_square_big_m_4_6_2..
	variable_switched_voltage_square_4_6 - 1.1025*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_4_6_3 ;
linear_constraint_voltage_square_big_m_4_6_3..
	-variable_switched_voltage_square_4_6 + 1.1025*variable_transmission_switch_4_6 + variable_voltage_square_4 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_4_6_4 ;
linear_constraint_voltage_square_big_m_4_6_4..
	variable_switched_voltage_square_4_6 - 0.902499999*variable_transmission_switch_4_6 - variable_voltage_square_4 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_6_4_1 ;
linear_constraint_voltage_square_big_m_6_4_1..
	-variable_switched_voltage_square_6_4 + 0.902499999*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_4_2 ;
linear_constraint_voltage_square_big_m_6_4_2..
	variable_switched_voltage_square_6_4 - 1.1025*variable_transmission_switch_4_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_4_3 ;
linear_constraint_voltage_square_big_m_6_4_3..
	-variable_switched_voltage_square_6_4 + 1.1025*variable_transmission_switch_4_6 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_4_4 ;
linear_constraint_voltage_square_big_m_6_4_4..
	variable_switched_voltage_square_6_4 - 0.902499999*variable_transmission_switch_4_6 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_4_12_1 ;
linear_constraint_voltage_square_big_m_4_12_1..
	-variable_switched_voltage_square_4_12 + 0.902499999*variable_transmission_switch_4_12 =l= 0
Equation linear_constraint_voltage_square_big_m_4_12_2 ;
linear_constraint_voltage_square_big_m_4_12_2..
	variable_switched_voltage_square_4_12 - 1.1025*variable_transmission_switch_4_12 =l= 0
Equation linear_constraint_voltage_square_big_m_4_12_3 ;
linear_constraint_voltage_square_big_m_4_12_3..
	-variable_switched_voltage_square_4_12 + 1.1025*variable_transmission_switch_4_12 + variable_voltage_square_4 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_4_12_4 ;
linear_constraint_voltage_square_big_m_4_12_4..
	variable_switched_voltage_square_4_12 - 0.902499999*variable_transmission_switch_4_12 - variable_voltage_square_4 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_4_1 ;
linear_constraint_voltage_square_big_m_12_4_1..
	-variable_switched_voltage_square_12_4 + 0.902499999*variable_transmission_switch_4_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_4_2 ;
linear_constraint_voltage_square_big_m_12_4_2..
	variable_switched_voltage_square_12_4 - 1.1025*variable_transmission_switch_4_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_4_3 ;
linear_constraint_voltage_square_big_m_12_4_3..
	-variable_switched_voltage_square_12_4 + 1.1025*variable_transmission_switch_4_12 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_4_4 ;
linear_constraint_voltage_square_big_m_12_4_4..
	variable_switched_voltage_square_12_4 - 0.902499999*variable_transmission_switch_4_12 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_5_7_1 ;
linear_constraint_voltage_square_big_m_5_7_1..
	-variable_switched_voltage_square_5_7 + 0.902499999*variable_transmission_switch_5_7 =l= 0
Equation linear_constraint_voltage_square_big_m_5_7_2 ;
linear_constraint_voltage_square_big_m_5_7_2..
	variable_switched_voltage_square_5_7 - 1.1025*variable_transmission_switch_5_7 =l= 0
Equation linear_constraint_voltage_square_big_m_5_7_3 ;
linear_constraint_voltage_square_big_m_5_7_3..
	-variable_switched_voltage_square_5_7 + 1.1025*variable_transmission_switch_5_7 + variable_voltage_square_5 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_5_7_4 ;
linear_constraint_voltage_square_big_m_5_7_4..
	variable_switched_voltage_square_5_7 - 0.902499999*variable_transmission_switch_5_7 - variable_voltage_square_5 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_7_5_1 ;
linear_constraint_voltage_square_big_m_7_5_1..
	-variable_switched_voltage_square_7_5 + 0.902499999*variable_transmission_switch_5_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_5_2 ;
linear_constraint_voltage_square_big_m_7_5_2..
	variable_switched_voltage_square_7_5 - 1.1025*variable_transmission_switch_5_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_5_3 ;
linear_constraint_voltage_square_big_m_7_5_3..
	-variable_switched_voltage_square_7_5 + 1.1025*variable_transmission_switch_5_7 + variable_voltage_square_7 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_7_5_4 ;
linear_constraint_voltage_square_big_m_7_5_4..
	variable_switched_voltage_square_7_5 - 0.902499999*variable_transmission_switch_5_7 - variable_voltage_square_7 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_6_7_1 ;
linear_constraint_voltage_square_big_m_6_7_1..
	-variable_switched_voltage_square_6_7 + 0.902499999*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_6_7_2 ;
linear_constraint_voltage_square_big_m_6_7_2..
	variable_switched_voltage_square_6_7 - 1.1025*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_6_7_3 ;
linear_constraint_voltage_square_big_m_6_7_3..
	-variable_switched_voltage_square_6_7 + 1.1025*variable_transmission_switch_6_7 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_7_4 ;
linear_constraint_voltage_square_big_m_6_7_4..
	variable_switched_voltage_square_6_7 - 0.902499999*variable_transmission_switch_6_7 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_7_6_1 ;
linear_constraint_voltage_square_big_m_7_6_1..
	-variable_switched_voltage_square_7_6 + 0.902499999*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_6_2 ;
linear_constraint_voltage_square_big_m_7_6_2..
	variable_switched_voltage_square_7_6 - 1.1025*variable_transmission_switch_6_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_6_3 ;
linear_constraint_voltage_square_big_m_7_6_3..
	-variable_switched_voltage_square_7_6 + 1.1025*variable_transmission_switch_6_7 + variable_voltage_square_7 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_7_6_4 ;
linear_constraint_voltage_square_big_m_7_6_4..
	variable_switched_voltage_square_7_6 - 0.902499999*variable_transmission_switch_6_7 - variable_voltage_square_7 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_6_8_1 ;
linear_constraint_voltage_square_big_m_6_8_1..
	-variable_switched_voltage_square_6_8 + 0.902499999*variable_transmission_switch_6_8 =l= 0
Equation linear_constraint_voltage_square_big_m_6_8_2 ;
linear_constraint_voltage_square_big_m_6_8_2..
	variable_switched_voltage_square_6_8 - 1.1025*variable_transmission_switch_6_8 =l= 0
Equation linear_constraint_voltage_square_big_m_6_8_3 ;
linear_constraint_voltage_square_big_m_6_8_3..
	-variable_switched_voltage_square_6_8 + 1.1025*variable_transmission_switch_6_8 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_8_4 ;
linear_constraint_voltage_square_big_m_6_8_4..
	variable_switched_voltage_square_6_8 - 0.902499999*variable_transmission_switch_6_8 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_8_6_1 ;
linear_constraint_voltage_square_big_m_8_6_1..
	-variable_switched_voltage_square_8_6 + 0.902499999*variable_transmission_switch_6_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_6_2 ;
linear_constraint_voltage_square_big_m_8_6_2..
	variable_switched_voltage_square_8_6 - 1.1025*variable_transmission_switch_6_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_6_3 ;
linear_constraint_voltage_square_big_m_8_6_3..
	-variable_switched_voltage_square_8_6 + 1.1025*variable_transmission_switch_6_8 + variable_voltage_square_8 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_8_6_4 ;
linear_constraint_voltage_square_big_m_8_6_4..
	variable_switched_voltage_square_8_6 - 0.902499999*variable_transmission_switch_6_8 - variable_voltage_square_8 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_6_9_1 ;
linear_constraint_voltage_square_big_m_6_9_1..
	-variable_switched_voltage_square_6_9 + 0.902499999*variable_transmission_switch_6_9 =l= 0
Equation linear_constraint_voltage_square_big_m_6_9_2 ;
linear_constraint_voltage_square_big_m_6_9_2..
	variable_switched_voltage_square_6_9 - 1.1025*variable_transmission_switch_6_9 =l= 0
Equation linear_constraint_voltage_square_big_m_6_9_3 ;
linear_constraint_voltage_square_big_m_6_9_3..
	-variable_switched_voltage_square_6_9 + 1.1025*variable_transmission_switch_6_9 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_9_4 ;
linear_constraint_voltage_square_big_m_6_9_4..
	variable_switched_voltage_square_6_9 - 0.902499999*variable_transmission_switch_6_9 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_9_6_1 ;
linear_constraint_voltage_square_big_m_9_6_1..
	-variable_switched_voltage_square_9_6 + 0.902499999*variable_transmission_switch_6_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_6_2 ;
linear_constraint_voltage_square_big_m_9_6_2..
	variable_switched_voltage_square_9_6 - 1.1025*variable_transmission_switch_6_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_6_3 ;
linear_constraint_voltage_square_big_m_9_6_3..
	-variable_switched_voltage_square_9_6 + 1.1025*variable_transmission_switch_6_9 + variable_voltage_square_9 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_9_6_4 ;
linear_constraint_voltage_square_big_m_9_6_4..
	variable_switched_voltage_square_9_6 - 0.902499999*variable_transmission_switch_6_9 - variable_voltage_square_9 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_6_10_1 ;
linear_constraint_voltage_square_big_m_6_10_1..
	-variable_switched_voltage_square_6_10 + 0.902499999*variable_transmission_switch_6_10 =l= 0
Equation linear_constraint_voltage_square_big_m_6_10_2 ;
linear_constraint_voltage_square_big_m_6_10_2..
	variable_switched_voltage_square_6_10 - 1.1025*variable_transmission_switch_6_10 =l= 0
Equation linear_constraint_voltage_square_big_m_6_10_3 ;
linear_constraint_voltage_square_big_m_6_10_3..
	-variable_switched_voltage_square_6_10 + 1.1025*variable_transmission_switch_6_10 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_10_4 ;
linear_constraint_voltage_square_big_m_6_10_4..
	variable_switched_voltage_square_6_10 - 0.902499999*variable_transmission_switch_6_10 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_6_1 ;
linear_constraint_voltage_square_big_m_10_6_1..
	-variable_switched_voltage_square_10_6 + 0.902499999*variable_transmission_switch_6_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_6_2 ;
linear_constraint_voltage_square_big_m_10_6_2..
	variable_switched_voltage_square_10_6 - 1.1025*variable_transmission_switch_6_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_6_3 ;
linear_constraint_voltage_square_big_m_10_6_3..
	-variable_switched_voltage_square_10_6 + 1.1025*variable_transmission_switch_6_10 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_6_4 ;
linear_constraint_voltage_square_big_m_10_6_4..
	variable_switched_voltage_square_10_6 - 0.902499999*variable_transmission_switch_6_10 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_6_28_1 ;
linear_constraint_voltage_square_big_m_6_28_1..
	-variable_switched_voltage_square_6_28 + 0.902499999*variable_transmission_switch_6_28 =l= 0
Equation linear_constraint_voltage_square_big_m_6_28_2 ;
linear_constraint_voltage_square_big_m_6_28_2..
	variable_switched_voltage_square_6_28 - 1.1025*variable_transmission_switch_6_28 =l= 0
Equation linear_constraint_voltage_square_big_m_6_28_3 ;
linear_constraint_voltage_square_big_m_6_28_3..
	-variable_switched_voltage_square_6_28 + 1.1025*variable_transmission_switch_6_28 + variable_voltage_square_6 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_6_28_4 ;
linear_constraint_voltage_square_big_m_6_28_4..
	variable_switched_voltage_square_6_28 - 0.902499999*variable_transmission_switch_6_28 - variable_voltage_square_6 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_28_6_1 ;
linear_constraint_voltage_square_big_m_28_6_1..
	-variable_switched_voltage_square_28_6 + 0.902499999*variable_transmission_switch_6_28 =l= 0
Equation linear_constraint_voltage_square_big_m_28_6_2 ;
linear_constraint_voltage_square_big_m_28_6_2..
	variable_switched_voltage_square_28_6 - 1.1025*variable_transmission_switch_6_28 =l= 0
Equation linear_constraint_voltage_square_big_m_28_6_3 ;
linear_constraint_voltage_square_big_m_28_6_3..
	-variable_switched_voltage_square_28_6 + 1.1025*variable_transmission_switch_6_28 + variable_voltage_square_28 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_28_6_4 ;
linear_constraint_voltage_square_big_m_28_6_4..
	variable_switched_voltage_square_28_6 - 0.902499999*variable_transmission_switch_6_28 - variable_voltage_square_28 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_8_28_1 ;
linear_constraint_voltage_square_big_m_8_28_1..
	-variable_switched_voltage_square_8_28 + 0.902499999*variable_transmission_switch_8_28 =l= 0
Equation linear_constraint_voltage_square_big_m_8_28_2 ;
linear_constraint_voltage_square_big_m_8_28_2..
	variable_switched_voltage_square_8_28 - 1.1025*variable_transmission_switch_8_28 =l= 0
Equation linear_constraint_voltage_square_big_m_8_28_3 ;
linear_constraint_voltage_square_big_m_8_28_3..
	-variable_switched_voltage_square_8_28 + 1.1025*variable_transmission_switch_8_28 + variable_voltage_square_8 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_8_28_4 ;
linear_constraint_voltage_square_big_m_8_28_4..
	variable_switched_voltage_square_8_28 - 0.902499999*variable_transmission_switch_8_28 - variable_voltage_square_8 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_28_8_1 ;
linear_constraint_voltage_square_big_m_28_8_1..
	-variable_switched_voltage_square_28_8 + 0.902499999*variable_transmission_switch_8_28 =l= 0
Equation linear_constraint_voltage_square_big_m_28_8_2 ;
linear_constraint_voltage_square_big_m_28_8_2..
	variable_switched_voltage_square_28_8 - 1.1025*variable_transmission_switch_8_28 =l= 0
Equation linear_constraint_voltage_square_big_m_28_8_3 ;
linear_constraint_voltage_square_big_m_28_8_3..
	-variable_switched_voltage_square_28_8 + 1.1025*variable_transmission_switch_8_28 + variable_voltage_square_28 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_28_8_4 ;
linear_constraint_voltage_square_big_m_28_8_4..
	variable_switched_voltage_square_28_8 - 0.902499999*variable_transmission_switch_8_28 - variable_voltage_square_28 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_9_11_1 ;
linear_constraint_voltage_square_big_m_9_11_1..
	-variable_switched_voltage_square_9_11 + 0.902499999*variable_transmission_switch_9_11 =l= 0
Equation linear_constraint_voltage_square_big_m_9_11_2 ;
linear_constraint_voltage_square_big_m_9_11_2..
	variable_switched_voltage_square_9_11 - 1.1025*variable_transmission_switch_9_11 =l= 0
Equation linear_constraint_voltage_square_big_m_9_11_3 ;
linear_constraint_voltage_square_big_m_9_11_3..
	-variable_switched_voltage_square_9_11 + 1.1025*variable_transmission_switch_9_11 + variable_voltage_square_9 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_9_11_4 ;
linear_constraint_voltage_square_big_m_9_11_4..
	variable_switched_voltage_square_9_11 - 0.902499999*variable_transmission_switch_9_11 - variable_voltage_square_9 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_11_9_1 ;
linear_constraint_voltage_square_big_m_11_9_1..
	-variable_switched_voltage_square_11_9 + 0.902499999*variable_transmission_switch_9_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_9_2 ;
linear_constraint_voltage_square_big_m_11_9_2..
	variable_switched_voltage_square_11_9 - 1.1025*variable_transmission_switch_9_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_9_3 ;
linear_constraint_voltage_square_big_m_11_9_3..
	-variable_switched_voltage_square_11_9 + 1.1025*variable_transmission_switch_9_11 + variable_voltage_square_11 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_11_9_4 ;
linear_constraint_voltage_square_big_m_11_9_4..
	variable_switched_voltage_square_11_9 - 0.902499999*variable_transmission_switch_9_11 - variable_voltage_square_11 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_9_10_1 ;
linear_constraint_voltage_square_big_m_9_10_1..
	-variable_switched_voltage_square_9_10 + 0.902499999*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_9_10_2 ;
linear_constraint_voltage_square_big_m_9_10_2..
	variable_switched_voltage_square_9_10 - 1.1025*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_9_10_3 ;
linear_constraint_voltage_square_big_m_9_10_3..
	-variable_switched_voltage_square_9_10 + 1.1025*variable_transmission_switch_9_10 + variable_voltage_square_9 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_9_10_4 ;
linear_constraint_voltage_square_big_m_9_10_4..
	variable_switched_voltage_square_9_10 - 0.902499999*variable_transmission_switch_9_10 - variable_voltage_square_9 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_9_1 ;
linear_constraint_voltage_square_big_m_10_9_1..
	-variable_switched_voltage_square_10_9 + 0.902499999*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_9_2 ;
linear_constraint_voltage_square_big_m_10_9_2..
	variable_switched_voltage_square_10_9 - 1.1025*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_9_3 ;
linear_constraint_voltage_square_big_m_10_9_3..
	-variable_switched_voltage_square_10_9 + 1.1025*variable_transmission_switch_9_10 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_9_4 ;
linear_constraint_voltage_square_big_m_10_9_4..
	variable_switched_voltage_square_10_9 - 0.902499999*variable_transmission_switch_9_10 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_20_1 ;
linear_constraint_voltage_square_big_m_10_20_1..
	-variable_switched_voltage_square_10_20 + 0.902499999*variable_transmission_switch_10_20 =l= 0
Equation linear_constraint_voltage_square_big_m_10_20_2 ;
linear_constraint_voltage_square_big_m_10_20_2..
	variable_switched_voltage_square_10_20 - 1.1025*variable_transmission_switch_10_20 =l= 0
Equation linear_constraint_voltage_square_big_m_10_20_3 ;
linear_constraint_voltage_square_big_m_10_20_3..
	-variable_switched_voltage_square_10_20 + 1.1025*variable_transmission_switch_10_20 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_20_4 ;
linear_constraint_voltage_square_big_m_10_20_4..
	variable_switched_voltage_square_10_20 - 0.902499999*variable_transmission_switch_10_20 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_20_10_1 ;
linear_constraint_voltage_square_big_m_20_10_1..
	-variable_switched_voltage_square_20_10 + 0.902499999*variable_transmission_switch_10_20 =l= 0
Equation linear_constraint_voltage_square_big_m_20_10_2 ;
linear_constraint_voltage_square_big_m_20_10_2..
	variable_switched_voltage_square_20_10 - 1.1025*variable_transmission_switch_10_20 =l= 0
Equation linear_constraint_voltage_square_big_m_20_10_3 ;
linear_constraint_voltage_square_big_m_20_10_3..
	-variable_switched_voltage_square_20_10 + 1.1025*variable_transmission_switch_10_20 + variable_voltage_square_20 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_20_10_4 ;
linear_constraint_voltage_square_big_m_20_10_4..
	variable_switched_voltage_square_20_10 - 0.902499999*variable_transmission_switch_10_20 - variable_voltage_square_20 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_17_1 ;
linear_constraint_voltage_square_big_m_10_17_1..
	-variable_switched_voltage_square_10_17 + 0.902499999*variable_transmission_switch_10_17 =l= 0
Equation linear_constraint_voltage_square_big_m_10_17_2 ;
linear_constraint_voltage_square_big_m_10_17_2..
	variable_switched_voltage_square_10_17 - 1.1025*variable_transmission_switch_10_17 =l= 0
Equation linear_constraint_voltage_square_big_m_10_17_3 ;
linear_constraint_voltage_square_big_m_10_17_3..
	-variable_switched_voltage_square_10_17 + 1.1025*variable_transmission_switch_10_17 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_17_4 ;
linear_constraint_voltage_square_big_m_10_17_4..
	variable_switched_voltage_square_10_17 - 0.902499999*variable_transmission_switch_10_17 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_17_10_1 ;
linear_constraint_voltage_square_big_m_17_10_1..
	-variable_switched_voltage_square_17_10 + 0.902499999*variable_transmission_switch_10_17 =l= 0
Equation linear_constraint_voltage_square_big_m_17_10_2 ;
linear_constraint_voltage_square_big_m_17_10_2..
	variable_switched_voltage_square_17_10 - 1.1025*variable_transmission_switch_10_17 =l= 0
Equation linear_constraint_voltage_square_big_m_17_10_3 ;
linear_constraint_voltage_square_big_m_17_10_3..
	-variable_switched_voltage_square_17_10 + 1.1025*variable_transmission_switch_10_17 + variable_voltage_square_17 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_17_10_4 ;
linear_constraint_voltage_square_big_m_17_10_4..
	variable_switched_voltage_square_17_10 - 0.902499999*variable_transmission_switch_10_17 - variable_voltage_square_17 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_21_1 ;
linear_constraint_voltage_square_big_m_10_21_1..
	-variable_switched_voltage_square_10_21 + 0.902499999*variable_transmission_switch_10_21 =l= 0
Equation linear_constraint_voltage_square_big_m_10_21_2 ;
linear_constraint_voltage_square_big_m_10_21_2..
	variable_switched_voltage_square_10_21 - 1.1025*variable_transmission_switch_10_21 =l= 0
Equation linear_constraint_voltage_square_big_m_10_21_3 ;
linear_constraint_voltage_square_big_m_10_21_3..
	-variable_switched_voltage_square_10_21 + 1.1025*variable_transmission_switch_10_21 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_21_4 ;
linear_constraint_voltage_square_big_m_10_21_4..
	variable_switched_voltage_square_10_21 - 0.902499999*variable_transmission_switch_10_21 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_21_10_1 ;
linear_constraint_voltage_square_big_m_21_10_1..
	-variable_switched_voltage_square_21_10 + 0.902499999*variable_transmission_switch_10_21 =l= 0
Equation linear_constraint_voltage_square_big_m_21_10_2 ;
linear_constraint_voltage_square_big_m_21_10_2..
	variable_switched_voltage_square_21_10 - 1.1025*variable_transmission_switch_10_21 =l= 0
Equation linear_constraint_voltage_square_big_m_21_10_3 ;
linear_constraint_voltage_square_big_m_21_10_3..
	-variable_switched_voltage_square_21_10 + 1.1025*variable_transmission_switch_10_21 + variable_voltage_square_21 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_21_10_4 ;
linear_constraint_voltage_square_big_m_21_10_4..
	variable_switched_voltage_square_21_10 - 0.902499999*variable_transmission_switch_10_21 - variable_voltage_square_21 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_22_1 ;
linear_constraint_voltage_square_big_m_10_22_1..
	-variable_switched_voltage_square_10_22 + 0.902499999*variable_transmission_switch_10_22 =l= 0
Equation linear_constraint_voltage_square_big_m_10_22_2 ;
linear_constraint_voltage_square_big_m_10_22_2..
	variable_switched_voltage_square_10_22 - 1.1025*variable_transmission_switch_10_22 =l= 0
Equation linear_constraint_voltage_square_big_m_10_22_3 ;
linear_constraint_voltage_square_big_m_10_22_3..
	-variable_switched_voltage_square_10_22 + 1.1025*variable_transmission_switch_10_22 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_22_4 ;
linear_constraint_voltage_square_big_m_10_22_4..
	variable_switched_voltage_square_10_22 - 0.902499999*variable_transmission_switch_10_22 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_22_10_1 ;
linear_constraint_voltage_square_big_m_22_10_1..
	-variable_switched_voltage_square_22_10 + 0.902499999*variable_transmission_switch_10_22 =l= 0
Equation linear_constraint_voltage_square_big_m_22_10_2 ;
linear_constraint_voltage_square_big_m_22_10_2..
	variable_switched_voltage_square_22_10 - 1.21*variable_transmission_switch_10_22 =l= 0
Equation linear_constraint_voltage_square_big_m_22_10_3 ;
linear_constraint_voltage_square_big_m_22_10_3..
	-variable_switched_voltage_square_22_10 + 1.21*variable_transmission_switch_10_22 + variable_voltage_square_22 =l= 1.21
Equation linear_constraint_voltage_square_big_m_22_10_4 ;
linear_constraint_voltage_square_big_m_22_10_4..
	variable_switched_voltage_square_22_10 - 0.902499999*variable_transmission_switch_10_22 - variable_voltage_square_22 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_13_1 ;
linear_constraint_voltage_square_big_m_12_13_1..
	-variable_switched_voltage_square_12_13 + 0.902499999*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_12_13_2 ;
linear_constraint_voltage_square_big_m_12_13_2..
	variable_switched_voltage_square_12_13 - 1.1025*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_12_13_3 ;
linear_constraint_voltage_square_big_m_12_13_3..
	-variable_switched_voltage_square_12_13 + 1.1025*variable_transmission_switch_12_13 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_13_4 ;
linear_constraint_voltage_square_big_m_12_13_4..
	variable_switched_voltage_square_12_13 - 0.902499999*variable_transmission_switch_12_13 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_13_12_1 ;
linear_constraint_voltage_square_big_m_13_12_1..
	-variable_switched_voltage_square_13_12 + 0.902499999*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_12_2 ;
linear_constraint_voltage_square_big_m_13_12_2..
	variable_switched_voltage_square_13_12 - 1.21*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_12_3 ;
linear_constraint_voltage_square_big_m_13_12_3..
	-variable_switched_voltage_square_13_12 + 1.21*variable_transmission_switch_12_13 + variable_voltage_square_13 =l= 1.21
Equation linear_constraint_voltage_square_big_m_13_12_4 ;
linear_constraint_voltage_square_big_m_13_12_4..
	variable_switched_voltage_square_13_12 - 0.902499999*variable_transmission_switch_12_13 - variable_voltage_square_13 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_14_1 ;
linear_constraint_voltage_square_big_m_12_14_1..
	-variable_switched_voltage_square_12_14 + 0.902499999*variable_transmission_switch_12_14 =l= 0
Equation linear_constraint_voltage_square_big_m_12_14_2 ;
linear_constraint_voltage_square_big_m_12_14_2..
	variable_switched_voltage_square_12_14 - 1.1025*variable_transmission_switch_12_14 =l= 0
Equation linear_constraint_voltage_square_big_m_12_14_3 ;
linear_constraint_voltage_square_big_m_12_14_3..
	-variable_switched_voltage_square_12_14 + 1.1025*variable_transmission_switch_12_14 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_14_4 ;
linear_constraint_voltage_square_big_m_12_14_4..
	variable_switched_voltage_square_12_14 - 0.902499999*variable_transmission_switch_12_14 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_14_12_1 ;
linear_constraint_voltage_square_big_m_14_12_1..
	-variable_switched_voltage_square_14_12 + 0.902499999*variable_transmission_switch_12_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_12_2 ;
linear_constraint_voltage_square_big_m_14_12_2..
	variable_switched_voltage_square_14_12 - 1.1025*variable_transmission_switch_12_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_12_3 ;
linear_constraint_voltage_square_big_m_14_12_3..
	-variable_switched_voltage_square_14_12 + 1.1025*variable_transmission_switch_12_14 + variable_voltage_square_14 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_14_12_4 ;
linear_constraint_voltage_square_big_m_14_12_4..
	variable_switched_voltage_square_14_12 - 0.902499999*variable_transmission_switch_12_14 - variable_voltage_square_14 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_15_1 ;
linear_constraint_voltage_square_big_m_12_15_1..
	-variable_switched_voltage_square_12_15 + 0.902499999*variable_transmission_switch_12_15 =l= 0
Equation linear_constraint_voltage_square_big_m_12_15_2 ;
linear_constraint_voltage_square_big_m_12_15_2..
	variable_switched_voltage_square_12_15 - 1.1025*variable_transmission_switch_12_15 =l= 0
Equation linear_constraint_voltage_square_big_m_12_15_3 ;
linear_constraint_voltage_square_big_m_12_15_3..
	-variable_switched_voltage_square_12_15 + 1.1025*variable_transmission_switch_12_15 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_15_4 ;
linear_constraint_voltage_square_big_m_12_15_4..
	variable_switched_voltage_square_12_15 - 0.902499999*variable_transmission_switch_12_15 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_12_1 ;
linear_constraint_voltage_square_big_m_15_12_1..
	-variable_switched_voltage_square_15_12 + 0.902499999*variable_transmission_switch_12_15 =l= 0
Equation linear_constraint_voltage_square_big_m_15_12_2 ;
linear_constraint_voltage_square_big_m_15_12_2..
	variable_switched_voltage_square_15_12 - 1.1025*variable_transmission_switch_12_15 =l= 0
Equation linear_constraint_voltage_square_big_m_15_12_3 ;
linear_constraint_voltage_square_big_m_15_12_3..
	-variable_switched_voltage_square_15_12 + 1.1025*variable_transmission_switch_12_15 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_12_4 ;
linear_constraint_voltage_square_big_m_15_12_4..
	variable_switched_voltage_square_15_12 - 0.902499999*variable_transmission_switch_12_15 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_16_1 ;
linear_constraint_voltage_square_big_m_12_16_1..
	-variable_switched_voltage_square_12_16 + 0.902499999*variable_transmission_switch_12_16 =l= 0
Equation linear_constraint_voltage_square_big_m_12_16_2 ;
linear_constraint_voltage_square_big_m_12_16_2..
	variable_switched_voltage_square_12_16 - 1.1025*variable_transmission_switch_12_16 =l= 0
Equation linear_constraint_voltage_square_big_m_12_16_3 ;
linear_constraint_voltage_square_big_m_12_16_3..
	-variable_switched_voltage_square_12_16 + 1.1025*variable_transmission_switch_12_16 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_16_4 ;
linear_constraint_voltage_square_big_m_12_16_4..
	variable_switched_voltage_square_12_16 - 0.902499999*variable_transmission_switch_12_16 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_16_12_1 ;
linear_constraint_voltage_square_big_m_16_12_1..
	-variable_switched_voltage_square_16_12 + 0.902499999*variable_transmission_switch_12_16 =l= 0
Equation linear_constraint_voltage_square_big_m_16_12_2 ;
linear_constraint_voltage_square_big_m_16_12_2..
	variable_switched_voltage_square_16_12 - 1.1025*variable_transmission_switch_12_16 =l= 0
Equation linear_constraint_voltage_square_big_m_16_12_3 ;
linear_constraint_voltage_square_big_m_16_12_3..
	-variable_switched_voltage_square_16_12 + 1.1025*variable_transmission_switch_12_16 + variable_voltage_square_16 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_16_12_4 ;
linear_constraint_voltage_square_big_m_16_12_4..
	variable_switched_voltage_square_16_12 - 0.902499999*variable_transmission_switch_12_16 - variable_voltage_square_16 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_14_15_1 ;
linear_constraint_voltage_square_big_m_14_15_1..
	-variable_switched_voltage_square_14_15 + 0.902499999*variable_transmission_switch_14_15 =l= 0
Equation linear_constraint_voltage_square_big_m_14_15_2 ;
linear_constraint_voltage_square_big_m_14_15_2..
	variable_switched_voltage_square_14_15 - 1.1025*variable_transmission_switch_14_15 =l= 0
Equation linear_constraint_voltage_square_big_m_14_15_3 ;
linear_constraint_voltage_square_big_m_14_15_3..
	-variable_switched_voltage_square_14_15 + 1.1025*variable_transmission_switch_14_15 + variable_voltage_square_14 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_14_15_4 ;
linear_constraint_voltage_square_big_m_14_15_4..
	variable_switched_voltage_square_14_15 - 0.902499999*variable_transmission_switch_14_15 - variable_voltage_square_14 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_14_1 ;
linear_constraint_voltage_square_big_m_15_14_1..
	-variable_switched_voltage_square_15_14 + 0.902499999*variable_transmission_switch_14_15 =l= 0
Equation linear_constraint_voltage_square_big_m_15_14_2 ;
linear_constraint_voltage_square_big_m_15_14_2..
	variable_switched_voltage_square_15_14 - 1.1025*variable_transmission_switch_14_15 =l= 0
Equation linear_constraint_voltage_square_big_m_15_14_3 ;
linear_constraint_voltage_square_big_m_15_14_3..
	-variable_switched_voltage_square_15_14 + 1.1025*variable_transmission_switch_14_15 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_14_4 ;
linear_constraint_voltage_square_big_m_15_14_4..
	variable_switched_voltage_square_15_14 - 0.902499999*variable_transmission_switch_14_15 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_18_1 ;
linear_constraint_voltage_square_big_m_15_18_1..
	-variable_switched_voltage_square_15_18 + 0.902499999*variable_transmission_switch_15_18 =l= 0
Equation linear_constraint_voltage_square_big_m_15_18_2 ;
linear_constraint_voltage_square_big_m_15_18_2..
	variable_switched_voltage_square_15_18 - 1.1025*variable_transmission_switch_15_18 =l= 0
Equation linear_constraint_voltage_square_big_m_15_18_3 ;
linear_constraint_voltage_square_big_m_15_18_3..
	-variable_switched_voltage_square_15_18 + 1.1025*variable_transmission_switch_15_18 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_18_4 ;
linear_constraint_voltage_square_big_m_15_18_4..
	variable_switched_voltage_square_15_18 - 0.902499999*variable_transmission_switch_15_18 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_18_15_1 ;
linear_constraint_voltage_square_big_m_18_15_1..
	-variable_switched_voltage_square_18_15 + 0.902499999*variable_transmission_switch_15_18 =l= 0
Equation linear_constraint_voltage_square_big_m_18_15_2 ;
linear_constraint_voltage_square_big_m_18_15_2..
	variable_switched_voltage_square_18_15 - 1.1025*variable_transmission_switch_15_18 =l= 0
Equation linear_constraint_voltage_square_big_m_18_15_3 ;
linear_constraint_voltage_square_big_m_18_15_3..
	-variable_switched_voltage_square_18_15 + 1.1025*variable_transmission_switch_15_18 + variable_voltage_square_18 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_18_15_4 ;
linear_constraint_voltage_square_big_m_18_15_4..
	variable_switched_voltage_square_18_15 - 0.902499999*variable_transmission_switch_15_18 - variable_voltage_square_18 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_23_1 ;
linear_constraint_voltage_square_big_m_15_23_1..
	-variable_switched_voltage_square_15_23 + 0.902499999*variable_transmission_switch_15_23 =l= 0
Equation linear_constraint_voltage_square_big_m_15_23_2 ;
linear_constraint_voltage_square_big_m_15_23_2..
	variable_switched_voltage_square_15_23 - 1.1025*variable_transmission_switch_15_23 =l= 0
Equation linear_constraint_voltage_square_big_m_15_23_3 ;
linear_constraint_voltage_square_big_m_15_23_3..
	-variable_switched_voltage_square_15_23 + 1.1025*variable_transmission_switch_15_23 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_23_4 ;
linear_constraint_voltage_square_big_m_15_23_4..
	variable_switched_voltage_square_15_23 - 0.902499999*variable_transmission_switch_15_23 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_23_15_1 ;
linear_constraint_voltage_square_big_m_23_15_1..
	-variable_switched_voltage_square_23_15 + 0.902499999*variable_transmission_switch_15_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_15_2 ;
linear_constraint_voltage_square_big_m_23_15_2..
	variable_switched_voltage_square_23_15 - 1.21*variable_transmission_switch_15_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_15_3 ;
linear_constraint_voltage_square_big_m_23_15_3..
	-variable_switched_voltage_square_23_15 + 1.21*variable_transmission_switch_15_23 + variable_voltage_square_23 =l= 1.21
Equation linear_constraint_voltage_square_big_m_23_15_4 ;
linear_constraint_voltage_square_big_m_23_15_4..
	variable_switched_voltage_square_23_15 - 0.902499999*variable_transmission_switch_15_23 - variable_voltage_square_23 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_16_17_1 ;
linear_constraint_voltage_square_big_m_16_17_1..
	-variable_switched_voltage_square_16_17 + 0.902499999*variable_transmission_switch_16_17 =l= 0
Equation linear_constraint_voltage_square_big_m_16_17_2 ;
linear_constraint_voltage_square_big_m_16_17_2..
	variable_switched_voltage_square_16_17 - 1.1025*variable_transmission_switch_16_17 =l= 0
Equation linear_constraint_voltage_square_big_m_16_17_3 ;
linear_constraint_voltage_square_big_m_16_17_3..
	-variable_switched_voltage_square_16_17 + 1.1025*variable_transmission_switch_16_17 + variable_voltage_square_16 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_16_17_4 ;
linear_constraint_voltage_square_big_m_16_17_4..
	variable_switched_voltage_square_16_17 - 0.902499999*variable_transmission_switch_16_17 - variable_voltage_square_16 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_17_16_1 ;
linear_constraint_voltage_square_big_m_17_16_1..
	-variable_switched_voltage_square_17_16 + 0.902499999*variable_transmission_switch_16_17 =l= 0
Equation linear_constraint_voltage_square_big_m_17_16_2 ;
linear_constraint_voltage_square_big_m_17_16_2..
	variable_switched_voltage_square_17_16 - 1.1025*variable_transmission_switch_16_17 =l= 0
Equation linear_constraint_voltage_square_big_m_17_16_3 ;
linear_constraint_voltage_square_big_m_17_16_3..
	-variable_switched_voltage_square_17_16 + 1.1025*variable_transmission_switch_16_17 + variable_voltage_square_17 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_17_16_4 ;
linear_constraint_voltage_square_big_m_17_16_4..
	variable_switched_voltage_square_17_16 - 0.902499999*variable_transmission_switch_16_17 - variable_voltage_square_17 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_18_19_1 ;
linear_constraint_voltage_square_big_m_18_19_1..
	-variable_switched_voltage_square_18_19 + 0.902499999*variable_transmission_switch_18_19 =l= 0
Equation linear_constraint_voltage_square_big_m_18_19_2 ;
linear_constraint_voltage_square_big_m_18_19_2..
	variable_switched_voltage_square_18_19 - 1.1025*variable_transmission_switch_18_19 =l= 0
Equation linear_constraint_voltage_square_big_m_18_19_3 ;
linear_constraint_voltage_square_big_m_18_19_3..
	-variable_switched_voltage_square_18_19 + 1.1025*variable_transmission_switch_18_19 + variable_voltage_square_18 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_18_19_4 ;
linear_constraint_voltage_square_big_m_18_19_4..
	variable_switched_voltage_square_18_19 - 0.902499999*variable_transmission_switch_18_19 - variable_voltage_square_18 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_19_18_1 ;
linear_constraint_voltage_square_big_m_19_18_1..
	-variable_switched_voltage_square_19_18 + 0.902499999*variable_transmission_switch_18_19 =l= 0
Equation linear_constraint_voltage_square_big_m_19_18_2 ;
linear_constraint_voltage_square_big_m_19_18_2..
	variable_switched_voltage_square_19_18 - 1.1025*variable_transmission_switch_18_19 =l= 0
Equation linear_constraint_voltage_square_big_m_19_18_3 ;
linear_constraint_voltage_square_big_m_19_18_3..
	-variable_switched_voltage_square_19_18 + 1.1025*variable_transmission_switch_18_19 + variable_voltage_square_19 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_19_18_4 ;
linear_constraint_voltage_square_big_m_19_18_4..
	variable_switched_voltage_square_19_18 - 0.902499999*variable_transmission_switch_18_19 - variable_voltage_square_19 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_19_20_1 ;
linear_constraint_voltage_square_big_m_19_20_1..
	-variable_switched_voltage_square_19_20 + 0.902499999*variable_transmission_switch_19_20 =l= 0
Equation linear_constraint_voltage_square_big_m_19_20_2 ;
linear_constraint_voltage_square_big_m_19_20_2..
	variable_switched_voltage_square_19_20 - 1.1025*variable_transmission_switch_19_20 =l= 0
Equation linear_constraint_voltage_square_big_m_19_20_3 ;
linear_constraint_voltage_square_big_m_19_20_3..
	-variable_switched_voltage_square_19_20 + 1.1025*variable_transmission_switch_19_20 + variable_voltage_square_19 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_19_20_4 ;
linear_constraint_voltage_square_big_m_19_20_4..
	variable_switched_voltage_square_19_20 - 0.902499999*variable_transmission_switch_19_20 - variable_voltage_square_19 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_20_19_1 ;
linear_constraint_voltage_square_big_m_20_19_1..
	-variable_switched_voltage_square_20_19 + 0.902499999*variable_transmission_switch_19_20 =l= 0
Equation linear_constraint_voltage_square_big_m_20_19_2 ;
linear_constraint_voltage_square_big_m_20_19_2..
	variable_switched_voltage_square_20_19 - 1.1025*variable_transmission_switch_19_20 =l= 0
Equation linear_constraint_voltage_square_big_m_20_19_3 ;
linear_constraint_voltage_square_big_m_20_19_3..
	-variable_switched_voltage_square_20_19 + 1.1025*variable_transmission_switch_19_20 + variable_voltage_square_20 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_20_19_4 ;
linear_constraint_voltage_square_big_m_20_19_4..
	variable_switched_voltage_square_20_19 - 0.902499999*variable_transmission_switch_19_20 - variable_voltage_square_20 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_21_22_1 ;
linear_constraint_voltage_square_big_m_21_22_1..
	-variable_switched_voltage_square_21_22 + 0.902499999*variable_transmission_switch_21_22 =l= 0
Equation linear_constraint_voltage_square_big_m_21_22_2 ;
linear_constraint_voltage_square_big_m_21_22_2..
	variable_switched_voltage_square_21_22 - 1.1025*variable_transmission_switch_21_22 =l= 0
Equation linear_constraint_voltage_square_big_m_21_22_3 ;
linear_constraint_voltage_square_big_m_21_22_3..
	-variable_switched_voltage_square_21_22 + 1.1025*variable_transmission_switch_21_22 + variable_voltage_square_21 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_21_22_4 ;
linear_constraint_voltage_square_big_m_21_22_4..
	variable_switched_voltage_square_21_22 - 0.902499999*variable_transmission_switch_21_22 - variable_voltage_square_21 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_22_21_1 ;
linear_constraint_voltage_square_big_m_22_21_1..
	-variable_switched_voltage_square_22_21 + 0.902499999*variable_transmission_switch_21_22 =l= 0
Equation linear_constraint_voltage_square_big_m_22_21_2 ;
linear_constraint_voltage_square_big_m_22_21_2..
	variable_switched_voltage_square_22_21 - 1.21*variable_transmission_switch_21_22 =l= 0
Equation linear_constraint_voltage_square_big_m_22_21_3 ;
linear_constraint_voltage_square_big_m_22_21_3..
	-variable_switched_voltage_square_22_21 + 1.21*variable_transmission_switch_21_22 + variable_voltage_square_22 =l= 1.21
Equation linear_constraint_voltage_square_big_m_22_21_4 ;
linear_constraint_voltage_square_big_m_22_21_4..
	variable_switched_voltage_square_22_21 - 0.902499999*variable_transmission_switch_21_22 - variable_voltage_square_22 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_22_24_1 ;
linear_constraint_voltage_square_big_m_22_24_1..
	-variable_switched_voltage_square_22_24 + 0.902499999*variable_transmission_switch_22_24 =l= 0
Equation linear_constraint_voltage_square_big_m_22_24_2 ;
linear_constraint_voltage_square_big_m_22_24_2..
	variable_switched_voltage_square_22_24 - 1.21*variable_transmission_switch_22_24 =l= 0
Equation linear_constraint_voltage_square_big_m_22_24_3 ;
linear_constraint_voltage_square_big_m_22_24_3..
	-variable_switched_voltage_square_22_24 + 1.21*variable_transmission_switch_22_24 + variable_voltage_square_22 =l= 1.21
Equation linear_constraint_voltage_square_big_m_22_24_4 ;
linear_constraint_voltage_square_big_m_22_24_4..
	variable_switched_voltage_square_22_24 - 0.902499999*variable_transmission_switch_22_24 - variable_voltage_square_22 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_24_22_1 ;
linear_constraint_voltage_square_big_m_24_22_1..
	-variable_switched_voltage_square_24_22 + 0.902499999*variable_transmission_switch_22_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_22_2 ;
linear_constraint_voltage_square_big_m_24_22_2..
	variable_switched_voltage_square_24_22 - 1.1025*variable_transmission_switch_22_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_22_3 ;
linear_constraint_voltage_square_big_m_24_22_3..
	-variable_switched_voltage_square_24_22 + 1.1025*variable_transmission_switch_22_24 + variable_voltage_square_24 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_24_22_4 ;
linear_constraint_voltage_square_big_m_24_22_4..
	variable_switched_voltage_square_24_22 - 0.902499999*variable_transmission_switch_22_24 - variable_voltage_square_24 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_23_24_1 ;
linear_constraint_voltage_square_big_m_23_24_1..
	-variable_switched_voltage_square_23_24 + 0.902499999*variable_transmission_switch_23_24 =l= 0
Equation linear_constraint_voltage_square_big_m_23_24_2 ;
linear_constraint_voltage_square_big_m_23_24_2..
	variable_switched_voltage_square_23_24 - 1.21*variable_transmission_switch_23_24 =l= 0
Equation linear_constraint_voltage_square_big_m_23_24_3 ;
linear_constraint_voltage_square_big_m_23_24_3..
	-variable_switched_voltage_square_23_24 + 1.21*variable_transmission_switch_23_24 + variable_voltage_square_23 =l= 1.21
Equation linear_constraint_voltage_square_big_m_23_24_4 ;
linear_constraint_voltage_square_big_m_23_24_4..
	variable_switched_voltage_square_23_24 - 0.902499999*variable_transmission_switch_23_24 - variable_voltage_square_23 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_24_23_1 ;
linear_constraint_voltage_square_big_m_24_23_1..
	-variable_switched_voltage_square_24_23 + 0.902499999*variable_transmission_switch_23_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_23_2 ;
linear_constraint_voltage_square_big_m_24_23_2..
	variable_switched_voltage_square_24_23 - 1.1025*variable_transmission_switch_23_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_23_3 ;
linear_constraint_voltage_square_big_m_24_23_3..
	-variable_switched_voltage_square_24_23 + 1.1025*variable_transmission_switch_23_24 + variable_voltage_square_24 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_24_23_4 ;
linear_constraint_voltage_square_big_m_24_23_4..
	variable_switched_voltage_square_24_23 - 0.902499999*variable_transmission_switch_23_24 - variable_voltage_square_24 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_24_25_1 ;
linear_constraint_voltage_square_big_m_24_25_1..
	-variable_switched_voltage_square_24_25 + 0.902499999*variable_transmission_switch_24_25 =l= 0
Equation linear_constraint_voltage_square_big_m_24_25_2 ;
linear_constraint_voltage_square_big_m_24_25_2..
	variable_switched_voltage_square_24_25 - 1.1025*variable_transmission_switch_24_25 =l= 0
Equation linear_constraint_voltage_square_big_m_24_25_3 ;
linear_constraint_voltage_square_big_m_24_25_3..
	-variable_switched_voltage_square_24_25 + 1.1025*variable_transmission_switch_24_25 + variable_voltage_square_24 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_24_25_4 ;
linear_constraint_voltage_square_big_m_24_25_4..
	variable_switched_voltage_square_24_25 - 0.902499999*variable_transmission_switch_24_25 - variable_voltage_square_24 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_25_24_1 ;
linear_constraint_voltage_square_big_m_25_24_1..
	-variable_switched_voltage_square_25_24 + 0.902499999*variable_transmission_switch_24_25 =l= 0
Equation linear_constraint_voltage_square_big_m_25_24_2 ;
linear_constraint_voltage_square_big_m_25_24_2..
	variable_switched_voltage_square_25_24 - 1.1025*variable_transmission_switch_24_25 =l= 0
Equation linear_constraint_voltage_square_big_m_25_24_3 ;
linear_constraint_voltage_square_big_m_25_24_3..
	-variable_switched_voltage_square_25_24 + 1.1025*variable_transmission_switch_24_25 + variable_voltage_square_25 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_25_24_4 ;
linear_constraint_voltage_square_big_m_25_24_4..
	variable_switched_voltage_square_25_24 - 0.902499999*variable_transmission_switch_24_25 - variable_voltage_square_25 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_25_26_1 ;
linear_constraint_voltage_square_big_m_25_26_1..
	-variable_switched_voltage_square_25_26 + 0.902499999*variable_transmission_switch_25_26 =l= 0
Equation linear_constraint_voltage_square_big_m_25_26_2 ;
linear_constraint_voltage_square_big_m_25_26_2..
	variable_switched_voltage_square_25_26 - 1.1025*variable_transmission_switch_25_26 =l= 0
Equation linear_constraint_voltage_square_big_m_25_26_3 ;
linear_constraint_voltage_square_big_m_25_26_3..
	-variable_switched_voltage_square_25_26 + 1.1025*variable_transmission_switch_25_26 + variable_voltage_square_25 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_25_26_4 ;
linear_constraint_voltage_square_big_m_25_26_4..
	variable_switched_voltage_square_25_26 - 0.902499999*variable_transmission_switch_25_26 - variable_voltage_square_25 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_26_25_1 ;
linear_constraint_voltage_square_big_m_26_25_1..
	-variable_switched_voltage_square_26_25 + 0.902499999*variable_transmission_switch_25_26 =l= 0
Equation linear_constraint_voltage_square_big_m_26_25_2 ;
linear_constraint_voltage_square_big_m_26_25_2..
	variable_switched_voltage_square_26_25 - 1.1025*variable_transmission_switch_25_26 =l= 0
Equation linear_constraint_voltage_square_big_m_26_25_3 ;
linear_constraint_voltage_square_big_m_26_25_3..
	-variable_switched_voltage_square_26_25 + 1.1025*variable_transmission_switch_25_26 + variable_voltage_square_26 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_26_25_4 ;
linear_constraint_voltage_square_big_m_26_25_4..
	variable_switched_voltage_square_26_25 - 0.902499999*variable_transmission_switch_25_26 - variable_voltage_square_26 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_25_27_1 ;
linear_constraint_voltage_square_big_m_25_27_1..
	-variable_switched_voltage_square_25_27 + 0.902499999*variable_transmission_switch_25_27 =l= 0
Equation linear_constraint_voltage_square_big_m_25_27_2 ;
linear_constraint_voltage_square_big_m_25_27_2..
	variable_switched_voltage_square_25_27 - 1.1025*variable_transmission_switch_25_27 =l= 0
Equation linear_constraint_voltage_square_big_m_25_27_3 ;
linear_constraint_voltage_square_big_m_25_27_3..
	-variable_switched_voltage_square_25_27 + 1.1025*variable_transmission_switch_25_27 + variable_voltage_square_25 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_25_27_4 ;
linear_constraint_voltage_square_big_m_25_27_4..
	variable_switched_voltage_square_25_27 - 0.902499999*variable_transmission_switch_25_27 - variable_voltage_square_25 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_27_25_1 ;
linear_constraint_voltage_square_big_m_27_25_1..
	-variable_switched_voltage_square_27_25 + 0.902499999*variable_transmission_switch_25_27 =l= 0
Equation linear_constraint_voltage_square_big_m_27_25_2 ;
linear_constraint_voltage_square_big_m_27_25_2..
	variable_switched_voltage_square_27_25 - 1.21*variable_transmission_switch_25_27 =l= 0
Equation linear_constraint_voltage_square_big_m_27_25_3 ;
linear_constraint_voltage_square_big_m_27_25_3..
	-variable_switched_voltage_square_27_25 + 1.21*variable_transmission_switch_25_27 + variable_voltage_square_27 =l= 1.21
Equation linear_constraint_voltage_square_big_m_27_25_4 ;
linear_constraint_voltage_square_big_m_27_25_4..
	variable_switched_voltage_square_27_25 - 0.902499999*variable_transmission_switch_25_27 - variable_voltage_square_27 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_27_28_1 ;
linear_constraint_voltage_square_big_m_27_28_1..
	-variable_switched_voltage_square_27_28 + 0.902499999*variable_transmission_switch_27_28 =l= 0
Equation linear_constraint_voltage_square_big_m_27_28_2 ;
linear_constraint_voltage_square_big_m_27_28_2..
	variable_switched_voltage_square_27_28 - 1.21*variable_transmission_switch_27_28 =l= 0
Equation linear_constraint_voltage_square_big_m_27_28_3 ;
linear_constraint_voltage_square_big_m_27_28_3..
	-variable_switched_voltage_square_27_28 + 1.21*variable_transmission_switch_27_28 + variable_voltage_square_27 =l= 1.21
Equation linear_constraint_voltage_square_big_m_27_28_4 ;
linear_constraint_voltage_square_big_m_27_28_4..
	variable_switched_voltage_square_27_28 - 0.902499999*variable_transmission_switch_27_28 - variable_voltage_square_27 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_28_27_1 ;
linear_constraint_voltage_square_big_m_28_27_1..
	-variable_switched_voltage_square_28_27 + 0.902499999*variable_transmission_switch_27_28 =l= 0
Equation linear_constraint_voltage_square_big_m_28_27_2 ;
linear_constraint_voltage_square_big_m_28_27_2..
	variable_switched_voltage_square_28_27 - 1.1025*variable_transmission_switch_27_28 =l= 0
Equation linear_constraint_voltage_square_big_m_28_27_3 ;
linear_constraint_voltage_square_big_m_28_27_3..
	-variable_switched_voltage_square_28_27 + 1.1025*variable_transmission_switch_27_28 + variable_voltage_square_28 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_28_27_4 ;
linear_constraint_voltage_square_big_m_28_27_4..
	variable_switched_voltage_square_28_27 - 0.902499999*variable_transmission_switch_27_28 - variable_voltage_square_28 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_27_29_1 ;
linear_constraint_voltage_square_big_m_27_29_1..
	-variable_switched_voltage_square_27_29 + 0.902499999*variable_transmission_switch_27_29 =l= 0
Equation linear_constraint_voltage_square_big_m_27_29_2 ;
linear_constraint_voltage_square_big_m_27_29_2..
	variable_switched_voltage_square_27_29 - 1.21*variable_transmission_switch_27_29 =l= 0
Equation linear_constraint_voltage_square_big_m_27_29_3 ;
linear_constraint_voltage_square_big_m_27_29_3..
	-variable_switched_voltage_square_27_29 + 1.21*variable_transmission_switch_27_29 + variable_voltage_square_27 =l= 1.21
Equation linear_constraint_voltage_square_big_m_27_29_4 ;
linear_constraint_voltage_square_big_m_27_29_4..
	variable_switched_voltage_square_27_29 - 0.902499999*variable_transmission_switch_27_29 - variable_voltage_square_27 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_29_27_1 ;
linear_constraint_voltage_square_big_m_29_27_1..
	-variable_switched_voltage_square_29_27 + 0.902499999*variable_transmission_switch_27_29 =l= 0
Equation linear_constraint_voltage_square_big_m_29_27_2 ;
linear_constraint_voltage_square_big_m_29_27_2..
	variable_switched_voltage_square_29_27 - 1.1025*variable_transmission_switch_27_29 =l= 0
Equation linear_constraint_voltage_square_big_m_29_27_3 ;
linear_constraint_voltage_square_big_m_29_27_3..
	-variable_switched_voltage_square_29_27 + 1.1025*variable_transmission_switch_27_29 + variable_voltage_square_29 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_29_27_4 ;
linear_constraint_voltage_square_big_m_29_27_4..
	variable_switched_voltage_square_29_27 - 0.902499999*variable_transmission_switch_27_29 - variable_voltage_square_29 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_27_30_1 ;
linear_constraint_voltage_square_big_m_27_30_1..
	-variable_switched_voltage_square_27_30 + 0.902499999*variable_transmission_switch_27_30 =l= 0
Equation linear_constraint_voltage_square_big_m_27_30_2 ;
linear_constraint_voltage_square_big_m_27_30_2..
	variable_switched_voltage_square_27_30 - 1.21*variable_transmission_switch_27_30 =l= 0
Equation linear_constraint_voltage_square_big_m_27_30_3 ;
linear_constraint_voltage_square_big_m_27_30_3..
	-variable_switched_voltage_square_27_30 + 1.21*variable_transmission_switch_27_30 + variable_voltage_square_27 =l= 1.21
Equation linear_constraint_voltage_square_big_m_27_30_4 ;
linear_constraint_voltage_square_big_m_27_30_4..
	variable_switched_voltage_square_27_30 - 0.902499999*variable_transmission_switch_27_30 - variable_voltage_square_27 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_30_27_1 ;
linear_constraint_voltage_square_big_m_30_27_1..
	-variable_switched_voltage_square_30_27 + 0.902499999*variable_transmission_switch_27_30 =l= 0
Equation linear_constraint_voltage_square_big_m_30_27_2 ;
linear_constraint_voltage_square_big_m_30_27_2..
	variable_switched_voltage_square_30_27 - 1.1025*variable_transmission_switch_27_30 =l= 0
Equation linear_constraint_voltage_square_big_m_30_27_3 ;
linear_constraint_voltage_square_big_m_30_27_3..
	-variable_switched_voltage_square_30_27 + 1.1025*variable_transmission_switch_27_30 + variable_voltage_square_30 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_30_27_4 ;
linear_constraint_voltage_square_big_m_30_27_4..
	variable_switched_voltage_square_30_27 - 0.902499999*variable_transmission_switch_27_30 - variable_voltage_square_30 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_29_30_1 ;
linear_constraint_voltage_square_big_m_29_30_1..
	-variable_switched_voltage_square_29_30 + 0.902499999*variable_transmission_switch_29_30 =l= 0
Equation linear_constraint_voltage_square_big_m_29_30_2 ;
linear_constraint_voltage_square_big_m_29_30_2..
	variable_switched_voltage_square_29_30 - 1.1025*variable_transmission_switch_29_30 =l= 0
Equation linear_constraint_voltage_square_big_m_29_30_3 ;
linear_constraint_voltage_square_big_m_29_30_3..
	-variable_switched_voltage_square_29_30 + 1.1025*variable_transmission_switch_29_30 + variable_voltage_square_29 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_29_30_4 ;
linear_constraint_voltage_square_big_m_29_30_4..
	variable_switched_voltage_square_29_30 - 0.902499999*variable_transmission_switch_29_30 - variable_voltage_square_29 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_30_29_1 ;
linear_constraint_voltage_square_big_m_30_29_1..
	-variable_switched_voltage_square_30_29 + 0.902499999*variable_transmission_switch_29_30 =l= 0
Equation linear_constraint_voltage_square_big_m_30_29_2 ;
linear_constraint_voltage_square_big_m_30_29_2..
	variable_switched_voltage_square_30_29 - 1.1025*variable_transmission_switch_29_30 =l= 0
Equation linear_constraint_voltage_square_big_m_30_29_3 ;
linear_constraint_voltage_square_big_m_30_29_3..
	-variable_switched_voltage_square_30_29 + 1.1025*variable_transmission_switch_29_30 + variable_voltage_square_30 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_30_29_4 ;
linear_constraint_voltage_square_big_m_30_29_4..
	variable_switched_voltage_square_30_29 - 0.902499999*variable_transmission_switch_29_30 - variable_voltage_square_30 =l= -0.902499999
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 0.1034*variable_curtailment_binaries_1_1 - 0.2067*variable_curtailment_binaries_1_2 - 0.2756*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 0.1034*variable_curtailment_binaries_3_1 - 0.2067*variable_curtailment_binaries_3_2 - 0.2756*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_option_5 ;
linear_constraint_curtailment_option_5..
	(variable_curtailed_feed_in_5 - 0.1034*variable_curtailment_binaries_5_1 - 0.2067*variable_curtailment_binaries_5_2 - 0.2756*variable_curtailment_binaries_5_3) =e= (0)
Equation linear_constraint_curtailment_option_7 ;
linear_constraint_curtailment_option_7..
	(variable_curtailed_feed_in_7 - 0.1034*variable_curtailment_binaries_7_1 - 0.2067*variable_curtailment_binaries_7_2 - 0.2756*variable_curtailment_binaries_7_3) =e= (0)
Equation linear_constraint_curtailment_option_9 ;
linear_constraint_curtailment_option_9..
	(variable_curtailed_feed_in_9 - 0.1034*variable_curtailment_binaries_9_1 - 0.2067*variable_curtailment_binaries_9_2 - 0.2756*variable_curtailment_binaries_9_3) =e= (0)
Equation linear_constraint_curtailment_option_11 ;
linear_constraint_curtailment_option_11..
	(variable_curtailed_feed_in_11 - 0.1034*variable_curtailment_binaries_11_1 - 0.2067*variable_curtailment_binaries_11_2 - 0.2756*variable_curtailment_binaries_11_3) =e= (0)
Equation linear_constraint_curtailment_option_13 ;
linear_constraint_curtailment_option_13..
	(variable_curtailed_feed_in_13 - 0.1034*variable_curtailment_binaries_13_1 - 0.2067*variable_curtailment_binaries_13_2 - 0.2756*variable_curtailment_binaries_13_3) =e= (0)
Equation linear_constraint_curtailment_option_15 ;
linear_constraint_curtailment_option_15..
	(variable_curtailed_feed_in_15 - 0.1034*variable_curtailment_binaries_15_1 - 0.2067*variable_curtailment_binaries_15_2 - 0.2756*variable_curtailment_binaries_15_3) =e= (0)
Equation linear_constraint_curtailment_option_17 ;
linear_constraint_curtailment_option_17..
	(variable_curtailed_feed_in_17 - 0.1034*variable_curtailment_binaries_17_1 - 0.2067*variable_curtailment_binaries_17_2 - 0.2756*variable_curtailment_binaries_17_3) =e= (0)
Equation linear_constraint_curtailment_option_19 ;
linear_constraint_curtailment_option_19..
	(variable_curtailed_feed_in_19 - 0.1034*variable_curtailment_binaries_19_1 - 0.2067*variable_curtailment_binaries_19_2 - 0.2756*variable_curtailment_binaries_19_3) =e= (0)
Equation linear_constraint_curtailment_option_21 ;
linear_constraint_curtailment_option_21..
	(variable_curtailed_feed_in_21 - 0.1034*variable_curtailment_binaries_21_1 - 0.2067*variable_curtailment_binaries_21_2 - 0.2756*variable_curtailment_binaries_21_3) =e= (0)
Equation linear_constraint_curtailment_option_23 ;
linear_constraint_curtailment_option_23..
	(variable_curtailed_feed_in_23 - 0.1034*variable_curtailment_binaries_23_1 - 0.2067*variable_curtailment_binaries_23_2 - 0.2756*variable_curtailment_binaries_23_3) =e= (0)
Equation linear_constraint_curtailment_option_25 ;
linear_constraint_curtailment_option_25..
	(variable_curtailed_feed_in_25 - 0.1034*variable_curtailment_binaries_25_1 - 0.2067*variable_curtailment_binaries_25_2 - 0.2756*variable_curtailment_binaries_25_3) =e= (0)
Equation linear_constraint_curtailment_option_27 ;
linear_constraint_curtailment_option_27..
	(variable_curtailed_feed_in_27 - 0.1034*variable_curtailment_binaries_27_1 - 0.2067*variable_curtailment_binaries_27_2 - 0.2756*variable_curtailment_binaries_27_3) =e= (0)
Equation linear_constraint_curtailment_option_29 ;
linear_constraint_curtailment_option_29..
	(variable_curtailed_feed_in_29 - 0.1034*variable_curtailment_binaries_29_1 - 0.2067*variable_curtailment_binaries_29_2 - 0.2756*variable_curtailment_binaries_29_3) =e= (0)
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
Equation linear_constraint_curtailment_sos_11 ;
linear_constraint_curtailment_sos_11..
	variable_curtailment_binaries_11_1 + variable_curtailment_binaries_11_2 + variable_curtailment_binaries_11_3 =l= 1
Equation linear_constraint_curtailment_sos_13 ;
linear_constraint_curtailment_sos_13..
	variable_curtailment_binaries_13_1 + variable_curtailment_binaries_13_2 + variable_curtailment_binaries_13_3 =l= 1
Equation linear_constraint_curtailment_sos_15 ;
linear_constraint_curtailment_sos_15..
	variable_curtailment_binaries_15_1 + variable_curtailment_binaries_15_2 + variable_curtailment_binaries_15_3 =l= 1
Equation linear_constraint_curtailment_sos_17 ;
linear_constraint_curtailment_sos_17..
	variable_curtailment_binaries_17_1 + variable_curtailment_binaries_17_2 + variable_curtailment_binaries_17_3 =l= 1
Equation linear_constraint_curtailment_sos_19 ;
linear_constraint_curtailment_sos_19..
	variable_curtailment_binaries_19_1 + variable_curtailment_binaries_19_2 + variable_curtailment_binaries_19_3 =l= 1
Equation linear_constraint_curtailment_sos_21 ;
linear_constraint_curtailment_sos_21..
	variable_curtailment_binaries_21_1 + variable_curtailment_binaries_21_2 + variable_curtailment_binaries_21_3 =l= 1
Equation linear_constraint_curtailment_sos_23 ;
linear_constraint_curtailment_sos_23..
	variable_curtailment_binaries_23_1 + variable_curtailment_binaries_23_2 + variable_curtailment_binaries_23_3 =l= 1
Equation linear_constraint_curtailment_sos_25 ;
linear_constraint_curtailment_sos_25..
	variable_curtailment_binaries_25_1 + variable_curtailment_binaries_25_2 + variable_curtailment_binaries_25_3 =l= 1
Equation linear_constraint_curtailment_sos_27 ;
linear_constraint_curtailment_sos_27..
	variable_curtailment_binaries_27_1 + variable_curtailment_binaries_27_2 + variable_curtailment_binaries_27_3 =l= 1
Equation linear_constraint_curtailment_sos_29 ;
linear_constraint_curtailment_sos_29..
	variable_curtailment_binaries_29_1 + variable_curtailment_binaries_29_2 + variable_curtailment_binaries_29_3 =l= 1

*===== SECTION: MODEL DEFINITION
Model minlp /all/ ;

*===== SECTION: MODEL OPTIONS AND SOLVE
option optcr = 0.0001 ;
option ResLim = 7200 ;
option MIQCP = scip ;
Solve minlp min objval using MIQCP ;
