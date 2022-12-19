$title "minlp_ac_opf_nesta_case14_ieee__api"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1 ;
Binary Variable variable_generator_switch_2 ;
Binary Variable variable_generator_switch_3 ;
Binary Variable variable_generator_switch_6 ;
Binary Variable variable_generator_switch_8 ;
Free Variable variable_voltage_square_1 ;
	variable_voltage_square_1.lo = 0.8836 ;
	variable_voltage_square_1.up = 1.1236 ;
Free Variable variable_voltage_square_2 ;
	variable_voltage_square_2.lo = 0.8836 ;
	variable_voltage_square_2.up = 1.1236 ;
Free Variable variable_voltage_square_3 ;
	variable_voltage_square_3.lo = 0.8836 ;
	variable_voltage_square_3.up = 1.1236 ;
Free Variable variable_voltage_square_4 ;
	variable_voltage_square_4.lo = 0.8836 ;
	variable_voltage_square_4.up = 1.1236 ;
Free Variable variable_voltage_square_5 ;
	variable_voltage_square_5.lo = 0.8836 ;
	variable_voltage_square_5.up = 1.1236 ;
Free Variable variable_voltage_square_6 ;
	variable_voltage_square_6.lo = 0.8836 ;
	variable_voltage_square_6.up = 1.1236 ;
Free Variable variable_voltage_square_7 ;
	variable_voltage_square_7.lo = 0.8836 ;
	variable_voltage_square_7.up = 1.1236 ;
Free Variable variable_voltage_square_8 ;
	variable_voltage_square_8.lo = 0.8836 ;
	variable_voltage_square_8.up = 1.1236 ;
Free Variable variable_voltage_square_9 ;
	variable_voltage_square_9.lo = 0.8836 ;
	variable_voltage_square_9.up = 1.1236 ;
Free Variable variable_voltage_square_10 ;
	variable_voltage_square_10.lo = 0.8836 ;
	variable_voltage_square_10.up = 1.1236 ;
Free Variable variable_voltage_square_11 ;
	variable_voltage_square_11.lo = 0.8836 ;
	variable_voltage_square_11.up = 1.1236 ;
Free Variable variable_voltage_square_12 ;
	variable_voltage_square_12.lo = 0.8836 ;
	variable_voltage_square_12.up = 1.1236 ;
Free Variable variable_voltage_square_13 ;
	variable_voltage_square_13.lo = 0.8836 ;
	variable_voltage_square_13.up = 1.1236 ;
Free Variable variable_voltage_square_14 ;
	variable_voltage_square_14.lo = 0.8836 ;
	variable_voltage_square_14.up = 1.1236 ;
Free Variable variable_real_power_gen_1 ;
	variable_real_power_gen_1.lo = 0.0 ;
	variable_real_power_gen_1.up = 5.42 ;
Free Variable variable_real_power_gen_2 ;
	variable_real_power_gen_2.lo = 0.0 ;
	variable_real_power_gen_2.up = 1.9 ;
Scalar variable_real_power_gen_3 / 0.0 / ;
Scalar variable_real_power_gen_6 / 0.0 / ;
Scalar variable_real_power_gen_8 / 0.0 / ;
Free Variable variable_reactive_power_gen_1 ;
	variable_reactive_power_gen_1.lo = -2.71 ;
	variable_reactive_power_gen_1.up = 2.71 ;
Free Variable variable_reactive_power_gen_2 ;
	variable_reactive_power_gen_2.lo = -0.95 ;
	variable_reactive_power_gen_2.up = 0.95 ;
Free Variable variable_reactive_power_gen_3 ;
	variable_reactive_power_gen_3.lo = -0.72 ;
	variable_reactive_power_gen_3.up = 0.72 ;
Free Variable variable_reactive_power_gen_6 ;
	variable_reactive_power_gen_6.lo = -0.564 ;
	variable_reactive_power_gen_6.up = 0.564 ;
Free Variable variable_reactive_power_gen_8 ;
	variable_reactive_power_gen_8.lo = -0.3 ;
	variable_reactive_power_gen_8.up = 0.3 ;
Free Variable variable_voltage_real_1 ;
	variable_voltage_real_1.lo = -1.06 ;
	variable_voltage_real_1.up = 1.06 ;
Free Variable variable_voltage_real_2 ;
	variable_voltage_real_2.lo = -1.06 ;
	variable_voltage_real_2.up = 1.06 ;
Free Variable variable_voltage_real_3 ;
	variable_voltage_real_3.lo = -1.06 ;
	variable_voltage_real_3.up = 1.06 ;
Free Variable variable_voltage_real_4 ;
	variable_voltage_real_4.lo = -1.06 ;
	variable_voltage_real_4.up = 1.06 ;
Free Variable variable_voltage_real_5 ;
	variable_voltage_real_5.lo = -1.06 ;
	variable_voltage_real_5.up = 1.06 ;
Free Variable variable_voltage_real_6 ;
	variable_voltage_real_6.lo = -1.06 ;
	variable_voltage_real_6.up = 1.06 ;
Free Variable variable_voltage_real_7 ;
	variable_voltage_real_7.lo = -1.06 ;
	variable_voltage_real_7.up = 1.06 ;
Free Variable variable_voltage_real_8 ;
	variable_voltage_real_8.lo = -1.06 ;
	variable_voltage_real_8.up = 1.06 ;
Free Variable variable_voltage_real_9 ;
	variable_voltage_real_9.lo = -1.06 ;
	variable_voltage_real_9.up = 1.06 ;
Free Variable variable_voltage_real_10 ;
	variable_voltage_real_10.lo = -1.06 ;
	variable_voltage_real_10.up = 1.06 ;
Free Variable variable_voltage_real_11 ;
	variable_voltage_real_11.lo = -1.06 ;
	variable_voltage_real_11.up = 1.06 ;
Free Variable variable_voltage_real_12 ;
	variable_voltage_real_12.lo = -1.06 ;
	variable_voltage_real_12.up = 1.06 ;
Free Variable variable_voltage_real_13 ;
	variable_voltage_real_13.lo = -1.06 ;
	variable_voltage_real_13.up = 1.06 ;
Free Variable variable_voltage_real_14 ;
	variable_voltage_real_14.lo = -1.06 ;
	variable_voltage_real_14.up = 1.06 ;
Free Variable variable_voltage_imag_1 ;
	variable_voltage_imag_1.lo = -1.06 ;
	variable_voltage_imag_1.up = 1.06 ;
Free Variable variable_voltage_imag_2 ;
	variable_voltage_imag_2.lo = -1.06 ;
	variable_voltage_imag_2.up = 1.06 ;
Free Variable variable_voltage_imag_3 ;
	variable_voltage_imag_3.lo = -1.06 ;
	variable_voltage_imag_3.up = 1.06 ;
Free Variable variable_voltage_imag_4 ;
	variable_voltage_imag_4.lo = -1.06 ;
	variable_voltage_imag_4.up = 1.06 ;
Free Variable variable_voltage_imag_5 ;
	variable_voltage_imag_5.lo = -1.06 ;
	variable_voltage_imag_5.up = 1.06 ;
Free Variable variable_voltage_imag_6 ;
	variable_voltage_imag_6.lo = -1.06 ;
	variable_voltage_imag_6.up = 1.06 ;
Free Variable variable_voltage_imag_7 ;
	variable_voltage_imag_7.lo = -1.06 ;
	variable_voltage_imag_7.up = 1.06 ;
Free Variable variable_voltage_imag_8 ;
	variable_voltage_imag_8.lo = -1.06 ;
	variable_voltage_imag_8.up = 1.06 ;
Free Variable variable_voltage_imag_9 ;
	variable_voltage_imag_9.lo = -1.06 ;
	variable_voltage_imag_9.up = 1.06 ;
Free Variable variable_voltage_imag_10 ;
	variable_voltage_imag_10.lo = -1.06 ;
	variable_voltage_imag_10.up = 1.06 ;
Free Variable variable_voltage_imag_11 ;
	variable_voltage_imag_11.lo = -1.06 ;
	variable_voltage_imag_11.up = 1.06 ;
Free Variable variable_voltage_imag_12 ;
	variable_voltage_imag_12.lo = -1.06 ;
	variable_voltage_imag_12.up = 1.06 ;
Free Variable variable_voltage_imag_13 ;
	variable_voltage_imag_13.lo = -1.06 ;
	variable_voltage_imag_13.up = 1.06 ;
Free Variable variable_voltage_imag_14 ;
	variable_voltage_imag_14.lo = -1.06 ;
	variable_voltage_imag_14.up = 1.06 ;
Binary Variable variable_transmission_switch_1_2 ;
Binary Variable variable_transmission_switch_1_5 ;
Binary Variable variable_transmission_switch_2_3 ;
Binary Variable variable_transmission_switch_2_4 ;
Binary Variable variable_transmission_switch_2_5 ;
Binary Variable variable_transmission_switch_3_4 ;
Binary Variable variable_transmission_switch_4_5 ;
Binary Variable variable_transmission_switch_4_7 ;
Binary Variable variable_transmission_switch_4_9 ;
Binary Variable variable_transmission_switch_5_6 ;
Binary Variable variable_transmission_switch_6_11 ;
Binary Variable variable_transmission_switch_6_12 ;
Binary Variable variable_transmission_switch_6_13 ;
Binary Variable variable_transmission_switch_7_8 ;
Binary Variable variable_transmission_switch_7_9 ;
Binary Variable variable_transmission_switch_9_10 ;
Binary Variable variable_transmission_switch_9_14 ;
Binary Variable variable_transmission_switch_10_11 ;
Binary Variable variable_transmission_switch_12_13 ;
Binary Variable variable_transmission_switch_13_14 ;
Free Variable variable_switched_voltage_square_1_2 ;
	variable_switched_voltage_square_1_2.lo = 0.0 ;
	variable_switched_voltage_square_1_2.up = 1.1236 ;
Free Variable variable_switched_voltage_square_2_1 ;
	variable_switched_voltage_square_2_1.lo = 0.0 ;
	variable_switched_voltage_square_2_1.up = 1.1236 ;
Free Variable variable_switched_voltage_square_1_5 ;
	variable_switched_voltage_square_1_5.lo = 0.0 ;
	variable_switched_voltage_square_1_5.up = 1.1236 ;
Free Variable variable_switched_voltage_square_5_1 ;
	variable_switched_voltage_square_5_1.lo = 0.0 ;
	variable_switched_voltage_square_5_1.up = 1.1236 ;
Free Variable variable_switched_voltage_square_2_3 ;
	variable_switched_voltage_square_2_3.lo = 0.0 ;
	variable_switched_voltage_square_2_3.up = 1.1236 ;
Free Variable variable_switched_voltage_square_3_2 ;
	variable_switched_voltage_square_3_2.lo = 0.0 ;
	variable_switched_voltage_square_3_2.up = 1.1236 ;
Free Variable variable_switched_voltage_square_2_4 ;
	variable_switched_voltage_square_2_4.lo = 0.0 ;
	variable_switched_voltage_square_2_4.up = 1.1236 ;
Free Variable variable_switched_voltage_square_4_2 ;
	variable_switched_voltage_square_4_2.lo = 0.0 ;
	variable_switched_voltage_square_4_2.up = 1.1236 ;
Free Variable variable_switched_voltage_square_2_5 ;
	variable_switched_voltage_square_2_5.lo = 0.0 ;
	variable_switched_voltage_square_2_5.up = 1.1236 ;
Free Variable variable_switched_voltage_square_5_2 ;
	variable_switched_voltage_square_5_2.lo = 0.0 ;
	variable_switched_voltage_square_5_2.up = 1.1236 ;
Free Variable variable_switched_voltage_square_3_4 ;
	variable_switched_voltage_square_3_4.lo = 0.0 ;
	variable_switched_voltage_square_3_4.up = 1.1236 ;
Free Variable variable_switched_voltage_square_4_3 ;
	variable_switched_voltage_square_4_3.lo = 0.0 ;
	variable_switched_voltage_square_4_3.up = 1.1236 ;
Free Variable variable_switched_voltage_square_4_5 ;
	variable_switched_voltage_square_4_5.lo = 0.0 ;
	variable_switched_voltage_square_4_5.up = 1.1236 ;
Free Variable variable_switched_voltage_square_5_4 ;
	variable_switched_voltage_square_5_4.lo = 0.0 ;
	variable_switched_voltage_square_5_4.up = 1.1236 ;
Free Variable variable_switched_voltage_square_4_7 ;
	variable_switched_voltage_square_4_7.lo = 0.0 ;
	variable_switched_voltage_square_4_7.up = 1.1236 ;
Free Variable variable_switched_voltage_square_7_4 ;
	variable_switched_voltage_square_7_4.lo = 0.0 ;
	variable_switched_voltage_square_7_4.up = 1.1236 ;
Free Variable variable_switched_voltage_square_4_9 ;
	variable_switched_voltage_square_4_9.lo = 0.0 ;
	variable_switched_voltage_square_4_9.up = 1.1236 ;
Free Variable variable_switched_voltage_square_9_4 ;
	variable_switched_voltage_square_9_4.lo = 0.0 ;
	variable_switched_voltage_square_9_4.up = 1.1236 ;
Free Variable variable_switched_voltage_square_5_6 ;
	variable_switched_voltage_square_5_6.lo = 0.0 ;
	variable_switched_voltage_square_5_6.up = 1.1236 ;
Free Variable variable_switched_voltage_square_6_5 ;
	variable_switched_voltage_square_6_5.lo = 0.0 ;
	variable_switched_voltage_square_6_5.up = 1.1236 ;
Free Variable variable_switched_voltage_square_6_11 ;
	variable_switched_voltage_square_6_11.lo = 0.0 ;
	variable_switched_voltage_square_6_11.up = 1.1236 ;
Free Variable variable_switched_voltage_square_11_6 ;
	variable_switched_voltage_square_11_6.lo = 0.0 ;
	variable_switched_voltage_square_11_6.up = 1.1236 ;
Free Variable variable_switched_voltage_square_6_12 ;
	variable_switched_voltage_square_6_12.lo = 0.0 ;
	variable_switched_voltage_square_6_12.up = 1.1236 ;
Free Variable variable_switched_voltage_square_12_6 ;
	variable_switched_voltage_square_12_6.lo = 0.0 ;
	variable_switched_voltage_square_12_6.up = 1.1236 ;
Free Variable variable_switched_voltage_square_6_13 ;
	variable_switched_voltage_square_6_13.lo = 0.0 ;
	variable_switched_voltage_square_6_13.up = 1.1236 ;
Free Variable variable_switched_voltage_square_13_6 ;
	variable_switched_voltage_square_13_6.lo = 0.0 ;
	variable_switched_voltage_square_13_6.up = 1.1236 ;
Free Variable variable_switched_voltage_square_7_8 ;
	variable_switched_voltage_square_7_8.lo = 0.0 ;
	variable_switched_voltage_square_7_8.up = 1.1236 ;
Free Variable variable_switched_voltage_square_8_7 ;
	variable_switched_voltage_square_8_7.lo = 0.0 ;
	variable_switched_voltage_square_8_7.up = 1.1236 ;
Free Variable variable_switched_voltage_square_7_9 ;
	variable_switched_voltage_square_7_9.lo = 0.0 ;
	variable_switched_voltage_square_7_9.up = 1.1236 ;
Free Variable variable_switched_voltage_square_9_7 ;
	variable_switched_voltage_square_9_7.lo = 0.0 ;
	variable_switched_voltage_square_9_7.up = 1.1236 ;
Free Variable variable_switched_voltage_square_9_10 ;
	variable_switched_voltage_square_9_10.lo = 0.0 ;
	variable_switched_voltage_square_9_10.up = 1.1236 ;
Free Variable variable_switched_voltage_square_10_9 ;
	variable_switched_voltage_square_10_9.lo = 0.0 ;
	variable_switched_voltage_square_10_9.up = 1.1236 ;
Free Variable variable_switched_voltage_square_9_14 ;
	variable_switched_voltage_square_9_14.lo = 0.0 ;
	variable_switched_voltage_square_9_14.up = 1.1236 ;
Free Variable variable_switched_voltage_square_14_9 ;
	variable_switched_voltage_square_14_9.lo = 0.0 ;
	variable_switched_voltage_square_14_9.up = 1.1236 ;
Free Variable variable_switched_voltage_square_10_11 ;
	variable_switched_voltage_square_10_11.lo = 0.0 ;
	variable_switched_voltage_square_10_11.up = 1.1236 ;
Free Variable variable_switched_voltage_square_11_10 ;
	variable_switched_voltage_square_11_10.lo = 0.0 ;
	variable_switched_voltage_square_11_10.up = 1.1236 ;
Free Variable variable_switched_voltage_square_12_13 ;
	variable_switched_voltage_square_12_13.lo = 0.0 ;
	variable_switched_voltage_square_12_13.up = 1.1236 ;
Free Variable variable_switched_voltage_square_13_12 ;
	variable_switched_voltage_square_13_12.lo = 0.0 ;
	variable_switched_voltage_square_13_12.up = 1.1236 ;
Free Variable variable_switched_voltage_square_13_14 ;
	variable_switched_voltage_square_13_14.lo = 0.0 ;
	variable_switched_voltage_square_13_14.up = 1.1236 ;
Free Variable variable_switched_voltage_square_14_13 ;
	variable_switched_voltage_square_14_13.lo = 0.0 ;
	variable_switched_voltage_square_14_13.up = 1.1236 ;
Free Variable variable_real_power_flow_1_2 ;
	variable_real_power_flow_1_2.lo = -4.72 ;
	variable_real_power_flow_1_2.up = 4.72 ;
Free Variable variable_real_power_flow_2_1 ;
	variable_real_power_flow_2_1.lo = -4.72 ;
	variable_real_power_flow_2_1.up = 4.72 ;
Free Variable variable_real_power_flow_1_5 ;
	variable_real_power_flow_1_5.lo = -1.28 ;
	variable_real_power_flow_1_5.up = 1.28 ;
Free Variable variable_real_power_flow_5_1 ;
	variable_real_power_flow_5_1.lo = -1.28 ;
	variable_real_power_flow_5_1.up = 1.28 ;
Free Variable variable_real_power_flow_2_3 ;
	variable_real_power_flow_2_3.lo = -1.45 ;
	variable_real_power_flow_2_3.up = 1.45 ;
Free Variable variable_real_power_flow_3_2 ;
	variable_real_power_flow_3_2.lo = -1.45 ;
	variable_real_power_flow_3_2.up = 1.45 ;
Free Variable variable_real_power_flow_2_4 ;
	variable_real_power_flow_2_4.lo = -1.58 ;
	variable_real_power_flow_2_4.up = 1.58 ;
Free Variable variable_real_power_flow_4_2 ;
	variable_real_power_flow_4_2.lo = -1.58 ;
	variable_real_power_flow_4_2.up = 1.58 ;
Free Variable variable_real_power_flow_2_5 ;
	variable_real_power_flow_2_5.lo = -1.61 ;
	variable_real_power_flow_2_5.up = 1.61 ;
Free Variable variable_real_power_flow_5_2 ;
	variable_real_power_flow_5_2.lo = -1.61 ;
	variable_real_power_flow_5_2.up = 1.61 ;
Free Variable variable_real_power_flow_3_4 ;
	variable_real_power_flow_3_4.lo = -1.6 ;
	variable_real_power_flow_3_4.up = 1.6 ;
Free Variable variable_real_power_flow_4_3 ;
	variable_real_power_flow_4_3.lo = -1.6 ;
	variable_real_power_flow_4_3.up = 1.6 ;
Free Variable variable_real_power_flow_4_5 ;
	variable_real_power_flow_4_5.lo = -6.64 ;
	variable_real_power_flow_4_5.up = 6.64 ;
Free Variable variable_real_power_flow_5_4 ;
	variable_real_power_flow_5_4.lo = -6.64 ;
	variable_real_power_flow_5_4.up = 6.64 ;
Free Variable variable_real_power_flow_4_7 ;
	variable_real_power_flow_4_7.lo = -1.41 ;
	variable_real_power_flow_4_7.up = 1.41 ;
Free Variable variable_real_power_flow_7_4 ;
	variable_real_power_flow_7_4.lo = -1.41 ;
	variable_real_power_flow_7_4.up = 1.41 ;
Free Variable variable_real_power_flow_4_9 ;
	variable_real_power_flow_4_9.lo = -0.53 ;
	variable_real_power_flow_4_9.up = 0.53 ;
Free Variable variable_real_power_flow_9_4 ;
	variable_real_power_flow_9_4.lo = -0.53 ;
	variable_real_power_flow_9_4.up = 0.53 ;
Free Variable variable_real_power_flow_5_6 ;
	variable_real_power_flow_5_6.lo = -1.17 ;
	variable_real_power_flow_5_6.up = 1.17 ;
Free Variable variable_real_power_flow_6_5 ;
	variable_real_power_flow_6_5.lo = -1.17 ;
	variable_real_power_flow_6_5.up = 1.17 ;
Free Variable variable_real_power_flow_6_11 ;
	variable_real_power_flow_6_11.lo = -1.34 ;
	variable_real_power_flow_6_11.up = 1.34 ;
Free Variable variable_real_power_flow_11_6 ;
	variable_real_power_flow_11_6.lo = -1.34 ;
	variable_real_power_flow_11_6.up = 1.34 ;
Free Variable variable_real_power_flow_6_12 ;
	variable_real_power_flow_6_12.lo = -1.04 ;
	variable_real_power_flow_6_12.up = 1.04 ;
Free Variable variable_real_power_flow_12_6 ;
	variable_real_power_flow_12_6.lo = -1.04 ;
	variable_real_power_flow_12_6.up = 1.04 ;
Free Variable variable_real_power_flow_6_13 ;
	variable_real_power_flow_6_13.lo = -2.01 ;
	variable_real_power_flow_6_13.up = 2.01 ;
Free Variable variable_real_power_flow_13_6 ;
	variable_real_power_flow_13_6.lo = -2.01 ;
	variable_real_power_flow_13_6.up = 2.01 ;
Free Variable variable_real_power_flow_7_8 ;
	variable_real_power_flow_7_8.lo = -1.67 ;
	variable_real_power_flow_7_8.up = 1.67 ;
Free Variable variable_real_power_flow_8_7 ;
	variable_real_power_flow_8_7.lo = -1.67 ;
	variable_real_power_flow_8_7.up = 1.67 ;
Free Variable variable_real_power_flow_7_9 ;
	variable_real_power_flow_7_9.lo = -2.67 ;
	variable_real_power_flow_7_9.up = 2.67 ;
Free Variable variable_real_power_flow_9_7 ;
	variable_real_power_flow_9_7.lo = -2.67 ;
	variable_real_power_flow_9_7.up = 2.67 ;
Free Variable variable_real_power_flow_9_10 ;
	variable_real_power_flow_9_10.lo = -3.25 ;
	variable_real_power_flow_9_10.up = 3.25 ;
Free Variable variable_real_power_flow_10_9 ;
	variable_real_power_flow_10_9.lo = -3.25 ;
	variable_real_power_flow_10_9.up = 3.25 ;
Free Variable variable_real_power_flow_9_14 ;
	variable_real_power_flow_9_14.lo = -0.99 ;
	variable_real_power_flow_9_14.up = 0.99 ;
Free Variable variable_real_power_flow_14_9 ;
	variable_real_power_flow_14_9.lo = -0.99 ;
	variable_real_power_flow_14_9.up = 0.99 ;
Free Variable variable_real_power_flow_10_11 ;
	variable_real_power_flow_10_11.lo = -1.41 ;
	variable_real_power_flow_10_11.up = 1.41 ;
Free Variable variable_real_power_flow_11_10 ;
	variable_real_power_flow_11_10.lo = -1.41 ;
	variable_real_power_flow_11_10.up = 1.41 ;
Free Variable variable_real_power_flow_12_13 ;
	variable_real_power_flow_12_13.lo = -0.99 ;
	variable_real_power_flow_12_13.up = 0.99 ;
Free Variable variable_real_power_flow_13_12 ;
	variable_real_power_flow_13_12.lo = -0.99 ;
	variable_real_power_flow_13_12.up = 0.99 ;
Free Variable variable_real_power_flow_13_14 ;
	variable_real_power_flow_13_14.lo = -0.76 ;
	variable_real_power_flow_13_14.up = 0.76 ;
Free Variable variable_real_power_flow_14_13 ;
	variable_real_power_flow_14_13.lo = -0.76 ;
	variable_real_power_flow_14_13.up = 0.76 ;
Free Variable variable_reactive_power_flow_1_2 ;
	variable_reactive_power_flow_1_2.lo = -4.72 ;
	variable_reactive_power_flow_1_2.up = 4.72 ;
Free Variable variable_reactive_power_flow_2_1 ;
	variable_reactive_power_flow_2_1.lo = -4.72 ;
	variable_reactive_power_flow_2_1.up = 4.72 ;
Free Variable variable_reactive_power_flow_1_5 ;
	variable_reactive_power_flow_1_5.lo = -1.28 ;
	variable_reactive_power_flow_1_5.up = 1.28 ;
Free Variable variable_reactive_power_flow_5_1 ;
	variable_reactive_power_flow_5_1.lo = -1.28 ;
	variable_reactive_power_flow_5_1.up = 1.28 ;
Free Variable variable_reactive_power_flow_2_3 ;
	variable_reactive_power_flow_2_3.lo = -1.45 ;
	variable_reactive_power_flow_2_3.up = 1.45 ;
Free Variable variable_reactive_power_flow_3_2 ;
	variable_reactive_power_flow_3_2.lo = -1.45 ;
	variable_reactive_power_flow_3_2.up = 1.45 ;
Free Variable variable_reactive_power_flow_2_4 ;
	variable_reactive_power_flow_2_4.lo = -1.58 ;
	variable_reactive_power_flow_2_4.up = 1.58 ;
Free Variable variable_reactive_power_flow_4_2 ;
	variable_reactive_power_flow_4_2.lo = -1.58 ;
	variable_reactive_power_flow_4_2.up = 1.58 ;
Free Variable variable_reactive_power_flow_2_5 ;
	variable_reactive_power_flow_2_5.lo = -1.61 ;
	variable_reactive_power_flow_2_5.up = 1.61 ;
Free Variable variable_reactive_power_flow_5_2 ;
	variable_reactive_power_flow_5_2.lo = -1.61 ;
	variable_reactive_power_flow_5_2.up = 1.61 ;
Free Variable variable_reactive_power_flow_3_4 ;
	variable_reactive_power_flow_3_4.lo = -1.6 ;
	variable_reactive_power_flow_3_4.up = 1.6 ;
Free Variable variable_reactive_power_flow_4_3 ;
	variable_reactive_power_flow_4_3.lo = -1.6 ;
	variable_reactive_power_flow_4_3.up = 1.6 ;
Free Variable variable_reactive_power_flow_4_5 ;
	variable_reactive_power_flow_4_5.lo = -6.64 ;
	variable_reactive_power_flow_4_5.up = 6.64 ;
Free Variable variable_reactive_power_flow_5_4 ;
	variable_reactive_power_flow_5_4.lo = -6.64 ;
	variable_reactive_power_flow_5_4.up = 6.64 ;
Free Variable variable_reactive_power_flow_4_7 ;
	variable_reactive_power_flow_4_7.lo = -1.41 ;
	variable_reactive_power_flow_4_7.up = 1.41 ;
Free Variable variable_reactive_power_flow_7_4 ;
	variable_reactive_power_flow_7_4.lo = -1.41 ;
	variable_reactive_power_flow_7_4.up = 1.41 ;
Free Variable variable_reactive_power_flow_4_9 ;
	variable_reactive_power_flow_4_9.lo = -0.53 ;
	variable_reactive_power_flow_4_9.up = 0.53 ;
Free Variable variable_reactive_power_flow_9_4 ;
	variable_reactive_power_flow_9_4.lo = -0.53 ;
	variable_reactive_power_flow_9_4.up = 0.53 ;
Free Variable variable_reactive_power_flow_5_6 ;
	variable_reactive_power_flow_5_6.lo = -1.17 ;
	variable_reactive_power_flow_5_6.up = 1.17 ;
Free Variable variable_reactive_power_flow_6_5 ;
	variable_reactive_power_flow_6_5.lo = -1.17 ;
	variable_reactive_power_flow_6_5.up = 1.17 ;
Free Variable variable_reactive_power_flow_6_11 ;
	variable_reactive_power_flow_6_11.lo = -1.34 ;
	variable_reactive_power_flow_6_11.up = 1.34 ;
Free Variable variable_reactive_power_flow_11_6 ;
	variable_reactive_power_flow_11_6.lo = -1.34 ;
	variable_reactive_power_flow_11_6.up = 1.34 ;
Free Variable variable_reactive_power_flow_6_12 ;
	variable_reactive_power_flow_6_12.lo = -1.04 ;
	variable_reactive_power_flow_6_12.up = 1.04 ;
Free Variable variable_reactive_power_flow_12_6 ;
	variable_reactive_power_flow_12_6.lo = -1.04 ;
	variable_reactive_power_flow_12_6.up = 1.04 ;
Free Variable variable_reactive_power_flow_6_13 ;
	variable_reactive_power_flow_6_13.lo = -2.01 ;
	variable_reactive_power_flow_6_13.up = 2.01 ;
Free Variable variable_reactive_power_flow_13_6 ;
	variable_reactive_power_flow_13_6.lo = -2.01 ;
	variable_reactive_power_flow_13_6.up = 2.01 ;
Free Variable variable_reactive_power_flow_7_8 ;
	variable_reactive_power_flow_7_8.lo = -1.67 ;
	variable_reactive_power_flow_7_8.up = 1.67 ;
Free Variable variable_reactive_power_flow_8_7 ;
	variable_reactive_power_flow_8_7.lo = -1.67 ;
	variable_reactive_power_flow_8_7.up = 1.67 ;
Free Variable variable_reactive_power_flow_7_9 ;
	variable_reactive_power_flow_7_9.lo = -2.67 ;
	variable_reactive_power_flow_7_9.up = 2.67 ;
Free Variable variable_reactive_power_flow_9_7 ;
	variable_reactive_power_flow_9_7.lo = -2.67 ;
	variable_reactive_power_flow_9_7.up = 2.67 ;
Free Variable variable_reactive_power_flow_9_10 ;
	variable_reactive_power_flow_9_10.lo = -3.25 ;
	variable_reactive_power_flow_9_10.up = 3.25 ;
Free Variable variable_reactive_power_flow_10_9 ;
	variable_reactive_power_flow_10_9.lo = -3.25 ;
	variable_reactive_power_flow_10_9.up = 3.25 ;
Free Variable variable_reactive_power_flow_9_14 ;
	variable_reactive_power_flow_9_14.lo = -0.99 ;
	variable_reactive_power_flow_9_14.up = 0.99 ;
Free Variable variable_reactive_power_flow_14_9 ;
	variable_reactive_power_flow_14_9.lo = -0.99 ;
	variable_reactive_power_flow_14_9.up = 0.99 ;
Free Variable variable_reactive_power_flow_10_11 ;
	variable_reactive_power_flow_10_11.lo = -1.41 ;
	variable_reactive_power_flow_10_11.up = 1.41 ;
Free Variable variable_reactive_power_flow_11_10 ;
	variable_reactive_power_flow_11_10.lo = -1.41 ;
	variable_reactive_power_flow_11_10.up = 1.41 ;
Free Variable variable_reactive_power_flow_12_13 ;
	variable_reactive_power_flow_12_13.lo = -0.99 ;
	variable_reactive_power_flow_12_13.up = 0.99 ;
Free Variable variable_reactive_power_flow_13_12 ;
	variable_reactive_power_flow_13_12.lo = -0.99 ;
	variable_reactive_power_flow_13_12.up = 0.99 ;
Free Variable variable_reactive_power_flow_13_14 ;
	variable_reactive_power_flow_13_14.lo = -0.76 ;
	variable_reactive_power_flow_13_14.up = 0.76 ;
Free Variable variable_reactive_power_flow_14_13 ;
	variable_reactive_power_flow_14_13.lo = -0.76 ;
	variable_reactive_power_flow_14_13.up = 0.76 ;
Free Variable variable_voltage_product_real_1_2 ;
	variable_voltage_product_real_1_2.lo = 0.0 ;
	variable_voltage_product_real_1_2.up = 1.1236 ;
Free Variable variable_voltage_product_real_1_5 ;
	variable_voltage_product_real_1_5.lo = 0.0 ;
	variable_voltage_product_real_1_5.up = 1.1236 ;
Free Variable variable_voltage_product_real_2_3 ;
	variable_voltage_product_real_2_3.lo = 0.0 ;
	variable_voltage_product_real_2_3.up = 1.1236 ;
Free Variable variable_voltage_product_real_2_4 ;
	variable_voltage_product_real_2_4.lo = 0.0 ;
	variable_voltage_product_real_2_4.up = 1.1236 ;
Free Variable variable_voltage_product_real_2_5 ;
	variable_voltage_product_real_2_5.lo = 0.0 ;
	variable_voltage_product_real_2_5.up = 1.1236 ;
Free Variable variable_voltage_product_real_3_4 ;
	variable_voltage_product_real_3_4.lo = 0.0 ;
	variable_voltage_product_real_3_4.up = 1.1236 ;
Free Variable variable_voltage_product_real_4_5 ;
	variable_voltage_product_real_4_5.lo = 0.0 ;
	variable_voltage_product_real_4_5.up = 1.1236 ;
Free Variable variable_voltage_product_real_4_7 ;
	variable_voltage_product_real_4_7.lo = 0.0 ;
	variable_voltage_product_real_4_7.up = 1.1236 ;
Free Variable variable_voltage_product_real_4_9 ;
	variable_voltage_product_real_4_9.lo = 0.0 ;
	variable_voltage_product_real_4_9.up = 1.1236 ;
Free Variable variable_voltage_product_real_5_6 ;
	variable_voltage_product_real_5_6.lo = 0.0 ;
	variable_voltage_product_real_5_6.up = 1.1236 ;
Free Variable variable_voltage_product_real_6_11 ;
	variable_voltage_product_real_6_11.lo = 0.0 ;
	variable_voltage_product_real_6_11.up = 1.1236 ;
Free Variable variable_voltage_product_real_6_12 ;
	variable_voltage_product_real_6_12.lo = 0.0 ;
	variable_voltage_product_real_6_12.up = 1.1236 ;
Free Variable variable_voltage_product_real_6_13 ;
	variable_voltage_product_real_6_13.lo = 0.0 ;
	variable_voltage_product_real_6_13.up = 1.1236 ;
Free Variable variable_voltage_product_real_7_8 ;
	variable_voltage_product_real_7_8.lo = 0.0 ;
	variable_voltage_product_real_7_8.up = 1.1236 ;
Free Variable variable_voltage_product_real_7_9 ;
	variable_voltage_product_real_7_9.lo = 0.0 ;
	variable_voltage_product_real_7_9.up = 1.1236 ;
Free Variable variable_voltage_product_real_9_10 ;
	variable_voltage_product_real_9_10.lo = 0.0 ;
	variable_voltage_product_real_9_10.up = 1.1236 ;
Free Variable variable_voltage_product_real_9_14 ;
	variable_voltage_product_real_9_14.lo = 0.0 ;
	variable_voltage_product_real_9_14.up = 1.1236 ;
Free Variable variable_voltage_product_real_10_11 ;
	variable_voltage_product_real_10_11.lo = 0.0 ;
	variable_voltage_product_real_10_11.up = 1.1236 ;
Free Variable variable_voltage_product_real_12_13 ;
	variable_voltage_product_real_12_13.lo = 0.0 ;
	variable_voltage_product_real_12_13.up = 1.1236 ;
Free Variable variable_voltage_product_real_13_14 ;
	variable_voltage_product_real_13_14.lo = 0.0 ;
	variable_voltage_product_real_13_14.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_1_2 ;
	variable_voltage_product_imaginary_1_2.lo = -1.1236 ;
	variable_voltage_product_imaginary_1_2.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_1_5 ;
	variable_voltage_product_imaginary_1_5.lo = -1.1236 ;
	variable_voltage_product_imaginary_1_5.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_2_3 ;
	variable_voltage_product_imaginary_2_3.lo = -1.1236 ;
	variable_voltage_product_imaginary_2_3.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_2_4 ;
	variable_voltage_product_imaginary_2_4.lo = -1.1236 ;
	variable_voltage_product_imaginary_2_4.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_2_5 ;
	variable_voltage_product_imaginary_2_5.lo = -1.1236 ;
	variable_voltage_product_imaginary_2_5.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_3_4 ;
	variable_voltage_product_imaginary_3_4.lo = -1.1236 ;
	variable_voltage_product_imaginary_3_4.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_4_5 ;
	variable_voltage_product_imaginary_4_5.lo = -1.1236 ;
	variable_voltage_product_imaginary_4_5.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_4_7 ;
	variable_voltage_product_imaginary_4_7.lo = -1.1236 ;
	variable_voltage_product_imaginary_4_7.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_4_9 ;
	variable_voltage_product_imaginary_4_9.lo = -1.1236 ;
	variable_voltage_product_imaginary_4_9.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_5_6 ;
	variable_voltage_product_imaginary_5_6.lo = -1.1236 ;
	variable_voltage_product_imaginary_5_6.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_6_11 ;
	variable_voltage_product_imaginary_6_11.lo = -1.1236 ;
	variable_voltage_product_imaginary_6_11.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_6_12 ;
	variable_voltage_product_imaginary_6_12.lo = -1.1236 ;
	variable_voltage_product_imaginary_6_12.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_6_13 ;
	variable_voltage_product_imaginary_6_13.lo = -1.1236 ;
	variable_voltage_product_imaginary_6_13.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_7_8 ;
	variable_voltage_product_imaginary_7_8.lo = -1.1236 ;
	variable_voltage_product_imaginary_7_8.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_7_9 ;
	variable_voltage_product_imaginary_7_9.lo = -1.1236 ;
	variable_voltage_product_imaginary_7_9.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_9_10 ;
	variable_voltage_product_imaginary_9_10.lo = -1.1236 ;
	variable_voltage_product_imaginary_9_10.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_9_14 ;
	variable_voltage_product_imaginary_9_14.lo = -1.1236 ;
	variable_voltage_product_imaginary_9_14.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_10_11 ;
	variable_voltage_product_imaginary_10_11.lo = -1.1236 ;
	variable_voltage_product_imaginary_10_11.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_12_13 ;
	variable_voltage_product_imaginary_12_13.lo = -1.1236 ;
	variable_voltage_product_imaginary_12_13.up = 1.1236 ;
Free Variable variable_voltage_product_imaginary_13_14 ;
	variable_voltage_product_imaginary_13_14.lo = -1.1236 ;
	variable_voltage_product_imaginary_13_14.up = 1.1236 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 1.3228 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 1.3228 ;
Free Variable variable_curtailed_feed_in_5 ;
	variable_curtailed_feed_in_5.lo = 0.0 ;
	variable_curtailed_feed_in_5.up = 1.3228 ;
Free Variable variable_curtailed_feed_in_7 ;
	variable_curtailed_feed_in_7.lo = 0.0 ;
	variable_curtailed_feed_in_7.up = 1.3228 ;
Free Variable variable_curtailed_feed_in_9 ;
	variable_curtailed_feed_in_9.lo = 0.0 ;
	variable_curtailed_feed_in_9.up = 1.3228 ;
Free Variable variable_curtailed_feed_in_11 ;
	variable_curtailed_feed_in_11.lo = 0.0 ;
	variable_curtailed_feed_in_11.up = 1.3228 ;
Free Variable variable_curtailed_feed_in_13 ;
	variable_curtailed_feed_in_13.lo = 0.0 ;
	variable_curtailed_feed_in_13.up = 1.3228 ;
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

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -63.5224*variable_curtailed_feed_in_1 - 63.5224*variable_curtailed_feed_in_11 - 63.5224*variable_curtailed_feed_in_13 - 63.5224*variable_curtailed_feed_in_3 - 63.5224*variable_curtailed_feed_in_5 - 63.5224*variable_curtailed_feed_in_7 - 63.5224*variable_curtailed_feed_in_9 + 66.426*variable_real_power_gen_1 + 60.6188*variable_real_power_gen_2 + 1176.38403008
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_5 + variable_real_power_gen_1) =e= (0.0)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_3 - variable_real_power_flow_2_4 - variable_real_power_flow_2_5 + variable_real_power_gen_2) =e= (0.4266)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_2 - variable_real_power_flow_3_4 + variable_real_power_gen_3) =e= (1.8517)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_2 - variable_real_power_flow_4_3 - variable_real_power_flow_4_5 - variable_real_power_flow_4_7 - variable_real_power_flow_4_9) =e= (0.478)
Equation linear_constraint_real_flow_conservation_5 ;
linear_constraint_real_flow_conservation_5..
	(variable_curtailed_feed_in_5 - variable_real_power_flow_5_1 - variable_real_power_flow_5_2 - variable_real_power_flow_5_4 - variable_real_power_flow_5_6) =e= (0.1494)
Equation linear_constraint_real_flow_conservation_6 ;
linear_constraint_real_flow_conservation_6..
	(-variable_real_power_flow_6_11 - variable_real_power_flow_6_12 - variable_real_power_flow_6_13 - variable_real_power_flow_6_5 + variable_real_power_gen_6) =e= (0.2202)
Equation linear_constraint_real_flow_conservation_7 ;
linear_constraint_real_flow_conservation_7..
	(variable_curtailed_feed_in_7 - variable_real_power_flow_7_4 - variable_real_power_flow_7_8 - variable_real_power_flow_7_9) =e= (0.0)
Equation linear_constraint_real_flow_conservation_8 ;
linear_constraint_real_flow_conservation_8..
	(-variable_real_power_flow_8_7 + variable_real_power_gen_8) =e= (0.0)
Equation linear_constraint_real_flow_conservation_9 ;
linear_constraint_real_flow_conservation_9..
	(variable_curtailed_feed_in_9 - variable_real_power_flow_9_10 - variable_real_power_flow_9_14 - variable_real_power_flow_9_4 - variable_real_power_flow_9_7) =e= (0.5799)
Equation linear_constraint_real_flow_conservation_10 ;
linear_constraint_real_flow_conservation_10..
	(-variable_real_power_flow_10_11 - variable_real_power_flow_10_9) =e= (0.1769)
Equation linear_constraint_real_flow_conservation_11 ;
linear_constraint_real_flow_conservation_11..
	(variable_curtailed_feed_in_11 - variable_real_power_flow_11_10 - variable_real_power_flow_11_6) =e= (0.0688)
Equation linear_constraint_real_flow_conservation_12 ;
linear_constraint_real_flow_conservation_12..
	(-variable_real_power_flow_12_13 - variable_real_power_flow_12_6) =e= (0.1199)
Equation linear_constraint_real_flow_conservation_13 ;
linear_constraint_real_flow_conservation_13..
	(variable_curtailed_feed_in_13 - variable_real_power_flow_13_12 - variable_real_power_flow_13_14 - variable_real_power_flow_13_6) =e= (0.2654)
Equation linear_constraint_real_flow_conservation_14 ;
linear_constraint_real_flow_conservation_14..
	(-variable_real_power_flow_14_13 - variable_real_power_flow_14_9) =e= (0.2929)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_2 - variable_reactive_power_flow_1_5 + variable_reactive_power_gen_1) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_1 - variable_reactive_power_flow_2_3 - variable_reactive_power_flow_2_4 - variable_reactive_power_flow_2_5 + variable_reactive_power_gen_2) =e= (0.127)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_2 - variable_reactive_power_flow_3_4 + variable_reactive_power_gen_3) =e= (0.19)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_2 - variable_reactive_power_flow_4_3 - variable_reactive_power_flow_4_5 - variable_reactive_power_flow_4_7 - variable_reactive_power_flow_4_9) =e= (-0.039)
Equation linear_constraint_reactive_flow_conservation_5 ;
linear_constraint_reactive_flow_conservation_5..
	(0.48*variable_curtailed_feed_in_5 - variable_reactive_power_flow_5_1 - variable_reactive_power_flow_5_2 - variable_reactive_power_flow_5_4 - variable_reactive_power_flow_5_6) =e= (0.016)
Equation linear_constraint_reactive_flow_conservation_6 ;
linear_constraint_reactive_flow_conservation_6..
	(-variable_reactive_power_flow_6_11 - variable_reactive_power_flow_6_12 - variable_reactive_power_flow_6_13 - variable_reactive_power_flow_6_5 + variable_reactive_power_gen_6) =e= (0.075)
Equation linear_constraint_reactive_flow_conservation_7 ;
linear_constraint_reactive_flow_conservation_7..
	(0.48*variable_curtailed_feed_in_7 - variable_reactive_power_flow_7_4 - variable_reactive_power_flow_7_8 - variable_reactive_power_flow_7_9) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_8 ;
linear_constraint_reactive_flow_conservation_8..
	(-variable_reactive_power_flow_8_7 + variable_reactive_power_gen_8) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_9 ;
linear_constraint_reactive_flow_conservation_9..
	(0.48*variable_curtailed_feed_in_9 - variable_reactive_power_flow_9_10 - variable_reactive_power_flow_9_14 - variable_reactive_power_flow_9_4 - variable_reactive_power_flow_9_7 + 0.19*variable_voltage_square_9) =e= (0.166)
Equation linear_constraint_reactive_flow_conservation_10 ;
linear_constraint_reactive_flow_conservation_10..
	(-variable_reactive_power_flow_10_11 - variable_reactive_power_flow_10_9) =e= (0.058)
Equation linear_constraint_reactive_flow_conservation_11 ;
linear_constraint_reactive_flow_conservation_11..
	(0.48*variable_curtailed_feed_in_11 - variable_reactive_power_flow_11_10 - variable_reactive_power_flow_11_6) =e= (0.018)
Equation linear_constraint_reactive_flow_conservation_12 ;
linear_constraint_reactive_flow_conservation_12..
	(-variable_reactive_power_flow_12_13 - variable_reactive_power_flow_12_6) =e= (0.016)
Equation linear_constraint_reactive_flow_conservation_13 ;
linear_constraint_reactive_flow_conservation_13..
	(0.48*variable_curtailed_feed_in_13 - variable_reactive_power_flow_13_12 - variable_reactive_power_flow_13_14 - variable_reactive_power_flow_13_6) =e= (0.058)
Equation linear_constraint_reactive_flow_conservation_14 ;
linear_constraint_reactive_flow_conservation_14..
	(-variable_reactive_power_flow_14_13 - variable_reactive_power_flow_14_9) =e= (0.05)
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
Equation nonlinear_constraint_voltage_square_rectangular_10 ;
nonlinear_constraint_voltage_square_rectangular_10..
	(variable_voltage_square_10) =e= (power(variable_voltage_imag_10,2) + power(variable_voltage_real_10,2))
Equation nonlinear_constraint_voltage_square_rectangular_11 ;
nonlinear_constraint_voltage_square_rectangular_11..
	(variable_voltage_square_11) =e= (power(variable_voltage_imag_11,2) + power(variable_voltage_real_11,2))
Equation nonlinear_constraint_voltage_square_rectangular_12 ;
nonlinear_constraint_voltage_square_rectangular_12..
	(variable_voltage_square_12) =e= (power(variable_voltage_imag_12,2) + power(variable_voltage_real_12,2))
Equation nonlinear_constraint_voltage_square_rectangular_13 ;
nonlinear_constraint_voltage_square_rectangular_13..
	(variable_voltage_square_13) =e= (power(variable_voltage_imag_13,2) + power(variable_voltage_real_13,2))
Equation nonlinear_constraint_voltage_square_rectangular_14 ;
nonlinear_constraint_voltage_square_rectangular_14..
	(variable_voltage_square_14) =e= (power(variable_voltage_imag_14,2) + power(variable_voltage_real_14,2))
Equation nonlinear_constraint_voltage_product_real_rectangular_1_2 ;
nonlinear_constraint_voltage_product_real_rectangular_1_2..
	(variable_voltage_product_real_1_2) =e= (variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_imag_2 + variable_transmission_switch_1_2*variable_voltage_real_1*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_real_rectangular_1_5 ;
nonlinear_constraint_voltage_product_real_rectangular_1_5..
	(variable_voltage_product_real_1_5) =e= (variable_transmission_switch_1_5*variable_voltage_imag_1*variable_voltage_imag_5 + variable_transmission_switch_1_5*variable_voltage_real_1*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_3 ;
nonlinear_constraint_voltage_product_real_rectangular_2_3..
	(variable_voltage_product_real_2_3) =e= (variable_transmission_switch_2_3*variable_voltage_imag_2*variable_voltage_imag_3 + variable_transmission_switch_2_3*variable_voltage_real_2*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_4 ;
nonlinear_constraint_voltage_product_real_rectangular_2_4..
	(variable_voltage_product_real_2_4) =e= (variable_transmission_switch_2_4*variable_voltage_imag_2*variable_voltage_imag_4 + variable_transmission_switch_2_4*variable_voltage_real_2*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_5 ;
nonlinear_constraint_voltage_product_real_rectangular_2_5..
	(variable_voltage_product_real_2_5) =e= (variable_transmission_switch_2_5*variable_voltage_imag_2*variable_voltage_imag_5 + variable_transmission_switch_2_5*variable_voltage_real_2*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_real_rectangular_3_4 ;
nonlinear_constraint_voltage_product_real_rectangular_3_4..
	(variable_voltage_product_real_3_4) =e= (variable_transmission_switch_3_4*variable_voltage_imag_3*variable_voltage_imag_4 + variable_transmission_switch_3_4*variable_voltage_real_3*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_real_rectangular_4_5 ;
nonlinear_constraint_voltage_product_real_rectangular_4_5..
	(variable_voltage_product_real_4_5) =e= (variable_transmission_switch_4_5*variable_voltage_imag_4*variable_voltage_imag_5 + variable_transmission_switch_4_5*variable_voltage_real_4*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_real_rectangular_4_7 ;
nonlinear_constraint_voltage_product_real_rectangular_4_7..
	(variable_voltage_product_real_4_7) =e= (variable_transmission_switch_4_7*variable_voltage_imag_4*variable_voltage_imag_7 + variable_transmission_switch_4_7*variable_voltage_real_4*variable_voltage_real_7)
Equation nonlinear_constraint_voltage_product_real_rectangular_4_9 ;
nonlinear_constraint_voltage_product_real_rectangular_4_9..
	(variable_voltage_product_real_4_9) =e= (variable_transmission_switch_4_9*variable_voltage_imag_4*variable_voltage_imag_9 + variable_transmission_switch_4_9*variable_voltage_real_4*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_5_6 ;
nonlinear_constraint_voltage_product_real_rectangular_5_6..
	(variable_voltage_product_real_5_6) =e= (variable_transmission_switch_5_6*variable_voltage_imag_5*variable_voltage_imag_6 + variable_transmission_switch_5_6*variable_voltage_real_5*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_6_11 ;
nonlinear_constraint_voltage_product_real_rectangular_6_11..
	(variable_voltage_product_real_6_11) =e= (variable_transmission_switch_6_11*variable_voltage_imag_11*variable_voltage_imag_6 + variable_transmission_switch_6_11*variable_voltage_real_11*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_6_12 ;
nonlinear_constraint_voltage_product_real_rectangular_6_12..
	(variable_voltage_product_real_6_12) =e= (variable_transmission_switch_6_12*variable_voltage_imag_12*variable_voltage_imag_6 + variable_transmission_switch_6_12*variable_voltage_real_12*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_6_13 ;
nonlinear_constraint_voltage_product_real_rectangular_6_13..
	(variable_voltage_product_real_6_13) =e= (variable_transmission_switch_6_13*variable_voltage_imag_13*variable_voltage_imag_6 + variable_transmission_switch_6_13*variable_voltage_real_13*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_7_8 ;
nonlinear_constraint_voltage_product_real_rectangular_7_8..
	(variable_voltage_product_real_7_8) =e= (variable_transmission_switch_7_8*variable_voltage_imag_7*variable_voltage_imag_8 + variable_transmission_switch_7_8*variable_voltage_real_7*variable_voltage_real_8)
Equation nonlinear_constraint_voltage_product_real_rectangular_7_9 ;
nonlinear_constraint_voltage_product_real_rectangular_7_9..
	(variable_voltage_product_real_7_9) =e= (variable_transmission_switch_7_9*variable_voltage_imag_7*variable_voltage_imag_9 + variable_transmission_switch_7_9*variable_voltage_real_7*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_9_10 ;
nonlinear_constraint_voltage_product_real_rectangular_9_10..
	(variable_voltage_product_real_9_10) =e= (variable_transmission_switch_9_10*variable_voltage_imag_10*variable_voltage_imag_9 + variable_transmission_switch_9_10*variable_voltage_real_10*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_9_14 ;
nonlinear_constraint_voltage_product_real_rectangular_9_14..
	(variable_voltage_product_real_9_14) =e= (variable_transmission_switch_9_14*variable_voltage_imag_14*variable_voltage_imag_9 + variable_transmission_switch_9_14*variable_voltage_real_14*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_10_11 ;
nonlinear_constraint_voltage_product_real_rectangular_10_11..
	(variable_voltage_product_real_10_11) =e= (variable_transmission_switch_10_11*variable_voltage_imag_10*variable_voltage_imag_11 + variable_transmission_switch_10_11*variable_voltage_real_10*variable_voltage_real_11)
Equation nonlinear_constraint_voltage_product_real_rectangular_12_13 ;
nonlinear_constraint_voltage_product_real_rectangular_12_13..
	(variable_voltage_product_real_12_13) =e= (variable_transmission_switch_12_13*variable_voltage_imag_12*variable_voltage_imag_13 + variable_transmission_switch_12_13*variable_voltage_real_12*variable_voltage_real_13)
Equation nonlinear_constraint_voltage_product_real_rectangular_13_14 ;
nonlinear_constraint_voltage_product_real_rectangular_13_14..
	(variable_voltage_product_real_13_14) =e= (variable_transmission_switch_13_14*variable_voltage_imag_13*variable_voltage_imag_14 + variable_transmission_switch_13_14*variable_voltage_real_13*variable_voltage_real_14)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_2..
	(variable_voltage_product_imaginary_1_2) =e= (-variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_real_2 + variable_transmission_switch_1_2*variable_voltage_imag_2*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_5 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_5..
	(variable_voltage_product_imaginary_1_5) =e= (-variable_transmission_switch_1_5*variable_voltage_imag_1*variable_voltage_real_5 + variable_transmission_switch_1_5*variable_voltage_imag_5*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_3 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_3..
	(variable_voltage_product_imaginary_2_3) =e= (-variable_transmission_switch_2_3*variable_voltage_imag_2*variable_voltage_real_3 + variable_transmission_switch_2_3*variable_voltage_imag_3*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_4..
	(variable_voltage_product_imaginary_2_4) =e= (-variable_transmission_switch_2_4*variable_voltage_imag_2*variable_voltage_real_4 + variable_transmission_switch_2_4*variable_voltage_imag_4*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_5 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_5..
	(variable_voltage_product_imaginary_2_5) =e= (-variable_transmission_switch_2_5*variable_voltage_imag_2*variable_voltage_real_5 + variable_transmission_switch_2_5*variable_voltage_imag_5*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_3_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_3_4..
	(variable_voltage_product_imaginary_3_4) =e= (-variable_transmission_switch_3_4*variable_voltage_imag_3*variable_voltage_real_4 + variable_transmission_switch_3_4*variable_voltage_imag_4*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_imag_rectangular_4_5 ;
nonlinear_constraint_voltage_product_imag_rectangular_4_5..
	(variable_voltage_product_imaginary_4_5) =e= (-variable_transmission_switch_4_5*variable_voltage_imag_4*variable_voltage_real_5 + variable_transmission_switch_4_5*variable_voltage_imag_5*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_imag_rectangular_4_7 ;
nonlinear_constraint_voltage_product_imag_rectangular_4_7..
	(variable_voltage_product_imaginary_4_7) =e= (-variable_transmission_switch_4_7*variable_voltage_imag_4*variable_voltage_real_7 + variable_transmission_switch_4_7*variable_voltage_imag_7*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_imag_rectangular_4_9 ;
nonlinear_constraint_voltage_product_imag_rectangular_4_9..
	(variable_voltage_product_imaginary_4_9) =e= (-variable_transmission_switch_4_9*variable_voltage_imag_4*variable_voltage_real_9 + variable_transmission_switch_4_9*variable_voltage_imag_9*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_imag_rectangular_5_6 ;
nonlinear_constraint_voltage_product_imag_rectangular_5_6..
	(variable_voltage_product_imaginary_5_6) =e= (-variable_transmission_switch_5_6*variable_voltage_imag_5*variable_voltage_real_6 + variable_transmission_switch_5_6*variable_voltage_imag_6*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_imag_rectangular_6_11 ;
nonlinear_constraint_voltage_product_imag_rectangular_6_11..
	(variable_voltage_product_imaginary_6_11) =e= (variable_transmission_switch_6_11*variable_voltage_imag_11*variable_voltage_real_6 - variable_transmission_switch_6_11*variable_voltage_imag_6*variable_voltage_real_11)
Equation nonlinear_constraint_voltage_product_imag_rectangular_6_12 ;
nonlinear_constraint_voltage_product_imag_rectangular_6_12..
	(variable_voltage_product_imaginary_6_12) =e= (variable_transmission_switch_6_12*variable_voltage_imag_12*variable_voltage_real_6 - variable_transmission_switch_6_12*variable_voltage_imag_6*variable_voltage_real_12)
Equation nonlinear_constraint_voltage_product_imag_rectangular_6_13 ;
nonlinear_constraint_voltage_product_imag_rectangular_6_13..
	(variable_voltage_product_imaginary_6_13) =e= (variable_transmission_switch_6_13*variable_voltage_imag_13*variable_voltage_real_6 - variable_transmission_switch_6_13*variable_voltage_imag_6*variable_voltage_real_13)
Equation nonlinear_constraint_voltage_product_imag_rectangular_7_8 ;
nonlinear_constraint_voltage_product_imag_rectangular_7_8..
	(variable_voltage_product_imaginary_7_8) =e= (-variable_transmission_switch_7_8*variable_voltage_imag_7*variable_voltage_real_8 + variable_transmission_switch_7_8*variable_voltage_imag_8*variable_voltage_real_7)
Equation nonlinear_constraint_voltage_product_imag_rectangular_7_9 ;
nonlinear_constraint_voltage_product_imag_rectangular_7_9..
	(variable_voltage_product_imaginary_7_9) =e= (-variable_transmission_switch_7_9*variable_voltage_imag_7*variable_voltage_real_9 + variable_transmission_switch_7_9*variable_voltage_imag_9*variable_voltage_real_7)
Equation nonlinear_constraint_voltage_product_imag_rectangular_9_10 ;
nonlinear_constraint_voltage_product_imag_rectangular_9_10..
	(variable_voltage_product_imaginary_9_10) =e= (variable_transmission_switch_9_10*variable_voltage_imag_10*variable_voltage_real_9 - variable_transmission_switch_9_10*variable_voltage_imag_9*variable_voltage_real_10)
Equation nonlinear_constraint_voltage_product_imag_rectangular_9_14 ;
nonlinear_constraint_voltage_product_imag_rectangular_9_14..
	(variable_voltage_product_imaginary_9_14) =e= (variable_transmission_switch_9_14*variable_voltage_imag_14*variable_voltage_real_9 - variable_transmission_switch_9_14*variable_voltage_imag_9*variable_voltage_real_14)
Equation nonlinear_constraint_voltage_product_imag_rectangular_10_11 ;
nonlinear_constraint_voltage_product_imag_rectangular_10_11..
	(variable_voltage_product_imaginary_10_11) =e= (-variable_transmission_switch_10_11*variable_voltage_imag_10*variable_voltage_real_11 + variable_transmission_switch_10_11*variable_voltage_imag_11*variable_voltage_real_10)
Equation nonlinear_constraint_voltage_product_imag_rectangular_12_13 ;
nonlinear_constraint_voltage_product_imag_rectangular_12_13..
	(variable_voltage_product_imaginary_12_13) =e= (-variable_transmission_switch_12_13*variable_voltage_imag_12*variable_voltage_real_13 + variable_transmission_switch_12_13*variable_voltage_imag_13*variable_voltage_real_12)
Equation nonlinear_constraint_voltage_product_imag_rectangular_13_14 ;
nonlinear_constraint_voltage_product_imag_rectangular_13_14..
	(variable_voltage_product_imaginary_13_14) =e= (-variable_transmission_switch_13_14*variable_voltage_imag_13*variable_voltage_real_14 + variable_transmission_switch_13_14*variable_voltage_imag_14*variable_voltage_real_13)
Equation linear_constraint_real_power_flow_equation_1_2 ;
linear_constraint_real_power_flow_equation_1_2..
	(variable_real_power_flow_1_2) =e= (4.99913160079803*variable_switched_voltage_square_1_2 - 15.2630865231795*variable_voltage_product_imaginary_1_2 - 4.99913160079803*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_1 ;
linear_constraint_real_power_flow_equation_2_1..
	(variable_real_power_flow_2_1) =e= (4.99913160079803*variable_switched_voltage_square_2_1 + 15.2630865231795*variable_voltage_product_imaginary_1_2 - 4.99913160079803*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_1_5 ;
linear_constraint_real_power_flow_equation_1_5..
	(variable_real_power_flow_1_5) =e= (1.02589745497019*variable_switched_voltage_square_1_5 - 4.23498368233483*variable_voltage_product_imaginary_1_5 - 1.02589745497019*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_5_1 ;
linear_constraint_real_power_flow_equation_5_1..
	(variable_real_power_flow_5_1) =e= (1.02589745497019*variable_switched_voltage_square_5_1 + 4.23498368233483*variable_voltage_product_imaginary_1_5 - 1.02589745497019*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_2_3 ;
linear_constraint_real_power_flow_equation_2_3..
	(variable_real_power_flow_2_3) =e= (1.1350191923074*variable_switched_voltage_square_2_3 - 4.78186315175772*variable_voltage_product_imaginary_2_3 - 1.1350191923074*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_3_2 ;
linear_constraint_real_power_flow_equation_3_2..
	(variable_real_power_flow_3_2) =e= (1.1350191923074*variable_switched_voltage_square_3_2 + 4.78186315175772*variable_voltage_product_imaginary_2_3 - 1.1350191923074*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_2_4 ;
linear_constraint_real_power_flow_equation_2_4..
	(variable_real_power_flow_2_4) =e= (1.68603315061494*variable_switched_voltage_square_2_4 - 5.11583832587208*variable_voltage_product_imaginary_2_4 - 1.68603315061494*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_4_2 ;
linear_constraint_real_power_flow_equation_4_2..
	(variable_real_power_flow_4_2) =e= (1.68603315061494*variable_switched_voltage_square_4_2 + 5.11583832587208*variable_voltage_product_imaginary_2_4 - 1.68603315061494*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_2_5 ;
linear_constraint_real_power_flow_equation_2_5..
	(variable_real_power_flow_2_5) =e= (1.7011396670944*variable_switched_voltage_square_2_5 - 5.19392739796971*variable_voltage_product_imaginary_2_5 - 1.7011396670944*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_5_2 ;
linear_constraint_real_power_flow_equation_5_2..
	(variable_real_power_flow_5_2) =e= (1.7011396670944*variable_switched_voltage_square_5_2 + 5.19392739796971*variable_voltage_product_imaginary_2_5 - 1.7011396670944*variable_voltage_product_real_2_5)
Equation linear_constraint_real_power_flow_equation_3_4 ;
linear_constraint_real_power_flow_equation_3_4..
	(variable_real_power_flow_3_4) =e= (1.98597570992556*variable_switched_voltage_square_3_4 - 5.06881697759392*variable_voltage_product_imaginary_3_4 - 1.98597570992556*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_3 ;
linear_constraint_real_power_flow_equation_4_3..
	(variable_real_power_flow_4_3) =e= (1.98597570992556*variable_switched_voltage_square_4_3 + 5.06881697759392*variable_voltage_product_imaginary_3_4 - 1.98597570992556*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_5 ;
linear_constraint_real_power_flow_equation_4_5..
	(variable_real_power_flow_4_5) =e= (6.84098066149567*variable_switched_voltage_square_4_5 - 21.5785539816916*variable_voltage_product_imaginary_4_5 - 6.84098066149567*variable_voltage_product_real_4_5)
Equation linear_constraint_real_power_flow_equation_5_4 ;
linear_constraint_real_power_flow_equation_5_4..
	(variable_real_power_flow_5_4) =e= (6.84098066149567*variable_switched_voltage_square_5_4 + 21.5785539816916*variable_voltage_product_imaginary_4_5 - 6.84098066149567*variable_voltage_product_real_4_5)
Equation linear_constraint_real_power_flow_equation_4_7 ;
linear_constraint_real_power_flow_equation_4_7..
	(variable_real_power_flow_4_7) =e= (-4.88951266031734*variable_voltage_product_imaginary_4_7)
Equation linear_constraint_real_power_flow_equation_7_4 ;
linear_constraint_real_power_flow_equation_7_4..
	(variable_real_power_flow_7_4) =e= (4.88951266031734*variable_voltage_product_imaginary_4_7)
Equation linear_constraint_real_power_flow_equation_4_9 ;
linear_constraint_real_power_flow_equation_4_9..
	(variable_real_power_flow_4_9) =e= (-1.8554995578159*variable_voltage_product_imaginary_4_9)
Equation linear_constraint_real_power_flow_equation_9_4 ;
linear_constraint_real_power_flow_equation_9_4..
	(variable_real_power_flow_9_4) =e= (1.8554995578159*variable_voltage_product_imaginary_4_9)
Equation linear_constraint_real_power_flow_equation_5_6 ;
linear_constraint_real_power_flow_equation_5_6..
	(variable_real_power_flow_5_6) =e= (-4.25744533525339*variable_voltage_product_imaginary_5_6)
Equation linear_constraint_real_power_flow_equation_6_5 ;
linear_constraint_real_power_flow_equation_6_5..
	(variable_real_power_flow_6_5) =e= (4.25744533525339*variable_voltage_product_imaginary_5_6)
Equation linear_constraint_real_power_flow_equation_6_11 ;
linear_constraint_real_power_flow_equation_6_11..
	(variable_real_power_flow_6_11) =e= (1.95502856317726*variable_switched_voltage_square_6_11 - 4.09407434424044*variable_voltage_product_imaginary_6_11 - 1.95502856317726*variable_voltage_product_real_6_11)
Equation linear_constraint_real_power_flow_equation_11_6 ;
linear_constraint_real_power_flow_equation_11_6..
	(variable_real_power_flow_11_6) =e= (1.95502856317726*variable_switched_voltage_square_11_6 + 4.09407434424044*variable_voltage_product_imaginary_6_11 - 1.95502856317726*variable_voltage_product_real_6_11)
Equation linear_constraint_real_power_flow_equation_6_12 ;
linear_constraint_real_power_flow_equation_6_12..
	(variable_real_power_flow_6_12) =e= (1.52596744045097*variable_switched_voltage_square_6_12 - 3.1759639650294*variable_voltage_product_imaginary_6_12 - 1.52596744045097*variable_voltage_product_real_6_12)
Equation linear_constraint_real_power_flow_equation_12_6 ;
linear_constraint_real_power_flow_equation_12_6..
	(variable_real_power_flow_12_6) =e= (1.52596744045097*variable_switched_voltage_square_12_6 + 3.1759639650294*variable_voltage_product_imaginary_6_12 - 1.52596744045097*variable_voltage_product_real_6_12)
Equation linear_constraint_real_power_flow_equation_6_13 ;
linear_constraint_real_power_flow_equation_6_13..
	(variable_real_power_flow_6_13) =e= (3.09892740383799*variable_switched_voltage_square_6_13 - 6.10275544819311*variable_voltage_product_imaginary_6_13 - 3.09892740383799*variable_voltage_product_real_6_13)
Equation linear_constraint_real_power_flow_equation_13_6 ;
linear_constraint_real_power_flow_equation_13_6..
	(variable_real_power_flow_13_6) =e= (3.09892740383799*variable_switched_voltage_square_13_6 + 6.10275544819311*variable_voltage_product_imaginary_6_13 - 3.09892740383799*variable_voltage_product_real_6_13)
Equation linear_constraint_real_power_flow_equation_7_8 ;
linear_constraint_real_power_flow_equation_7_8..
	(variable_real_power_flow_7_8) =e= (-5.67697984672154*variable_voltage_product_imaginary_7_8)
Equation linear_constraint_real_power_flow_equation_8_7 ;
linear_constraint_real_power_flow_equation_8_7..
	(variable_real_power_flow_8_7) =e= (5.67697984672154*variable_voltage_product_imaginary_7_8)
Equation linear_constraint_real_power_flow_equation_7_9 ;
linear_constraint_real_power_flow_equation_7_9..
	(variable_real_power_flow_7_9) =e= (-9.09008271975275*variable_voltage_product_imaginary_7_9)
Equation linear_constraint_real_power_flow_equation_9_7 ;
linear_constraint_real_power_flow_equation_9_7..
	(variable_real_power_flow_9_7) =e= (9.09008271975275*variable_voltage_product_imaginary_7_9)
Equation linear_constraint_real_power_flow_equation_9_10 ;
linear_constraint_real_power_flow_equation_9_10..
	(variable_real_power_flow_9_10) =e= (3.90204955244743*variable_switched_voltage_square_9_10 - 10.3653941270609*variable_voltage_product_imaginary_9_10 - 3.90204955244743*variable_voltage_product_real_9_10)
Equation linear_constraint_real_power_flow_equation_10_9 ;
linear_constraint_real_power_flow_equation_10_9..
	(variable_real_power_flow_10_9) =e= (3.90204955244743*variable_switched_voltage_square_10_9 + 10.3653941270609*variable_voltage_product_imaginary_9_10 - 3.90204955244743*variable_voltage_product_real_9_10)
Equation linear_constraint_real_power_flow_equation_9_14 ;
linear_constraint_real_power_flow_equation_9_14..
	(variable_real_power_flow_9_14) =e= (1.42400548701993*variable_switched_voltage_square_9_14 - 3.0290504569306*variable_voltage_product_imaginary_9_14 - 1.42400548701993*variable_voltage_product_real_9_14)
Equation linear_constraint_real_power_flow_equation_14_9 ;
linear_constraint_real_power_flow_equation_14_9..
	(variable_real_power_flow_14_9) =e= (1.42400548701993*variable_switched_voltage_square_14_9 + 3.0290504569306*variable_voltage_product_imaginary_9_14 - 1.42400548701993*variable_voltage_product_real_9_14)
Equation linear_constraint_real_power_flow_equation_10_11 ;
linear_constraint_real_power_flow_equation_10_11..
	(variable_real_power_flow_10_11) =e= (1.8808847537004*variable_switched_voltage_square_10_11 - 4.40294374946052*variable_voltage_product_imaginary_10_11 - 1.8808847537004*variable_voltage_product_real_10_11)
Equation linear_constraint_real_power_flow_equation_11_10 ;
linear_constraint_real_power_flow_equation_11_10..
	(variable_real_power_flow_11_10) =e= (1.8808847537004*variable_switched_voltage_square_11_10 + 4.40294374946052*variable_voltage_product_imaginary_10_11 - 1.8808847537004*variable_voltage_product_real_10_11)
Equation linear_constraint_real_power_flow_equation_12_13 ;
linear_constraint_real_power_flow_equation_12_13..
	(variable_real_power_flow_12_13) =e= (2.48902458682192*variable_switched_voltage_square_12_13 - 2.25197462617221*variable_voltage_product_imaginary_12_13 - 2.48902458682192*variable_voltage_product_real_12_13)
Equation linear_constraint_real_power_flow_equation_13_12 ;
linear_constraint_real_power_flow_equation_13_12..
	(variable_real_power_flow_13_12) =e= (2.48902458682192*variable_switched_voltage_square_13_12 + 2.25197462617221*variable_voltage_product_imaginary_12_13 - 2.48902458682192*variable_voltage_product_real_12_13)
Equation linear_constraint_real_power_flow_equation_13_14 ;
linear_constraint_real_power_flow_equation_13_14..
	(variable_real_power_flow_13_14) =e= (1.13699415780633*variable_switched_voltage_square_13_14 - 2.31496347510535*variable_voltage_product_imaginary_13_14 - 1.13699415780633*variable_voltage_product_real_13_14)
Equation linear_constraint_real_power_flow_equation_14_13 ;
linear_constraint_real_power_flow_equation_14_13..
	(variable_real_power_flow_14_13) =e= (1.13699415780633*variable_switched_voltage_square_14_13 + 2.31496347510535*variable_voltage_product_imaginary_13_14 - 1.13699415780633*variable_voltage_product_real_13_14)
Equation linear_constraint_reactive_power_flow_equation_1_2 ;
linear_constraint_reactive_power_flow_equation_1_2..
	(variable_reactive_power_flow_1_2) =e= (15.2366865231795*variable_switched_voltage_square_1_2 + 4.99913160079803*variable_voltage_product_imaginary_1_2 - 15.2630865231795*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_1 ;
linear_constraint_reactive_power_flow_equation_2_1..
	(variable_reactive_power_flow_2_1) =e= (15.2366865231795*variable_switched_voltage_square_2_1 - 4.99913160079803*variable_voltage_product_imaginary_1_2 - 15.2630865231795*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_1_5 ;
linear_constraint_reactive_power_flow_equation_1_5..
	(variable_reactive_power_flow_1_5) =e= (4.21038368233483*variable_switched_voltage_square_1_5 + 1.02589745497019*variable_voltage_product_imaginary_1_5 - 4.23498368233483*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_5_1 ;
linear_constraint_reactive_power_flow_equation_5_1..
	(variable_reactive_power_flow_5_1) =e= (4.21038368233483*variable_switched_voltage_square_5_1 - 1.02589745497019*variable_voltage_product_imaginary_1_5 - 4.23498368233483*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_2_3 ;
linear_constraint_reactive_power_flow_equation_2_3..
	(variable_reactive_power_flow_2_3) =e= (4.75996315175772*variable_switched_voltage_square_2_3 + 1.1350191923074*variable_voltage_product_imaginary_2_3 - 4.78186315175772*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_3_2 ;
linear_constraint_reactive_power_flow_equation_3_2..
	(variable_reactive_power_flow_3_2) =e= (4.75996315175772*variable_switched_voltage_square_3_2 - 1.1350191923074*variable_voltage_product_imaginary_2_3 - 4.78186315175772*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_2_4 ;
linear_constraint_reactive_power_flow_equation_2_4..
	(variable_reactive_power_flow_2_4) =e= (5.09883832587208*variable_switched_voltage_square_2_4 + 1.68603315061494*variable_voltage_product_imaginary_2_4 - 5.11583832587208*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_4_2 ;
linear_constraint_reactive_power_flow_equation_4_2..
	(variable_reactive_power_flow_4_2) =e= (5.09883832587208*variable_switched_voltage_square_4_2 - 1.68603315061494*variable_voltage_product_imaginary_2_4 - 5.11583832587208*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_2_5 ;
linear_constraint_reactive_power_flow_equation_2_5..
	(variable_reactive_power_flow_2_5) =e= (5.17662739796971*variable_switched_voltage_square_2_5 + 1.7011396670944*variable_voltage_product_imaginary_2_5 - 5.19392739796971*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_5_2 ;
linear_constraint_reactive_power_flow_equation_5_2..
	(variable_reactive_power_flow_5_2) =e= (5.17662739796971*variable_switched_voltage_square_5_2 - 1.7011396670944*variable_voltage_product_imaginary_2_5 - 5.19392739796971*variable_voltage_product_real_2_5)
Equation linear_constraint_reactive_power_flow_equation_3_4 ;
linear_constraint_reactive_power_flow_equation_3_4..
	(variable_reactive_power_flow_3_4) =e= (5.06241697759392*variable_switched_voltage_square_3_4 + 1.98597570992556*variable_voltage_product_imaginary_3_4 - 5.06881697759392*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_3 ;
linear_constraint_reactive_power_flow_equation_4_3..
	(variable_reactive_power_flow_4_3) =e= (5.06241697759392*variable_switched_voltage_square_4_3 - 1.98597570992556*variable_voltage_product_imaginary_3_4 - 5.06881697759392*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_5 ;
linear_constraint_reactive_power_flow_equation_4_5..
	(variable_reactive_power_flow_4_5) =e= (21.5785539816916*variable_switched_voltage_square_4_5 + 6.84098066149567*variable_voltage_product_imaginary_4_5 - 21.5785539816916*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_5_4 ;
linear_constraint_reactive_power_flow_equation_5_4..
	(variable_reactive_power_flow_5_4) =e= (21.5785539816916*variable_switched_voltage_square_5_4 - 6.84098066149567*variable_voltage_product_imaginary_4_5 - 21.5785539816916*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_4_7 ;
linear_constraint_reactive_power_flow_equation_4_7..
	(variable_reactive_power_flow_4_7) =e= (4.99950169766599*variable_switched_voltage_square_4_7 - 4.88951266031734*variable_voltage_product_real_4_7)
Equation linear_constraint_reactive_power_flow_equation_7_4 ;
linear_constraint_reactive_power_flow_equation_7_4..
	(variable_reactive_power_flow_7_4) =e= (4.78194338179036*variable_switched_voltage_square_7_4 - 4.88951266031734*variable_voltage_product_real_4_7)
Equation linear_constraint_reactive_power_flow_equation_4_9 ;
linear_constraint_reactive_power_flow_equation_4_9..
	(variable_reactive_power_flow_4_9) =e= (1.91486022478421*variable_switched_voltage_square_4_9 - 1.8554995578159*variable_voltage_product_real_4_9)
Equation linear_constraint_reactive_power_flow_equation_9_4 ;
linear_constraint_reactive_power_flow_equation_9_4..
	(variable_reactive_power_flow_9_4) =e= (1.79797907152361*variable_switched_voltage_square_9_4 - 1.8554995578159*variable_voltage_product_real_4_9)
Equation linear_constraint_reactive_power_flow_equation_5_6 ;
linear_constraint_reactive_power_flow_equation_5_6..
	(variable_reactive_power_flow_5_6) =e= (4.5680743940487*variable_switched_voltage_square_5_6 - 4.25744533525339*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_6_5 ;
linear_constraint_reactive_power_flow_equation_6_5..
	(variable_reactive_power_flow_6_5) =e= (3.96793905245616*variable_switched_voltage_square_6_5 - 4.25744533525339*variable_voltage_product_real_5_6)
Equation linear_constraint_reactive_power_flow_equation_6_11 ;
linear_constraint_reactive_power_flow_equation_6_11..
	(variable_reactive_power_flow_6_11) =e= (4.09407434424044*variable_switched_voltage_square_6_11 + 1.95502856317726*variable_voltage_product_imaginary_6_11 - 4.09407434424044*variable_voltage_product_real_6_11)
Equation linear_constraint_reactive_power_flow_equation_11_6 ;
linear_constraint_reactive_power_flow_equation_11_6..
	(variable_reactive_power_flow_11_6) =e= (4.09407434424044*variable_switched_voltage_square_11_6 - 1.95502856317726*variable_voltage_product_imaginary_6_11 - 4.09407434424044*variable_voltage_product_real_6_11)
Equation linear_constraint_reactive_power_flow_equation_6_12 ;
linear_constraint_reactive_power_flow_equation_6_12..
	(variable_reactive_power_flow_6_12) =e= (3.1759639650294*variable_switched_voltage_square_6_12 + 1.52596744045097*variable_voltage_product_imaginary_6_12 - 3.1759639650294*variable_voltage_product_real_6_12)
Equation linear_constraint_reactive_power_flow_equation_12_6 ;
linear_constraint_reactive_power_flow_equation_12_6..
	(variable_reactive_power_flow_12_6) =e= (3.1759639650294*variable_switched_voltage_square_12_6 - 1.52596744045097*variable_voltage_product_imaginary_6_12 - 3.1759639650294*variable_voltage_product_real_6_12)
Equation linear_constraint_reactive_power_flow_equation_6_13 ;
linear_constraint_reactive_power_flow_equation_6_13..
	(variable_reactive_power_flow_6_13) =e= (6.10275544819311*variable_switched_voltage_square_6_13 + 3.09892740383799*variable_voltage_product_imaginary_6_13 - 6.10275544819311*variable_voltage_product_real_6_13)
Equation linear_constraint_reactive_power_flow_equation_13_6 ;
linear_constraint_reactive_power_flow_equation_13_6..
	(variable_reactive_power_flow_13_6) =e= (6.10275544819311*variable_switched_voltage_square_13_6 - 3.09892740383799*variable_voltage_product_imaginary_6_13 - 6.10275544819311*variable_voltage_product_real_6_13)
Equation linear_constraint_reactive_power_flow_equation_7_8 ;
linear_constraint_reactive_power_flow_equation_7_8..
	(variable_reactive_power_flow_7_8) =e= (5.67697984672154*variable_switched_voltage_square_7_8 - 5.67697984672154*variable_voltage_product_real_7_8)
Equation linear_constraint_reactive_power_flow_equation_8_7 ;
linear_constraint_reactive_power_flow_equation_8_7..
	(variable_reactive_power_flow_8_7) =e= (5.67697984672154*variable_switched_voltage_square_8_7 - 5.67697984672154*variable_voltage_product_real_7_8)
Equation linear_constraint_reactive_power_flow_equation_7_9 ;
linear_constraint_reactive_power_flow_equation_7_9..
	(variable_reactive_power_flow_7_9) =e= (9.09008271975275*variable_switched_voltage_square_7_9 - 9.09008271975275*variable_voltage_product_real_7_9)
Equation linear_constraint_reactive_power_flow_equation_9_7 ;
linear_constraint_reactive_power_flow_equation_9_7..
	(variable_reactive_power_flow_9_7) =e= (9.09008271975275*variable_switched_voltage_square_9_7 - 9.09008271975275*variable_voltage_product_real_7_9)
Equation linear_constraint_reactive_power_flow_equation_9_10 ;
linear_constraint_reactive_power_flow_equation_9_10..
	(variable_reactive_power_flow_9_10) =e= (10.3653941270609*variable_switched_voltage_square_9_10 + 3.90204955244743*variable_voltage_product_imaginary_9_10 - 10.3653941270609*variable_voltage_product_real_9_10)
Equation linear_constraint_reactive_power_flow_equation_10_9 ;
linear_constraint_reactive_power_flow_equation_10_9..
	(variable_reactive_power_flow_10_9) =e= (10.3653941270609*variable_switched_voltage_square_10_9 - 3.90204955244743*variable_voltage_product_imaginary_9_10 - 10.3653941270609*variable_voltage_product_real_9_10)
Equation linear_constraint_reactive_power_flow_equation_9_14 ;
linear_constraint_reactive_power_flow_equation_9_14..
	(variable_reactive_power_flow_9_14) =e= (3.0290504569306*variable_switched_voltage_square_9_14 + 1.42400548701993*variable_voltage_product_imaginary_9_14 - 3.0290504569306*variable_voltage_product_real_9_14)
Equation linear_constraint_reactive_power_flow_equation_14_9 ;
linear_constraint_reactive_power_flow_equation_14_9..
	(variable_reactive_power_flow_14_9) =e= (3.0290504569306*variable_switched_voltage_square_14_9 - 1.42400548701993*variable_voltage_product_imaginary_9_14 - 3.0290504569306*variable_voltage_product_real_9_14)
Equation linear_constraint_reactive_power_flow_equation_10_11 ;
linear_constraint_reactive_power_flow_equation_10_11..
	(variable_reactive_power_flow_10_11) =e= (4.40294374946052*variable_switched_voltage_square_10_11 + 1.8808847537004*variable_voltage_product_imaginary_10_11 - 4.40294374946052*variable_voltage_product_real_10_11)
Equation linear_constraint_reactive_power_flow_equation_11_10 ;
linear_constraint_reactive_power_flow_equation_11_10..
	(variable_reactive_power_flow_11_10) =e= (4.40294374946052*variable_switched_voltage_square_11_10 - 1.8808847537004*variable_voltage_product_imaginary_10_11 - 4.40294374946052*variable_voltage_product_real_10_11)
Equation linear_constraint_reactive_power_flow_equation_12_13 ;
linear_constraint_reactive_power_flow_equation_12_13..
	(variable_reactive_power_flow_12_13) =e= (2.25197462617221*variable_switched_voltage_square_12_13 + 2.48902458682192*variable_voltage_product_imaginary_12_13 - 2.25197462617221*variable_voltage_product_real_12_13)
Equation linear_constraint_reactive_power_flow_equation_13_12 ;
linear_constraint_reactive_power_flow_equation_13_12..
	(variable_reactive_power_flow_13_12) =e= (2.25197462617221*variable_switched_voltage_square_13_12 - 2.48902458682192*variable_voltage_product_imaginary_12_13 - 2.25197462617221*variable_voltage_product_real_12_13)
Equation linear_constraint_reactive_power_flow_equation_13_14 ;
linear_constraint_reactive_power_flow_equation_13_14..
	(variable_reactive_power_flow_13_14) =e= (2.31496347510535*variable_switched_voltage_square_13_14 + 1.13699415780633*variable_voltage_product_imaginary_13_14 - 2.31496347510535*variable_voltage_product_real_13_14)
Equation linear_constraint_reactive_power_flow_equation_14_13 ;
linear_constraint_reactive_power_flow_equation_14_13..
	(variable_reactive_power_flow_14_13) =e= (2.31496347510535*variable_switched_voltage_square_14_13 - 1.13699415780633*variable_voltage_product_imaginary_13_14 - 2.31496347510535*variable_voltage_product_real_13_14)
Equation nonlinear_constraint_thermal_limit_1_2 ;
nonlinear_constraint_thermal_limit_1_2..
	power(variable_reactive_power_flow_1_2,2) + power(variable_real_power_flow_1_2,2) =l= 22.2784
Equation nonlinear_constraint_thermal_limit_2_1 ;
nonlinear_constraint_thermal_limit_2_1..
	power(variable_reactive_power_flow_2_1,2) + power(variable_real_power_flow_2_1,2) =l= 22.2784
Equation nonlinear_constraint_thermal_limit_1_5 ;
nonlinear_constraint_thermal_limit_1_5..
	power(variable_reactive_power_flow_1_5,2) + power(variable_real_power_flow_1_5,2) =l= 1.6384
Equation nonlinear_constraint_thermal_limit_5_1 ;
nonlinear_constraint_thermal_limit_5_1..
	power(variable_reactive_power_flow_5_1,2) + power(variable_real_power_flow_5_1,2) =l= 1.6384
Equation nonlinear_constraint_thermal_limit_2_3 ;
nonlinear_constraint_thermal_limit_2_3..
	power(variable_reactive_power_flow_2_3,2) + power(variable_real_power_flow_2_3,2) =l= 2.1025
Equation nonlinear_constraint_thermal_limit_3_2 ;
nonlinear_constraint_thermal_limit_3_2..
	power(variable_reactive_power_flow_3_2,2) + power(variable_real_power_flow_3_2,2) =l= 2.1025
Equation nonlinear_constraint_thermal_limit_2_4 ;
nonlinear_constraint_thermal_limit_2_4..
	power(variable_reactive_power_flow_2_4,2) + power(variable_real_power_flow_2_4,2) =l= 2.4964
Equation nonlinear_constraint_thermal_limit_4_2 ;
nonlinear_constraint_thermal_limit_4_2..
	power(variable_reactive_power_flow_4_2,2) + power(variable_real_power_flow_4_2,2) =l= 2.4964
Equation nonlinear_constraint_thermal_limit_2_5 ;
nonlinear_constraint_thermal_limit_2_5..
	power(variable_reactive_power_flow_2_5,2) + power(variable_real_power_flow_2_5,2) =l= 2.5921
Equation nonlinear_constraint_thermal_limit_5_2 ;
nonlinear_constraint_thermal_limit_5_2..
	power(variable_reactive_power_flow_5_2,2) + power(variable_real_power_flow_5_2,2) =l= 2.5921
Equation nonlinear_constraint_thermal_limit_3_4 ;
nonlinear_constraint_thermal_limit_3_4..
	power(variable_reactive_power_flow_3_4,2) + power(variable_real_power_flow_3_4,2) =l= 2.56
Equation nonlinear_constraint_thermal_limit_4_3 ;
nonlinear_constraint_thermal_limit_4_3..
	power(variable_reactive_power_flow_4_3,2) + power(variable_real_power_flow_4_3,2) =l= 2.56
Equation nonlinear_constraint_thermal_limit_4_5 ;
nonlinear_constraint_thermal_limit_4_5..
	power(variable_reactive_power_flow_4_5,2) + power(variable_real_power_flow_4_5,2) =l= 44.0896
Equation nonlinear_constraint_thermal_limit_5_4 ;
nonlinear_constraint_thermal_limit_5_4..
	power(variable_reactive_power_flow_5_4,2) + power(variable_real_power_flow_5_4,2) =l= 44.0896
Equation nonlinear_constraint_thermal_limit_4_7 ;
nonlinear_constraint_thermal_limit_4_7..
	power(variable_reactive_power_flow_4_7,2) + power(variable_real_power_flow_4_7,2) =l= 1.9881
Equation nonlinear_constraint_thermal_limit_7_4 ;
nonlinear_constraint_thermal_limit_7_4..
	power(variable_reactive_power_flow_7_4,2) + power(variable_real_power_flow_7_4,2) =l= 1.9881
Equation nonlinear_constraint_thermal_limit_4_9 ;
nonlinear_constraint_thermal_limit_4_9..
	power(variable_reactive_power_flow_4_9,2) + power(variable_real_power_flow_4_9,2) =l= 0.2809
Equation nonlinear_constraint_thermal_limit_9_4 ;
nonlinear_constraint_thermal_limit_9_4..
	power(variable_reactive_power_flow_9_4,2) + power(variable_real_power_flow_9_4,2) =l= 0.2809
Equation nonlinear_constraint_thermal_limit_5_6 ;
nonlinear_constraint_thermal_limit_5_6..
	power(variable_reactive_power_flow_5_6,2) + power(variable_real_power_flow_5_6,2) =l= 1.3689
Equation nonlinear_constraint_thermal_limit_6_5 ;
nonlinear_constraint_thermal_limit_6_5..
	power(variable_reactive_power_flow_6_5,2) + power(variable_real_power_flow_6_5,2) =l= 1.3689
Equation nonlinear_constraint_thermal_limit_6_11 ;
nonlinear_constraint_thermal_limit_6_11..
	power(variable_reactive_power_flow_6_11,2) + power(variable_real_power_flow_6_11,2) =l= 1.7956
Equation nonlinear_constraint_thermal_limit_11_6 ;
nonlinear_constraint_thermal_limit_11_6..
	power(variable_reactive_power_flow_11_6,2) + power(variable_real_power_flow_11_6,2) =l= 1.7956
Equation nonlinear_constraint_thermal_limit_6_12 ;
nonlinear_constraint_thermal_limit_6_12..
	power(variable_reactive_power_flow_6_12,2) + power(variable_real_power_flow_6_12,2) =l= 1.0816
Equation nonlinear_constraint_thermal_limit_12_6 ;
nonlinear_constraint_thermal_limit_12_6..
	power(variable_reactive_power_flow_12_6,2) + power(variable_real_power_flow_12_6,2) =l= 1.0816
Equation nonlinear_constraint_thermal_limit_6_13 ;
nonlinear_constraint_thermal_limit_6_13..
	power(variable_reactive_power_flow_6_13,2) + power(variable_real_power_flow_6_13,2) =l= 4.0401
Equation nonlinear_constraint_thermal_limit_13_6 ;
nonlinear_constraint_thermal_limit_13_6..
	power(variable_reactive_power_flow_13_6,2) + power(variable_real_power_flow_13_6,2) =l= 4.0401
Equation nonlinear_constraint_thermal_limit_7_8 ;
nonlinear_constraint_thermal_limit_7_8..
	power(variable_reactive_power_flow_7_8,2) + power(variable_real_power_flow_7_8,2) =l= 2.7889
Equation nonlinear_constraint_thermal_limit_8_7 ;
nonlinear_constraint_thermal_limit_8_7..
	power(variable_reactive_power_flow_8_7,2) + power(variable_real_power_flow_8_7,2) =l= 2.7889
Equation nonlinear_constraint_thermal_limit_7_9 ;
nonlinear_constraint_thermal_limit_7_9..
	power(variable_reactive_power_flow_7_9,2) + power(variable_real_power_flow_7_9,2) =l= 7.1289
Equation nonlinear_constraint_thermal_limit_9_7 ;
nonlinear_constraint_thermal_limit_9_7..
	power(variable_reactive_power_flow_9_7,2) + power(variable_real_power_flow_9_7,2) =l= 7.1289
Equation nonlinear_constraint_thermal_limit_9_10 ;
nonlinear_constraint_thermal_limit_9_10..
	power(variable_reactive_power_flow_9_10,2) + power(variable_real_power_flow_9_10,2) =l= 10.5625
Equation nonlinear_constraint_thermal_limit_10_9 ;
nonlinear_constraint_thermal_limit_10_9..
	power(variable_reactive_power_flow_10_9,2) + power(variable_real_power_flow_10_9,2) =l= 10.5625
Equation nonlinear_constraint_thermal_limit_9_14 ;
nonlinear_constraint_thermal_limit_9_14..
	power(variable_reactive_power_flow_9_14,2) + power(variable_real_power_flow_9_14,2) =l= 0.9801
Equation nonlinear_constraint_thermal_limit_14_9 ;
nonlinear_constraint_thermal_limit_14_9..
	power(variable_reactive_power_flow_14_9,2) + power(variable_real_power_flow_14_9,2) =l= 0.9801
Equation nonlinear_constraint_thermal_limit_10_11 ;
nonlinear_constraint_thermal_limit_10_11..
	power(variable_reactive_power_flow_10_11,2) + power(variable_real_power_flow_10_11,2) =l= 1.9881
Equation nonlinear_constraint_thermal_limit_11_10 ;
nonlinear_constraint_thermal_limit_11_10..
	power(variable_reactive_power_flow_11_10,2) + power(variable_real_power_flow_11_10,2) =l= 1.9881
Equation nonlinear_constraint_thermal_limit_12_13 ;
nonlinear_constraint_thermal_limit_12_13..
	power(variable_reactive_power_flow_12_13,2) + power(variable_real_power_flow_12_13,2) =l= 0.9801
Equation nonlinear_constraint_thermal_limit_13_12 ;
nonlinear_constraint_thermal_limit_13_12..
	power(variable_reactive_power_flow_13_12,2) + power(variable_real_power_flow_13_12,2) =l= 0.9801
Equation nonlinear_constraint_thermal_limit_13_14 ;
nonlinear_constraint_thermal_limit_13_14..
	power(variable_reactive_power_flow_13_14,2) + power(variable_real_power_flow_13_14,2) =l= 0.5776
Equation nonlinear_constraint_thermal_limit_14_13 ;
nonlinear_constraint_thermal_limit_14_13..
	power(variable_reactive_power_flow_14_13,2) + power(variable_real_power_flow_14_13,2) =l= 0.5776
Equation linear_constraint_reference_rectangular_1 ;
linear_constraint_reference_rectangular_1..
	(variable_voltage_real_1) =e= (0)
Equation linear_constraint_tan_bound_lower_1_2 ;
linear_constraint_tan_bound_lower_1_2..
	variable_voltage_product_imaginary_1_2 - 0.577351901726381*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_lower_1_5 ;
linear_constraint_tan_bound_lower_1_5..
	variable_voltage_product_imaginary_1_5 - 0.577351901726381*variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_tan_bound_lower_2_3 ;
linear_constraint_tan_bound_lower_2_3..
	variable_voltage_product_imaginary_2_3 - 0.577351901726381*variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_tan_bound_lower_2_4 ;
linear_constraint_tan_bound_lower_2_4..
	variable_voltage_product_imaginary_2_4 - 0.577351901726381*variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_tan_bound_lower_2_5 ;
linear_constraint_tan_bound_lower_2_5..
	variable_voltage_product_imaginary_2_5 - 0.577351901726381*variable_voltage_product_real_2_5 =l= 0
Equation linear_constraint_tan_bound_lower_3_4 ;
linear_constraint_tan_bound_lower_3_4..
	variable_voltage_product_imaginary_3_4 - 0.577351901726381*variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_tan_bound_lower_4_5 ;
linear_constraint_tan_bound_lower_4_5..
	variable_voltage_product_imaginary_4_5 - 0.577351901726381*variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_tan_bound_lower_4_7 ;
linear_constraint_tan_bound_lower_4_7..
	variable_voltage_product_imaginary_4_7 - 0.577351901726381*variable_voltage_product_real_4_7 =l= 0
Equation linear_constraint_tan_bound_lower_4_9 ;
linear_constraint_tan_bound_lower_4_9..
	variable_voltage_product_imaginary_4_9 - 0.577351901726381*variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_tan_bound_lower_5_6 ;
linear_constraint_tan_bound_lower_5_6..
	variable_voltage_product_imaginary_5_6 - 0.577351901726381*variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_tan_bound_lower_6_11 ;
linear_constraint_tan_bound_lower_6_11..
	variable_voltage_product_imaginary_6_11 - 0.577351901726381*variable_voltage_product_real_6_11 =l= 0
Equation linear_constraint_tan_bound_lower_6_12 ;
linear_constraint_tan_bound_lower_6_12..
	variable_voltage_product_imaginary_6_12 - 0.577351901726381*variable_voltage_product_real_6_12 =l= 0
Equation linear_constraint_tan_bound_lower_6_13 ;
linear_constraint_tan_bound_lower_6_13..
	variable_voltage_product_imaginary_6_13 - 0.577351901726381*variable_voltage_product_real_6_13 =l= 0
Equation linear_constraint_tan_bound_lower_7_8 ;
linear_constraint_tan_bound_lower_7_8..
	variable_voltage_product_imaginary_7_8 - 0.577351901726381*variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_tan_bound_lower_7_9 ;
linear_constraint_tan_bound_lower_7_9..
	variable_voltage_product_imaginary_7_9 - 0.577351901726381*variable_voltage_product_real_7_9 =l= 0
Equation linear_constraint_tan_bound_lower_9_10 ;
linear_constraint_tan_bound_lower_9_10..
	variable_voltage_product_imaginary_9_10 - 0.577351901726381*variable_voltage_product_real_9_10 =l= 0
Equation linear_constraint_tan_bound_lower_9_14 ;
linear_constraint_tan_bound_lower_9_14..
	variable_voltage_product_imaginary_9_14 - 0.577351901726381*variable_voltage_product_real_9_14 =l= 0
Equation linear_constraint_tan_bound_lower_10_11 ;
linear_constraint_tan_bound_lower_10_11..
	variable_voltage_product_imaginary_10_11 - 0.577351901726381*variable_voltage_product_real_10_11 =l= 0
Equation linear_constraint_tan_bound_lower_12_13 ;
linear_constraint_tan_bound_lower_12_13..
	variable_voltage_product_imaginary_12_13 - 0.577351901726381*variable_voltage_product_real_12_13 =l= 0
Equation linear_constraint_tan_bound_lower_13_14 ;
linear_constraint_tan_bound_lower_13_14..
	variable_voltage_product_imaginary_13_14 - 0.577351901726381*variable_voltage_product_real_13_14 =l= 0
Equation linear_constraint_tan_bound_upper_1_2 ;
linear_constraint_tan_bound_upper_1_2..
	-variable_voltage_product_imaginary_1_2 - 0.577351901726381*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_upper_1_5 ;
linear_constraint_tan_bound_upper_1_5..
	-variable_voltage_product_imaginary_1_5 - 0.577351901726381*variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_tan_bound_upper_2_3 ;
linear_constraint_tan_bound_upper_2_3..
	-variable_voltage_product_imaginary_2_3 - 0.577351901726381*variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_tan_bound_upper_2_4 ;
linear_constraint_tan_bound_upper_2_4..
	-variable_voltage_product_imaginary_2_4 - 0.577351901726381*variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_tan_bound_upper_2_5 ;
linear_constraint_tan_bound_upper_2_5..
	-variable_voltage_product_imaginary_2_5 - 0.577351901726381*variable_voltage_product_real_2_5 =l= 0
Equation linear_constraint_tan_bound_upper_3_4 ;
linear_constraint_tan_bound_upper_3_4..
	-variable_voltage_product_imaginary_3_4 - 0.577351901726381*variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_tan_bound_upper_4_5 ;
linear_constraint_tan_bound_upper_4_5..
	-variable_voltage_product_imaginary_4_5 - 0.577351901726381*variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_tan_bound_upper_4_7 ;
linear_constraint_tan_bound_upper_4_7..
	-variable_voltage_product_imaginary_4_7 - 0.577351901726381*variable_voltage_product_real_4_7 =l= 0
Equation linear_constraint_tan_bound_upper_4_9 ;
linear_constraint_tan_bound_upper_4_9..
	-variable_voltage_product_imaginary_4_9 - 0.577351901726381*variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_tan_bound_upper_5_6 ;
linear_constraint_tan_bound_upper_5_6..
	-variable_voltage_product_imaginary_5_6 - 0.577351901726381*variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_tan_bound_upper_6_11 ;
linear_constraint_tan_bound_upper_6_11..
	-variable_voltage_product_imaginary_6_11 - 0.577351901726381*variable_voltage_product_real_6_11 =l= 0
Equation linear_constraint_tan_bound_upper_6_12 ;
linear_constraint_tan_bound_upper_6_12..
	-variable_voltage_product_imaginary_6_12 - 0.577351901726381*variable_voltage_product_real_6_12 =l= 0
Equation linear_constraint_tan_bound_upper_6_13 ;
linear_constraint_tan_bound_upper_6_13..
	-variable_voltage_product_imaginary_6_13 - 0.577351901726381*variable_voltage_product_real_6_13 =l= 0
Equation linear_constraint_tan_bound_upper_7_8 ;
linear_constraint_tan_bound_upper_7_8..
	-variable_voltage_product_imaginary_7_8 - 0.577351901726381*variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_tan_bound_upper_7_9 ;
linear_constraint_tan_bound_upper_7_9..
	-variable_voltage_product_imaginary_7_9 - 0.577351901726381*variable_voltage_product_real_7_9 =l= 0
Equation linear_constraint_tan_bound_upper_9_10 ;
linear_constraint_tan_bound_upper_9_10..
	-variable_voltage_product_imaginary_9_10 - 0.577351901726381*variable_voltage_product_real_9_10 =l= 0
Equation linear_constraint_tan_bound_upper_9_14 ;
linear_constraint_tan_bound_upper_9_14..
	-variable_voltage_product_imaginary_9_14 - 0.577351901726381*variable_voltage_product_real_9_14 =l= 0
Equation linear_constraint_tan_bound_upper_10_11 ;
linear_constraint_tan_bound_upper_10_11..
	-variable_voltage_product_imaginary_10_11 - 0.577351901726381*variable_voltage_product_real_10_11 =l= 0
Equation linear_constraint_tan_bound_upper_12_13 ;
linear_constraint_tan_bound_upper_12_13..
	-variable_voltage_product_imaginary_12_13 - 0.577351901726381*variable_voltage_product_real_12_13 =l= 0
Equation linear_constraint_tan_bound_upper_13_14 ;
linear_constraint_tan_bound_upper_13_14..
	-variable_voltage_product_imaginary_13_14 - 0.577351901726381*variable_voltage_product_real_13_14 =l= 0
Equation linear_constraint_generator_switch_lower_1 ;
linear_constraint_generator_switch_lower_1..
	1.084*variable_generator_switch_1 - variable_real_power_gen_1 =l= 0
Equation linear_constraint_generator_switch_lower_2 ;
linear_constraint_generator_switch_lower_2..
	0.38*variable_generator_switch_2 - variable_real_power_gen_2 =l= 0
Equation linear_constraint_generator_switch_lower_3 ;
linear_constraint_generator_switch_lower_3..
	-variable_real_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_lower_6 ;
linear_constraint_generator_switch_lower_6..
	-variable_real_power_gen_6 =l= 0
Equation linear_constraint_generator_switch_lower_8 ;
linear_constraint_generator_switch_lower_8..
	-variable_real_power_gen_8 =l= 0
Equation linear_constraint_generator_switch_upper_1 ;
linear_constraint_generator_switch_upper_1..
	5.42*variable_generator_switch_1 - variable_real_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_upper_2 ;
linear_constraint_generator_switch_upper_2..
	1.9*variable_generator_switch_2 - variable_real_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_upper_3 ;
linear_constraint_generator_switch_upper_3..
	-variable_real_power_gen_3 =g= 0
Equation linear_constraint_generator_switch_upper_6 ;
linear_constraint_generator_switch_upper_6..
	-variable_real_power_gen_6 =g= 0
Equation linear_constraint_generator_switch_upper_8 ;
linear_constraint_generator_switch_upper_8..
	-variable_real_power_gen_8 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1 ;
linear_constraint_generator_switch__reactive_lower_1..
	-2.71*variable_generator_switch_1 - variable_reactive_power_gen_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2 ;
linear_constraint_generator_switch__reactive_lower_2..
	-0.95*variable_generator_switch_2 - variable_reactive_power_gen_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_3 ;
linear_constraint_generator_switch__reactive_lower_3..
	-0.72*variable_generator_switch_3 - variable_reactive_power_gen_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_6 ;
linear_constraint_generator_switch__reactive_lower_6..
	-0.564*variable_generator_switch_6 - variable_reactive_power_gen_6 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_8 ;
linear_constraint_generator_switch__reactive_lower_8..
	-0.3*variable_generator_switch_8 - variable_reactive_power_gen_8 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1 ;
linear_constraint_generator_switch_reactive_upper_1..
	2.71*variable_generator_switch_1 - variable_reactive_power_gen_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2 ;
linear_constraint_generator_switch_reactive_upper_2..
	0.95*variable_generator_switch_2 - variable_reactive_power_gen_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_3 ;
linear_constraint_generator_switch_reactive_upper_3..
	0.72*variable_generator_switch_3 - variable_reactive_power_gen_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_6 ;
linear_constraint_generator_switch_reactive_upper_6..
	0.564*variable_generator_switch_6 - variable_reactive_power_gen_6 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_8 ;
linear_constraint_generator_switch_reactive_upper_8..
	0.3*variable_generator_switch_8 - variable_reactive_power_gen_8 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_5 ;
linear_constraint_voltage_product_real_lower_1_5..
	-variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_3 ;
linear_constraint_voltage_product_real_lower_2_3..
	-variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_4 ;
linear_constraint_voltage_product_real_lower_2_4..
	-variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_5 ;
linear_constraint_voltage_product_real_lower_2_5..
	-variable_voltage_product_real_2_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_4 ;
linear_constraint_voltage_product_real_lower_3_4..
	-variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_5 ;
linear_constraint_voltage_product_real_lower_4_5..
	-variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_7 ;
linear_constraint_voltage_product_real_lower_4_7..
	-variable_voltage_product_real_4_7 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_9 ;
linear_constraint_voltage_product_real_lower_4_9..
	-variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_voltage_product_real_lower_5_6 ;
linear_constraint_voltage_product_real_lower_5_6..
	-variable_voltage_product_real_5_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_11 ;
linear_constraint_voltage_product_real_lower_6_11..
	-variable_voltage_product_real_6_11 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_12 ;
linear_constraint_voltage_product_real_lower_6_12..
	-variable_voltage_product_real_6_12 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_13 ;
linear_constraint_voltage_product_real_lower_6_13..
	-variable_voltage_product_real_6_13 =l= 0
Equation linear_constraint_voltage_product_real_lower_7_8 ;
linear_constraint_voltage_product_real_lower_7_8..
	-variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_voltage_product_real_lower_7_9 ;
linear_constraint_voltage_product_real_lower_7_9..
	-variable_voltage_product_real_7_9 =l= 0
Equation linear_constraint_voltage_product_real_lower_9_10 ;
linear_constraint_voltage_product_real_lower_9_10..
	-variable_voltage_product_real_9_10 =l= 0
Equation linear_constraint_voltage_product_real_lower_9_14 ;
linear_constraint_voltage_product_real_lower_9_14..
	-variable_voltage_product_real_9_14 =l= 0
Equation linear_constraint_voltage_product_real_lower_10_11 ;
linear_constraint_voltage_product_real_lower_10_11..
	-variable_voltage_product_real_10_11 =l= 0
Equation linear_constraint_voltage_product_real_lower_12_13 ;
linear_constraint_voltage_product_real_lower_12_13..
	-variable_voltage_product_real_12_13 =l= 0
Equation linear_constraint_voltage_product_real_lower_13_14 ;
linear_constraint_voltage_product_real_lower_13_14..
	-variable_voltage_product_real_13_14 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_2 ;
linear_constraint_voltage_product_real_upper_1_2..
	1.1236*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_5 ;
linear_constraint_voltage_product_real_upper_1_5..
	1.1236*variable_transmission_switch_1_5 - variable_voltage_product_real_1_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_3 ;
linear_constraint_voltage_product_real_upper_2_3..
	1.1236*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_4 ;
linear_constraint_voltage_product_real_upper_2_4..
	1.1236*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_5 ;
linear_constraint_voltage_product_real_upper_2_5..
	1.1236*variable_transmission_switch_2_5 - variable_voltage_product_real_2_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_4 ;
linear_constraint_voltage_product_real_upper_3_4..
	1.1236*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_5 ;
linear_constraint_voltage_product_real_upper_4_5..
	1.1236*variable_transmission_switch_4_5 - variable_voltage_product_real_4_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_7 ;
linear_constraint_voltage_product_real_upper_4_7..
	1.1236*variable_transmission_switch_4_7 - variable_voltage_product_real_4_7 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_9 ;
linear_constraint_voltage_product_real_upper_4_9..
	1.1236*variable_transmission_switch_4_9 - variable_voltage_product_real_4_9 =g= 0
Equation linear_constraint_voltage_product_real_upper_5_6 ;
linear_constraint_voltage_product_real_upper_5_6..
	1.1236*variable_transmission_switch_5_6 - variable_voltage_product_real_5_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_11 ;
linear_constraint_voltage_product_real_upper_6_11..
	1.1236*variable_transmission_switch_6_11 - variable_voltage_product_real_6_11 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_12 ;
linear_constraint_voltage_product_real_upper_6_12..
	1.1236*variable_transmission_switch_6_12 - variable_voltage_product_real_6_12 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_13 ;
linear_constraint_voltage_product_real_upper_6_13..
	1.1236*variable_transmission_switch_6_13 - variable_voltage_product_real_6_13 =g= 0
Equation linear_constraint_voltage_product_real_upper_7_8 ;
linear_constraint_voltage_product_real_upper_7_8..
	1.1236*variable_transmission_switch_7_8 - variable_voltage_product_real_7_8 =g= 0
Equation linear_constraint_voltage_product_real_upper_7_9 ;
linear_constraint_voltage_product_real_upper_7_9..
	1.1236*variable_transmission_switch_7_9 - variable_voltage_product_real_7_9 =g= 0
Equation linear_constraint_voltage_product_real_upper_9_10 ;
linear_constraint_voltage_product_real_upper_9_10..
	1.1236*variable_transmission_switch_9_10 - variable_voltage_product_real_9_10 =g= 0
Equation linear_constraint_voltage_product_real_upper_9_14 ;
linear_constraint_voltage_product_real_upper_9_14..
	1.1236*variable_transmission_switch_9_14 - variable_voltage_product_real_9_14 =g= 0
Equation linear_constraint_voltage_product_real_upper_10_11 ;
linear_constraint_voltage_product_real_upper_10_11..
	1.1236*variable_transmission_switch_10_11 - variable_voltage_product_real_10_11 =g= 0
Equation linear_constraint_voltage_product_real_upper_12_13 ;
linear_constraint_voltage_product_real_upper_12_13..
	1.1236*variable_transmission_switch_12_13 - variable_voltage_product_real_12_13 =g= 0
Equation linear_constraint_voltage_product_real_upper_13_14 ;
linear_constraint_voltage_product_real_upper_13_14..
	1.1236*variable_transmission_switch_13_14 - variable_voltage_product_real_13_14 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_2 ;
linear_constraint_voltage_product_imaginary_lower_1_2..
	-1.1236*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_5 ;
linear_constraint_voltage_product_imaginary_lower_1_5..
	-1.1236*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_3 ;
linear_constraint_voltage_product_imaginary_lower_2_3..
	-1.1236*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_4 ;
linear_constraint_voltage_product_imaginary_lower_2_4..
	-1.1236*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_5 ;
linear_constraint_voltage_product_imaginary_lower_2_5..
	-1.1236*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_4 ;
linear_constraint_voltage_product_imaginary_lower_3_4..
	-1.1236*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_5 ;
linear_constraint_voltage_product_imaginary_lower_4_5..
	-1.1236*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_7 ;
linear_constraint_voltage_product_imaginary_lower_4_7..
	-1.1236*variable_transmission_switch_4_7 - variable_voltage_product_imaginary_4_7 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_9 ;
linear_constraint_voltage_product_imaginary_lower_4_9..
	-1.1236*variable_transmission_switch_4_9 - variable_voltage_product_imaginary_4_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_5_6 ;
linear_constraint_voltage_product_imaginary_lower_5_6..
	-1.1236*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_11 ;
linear_constraint_voltage_product_imaginary_lower_6_11..
	-1.1236*variable_transmission_switch_6_11 - variable_voltage_product_imaginary_6_11 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_12 ;
linear_constraint_voltage_product_imaginary_lower_6_12..
	-1.1236*variable_transmission_switch_6_12 - variable_voltage_product_imaginary_6_12 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_13 ;
linear_constraint_voltage_product_imaginary_lower_6_13..
	-1.1236*variable_transmission_switch_6_13 - variable_voltage_product_imaginary_6_13 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_7_8 ;
linear_constraint_voltage_product_imaginary_lower_7_8..
	-1.1236*variable_transmission_switch_7_8 - variable_voltage_product_imaginary_7_8 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_7_9 ;
linear_constraint_voltage_product_imaginary_lower_7_9..
	-1.1236*variable_transmission_switch_7_9 - variable_voltage_product_imaginary_7_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_9_10 ;
linear_constraint_voltage_product_imaginary_lower_9_10..
	-1.1236*variable_transmission_switch_9_10 - variable_voltage_product_imaginary_9_10 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_9_14 ;
linear_constraint_voltage_product_imaginary_lower_9_14..
	-1.1236*variable_transmission_switch_9_14 - variable_voltage_product_imaginary_9_14 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_10_11 ;
linear_constraint_voltage_product_imaginary_lower_10_11..
	-1.1236*variable_transmission_switch_10_11 - variable_voltage_product_imaginary_10_11 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_12_13 ;
linear_constraint_voltage_product_imaginary_lower_12_13..
	-1.1236*variable_transmission_switch_12_13 - variable_voltage_product_imaginary_12_13 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_13_14 ;
linear_constraint_voltage_product_imaginary_lower_13_14..
	-1.1236*variable_transmission_switch_13_14 - variable_voltage_product_imaginary_13_14 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_2 ;
linear_constraint_voltage_product_imaginary_upper_1_2..
	1.1236*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_5 ;
linear_constraint_voltage_product_imaginary_upper_1_5..
	1.1236*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_3 ;
linear_constraint_voltage_product_imaginary_upper_2_3..
	1.1236*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_4 ;
linear_constraint_voltage_product_imaginary_upper_2_4..
	1.1236*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_5 ;
linear_constraint_voltage_product_imaginary_upper_2_5..
	1.1236*variable_transmission_switch_2_5 - variable_voltage_product_imaginary_2_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_4 ;
linear_constraint_voltage_product_imaginary_upper_3_4..
	1.1236*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_5 ;
linear_constraint_voltage_product_imaginary_upper_4_5..
	1.1236*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_7 ;
linear_constraint_voltage_product_imaginary_upper_4_7..
	1.1236*variable_transmission_switch_4_7 - variable_voltage_product_imaginary_4_7 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_9 ;
linear_constraint_voltage_product_imaginary_upper_4_9..
	1.1236*variable_transmission_switch_4_9 - variable_voltage_product_imaginary_4_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_5_6 ;
linear_constraint_voltage_product_imaginary_upper_5_6..
	1.1236*variable_transmission_switch_5_6 - variable_voltage_product_imaginary_5_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_11 ;
linear_constraint_voltage_product_imaginary_upper_6_11..
	1.1236*variable_transmission_switch_6_11 - variable_voltage_product_imaginary_6_11 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_12 ;
linear_constraint_voltage_product_imaginary_upper_6_12..
	1.1236*variable_transmission_switch_6_12 - variable_voltage_product_imaginary_6_12 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_13 ;
linear_constraint_voltage_product_imaginary_upper_6_13..
	1.1236*variable_transmission_switch_6_13 - variable_voltage_product_imaginary_6_13 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_7_8 ;
linear_constraint_voltage_product_imaginary_upper_7_8..
	1.1236*variable_transmission_switch_7_8 - variable_voltage_product_imaginary_7_8 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_7_9 ;
linear_constraint_voltage_product_imaginary_upper_7_9..
	1.1236*variable_transmission_switch_7_9 - variable_voltage_product_imaginary_7_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_9_10 ;
linear_constraint_voltage_product_imaginary_upper_9_10..
	1.1236*variable_transmission_switch_9_10 - variable_voltage_product_imaginary_9_10 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_9_14 ;
linear_constraint_voltage_product_imaginary_upper_9_14..
	1.1236*variable_transmission_switch_9_14 - variable_voltage_product_imaginary_9_14 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_10_11 ;
linear_constraint_voltage_product_imaginary_upper_10_11..
	1.1236*variable_transmission_switch_10_11 - variable_voltage_product_imaginary_10_11 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_12_13 ;
linear_constraint_voltage_product_imaginary_upper_12_13..
	1.1236*variable_transmission_switch_12_13 - variable_voltage_product_imaginary_12_13 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_13_14 ;
linear_constraint_voltage_product_imaginary_upper_13_14..
	1.1236*variable_transmission_switch_13_14 - variable_voltage_product_imaginary_13_14 =g= 0
Equation linear_constraint_voltage_square_big_m_1_2_1 ;
linear_constraint_voltage_square_big_m_1_2_1..
	-variable_switched_voltage_square_1_2 + 0.883599999*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_2 ;
linear_constraint_voltage_square_big_m_1_2_2..
	variable_switched_voltage_square_1_2 - 1.1236*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_1_2_3 ;
linear_constraint_voltage_square_big_m_1_2_3..
	-variable_switched_voltage_square_1_2 + 1.1236*variable_transmission_switch_1_2 + variable_voltage_square_1 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_1_2_4 ;
linear_constraint_voltage_square_big_m_1_2_4..
	variable_switched_voltage_square_1_2 - 0.883599999*variable_transmission_switch_1_2 - variable_voltage_square_1 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_2_1_1 ;
linear_constraint_voltage_square_big_m_2_1_1..
	-variable_switched_voltage_square_2_1 + 0.883599999*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_2 ;
linear_constraint_voltage_square_big_m_2_1_2..
	variable_switched_voltage_square_2_1 - 1.1236*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_3 ;
linear_constraint_voltage_square_big_m_2_1_3..
	-variable_switched_voltage_square_2_1 + 1.1236*variable_transmission_switch_1_2 + variable_voltage_square_2 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_2_1_4 ;
linear_constraint_voltage_square_big_m_2_1_4..
	variable_switched_voltage_square_2_1 - 0.883599999*variable_transmission_switch_1_2 - variable_voltage_square_2 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_1_5_1 ;
linear_constraint_voltage_square_big_m_1_5_1..
	-variable_switched_voltage_square_1_5 + 0.883599999*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_2 ;
linear_constraint_voltage_square_big_m_1_5_2..
	variable_switched_voltage_square_1_5 - 1.1236*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_3 ;
linear_constraint_voltage_square_big_m_1_5_3..
	-variable_switched_voltage_square_1_5 + 1.1236*variable_transmission_switch_1_5 + variable_voltage_square_1 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_1_5_4 ;
linear_constraint_voltage_square_big_m_1_5_4..
	variable_switched_voltage_square_1_5 - 0.883599999*variable_transmission_switch_1_5 - variable_voltage_square_1 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_5_1_1 ;
linear_constraint_voltage_square_big_m_5_1_1..
	-variable_switched_voltage_square_5_1 + 0.883599999*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_1_2 ;
linear_constraint_voltage_square_big_m_5_1_2..
	variable_switched_voltage_square_5_1 - 1.1236*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_1_3 ;
linear_constraint_voltage_square_big_m_5_1_3..
	-variable_switched_voltage_square_5_1 + 1.1236*variable_transmission_switch_1_5 + variable_voltage_square_5 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_5_1_4 ;
linear_constraint_voltage_square_big_m_5_1_4..
	variable_switched_voltage_square_5_1 - 0.883599999*variable_transmission_switch_1_5 - variable_voltage_square_5 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_2_3_1 ;
linear_constraint_voltage_square_big_m_2_3_1..
	-variable_switched_voltage_square_2_3 + 0.883599999*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_2_3_2 ;
linear_constraint_voltage_square_big_m_2_3_2..
	variable_switched_voltage_square_2_3 - 1.1236*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_2_3_3 ;
linear_constraint_voltage_square_big_m_2_3_3..
	-variable_switched_voltage_square_2_3 + 1.1236*variable_transmission_switch_2_3 + variable_voltage_square_2 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_2_3_4 ;
linear_constraint_voltage_square_big_m_2_3_4..
	variable_switched_voltage_square_2_3 - 0.883599999*variable_transmission_switch_2_3 - variable_voltage_square_2 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_3_2_1 ;
linear_constraint_voltage_square_big_m_3_2_1..
	-variable_switched_voltage_square_3_2 + 0.883599999*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_2_2 ;
linear_constraint_voltage_square_big_m_3_2_2..
	variable_switched_voltage_square_3_2 - 1.1236*variable_transmission_switch_2_3 =l= 0
Equation linear_constraint_voltage_square_big_m_3_2_3 ;
linear_constraint_voltage_square_big_m_3_2_3..
	-variable_switched_voltage_square_3_2 + 1.1236*variable_transmission_switch_2_3 + variable_voltage_square_3 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_3_2_4 ;
linear_constraint_voltage_square_big_m_3_2_4..
	variable_switched_voltage_square_3_2 - 0.883599999*variable_transmission_switch_2_3 - variable_voltage_square_3 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_2_4_1 ;
linear_constraint_voltage_square_big_m_2_4_1..
	-variable_switched_voltage_square_2_4 + 0.883599999*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_2 ;
linear_constraint_voltage_square_big_m_2_4_2..
	variable_switched_voltage_square_2_4 - 1.1236*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_3 ;
linear_constraint_voltage_square_big_m_2_4_3..
	-variable_switched_voltage_square_2_4 + 1.1236*variable_transmission_switch_2_4 + variable_voltage_square_2 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_2_4_4 ;
linear_constraint_voltage_square_big_m_2_4_4..
	variable_switched_voltage_square_2_4 - 0.883599999*variable_transmission_switch_2_4 - variable_voltage_square_2 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_4_2_1 ;
linear_constraint_voltage_square_big_m_4_2_1..
	-variable_switched_voltage_square_4_2 + 0.883599999*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_2_2 ;
linear_constraint_voltage_square_big_m_4_2_2..
	variable_switched_voltage_square_4_2 - 1.1236*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_2_3 ;
linear_constraint_voltage_square_big_m_4_2_3..
	-variable_switched_voltage_square_4_2 + 1.1236*variable_transmission_switch_2_4 + variable_voltage_square_4 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_4_2_4 ;
linear_constraint_voltage_square_big_m_4_2_4..
	variable_switched_voltage_square_4_2 - 0.883599999*variable_transmission_switch_2_4 - variable_voltage_square_4 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_2_5_1 ;
linear_constraint_voltage_square_big_m_2_5_1..
	-variable_switched_voltage_square_2_5 + 0.883599999*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_2 ;
linear_constraint_voltage_square_big_m_2_5_2..
	variable_switched_voltage_square_2_5 - 1.1236*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_2_5_3 ;
linear_constraint_voltage_square_big_m_2_5_3..
	-variable_switched_voltage_square_2_5 + 1.1236*variable_transmission_switch_2_5 + variable_voltage_square_2 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_2_5_4 ;
linear_constraint_voltage_square_big_m_2_5_4..
	variable_switched_voltage_square_2_5 - 0.883599999*variable_transmission_switch_2_5 - variable_voltage_square_2 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_5_2_1 ;
linear_constraint_voltage_square_big_m_5_2_1..
	-variable_switched_voltage_square_5_2 + 0.883599999*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_2_2 ;
linear_constraint_voltage_square_big_m_5_2_2..
	variable_switched_voltage_square_5_2 - 1.1236*variable_transmission_switch_2_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_2_3 ;
linear_constraint_voltage_square_big_m_5_2_3..
	-variable_switched_voltage_square_5_2 + 1.1236*variable_transmission_switch_2_5 + variable_voltage_square_5 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_5_2_4 ;
linear_constraint_voltage_square_big_m_5_2_4..
	variable_switched_voltage_square_5_2 - 0.883599999*variable_transmission_switch_2_5 - variable_voltage_square_5 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_3_4_1 ;
linear_constraint_voltage_square_big_m_3_4_1..
	-variable_switched_voltage_square_3_4 + 0.883599999*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_3_4_2 ;
linear_constraint_voltage_square_big_m_3_4_2..
	variable_switched_voltage_square_3_4 - 1.1236*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_3_4_3 ;
linear_constraint_voltage_square_big_m_3_4_3..
	-variable_switched_voltage_square_3_4 + 1.1236*variable_transmission_switch_3_4 + variable_voltage_square_3 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_3_4_4 ;
linear_constraint_voltage_square_big_m_3_4_4..
	variable_switched_voltage_square_3_4 - 0.883599999*variable_transmission_switch_3_4 - variable_voltage_square_3 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_4_3_1 ;
linear_constraint_voltage_square_big_m_4_3_1..
	-variable_switched_voltage_square_4_3 + 0.883599999*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_3_2 ;
linear_constraint_voltage_square_big_m_4_3_2..
	variable_switched_voltage_square_4_3 - 1.1236*variable_transmission_switch_3_4 =l= 0
Equation linear_constraint_voltage_square_big_m_4_3_3 ;
linear_constraint_voltage_square_big_m_4_3_3..
	-variable_switched_voltage_square_4_3 + 1.1236*variable_transmission_switch_3_4 + variable_voltage_square_4 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_4_3_4 ;
linear_constraint_voltage_square_big_m_4_3_4..
	variable_switched_voltage_square_4_3 - 0.883599999*variable_transmission_switch_3_4 - variable_voltage_square_4 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_4_5_1 ;
linear_constraint_voltage_square_big_m_4_5_1..
	-variable_switched_voltage_square_4_5 + 0.883599999*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_4_5_2 ;
linear_constraint_voltage_square_big_m_4_5_2..
	variable_switched_voltage_square_4_5 - 1.1236*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_4_5_3 ;
linear_constraint_voltage_square_big_m_4_5_3..
	-variable_switched_voltage_square_4_5 + 1.1236*variable_transmission_switch_4_5 + variable_voltage_square_4 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_4_5_4 ;
linear_constraint_voltage_square_big_m_4_5_4..
	variable_switched_voltage_square_4_5 - 0.883599999*variable_transmission_switch_4_5 - variable_voltage_square_4 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_5_4_1 ;
linear_constraint_voltage_square_big_m_5_4_1..
	-variable_switched_voltage_square_5_4 + 0.883599999*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_4_2 ;
linear_constraint_voltage_square_big_m_5_4_2..
	variable_switched_voltage_square_5_4 - 1.1236*variable_transmission_switch_4_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_4_3 ;
linear_constraint_voltage_square_big_m_5_4_3..
	-variable_switched_voltage_square_5_4 + 1.1236*variable_transmission_switch_4_5 + variable_voltage_square_5 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_5_4_4 ;
linear_constraint_voltage_square_big_m_5_4_4..
	variable_switched_voltage_square_5_4 - 0.883599999*variable_transmission_switch_4_5 - variable_voltage_square_5 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_4_7_1 ;
linear_constraint_voltage_square_big_m_4_7_1..
	-variable_switched_voltage_square_4_7 + 0.883599999*variable_transmission_switch_4_7 =l= 0
Equation linear_constraint_voltage_square_big_m_4_7_2 ;
linear_constraint_voltage_square_big_m_4_7_2..
	variable_switched_voltage_square_4_7 - 1.1236*variable_transmission_switch_4_7 =l= 0
Equation linear_constraint_voltage_square_big_m_4_7_3 ;
linear_constraint_voltage_square_big_m_4_7_3..
	-variable_switched_voltage_square_4_7 + 1.1236*variable_transmission_switch_4_7 + variable_voltage_square_4 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_4_7_4 ;
linear_constraint_voltage_square_big_m_4_7_4..
	variable_switched_voltage_square_4_7 - 0.883599999*variable_transmission_switch_4_7 - variable_voltage_square_4 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_7_4_1 ;
linear_constraint_voltage_square_big_m_7_4_1..
	-variable_switched_voltage_square_7_4 + 0.883599999*variable_transmission_switch_4_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_4_2 ;
linear_constraint_voltage_square_big_m_7_4_2..
	variable_switched_voltage_square_7_4 - 1.1236*variable_transmission_switch_4_7 =l= 0
Equation linear_constraint_voltage_square_big_m_7_4_3 ;
linear_constraint_voltage_square_big_m_7_4_3..
	-variable_switched_voltage_square_7_4 + 1.1236*variable_transmission_switch_4_7 + variable_voltage_square_7 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_7_4_4 ;
linear_constraint_voltage_square_big_m_7_4_4..
	variable_switched_voltage_square_7_4 - 0.883599999*variable_transmission_switch_4_7 - variable_voltage_square_7 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_4_9_1 ;
linear_constraint_voltage_square_big_m_4_9_1..
	-variable_switched_voltage_square_4_9 + 0.883599999*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_4_9_2 ;
linear_constraint_voltage_square_big_m_4_9_2..
	variable_switched_voltage_square_4_9 - 1.1236*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_4_9_3 ;
linear_constraint_voltage_square_big_m_4_9_3..
	-variable_switched_voltage_square_4_9 + 1.1236*variable_transmission_switch_4_9 + variable_voltage_square_4 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_4_9_4 ;
linear_constraint_voltage_square_big_m_4_9_4..
	variable_switched_voltage_square_4_9 - 0.883599999*variable_transmission_switch_4_9 - variable_voltage_square_4 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_9_4_1 ;
linear_constraint_voltage_square_big_m_9_4_1..
	-variable_switched_voltage_square_9_4 + 0.883599999*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_4_2 ;
linear_constraint_voltage_square_big_m_9_4_2..
	variable_switched_voltage_square_9_4 - 1.1236*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_4_3 ;
linear_constraint_voltage_square_big_m_9_4_3..
	-variable_switched_voltage_square_9_4 + 1.1236*variable_transmission_switch_4_9 + variable_voltage_square_9 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_9_4_4 ;
linear_constraint_voltage_square_big_m_9_4_4..
	variable_switched_voltage_square_9_4 - 0.883599999*variable_transmission_switch_4_9 - variable_voltage_square_9 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_5_6_1 ;
linear_constraint_voltage_square_big_m_5_6_1..
	-variable_switched_voltage_square_5_6 + 0.883599999*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_5_6_2 ;
linear_constraint_voltage_square_big_m_5_6_2..
	variable_switched_voltage_square_5_6 - 1.1236*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_5_6_3 ;
linear_constraint_voltage_square_big_m_5_6_3..
	-variable_switched_voltage_square_5_6 + 1.1236*variable_transmission_switch_5_6 + variable_voltage_square_5 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_5_6_4 ;
linear_constraint_voltage_square_big_m_5_6_4..
	variable_switched_voltage_square_5_6 - 0.883599999*variable_transmission_switch_5_6 - variable_voltage_square_5 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_6_5_1 ;
linear_constraint_voltage_square_big_m_6_5_1..
	-variable_switched_voltage_square_6_5 + 0.883599999*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_5_2 ;
linear_constraint_voltage_square_big_m_6_5_2..
	variable_switched_voltage_square_6_5 - 1.1236*variable_transmission_switch_5_6 =l= 0
Equation linear_constraint_voltage_square_big_m_6_5_3 ;
linear_constraint_voltage_square_big_m_6_5_3..
	-variable_switched_voltage_square_6_5 + 1.1236*variable_transmission_switch_5_6 + variable_voltage_square_6 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_6_5_4 ;
linear_constraint_voltage_square_big_m_6_5_4..
	variable_switched_voltage_square_6_5 - 0.883599999*variable_transmission_switch_5_6 - variable_voltage_square_6 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_6_11_1 ;
linear_constraint_voltage_square_big_m_6_11_1..
	-variable_switched_voltage_square_6_11 + 0.883599999*variable_transmission_switch_6_11 =l= 0
Equation linear_constraint_voltage_square_big_m_6_11_2 ;
linear_constraint_voltage_square_big_m_6_11_2..
	variable_switched_voltage_square_6_11 - 1.1236*variable_transmission_switch_6_11 =l= 0
Equation linear_constraint_voltage_square_big_m_6_11_3 ;
linear_constraint_voltage_square_big_m_6_11_3..
	-variable_switched_voltage_square_6_11 + 1.1236*variable_transmission_switch_6_11 + variable_voltage_square_6 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_6_11_4 ;
linear_constraint_voltage_square_big_m_6_11_4..
	variable_switched_voltage_square_6_11 - 0.883599999*variable_transmission_switch_6_11 - variable_voltage_square_6 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_11_6_1 ;
linear_constraint_voltage_square_big_m_11_6_1..
	-variable_switched_voltage_square_11_6 + 0.883599999*variable_transmission_switch_6_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_6_2 ;
linear_constraint_voltage_square_big_m_11_6_2..
	variable_switched_voltage_square_11_6 - 1.1236*variable_transmission_switch_6_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_6_3 ;
linear_constraint_voltage_square_big_m_11_6_3..
	-variable_switched_voltage_square_11_6 + 1.1236*variable_transmission_switch_6_11 + variable_voltage_square_11 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_11_6_4 ;
linear_constraint_voltage_square_big_m_11_6_4..
	variable_switched_voltage_square_11_6 - 0.883599999*variable_transmission_switch_6_11 - variable_voltage_square_11 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_6_12_1 ;
linear_constraint_voltage_square_big_m_6_12_1..
	-variable_switched_voltage_square_6_12 + 0.883599999*variable_transmission_switch_6_12 =l= 0
Equation linear_constraint_voltage_square_big_m_6_12_2 ;
linear_constraint_voltage_square_big_m_6_12_2..
	variable_switched_voltage_square_6_12 - 1.1236*variable_transmission_switch_6_12 =l= 0
Equation linear_constraint_voltage_square_big_m_6_12_3 ;
linear_constraint_voltage_square_big_m_6_12_3..
	-variable_switched_voltage_square_6_12 + 1.1236*variable_transmission_switch_6_12 + variable_voltage_square_6 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_6_12_4 ;
linear_constraint_voltage_square_big_m_6_12_4..
	variable_switched_voltage_square_6_12 - 0.883599999*variable_transmission_switch_6_12 - variable_voltage_square_6 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_12_6_1 ;
linear_constraint_voltage_square_big_m_12_6_1..
	-variable_switched_voltage_square_12_6 + 0.883599999*variable_transmission_switch_6_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_6_2 ;
linear_constraint_voltage_square_big_m_12_6_2..
	variable_switched_voltage_square_12_6 - 1.1236*variable_transmission_switch_6_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_6_3 ;
linear_constraint_voltage_square_big_m_12_6_3..
	-variable_switched_voltage_square_12_6 + 1.1236*variable_transmission_switch_6_12 + variable_voltage_square_12 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_12_6_4 ;
linear_constraint_voltage_square_big_m_12_6_4..
	variable_switched_voltage_square_12_6 - 0.883599999*variable_transmission_switch_6_12 - variable_voltage_square_12 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_6_13_1 ;
linear_constraint_voltage_square_big_m_6_13_1..
	-variable_switched_voltage_square_6_13 + 0.883599999*variable_transmission_switch_6_13 =l= 0
Equation linear_constraint_voltage_square_big_m_6_13_2 ;
linear_constraint_voltage_square_big_m_6_13_2..
	variable_switched_voltage_square_6_13 - 1.1236*variable_transmission_switch_6_13 =l= 0
Equation linear_constraint_voltage_square_big_m_6_13_3 ;
linear_constraint_voltage_square_big_m_6_13_3..
	-variable_switched_voltage_square_6_13 + 1.1236*variable_transmission_switch_6_13 + variable_voltage_square_6 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_6_13_4 ;
linear_constraint_voltage_square_big_m_6_13_4..
	variable_switched_voltage_square_6_13 - 0.883599999*variable_transmission_switch_6_13 - variable_voltage_square_6 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_13_6_1 ;
linear_constraint_voltage_square_big_m_13_6_1..
	-variable_switched_voltage_square_13_6 + 0.883599999*variable_transmission_switch_6_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_6_2 ;
linear_constraint_voltage_square_big_m_13_6_2..
	variable_switched_voltage_square_13_6 - 1.1236*variable_transmission_switch_6_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_6_3 ;
linear_constraint_voltage_square_big_m_13_6_3..
	-variable_switched_voltage_square_13_6 + 1.1236*variable_transmission_switch_6_13 + variable_voltage_square_13 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_13_6_4 ;
linear_constraint_voltage_square_big_m_13_6_4..
	variable_switched_voltage_square_13_6 - 0.883599999*variable_transmission_switch_6_13 - variable_voltage_square_13 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_7_8_1 ;
linear_constraint_voltage_square_big_m_7_8_1..
	-variable_switched_voltage_square_7_8 + 0.883599999*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_7_8_2 ;
linear_constraint_voltage_square_big_m_7_8_2..
	variable_switched_voltage_square_7_8 - 1.1236*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_7_8_3 ;
linear_constraint_voltage_square_big_m_7_8_3..
	-variable_switched_voltage_square_7_8 + 1.1236*variable_transmission_switch_7_8 + variable_voltage_square_7 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_7_8_4 ;
linear_constraint_voltage_square_big_m_7_8_4..
	variable_switched_voltage_square_7_8 - 0.883599999*variable_transmission_switch_7_8 - variable_voltage_square_7 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_8_7_1 ;
linear_constraint_voltage_square_big_m_8_7_1..
	-variable_switched_voltage_square_8_7 + 0.883599999*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_7_2 ;
linear_constraint_voltage_square_big_m_8_7_2..
	variable_switched_voltage_square_8_7 - 1.1236*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_7_3 ;
linear_constraint_voltage_square_big_m_8_7_3..
	-variable_switched_voltage_square_8_7 + 1.1236*variable_transmission_switch_7_8 + variable_voltage_square_8 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_8_7_4 ;
linear_constraint_voltage_square_big_m_8_7_4..
	variable_switched_voltage_square_8_7 - 0.883599999*variable_transmission_switch_7_8 - variable_voltage_square_8 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_7_9_1 ;
linear_constraint_voltage_square_big_m_7_9_1..
	-variable_switched_voltage_square_7_9 + 0.883599999*variable_transmission_switch_7_9 =l= 0
Equation linear_constraint_voltage_square_big_m_7_9_2 ;
linear_constraint_voltage_square_big_m_7_9_2..
	variable_switched_voltage_square_7_9 - 1.1236*variable_transmission_switch_7_9 =l= 0
Equation linear_constraint_voltage_square_big_m_7_9_3 ;
linear_constraint_voltage_square_big_m_7_9_3..
	-variable_switched_voltage_square_7_9 + 1.1236*variable_transmission_switch_7_9 + variable_voltage_square_7 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_7_9_4 ;
linear_constraint_voltage_square_big_m_7_9_4..
	variable_switched_voltage_square_7_9 - 0.883599999*variable_transmission_switch_7_9 - variable_voltage_square_7 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_9_7_1 ;
linear_constraint_voltage_square_big_m_9_7_1..
	-variable_switched_voltage_square_9_7 + 0.883599999*variable_transmission_switch_7_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_7_2 ;
linear_constraint_voltage_square_big_m_9_7_2..
	variable_switched_voltage_square_9_7 - 1.1236*variable_transmission_switch_7_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_7_3 ;
linear_constraint_voltage_square_big_m_9_7_3..
	-variable_switched_voltage_square_9_7 + 1.1236*variable_transmission_switch_7_9 + variable_voltage_square_9 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_9_7_4 ;
linear_constraint_voltage_square_big_m_9_7_4..
	variable_switched_voltage_square_9_7 - 0.883599999*variable_transmission_switch_7_9 - variable_voltage_square_9 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_9_10_1 ;
linear_constraint_voltage_square_big_m_9_10_1..
	-variable_switched_voltage_square_9_10 + 0.883599999*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_9_10_2 ;
linear_constraint_voltage_square_big_m_9_10_2..
	variable_switched_voltage_square_9_10 - 1.1236*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_9_10_3 ;
linear_constraint_voltage_square_big_m_9_10_3..
	-variable_switched_voltage_square_9_10 + 1.1236*variable_transmission_switch_9_10 + variable_voltage_square_9 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_9_10_4 ;
linear_constraint_voltage_square_big_m_9_10_4..
	variable_switched_voltage_square_9_10 - 0.883599999*variable_transmission_switch_9_10 - variable_voltage_square_9 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_10_9_1 ;
linear_constraint_voltage_square_big_m_10_9_1..
	-variable_switched_voltage_square_10_9 + 0.883599999*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_9_2 ;
linear_constraint_voltage_square_big_m_10_9_2..
	variable_switched_voltage_square_10_9 - 1.1236*variable_transmission_switch_9_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_9_3 ;
linear_constraint_voltage_square_big_m_10_9_3..
	-variable_switched_voltage_square_10_9 + 1.1236*variable_transmission_switch_9_10 + variable_voltage_square_10 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_10_9_4 ;
linear_constraint_voltage_square_big_m_10_9_4..
	variable_switched_voltage_square_10_9 - 0.883599999*variable_transmission_switch_9_10 - variable_voltage_square_10 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_9_14_1 ;
linear_constraint_voltage_square_big_m_9_14_1..
	-variable_switched_voltage_square_9_14 + 0.883599999*variable_transmission_switch_9_14 =l= 0
Equation linear_constraint_voltage_square_big_m_9_14_2 ;
linear_constraint_voltage_square_big_m_9_14_2..
	variable_switched_voltage_square_9_14 - 1.1236*variable_transmission_switch_9_14 =l= 0
Equation linear_constraint_voltage_square_big_m_9_14_3 ;
linear_constraint_voltage_square_big_m_9_14_3..
	-variable_switched_voltage_square_9_14 + 1.1236*variable_transmission_switch_9_14 + variable_voltage_square_9 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_9_14_4 ;
linear_constraint_voltage_square_big_m_9_14_4..
	variable_switched_voltage_square_9_14 - 0.883599999*variable_transmission_switch_9_14 - variable_voltage_square_9 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_14_9_1 ;
linear_constraint_voltage_square_big_m_14_9_1..
	-variable_switched_voltage_square_14_9 + 0.883599999*variable_transmission_switch_9_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_9_2 ;
linear_constraint_voltage_square_big_m_14_9_2..
	variable_switched_voltage_square_14_9 - 1.1236*variable_transmission_switch_9_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_9_3 ;
linear_constraint_voltage_square_big_m_14_9_3..
	-variable_switched_voltage_square_14_9 + 1.1236*variable_transmission_switch_9_14 + variable_voltage_square_14 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_14_9_4 ;
linear_constraint_voltage_square_big_m_14_9_4..
	variable_switched_voltage_square_14_9 - 0.883599999*variable_transmission_switch_9_14 - variable_voltage_square_14 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_10_11_1 ;
linear_constraint_voltage_square_big_m_10_11_1..
	-variable_switched_voltage_square_10_11 + 0.883599999*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_10_11_2 ;
linear_constraint_voltage_square_big_m_10_11_2..
	variable_switched_voltage_square_10_11 - 1.1236*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_10_11_3 ;
linear_constraint_voltage_square_big_m_10_11_3..
	-variable_switched_voltage_square_10_11 + 1.1236*variable_transmission_switch_10_11 + variable_voltage_square_10 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_10_11_4 ;
linear_constraint_voltage_square_big_m_10_11_4..
	variable_switched_voltage_square_10_11 - 0.883599999*variable_transmission_switch_10_11 - variable_voltage_square_10 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_11_10_1 ;
linear_constraint_voltage_square_big_m_11_10_1..
	-variable_switched_voltage_square_11_10 + 0.883599999*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_10_2 ;
linear_constraint_voltage_square_big_m_11_10_2..
	variable_switched_voltage_square_11_10 - 1.1236*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_10_3 ;
linear_constraint_voltage_square_big_m_11_10_3..
	-variable_switched_voltage_square_11_10 + 1.1236*variable_transmission_switch_10_11 + variable_voltage_square_11 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_11_10_4 ;
linear_constraint_voltage_square_big_m_11_10_4..
	variable_switched_voltage_square_11_10 - 0.883599999*variable_transmission_switch_10_11 - variable_voltage_square_11 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_12_13_1 ;
linear_constraint_voltage_square_big_m_12_13_1..
	-variable_switched_voltage_square_12_13 + 0.883599999*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_12_13_2 ;
linear_constraint_voltage_square_big_m_12_13_2..
	variable_switched_voltage_square_12_13 - 1.1236*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_12_13_3 ;
linear_constraint_voltage_square_big_m_12_13_3..
	-variable_switched_voltage_square_12_13 + 1.1236*variable_transmission_switch_12_13 + variable_voltage_square_12 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_12_13_4 ;
linear_constraint_voltage_square_big_m_12_13_4..
	variable_switched_voltage_square_12_13 - 0.883599999*variable_transmission_switch_12_13 - variable_voltage_square_12 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_13_12_1 ;
linear_constraint_voltage_square_big_m_13_12_1..
	-variable_switched_voltage_square_13_12 + 0.883599999*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_12_2 ;
linear_constraint_voltage_square_big_m_13_12_2..
	variable_switched_voltage_square_13_12 - 1.1236*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_12_3 ;
linear_constraint_voltage_square_big_m_13_12_3..
	-variable_switched_voltage_square_13_12 + 1.1236*variable_transmission_switch_12_13 + variable_voltage_square_13 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_13_12_4 ;
linear_constraint_voltage_square_big_m_13_12_4..
	variable_switched_voltage_square_13_12 - 0.883599999*variable_transmission_switch_12_13 - variable_voltage_square_13 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_13_14_1 ;
linear_constraint_voltage_square_big_m_13_14_1..
	-variable_switched_voltage_square_13_14 + 0.883599999*variable_transmission_switch_13_14 =l= 0
Equation linear_constraint_voltage_square_big_m_13_14_2 ;
linear_constraint_voltage_square_big_m_13_14_2..
	variable_switched_voltage_square_13_14 - 1.1236*variable_transmission_switch_13_14 =l= 0
Equation linear_constraint_voltage_square_big_m_13_14_3 ;
linear_constraint_voltage_square_big_m_13_14_3..
	-variable_switched_voltage_square_13_14 + 1.1236*variable_transmission_switch_13_14 + variable_voltage_square_13 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_13_14_4 ;
linear_constraint_voltage_square_big_m_13_14_4..
	variable_switched_voltage_square_13_14 - 0.883599999*variable_transmission_switch_13_14 - variable_voltage_square_13 =l= -0.883599999
Equation linear_constraint_voltage_square_big_m_14_13_1 ;
linear_constraint_voltage_square_big_m_14_13_1..
	-variable_switched_voltage_square_14_13 + 0.883599999*variable_transmission_switch_13_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_13_2 ;
linear_constraint_voltage_square_big_m_14_13_2..
	variable_switched_voltage_square_14_13 - 1.1236*variable_transmission_switch_13_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_13_3 ;
linear_constraint_voltage_square_big_m_14_13_3..
	-variable_switched_voltage_square_14_13 + 1.1236*variable_transmission_switch_13_14 + variable_voltage_square_14 =l= 1.1236
Equation linear_constraint_voltage_square_big_m_14_13_4 ;
linear_constraint_voltage_square_big_m_14_13_4..
	variable_switched_voltage_square_14_13 - 0.883599999*variable_transmission_switch_13_14 - variable_voltage_square_14 =l= -0.883599999
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 0.496*variable_curtailment_binaries_1_1 - 0.9921*variable_curtailment_binaries_1_2 - 1.3228*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 0.496*variable_curtailment_binaries_3_1 - 0.9921*variable_curtailment_binaries_3_2 - 1.3228*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_option_5 ;
linear_constraint_curtailment_option_5..
	(variable_curtailed_feed_in_5 - 0.496*variable_curtailment_binaries_5_1 - 0.9921*variable_curtailment_binaries_5_2 - 1.3228*variable_curtailment_binaries_5_3) =e= (0)
Equation linear_constraint_curtailment_option_7 ;
linear_constraint_curtailment_option_7..
	(variable_curtailed_feed_in_7 - 0.496*variable_curtailment_binaries_7_1 - 0.9921*variable_curtailment_binaries_7_2 - 1.3228*variable_curtailment_binaries_7_3) =e= (0)
Equation linear_constraint_curtailment_option_9 ;
linear_constraint_curtailment_option_9..
	(variable_curtailed_feed_in_9 - 0.496*variable_curtailment_binaries_9_1 - 0.9921*variable_curtailment_binaries_9_2 - 1.3228*variable_curtailment_binaries_9_3) =e= (0)
Equation linear_constraint_curtailment_option_11 ;
linear_constraint_curtailment_option_11..
	(variable_curtailed_feed_in_11 - 0.496*variable_curtailment_binaries_11_1 - 0.9921*variable_curtailment_binaries_11_2 - 1.3228*variable_curtailment_binaries_11_3) =e= (0)
Equation linear_constraint_curtailment_option_13 ;
linear_constraint_curtailment_option_13..
	(variable_curtailed_feed_in_13 - 0.496*variable_curtailment_binaries_13_1 - 0.9921*variable_curtailment_binaries_13_2 - 1.3228*variable_curtailment_binaries_13_3) =e= (0)
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

*===== SECTION: MODEL DEFINITION
Model minlp /all/ ;

*===== SECTION: MODEL OPTIONS AND SOLVE
option optcr = 0.0001 ;
option ResLim = 7200 ;
option MINLP = antigone ;
Solve minlp min objval using MINLP ;
