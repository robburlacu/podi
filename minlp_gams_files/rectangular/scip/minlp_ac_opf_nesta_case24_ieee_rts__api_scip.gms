$title "minlp_ac_opf_nesta_case24_ieee_rts__api"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1_1 ;
Binary Variable variable_generator_switch_1_2 ;
Binary Variable variable_generator_switch_1_3 ;
Binary Variable variable_generator_switch_1_4 ;
Binary Variable variable_generator_switch_2_1 ;
Binary Variable variable_generator_switch_2_2 ;
Binary Variable variable_generator_switch_2_3 ;
Binary Variable variable_generator_switch_2_4 ;
Binary Variable variable_generator_switch_7_1 ;
Binary Variable variable_generator_switch_7_2 ;
Binary Variable variable_generator_switch_7_3 ;
Binary Variable variable_generator_switch_13_1 ;
Binary Variable variable_generator_switch_13_2 ;
Binary Variable variable_generator_switch_13_3 ;
Binary Variable variable_generator_switch_14 ;
Binary Variable variable_generator_switch_15_1 ;
Binary Variable variable_generator_switch_15_2 ;
Binary Variable variable_generator_switch_15_3 ;
Binary Variable variable_generator_switch_15_4 ;
Binary Variable variable_generator_switch_15_5 ;
Binary Variable variable_generator_switch_15_6 ;
Binary Variable variable_generator_switch_16 ;
Binary Variable variable_generator_switch_18 ;
Binary Variable variable_generator_switch_21 ;
Binary Variable variable_generator_switch_22_1 ;
Binary Variable variable_generator_switch_22_2 ;
Binary Variable variable_generator_switch_22_3 ;
Binary Variable variable_generator_switch_22_4 ;
Binary Variable variable_generator_switch_22_5 ;
Binary Variable variable_generator_switch_22_6 ;
Binary Variable variable_generator_switch_23_1 ;
Binary Variable variable_generator_switch_23_2 ;
Binary Variable variable_generator_switch_23_3 ;
Free Variable variable_voltage_square_1 ;
	variable_voltage_square_1.lo = 0.9025 ;
	variable_voltage_square_1.up = 1.1025 ;
Free Variable variable_voltage_square_2 ;
	variable_voltage_square_2.lo = 0.9025 ;
	variable_voltage_square_2.up = 1.1025 ;
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
	variable_voltage_square_13.up = 1.1025 ;
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
	variable_voltage_square_22.up = 1.1025 ;
Free Variable variable_voltage_square_23 ;
	variable_voltage_square_23.lo = 0.9025 ;
	variable_voltage_square_23.up = 1.1025 ;
Free Variable variable_voltage_square_24 ;
	variable_voltage_square_24.lo = 0.9025 ;
	variable_voltage_square_24.up = 1.1025 ;
Free Variable variable_real_power_gen_1_1 ;
	variable_real_power_gen_1_1.lo = 0.0 ;
	variable_real_power_gen_1_1.up = 0.73 ;
Free Variable variable_real_power_gen_1_2 ;
	variable_real_power_gen_1_2.lo = 0.0 ;
	variable_real_power_gen_1_2.up = 1.22 ;
Free Variable variable_real_power_gen_1_3 ;
	variable_real_power_gen_1_3.lo = 0.0 ;
	variable_real_power_gen_1_3.up = 1.33 ;
Free Variable variable_real_power_gen_1_4 ;
	variable_real_power_gen_1_4.lo = 0.0 ;
	variable_real_power_gen_1_4.up = 1.17 ;
Free Variable variable_real_power_gen_2_1 ;
	variable_real_power_gen_2_1.lo = 0.0 ;
	variable_real_power_gen_2_1.up = 4.66 ;
Free Variable variable_real_power_gen_2_2 ;
	variable_real_power_gen_2_2.lo = 0.0 ;
	variable_real_power_gen_2_2.up = 1.71 ;
Free Variable variable_real_power_gen_2_3 ;
	variable_real_power_gen_2_3.lo = 0.0 ;
	variable_real_power_gen_2_3.up = 5.85 ;
Free Variable variable_real_power_gen_2_4 ;
	variable_real_power_gen_2_4.lo = 0.0 ;
	variable_real_power_gen_2_4.up = 1.81 ;
Free Variable variable_real_power_gen_7_1 ;
	variable_real_power_gen_7_1.lo = 0.0 ;
	variable_real_power_gen_7_1.up = 2.18 ;
Free Variable variable_real_power_gen_7_2 ;
	variable_real_power_gen_7_2.lo = 0.0 ;
	variable_real_power_gen_7_2.up = 4.1 ;
Free Variable variable_real_power_gen_7_3 ;
	variable_real_power_gen_7_3.lo = 0.0 ;
	variable_real_power_gen_7_3.up = 1.31 ;
Free Variable variable_real_power_gen_13_1 ;
	variable_real_power_gen_13_1.lo = 0.0 ;
	variable_real_power_gen_13_1.up = 5.75 ;
Free Variable variable_real_power_gen_13_2 ;
	variable_real_power_gen_13_2.lo = 0.0 ;
	variable_real_power_gen_13_2.up = 11.26 ;
Free Variable variable_real_power_gen_13_3 ;
	variable_real_power_gen_13_3.lo = 0.0 ;
	variable_real_power_gen_13_3.up = 5.43 ;
Scalar variable_real_power_gen_14 / 0.0 / ;
Free Variable variable_real_power_gen_15_1 ;
	variable_real_power_gen_15_1.lo = 0.0 ;
	variable_real_power_gen_15_1.up = 1.71 ;
Free Variable variable_real_power_gen_15_2 ;
	variable_real_power_gen_15_2.lo = 0.0 ;
	variable_real_power_gen_15_2.up = 1.43 ;
Free Variable variable_real_power_gen_15_3 ;
	variable_real_power_gen_15_3.lo = 0.0 ;
	variable_real_power_gen_15_3.up = 3.15 ;
Free Variable variable_real_power_gen_15_4 ;
	variable_real_power_gen_15_4.lo = 0.0 ;
	variable_real_power_gen_15_4.up = 1.72 ;
Free Variable variable_real_power_gen_15_5 ;
	variable_real_power_gen_15_5.lo = 0.0 ;
	variable_real_power_gen_15_5.up = 3.35 ;
Free Variable variable_real_power_gen_15_6 ;
	variable_real_power_gen_15_6.lo = 0.0 ;
	variable_real_power_gen_15_6.up = 4.56 ;
Free Variable variable_real_power_gen_16 ;
	variable_real_power_gen_16.lo = 0.0 ;
	variable_real_power_gen_16.up = 5.74 ;
Free Variable variable_real_power_gen_18 ;
	variable_real_power_gen_18.lo = 0.0 ;
	variable_real_power_gen_18.up = 3.16 ;
Free Variable variable_real_power_gen_21 ;
	variable_real_power_gen_21.lo = 0.0 ;
	variable_real_power_gen_21.up = 2.69 ;
Free Variable variable_real_power_gen_22_1 ;
	variable_real_power_gen_22_1.lo = 0.0 ;
	variable_real_power_gen_22_1.up = 1.15 ;
Free Variable variable_real_power_gen_22_2 ;
	variable_real_power_gen_22_2.lo = 0.0 ;
	variable_real_power_gen_22_2.up = 0.85 ;
Free Variable variable_real_power_gen_22_3 ;
	variable_real_power_gen_22_3.lo = 0.0 ;
	variable_real_power_gen_22_3.up = 1.35 ;
Free Variable variable_real_power_gen_22_4 ;
	variable_real_power_gen_22_4.lo = 0.0 ;
	variable_real_power_gen_22_4.up = 1.09 ;
Free Variable variable_real_power_gen_22_5 ;
	variable_real_power_gen_22_5.lo = 0.0 ;
	variable_real_power_gen_22_5.up = 0.8 ;
Free Variable variable_real_power_gen_22_6 ;
	variable_real_power_gen_22_6.lo = 0.0 ;
	variable_real_power_gen_22_6.up = 2.24 ;
Free Variable variable_real_power_gen_23_1 ;
	variable_real_power_gen_23_1.lo = 0.0 ;
	variable_real_power_gen_23_1.up = 3.7 ;
Free Variable variable_real_power_gen_23_2 ;
	variable_real_power_gen_23_2.lo = 0.0 ;
	variable_real_power_gen_23_2.up = 2.44 ;
Free Variable variable_real_power_gen_23_3 ;
	variable_real_power_gen_23_3.lo = 0.0 ;
	variable_real_power_gen_23_3.up = 3.53 ;
Free Variable variable_reactive_power_gen_1_1 ;
	variable_reactive_power_gen_1_1.lo = -0.37 ;
	variable_reactive_power_gen_1_1.up = 0.37 ;
Free Variable variable_reactive_power_gen_1_2 ;
	variable_reactive_power_gen_1_2.lo = -0.61 ;
	variable_reactive_power_gen_1_2.up = 0.61 ;
Free Variable variable_reactive_power_gen_1_3 ;
	variable_reactive_power_gen_1_3.lo = -0.67 ;
	variable_reactive_power_gen_1_3.up = 0.67 ;
Free Variable variable_reactive_power_gen_1_4 ;
	variable_reactive_power_gen_1_4.lo = -0.59 ;
	variable_reactive_power_gen_1_4.up = 0.59 ;
Free Variable variable_reactive_power_gen_2_1 ;
	variable_reactive_power_gen_2_1.lo = -2.33 ;
	variable_reactive_power_gen_2_1.up = 2.33 ;
Free Variable variable_reactive_power_gen_2_2 ;
	variable_reactive_power_gen_2_2.lo = -0.86 ;
	variable_reactive_power_gen_2_2.up = 0.86 ;
Free Variable variable_reactive_power_gen_2_3 ;
	variable_reactive_power_gen_2_3.lo = -2.93 ;
	variable_reactive_power_gen_2_3.up = 2.93 ;
Free Variable variable_reactive_power_gen_2_4 ;
	variable_reactive_power_gen_2_4.lo = -0.91 ;
	variable_reactive_power_gen_2_4.up = 0.91 ;
Free Variable variable_reactive_power_gen_7_1 ;
	variable_reactive_power_gen_7_1.lo = -1.09 ;
	variable_reactive_power_gen_7_1.up = 1.09 ;
Free Variable variable_reactive_power_gen_7_2 ;
	variable_reactive_power_gen_7_2.lo = -2.05 ;
	variable_reactive_power_gen_7_2.up = 2.05 ;
Free Variable variable_reactive_power_gen_7_3 ;
	variable_reactive_power_gen_7_3.lo = -0.66 ;
	variable_reactive_power_gen_7_3.up = 0.66 ;
Free Variable variable_reactive_power_gen_13_1 ;
	variable_reactive_power_gen_13_1.lo = -2.88 ;
	variable_reactive_power_gen_13_1.up = 2.88 ;
Free Variable variable_reactive_power_gen_13_2 ;
	variable_reactive_power_gen_13_2.lo = -5.63 ;
	variable_reactive_power_gen_13_2.up = 5.63 ;
Free Variable variable_reactive_power_gen_13_3 ;
	variable_reactive_power_gen_13_3.lo = -2.72 ;
	variable_reactive_power_gen_13_3.up = 2.72 ;
Free Variable variable_reactive_power_gen_14 ;
	variable_reactive_power_gen_14.lo = -2.508 ;
	variable_reactive_power_gen_14.up = 2.508 ;
Free Variable variable_reactive_power_gen_15_1 ;
	variable_reactive_power_gen_15_1.lo = -0.948 ;
	variable_reactive_power_gen_15_1.up = 0.948 ;
Free Variable variable_reactive_power_gen_15_2 ;
	variable_reactive_power_gen_15_2.lo = -0.948 ;
	variable_reactive_power_gen_15_2.up = 0.948 ;
Free Variable variable_reactive_power_gen_15_3 ;
	variable_reactive_power_gen_15_3.lo = -1.58 ;
	variable_reactive_power_gen_15_3.up = 1.58 ;
Free Variable variable_reactive_power_gen_15_4 ;
	variable_reactive_power_gen_15_4.lo = -0.948 ;
	variable_reactive_power_gen_15_4.up = 0.948 ;
Free Variable variable_reactive_power_gen_15_5 ;
	variable_reactive_power_gen_15_5.lo = -1.68 ;
	variable_reactive_power_gen_15_5.up = 1.68 ;
Free Variable variable_reactive_power_gen_15_6 ;
	variable_reactive_power_gen_15_6.lo = -2.28 ;
	variable_reactive_power_gen_15_6.up = 2.28 ;
Free Variable variable_reactive_power_gen_16 ;
	variable_reactive_power_gen_16.lo = -2.87 ;
	variable_reactive_power_gen_16.up = 2.87 ;
Free Variable variable_reactive_power_gen_18 ;
	variable_reactive_power_gen_18.lo = -1.58 ;
	variable_reactive_power_gen_18.up = 2.0 ;
Free Variable variable_reactive_power_gen_21 ;
	variable_reactive_power_gen_21.lo = -1.416 ;
	variable_reactive_power_gen_21.up = 2.0 ;
Free Variable variable_reactive_power_gen_22_1 ;
	variable_reactive_power_gen_22_1.lo = -0.58 ;
	variable_reactive_power_gen_22_1.up = 0.58 ;
Free Variable variable_reactive_power_gen_22_2 ;
	variable_reactive_power_gen_22_2.lo = -0.43 ;
	variable_reactive_power_gen_22_2.up = 0.43 ;
Free Variable variable_reactive_power_gen_22_3 ;
	variable_reactive_power_gen_22_3.lo = -0.68 ;
	variable_reactive_power_gen_22_3.up = 0.68 ;
Free Variable variable_reactive_power_gen_22_4 ;
	variable_reactive_power_gen_22_4.lo = -0.55 ;
	variable_reactive_power_gen_22_4.up = 0.55 ;
Free Variable variable_reactive_power_gen_22_5 ;
	variable_reactive_power_gen_22_5.lo = -0.4 ;
	variable_reactive_power_gen_22_5.up = 0.4 ;
Free Variable variable_reactive_power_gen_22_6 ;
	variable_reactive_power_gen_22_6.lo = -1.12 ;
	variable_reactive_power_gen_22_6.up = 1.12 ;
Free Variable variable_reactive_power_gen_23_1 ;
	variable_reactive_power_gen_23_1.lo = -1.85 ;
	variable_reactive_power_gen_23_1.up = 1.85 ;
Free Variable variable_reactive_power_gen_23_2 ;
	variable_reactive_power_gen_23_2.lo = -1.22 ;
	variable_reactive_power_gen_23_2.up = 1.22 ;
Free Variable variable_reactive_power_gen_23_3 ;
	variable_reactive_power_gen_23_3.lo = -1.77 ;
	variable_reactive_power_gen_23_3.up = 1.77 ;
Free Variable variable_voltage_real_1 ;
	variable_voltage_real_1.lo = -1.05 ;
	variable_voltage_real_1.up = 1.05 ;
Free Variable variable_voltage_real_2 ;
	variable_voltage_real_2.lo = -1.05 ;
	variable_voltage_real_2.up = 1.05 ;
Free Variable variable_voltage_real_3 ;
	variable_voltage_real_3.lo = -1.05 ;
	variable_voltage_real_3.up = 1.05 ;
Free Variable variable_voltage_real_4 ;
	variable_voltage_real_4.lo = -1.05 ;
	variable_voltage_real_4.up = 1.05 ;
Free Variable variable_voltage_real_5 ;
	variable_voltage_real_5.lo = -1.05 ;
	variable_voltage_real_5.up = 1.05 ;
Free Variable variable_voltage_real_6 ;
	variable_voltage_real_6.lo = -1.05 ;
	variable_voltage_real_6.up = 1.05 ;
Free Variable variable_voltage_real_7 ;
	variable_voltage_real_7.lo = -1.05 ;
	variable_voltage_real_7.up = 1.05 ;
Free Variable variable_voltage_real_8 ;
	variable_voltage_real_8.lo = -1.05 ;
	variable_voltage_real_8.up = 1.05 ;
Free Variable variable_voltage_real_9 ;
	variable_voltage_real_9.lo = -1.05 ;
	variable_voltage_real_9.up = 1.05 ;
Free Variable variable_voltage_real_10 ;
	variable_voltage_real_10.lo = -1.05 ;
	variable_voltage_real_10.up = 1.05 ;
Free Variable variable_voltage_real_11 ;
	variable_voltage_real_11.lo = -1.05 ;
	variable_voltage_real_11.up = 1.05 ;
Free Variable variable_voltage_real_12 ;
	variable_voltage_real_12.lo = -1.05 ;
	variable_voltage_real_12.up = 1.05 ;
Free Variable variable_voltage_real_13 ;
	variable_voltage_real_13.lo = -1.05 ;
	variable_voltage_real_13.up = 1.05 ;
Free Variable variable_voltage_real_14 ;
	variable_voltage_real_14.lo = -1.05 ;
	variable_voltage_real_14.up = 1.05 ;
Free Variable variable_voltage_real_15 ;
	variable_voltage_real_15.lo = -1.05 ;
	variable_voltage_real_15.up = 1.05 ;
Free Variable variable_voltage_real_16 ;
	variable_voltage_real_16.lo = -1.05 ;
	variable_voltage_real_16.up = 1.05 ;
Free Variable variable_voltage_real_17 ;
	variable_voltage_real_17.lo = -1.05 ;
	variable_voltage_real_17.up = 1.05 ;
Free Variable variable_voltage_real_18 ;
	variable_voltage_real_18.lo = -1.05 ;
	variable_voltage_real_18.up = 1.05 ;
Free Variable variable_voltage_real_19 ;
	variable_voltage_real_19.lo = -1.05 ;
	variable_voltage_real_19.up = 1.05 ;
Free Variable variable_voltage_real_20 ;
	variable_voltage_real_20.lo = -1.05 ;
	variable_voltage_real_20.up = 1.05 ;
Free Variable variable_voltage_real_21 ;
	variable_voltage_real_21.lo = -1.05 ;
	variable_voltage_real_21.up = 1.05 ;
Free Variable variable_voltage_real_22 ;
	variable_voltage_real_22.lo = -1.05 ;
	variable_voltage_real_22.up = 1.05 ;
Free Variable variable_voltage_real_23 ;
	variable_voltage_real_23.lo = -1.05 ;
	variable_voltage_real_23.up = 1.05 ;
Free Variable variable_voltage_real_24 ;
	variable_voltage_real_24.lo = -1.05 ;
	variable_voltage_real_24.up = 1.05 ;
Free Variable variable_voltage_imag_1 ;
	variable_voltage_imag_1.lo = -1.05 ;
	variable_voltage_imag_1.up = 1.05 ;
Free Variable variable_voltage_imag_2 ;
	variable_voltage_imag_2.lo = -1.05 ;
	variable_voltage_imag_2.up = 1.05 ;
Free Variable variable_voltage_imag_3 ;
	variable_voltage_imag_3.lo = -1.05 ;
	variable_voltage_imag_3.up = 1.05 ;
Free Variable variable_voltage_imag_4 ;
	variable_voltage_imag_4.lo = -1.05 ;
	variable_voltage_imag_4.up = 1.05 ;
Free Variable variable_voltage_imag_5 ;
	variable_voltage_imag_5.lo = -1.05 ;
	variable_voltage_imag_5.up = 1.05 ;
Free Variable variable_voltage_imag_6 ;
	variable_voltage_imag_6.lo = -1.05 ;
	variable_voltage_imag_6.up = 1.05 ;
Free Variable variable_voltage_imag_7 ;
	variable_voltage_imag_7.lo = -1.05 ;
	variable_voltage_imag_7.up = 1.05 ;
Free Variable variable_voltage_imag_8 ;
	variable_voltage_imag_8.lo = -1.05 ;
	variable_voltage_imag_8.up = 1.05 ;
Free Variable variable_voltage_imag_9 ;
	variable_voltage_imag_9.lo = -1.05 ;
	variable_voltage_imag_9.up = 1.05 ;
Free Variable variable_voltage_imag_10 ;
	variable_voltage_imag_10.lo = -1.05 ;
	variable_voltage_imag_10.up = 1.05 ;
Free Variable variable_voltage_imag_11 ;
	variable_voltage_imag_11.lo = -1.05 ;
	variable_voltage_imag_11.up = 1.05 ;
Free Variable variable_voltage_imag_12 ;
	variable_voltage_imag_12.lo = -1.05 ;
	variable_voltage_imag_12.up = 1.05 ;
Free Variable variable_voltage_imag_13 ;
	variable_voltage_imag_13.lo = -1.05 ;
	variable_voltage_imag_13.up = 1.05 ;
Free Variable variable_voltage_imag_14 ;
	variable_voltage_imag_14.lo = -1.05 ;
	variable_voltage_imag_14.up = 1.05 ;
Free Variable variable_voltage_imag_15 ;
	variable_voltage_imag_15.lo = -1.05 ;
	variable_voltage_imag_15.up = 1.05 ;
Free Variable variable_voltage_imag_16 ;
	variable_voltage_imag_16.lo = -1.05 ;
	variable_voltage_imag_16.up = 1.05 ;
Free Variable variable_voltage_imag_17 ;
	variable_voltage_imag_17.lo = -1.05 ;
	variable_voltage_imag_17.up = 1.05 ;
Free Variable variable_voltage_imag_18 ;
	variable_voltage_imag_18.lo = -1.05 ;
	variable_voltage_imag_18.up = 1.05 ;
Free Variable variable_voltage_imag_19 ;
	variable_voltage_imag_19.lo = -1.05 ;
	variable_voltage_imag_19.up = 1.05 ;
Free Variable variable_voltage_imag_20 ;
	variable_voltage_imag_20.lo = -1.05 ;
	variable_voltage_imag_20.up = 1.05 ;
Free Variable variable_voltage_imag_21 ;
	variable_voltage_imag_21.lo = -1.05 ;
	variable_voltage_imag_21.up = 1.05 ;
Free Variable variable_voltage_imag_22 ;
	variable_voltage_imag_22.lo = -1.05 ;
	variable_voltage_imag_22.up = 1.05 ;
Free Variable variable_voltage_imag_23 ;
	variable_voltage_imag_23.lo = -1.05 ;
	variable_voltage_imag_23.up = 1.05 ;
Free Variable variable_voltage_imag_24 ;
	variable_voltage_imag_24.lo = -1.05 ;
	variable_voltage_imag_24.up = 1.05 ;
Binary Variable variable_transmission_switch_1_2 ;
Binary Variable variable_transmission_switch_1_3 ;
Binary Variable variable_transmission_switch_1_5 ;
Binary Variable variable_transmission_switch_2_4 ;
Binary Variable variable_transmission_switch_2_6 ;
Binary Variable variable_transmission_switch_3_9 ;
Binary Variable variable_transmission_switch_3_24 ;
Binary Variable variable_transmission_switch_4_9 ;
Binary Variable variable_transmission_switch_5_10 ;
Binary Variable variable_transmission_switch_6_10 ;
Binary Variable variable_transmission_switch_7_8 ;
Binary Variable variable_transmission_switch_8_9 ;
Binary Variable variable_transmission_switch_8_10 ;
Binary Variable variable_transmission_switch_9_11 ;
Binary Variable variable_transmission_switch_9_12 ;
Binary Variable variable_transmission_switch_10_11 ;
Binary Variable variable_transmission_switch_10_12 ;
Binary Variable variable_transmission_switch_11_13 ;
Binary Variable variable_transmission_switch_11_14 ;
Binary Variable variable_transmission_switch_12_13 ;
Binary Variable variable_transmission_switch_12_23 ;
Binary Variable variable_transmission_switch_13_23 ;
Binary Variable variable_transmission_switch_14_16 ;
Binary Variable variable_transmission_switch_15_16 ;
Binary Variable variable_transmission_switch_15_21 ;
Binary Variable variable_transmission_switch_15_21_2 ;
Binary Variable variable_transmission_switch_15_24 ;
Binary Variable variable_transmission_switch_16_17 ;
Binary Variable variable_transmission_switch_16_19 ;
Binary Variable variable_transmission_switch_17_18 ;
Binary Variable variable_transmission_switch_17_22 ;
Binary Variable variable_transmission_switch_18_21 ;
Binary Variable variable_transmission_switch_18_21_2 ;
Binary Variable variable_transmission_switch_19_20 ;
Binary Variable variable_transmission_switch_19_20_2 ;
Binary Variable variable_transmission_switch_20_23 ;
Binary Variable variable_transmission_switch_20_23_2 ;
Binary Variable variable_transmission_switch_21_22 ;
Free Variable variable_switched_voltage_square_1_2 ;
	variable_switched_voltage_square_1_2.lo = 0.0 ;
	variable_switched_voltage_square_1_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_1 ;
	variable_switched_voltage_square_2_1.lo = 0.0 ;
	variable_switched_voltage_square_2_1.up = 1.1025 ;
Free Variable variable_switched_voltage_square_1_3 ;
	variable_switched_voltage_square_1_3.lo = 0.0 ;
	variable_switched_voltage_square_1_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_1 ;
	variable_switched_voltage_square_3_1.lo = 0.0 ;
	variable_switched_voltage_square_3_1.up = 1.1025 ;
Free Variable variable_switched_voltage_square_1_5 ;
	variable_switched_voltage_square_1_5.lo = 0.0 ;
	variable_switched_voltage_square_1_5.up = 1.1025 ;
Free Variable variable_switched_voltage_square_5_1 ;
	variable_switched_voltage_square_5_1.lo = 0.0 ;
	variable_switched_voltage_square_5_1.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_4 ;
	variable_switched_voltage_square_2_4.lo = 0.0 ;
	variable_switched_voltage_square_2_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_2 ;
	variable_switched_voltage_square_4_2.lo = 0.0 ;
	variable_switched_voltage_square_4_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_2_6 ;
	variable_switched_voltage_square_2_6.lo = 0.0 ;
	variable_switched_voltage_square_2_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_2 ;
	variable_switched_voltage_square_6_2.lo = 0.0 ;
	variable_switched_voltage_square_6_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_9 ;
	variable_switched_voltage_square_3_9.lo = 0.0 ;
	variable_switched_voltage_square_3_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_3 ;
	variable_switched_voltage_square_9_3.lo = 0.0 ;
	variable_switched_voltage_square_9_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_3_24 ;
	variable_switched_voltage_square_3_24.lo = 0.0 ;
	variable_switched_voltage_square_3_24.up = 1.1025 ;
Free Variable variable_switched_voltage_square_24_3 ;
	variable_switched_voltage_square_24_3.lo = 0.0 ;
	variable_switched_voltage_square_24_3.up = 1.1025 ;
Free Variable variable_switched_voltage_square_4_9 ;
	variable_switched_voltage_square_4_9.lo = 0.0 ;
	variable_switched_voltage_square_4_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_4 ;
	variable_switched_voltage_square_9_4.lo = 0.0 ;
	variable_switched_voltage_square_9_4.up = 1.1025 ;
Free Variable variable_switched_voltage_square_5_10 ;
	variable_switched_voltage_square_5_10.lo = 0.0 ;
	variable_switched_voltage_square_5_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_5 ;
	variable_switched_voltage_square_10_5.lo = 0.0 ;
	variable_switched_voltage_square_10_5.up = 1.1025 ;
Free Variable variable_switched_voltage_square_6_10 ;
	variable_switched_voltage_square_6_10.lo = 0.0 ;
	variable_switched_voltage_square_6_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_6 ;
	variable_switched_voltage_square_10_6.lo = 0.0 ;
	variable_switched_voltage_square_10_6.up = 1.1025 ;
Free Variable variable_switched_voltage_square_7_8 ;
	variable_switched_voltage_square_7_8.lo = 0.0 ;
	variable_switched_voltage_square_7_8.up = 1.1025 ;
Free Variable variable_switched_voltage_square_8_7 ;
	variable_switched_voltage_square_8_7.lo = 0.0 ;
	variable_switched_voltage_square_8_7.up = 1.1025 ;
Free Variable variable_switched_voltage_square_8_9 ;
	variable_switched_voltage_square_8_9.lo = 0.0 ;
	variable_switched_voltage_square_8_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_8 ;
	variable_switched_voltage_square_9_8.lo = 0.0 ;
	variable_switched_voltage_square_9_8.up = 1.1025 ;
Free Variable variable_switched_voltage_square_8_10 ;
	variable_switched_voltage_square_8_10.lo = 0.0 ;
	variable_switched_voltage_square_8_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_8 ;
	variable_switched_voltage_square_10_8.lo = 0.0 ;
	variable_switched_voltage_square_10_8.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_11 ;
	variable_switched_voltage_square_9_11.lo = 0.0 ;
	variable_switched_voltage_square_9_11.up = 1.1025 ;
Free Variable variable_switched_voltage_square_11_9 ;
	variable_switched_voltage_square_11_9.lo = 0.0 ;
	variable_switched_voltage_square_11_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_9_12 ;
	variable_switched_voltage_square_9_12.lo = 0.0 ;
	variable_switched_voltage_square_9_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_12_9 ;
	variable_switched_voltage_square_12_9.lo = 0.0 ;
	variable_switched_voltage_square_12_9.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_11 ;
	variable_switched_voltage_square_10_11.lo = 0.0 ;
	variable_switched_voltage_square_10_11.up = 1.1025 ;
Free Variable variable_switched_voltage_square_11_10 ;
	variable_switched_voltage_square_11_10.lo = 0.0 ;
	variable_switched_voltage_square_11_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_10_12 ;
	variable_switched_voltage_square_10_12.lo = 0.0 ;
	variable_switched_voltage_square_10_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_12_10 ;
	variable_switched_voltage_square_12_10.lo = 0.0 ;
	variable_switched_voltage_square_12_10.up = 1.1025 ;
Free Variable variable_switched_voltage_square_11_13 ;
	variable_switched_voltage_square_11_13.lo = 0.0 ;
	variable_switched_voltage_square_11_13.up = 1.1025 ;
Free Variable variable_switched_voltage_square_13_11 ;
	variable_switched_voltage_square_13_11.lo = 0.0 ;
	variable_switched_voltage_square_13_11.up = 1.1025 ;
Free Variable variable_switched_voltage_square_11_14 ;
	variable_switched_voltage_square_11_14.lo = 0.0 ;
	variable_switched_voltage_square_11_14.up = 1.1025 ;
Free Variable variable_switched_voltage_square_14_11 ;
	variable_switched_voltage_square_14_11.lo = 0.0 ;
	variable_switched_voltage_square_14_11.up = 1.1025 ;
Free Variable variable_switched_voltage_square_12_13 ;
	variable_switched_voltage_square_12_13.lo = 0.0 ;
	variable_switched_voltage_square_12_13.up = 1.1025 ;
Free Variable variable_switched_voltage_square_13_12 ;
	variable_switched_voltage_square_13_12.lo = 0.0 ;
	variable_switched_voltage_square_13_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_12_23 ;
	variable_switched_voltage_square_12_23.lo = 0.0 ;
	variable_switched_voltage_square_12_23.up = 1.1025 ;
Free Variable variable_switched_voltage_square_23_12 ;
	variable_switched_voltage_square_23_12.lo = 0.0 ;
	variable_switched_voltage_square_23_12.up = 1.1025 ;
Free Variable variable_switched_voltage_square_13_23 ;
	variable_switched_voltage_square_13_23.lo = 0.0 ;
	variable_switched_voltage_square_13_23.up = 1.1025 ;
Free Variable variable_switched_voltage_square_23_13 ;
	variable_switched_voltage_square_23_13.lo = 0.0 ;
	variable_switched_voltage_square_23_13.up = 1.1025 ;
Free Variable variable_switched_voltage_square_14_16 ;
	variable_switched_voltage_square_14_16.lo = 0.0 ;
	variable_switched_voltage_square_14_16.up = 1.1025 ;
Free Variable variable_switched_voltage_square_16_14 ;
	variable_switched_voltage_square_16_14.lo = 0.0 ;
	variable_switched_voltage_square_16_14.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_16 ;
	variable_switched_voltage_square_15_16.lo = 0.0 ;
	variable_switched_voltage_square_15_16.up = 1.1025 ;
Free Variable variable_switched_voltage_square_16_15 ;
	variable_switched_voltage_square_16_15.lo = 0.0 ;
	variable_switched_voltage_square_16_15.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_21 ;
	variable_switched_voltage_square_15_21.lo = 0.0 ;
	variable_switched_voltage_square_15_21.up = 1.1025 ;
Free Variable variable_switched_voltage_square_21_15 ;
	variable_switched_voltage_square_21_15.lo = 0.0 ;
	variable_switched_voltage_square_21_15.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_21_2 ;
	variable_switched_voltage_square_15_21_2.lo = 0.0 ;
	variable_switched_voltage_square_15_21_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_21_15_2 ;
	variable_switched_voltage_square_21_15_2.lo = 0.0 ;
	variable_switched_voltage_square_21_15_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_15_24 ;
	variable_switched_voltage_square_15_24.lo = 0.0 ;
	variable_switched_voltage_square_15_24.up = 1.1025 ;
Free Variable variable_switched_voltage_square_24_15 ;
	variable_switched_voltage_square_24_15.lo = 0.0 ;
	variable_switched_voltage_square_24_15.up = 1.1025 ;
Free Variable variable_switched_voltage_square_16_17 ;
	variable_switched_voltage_square_16_17.lo = 0.0 ;
	variable_switched_voltage_square_16_17.up = 1.1025 ;
Free Variable variable_switched_voltage_square_17_16 ;
	variable_switched_voltage_square_17_16.lo = 0.0 ;
	variable_switched_voltage_square_17_16.up = 1.1025 ;
Free Variable variable_switched_voltage_square_16_19 ;
	variable_switched_voltage_square_16_19.lo = 0.0 ;
	variable_switched_voltage_square_16_19.up = 1.1025 ;
Free Variable variable_switched_voltage_square_19_16 ;
	variable_switched_voltage_square_19_16.lo = 0.0 ;
	variable_switched_voltage_square_19_16.up = 1.1025 ;
Free Variable variable_switched_voltage_square_17_18 ;
	variable_switched_voltage_square_17_18.lo = 0.0 ;
	variable_switched_voltage_square_17_18.up = 1.1025 ;
Free Variable variable_switched_voltage_square_18_17 ;
	variable_switched_voltage_square_18_17.lo = 0.0 ;
	variable_switched_voltage_square_18_17.up = 1.1025 ;
Free Variable variable_switched_voltage_square_17_22 ;
	variable_switched_voltage_square_17_22.lo = 0.0 ;
	variable_switched_voltage_square_17_22.up = 1.1025 ;
Free Variable variable_switched_voltage_square_22_17 ;
	variable_switched_voltage_square_22_17.lo = 0.0 ;
	variable_switched_voltage_square_22_17.up = 1.1025 ;
Free Variable variable_switched_voltage_square_18_21 ;
	variable_switched_voltage_square_18_21.lo = 0.0 ;
	variable_switched_voltage_square_18_21.up = 1.1025 ;
Free Variable variable_switched_voltage_square_21_18 ;
	variable_switched_voltage_square_21_18.lo = 0.0 ;
	variable_switched_voltage_square_21_18.up = 1.1025 ;
Free Variable variable_switched_voltage_square_18_21_2 ;
	variable_switched_voltage_square_18_21_2.lo = 0.0 ;
	variable_switched_voltage_square_18_21_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_21_18_2 ;
	variable_switched_voltage_square_21_18_2.lo = 0.0 ;
	variable_switched_voltage_square_21_18_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_19_20 ;
	variable_switched_voltage_square_19_20.lo = 0.0 ;
	variable_switched_voltage_square_19_20.up = 1.1025 ;
Free Variable variable_switched_voltage_square_20_19 ;
	variable_switched_voltage_square_20_19.lo = 0.0 ;
	variable_switched_voltage_square_20_19.up = 1.1025 ;
Free Variable variable_switched_voltage_square_19_20_2 ;
	variable_switched_voltage_square_19_20_2.lo = 0.0 ;
	variable_switched_voltage_square_19_20_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_20_19_2 ;
	variable_switched_voltage_square_20_19_2.lo = 0.0 ;
	variable_switched_voltage_square_20_19_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_20_23 ;
	variable_switched_voltage_square_20_23.lo = 0.0 ;
	variable_switched_voltage_square_20_23.up = 1.1025 ;
Free Variable variable_switched_voltage_square_23_20 ;
	variable_switched_voltage_square_23_20.lo = 0.0 ;
	variable_switched_voltage_square_23_20.up = 1.1025 ;
Free Variable variable_switched_voltage_square_20_23_2 ;
	variable_switched_voltage_square_20_23_2.lo = 0.0 ;
	variable_switched_voltage_square_20_23_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_23_20_2 ;
	variable_switched_voltage_square_23_20_2.lo = 0.0 ;
	variable_switched_voltage_square_23_20_2.up = 1.1025 ;
Free Variable variable_switched_voltage_square_21_22 ;
	variable_switched_voltage_square_21_22.lo = 0.0 ;
	variable_switched_voltage_square_21_22.up = 1.1025 ;
Free Variable variable_switched_voltage_square_22_21 ;
	variable_switched_voltage_square_22_21.lo = 0.0 ;
	variable_switched_voltage_square_22_21.up = 1.1025 ;
Free Variable variable_real_power_flow_1_2 ;
	variable_real_power_flow_1_2.lo = -1.75 ;
	variable_real_power_flow_1_2.up = 1.75 ;
Free Variable variable_real_power_flow_2_1 ;
	variable_real_power_flow_2_1.lo = -1.75 ;
	variable_real_power_flow_2_1.up = 1.75 ;
Free Variable variable_real_power_flow_1_3 ;
	variable_real_power_flow_1_3.lo = -1.75 ;
	variable_real_power_flow_1_3.up = 1.75 ;
Free Variable variable_real_power_flow_3_1 ;
	variable_real_power_flow_3_1.lo = -1.75 ;
	variable_real_power_flow_3_1.up = 1.75 ;
Free Variable variable_real_power_flow_1_5 ;
	variable_real_power_flow_1_5.lo = -1.75 ;
	variable_real_power_flow_1_5.up = 1.75 ;
Free Variable variable_real_power_flow_5_1 ;
	variable_real_power_flow_5_1.lo = -1.75 ;
	variable_real_power_flow_5_1.up = 1.75 ;
Free Variable variable_real_power_flow_2_4 ;
	variable_real_power_flow_2_4.lo = -1.75 ;
	variable_real_power_flow_2_4.up = 1.75 ;
Free Variable variable_real_power_flow_4_2 ;
	variable_real_power_flow_4_2.lo = -1.75 ;
	variable_real_power_flow_4_2.up = 1.75 ;
Free Variable variable_real_power_flow_2_6 ;
	variable_real_power_flow_2_6.lo = -1.75 ;
	variable_real_power_flow_2_6.up = 1.75 ;
Free Variable variable_real_power_flow_6_2 ;
	variable_real_power_flow_6_2.lo = -1.75 ;
	variable_real_power_flow_6_2.up = 1.75 ;
Free Variable variable_real_power_flow_3_9 ;
	variable_real_power_flow_3_9.lo = -1.75 ;
	variable_real_power_flow_3_9.up = 1.75 ;
Free Variable variable_real_power_flow_9_3 ;
	variable_real_power_flow_9_3.lo = -1.75 ;
	variable_real_power_flow_9_3.up = 1.75 ;
Free Variable variable_real_power_flow_3_24 ;
	variable_real_power_flow_3_24.lo = -4.0 ;
	variable_real_power_flow_3_24.up = 4.0 ;
Free Variable variable_real_power_flow_24_3 ;
	variable_real_power_flow_24_3.lo = -4.0 ;
	variable_real_power_flow_24_3.up = 4.0 ;
Free Variable variable_real_power_flow_4_9 ;
	variable_real_power_flow_4_9.lo = -1.75 ;
	variable_real_power_flow_4_9.up = 1.75 ;
Free Variable variable_real_power_flow_9_4 ;
	variable_real_power_flow_9_4.lo = -1.75 ;
	variable_real_power_flow_9_4.up = 1.75 ;
Free Variable variable_real_power_flow_5_10 ;
	variable_real_power_flow_5_10.lo = -1.75 ;
	variable_real_power_flow_5_10.up = 1.75 ;
Free Variable variable_real_power_flow_10_5 ;
	variable_real_power_flow_10_5.lo = -1.75 ;
	variable_real_power_flow_10_5.up = 1.75 ;
Free Variable variable_real_power_flow_6_10 ;
	variable_real_power_flow_6_10.lo = -1.75 ;
	variable_real_power_flow_6_10.up = 1.75 ;
Free Variable variable_real_power_flow_10_6 ;
	variable_real_power_flow_10_6.lo = -1.75 ;
	variable_real_power_flow_10_6.up = 1.75 ;
Free Variable variable_real_power_flow_7_8 ;
	variable_real_power_flow_7_8.lo = -1.75 ;
	variable_real_power_flow_7_8.up = 1.75 ;
Free Variable variable_real_power_flow_8_7 ;
	variable_real_power_flow_8_7.lo = -1.75 ;
	variable_real_power_flow_8_7.up = 1.75 ;
Free Variable variable_real_power_flow_8_9 ;
	variable_real_power_flow_8_9.lo = -1.75 ;
	variable_real_power_flow_8_9.up = 1.75 ;
Free Variable variable_real_power_flow_9_8 ;
	variable_real_power_flow_9_8.lo = -1.75 ;
	variable_real_power_flow_9_8.up = 1.75 ;
Free Variable variable_real_power_flow_8_10 ;
	variable_real_power_flow_8_10.lo = -1.75 ;
	variable_real_power_flow_8_10.up = 1.75 ;
Free Variable variable_real_power_flow_10_8 ;
	variable_real_power_flow_10_8.lo = -1.75 ;
	variable_real_power_flow_10_8.up = 1.75 ;
Free Variable variable_real_power_flow_9_11 ;
	variable_real_power_flow_9_11.lo = -4.0 ;
	variable_real_power_flow_9_11.up = 4.0 ;
Free Variable variable_real_power_flow_11_9 ;
	variable_real_power_flow_11_9.lo = -4.0 ;
	variable_real_power_flow_11_9.up = 4.0 ;
Free Variable variable_real_power_flow_9_12 ;
	variable_real_power_flow_9_12.lo = -4.0 ;
	variable_real_power_flow_9_12.up = 4.0 ;
Free Variable variable_real_power_flow_12_9 ;
	variable_real_power_flow_12_9.lo = -4.0 ;
	variable_real_power_flow_12_9.up = 4.0 ;
Free Variable variable_real_power_flow_10_11 ;
	variable_real_power_flow_10_11.lo = -4.0 ;
	variable_real_power_flow_10_11.up = 4.0 ;
Free Variable variable_real_power_flow_11_10 ;
	variable_real_power_flow_11_10.lo = -4.0 ;
	variable_real_power_flow_11_10.up = 4.0 ;
Free Variable variable_real_power_flow_10_12 ;
	variable_real_power_flow_10_12.lo = -4.0 ;
	variable_real_power_flow_10_12.up = 4.0 ;
Free Variable variable_real_power_flow_12_10 ;
	variable_real_power_flow_12_10.lo = -4.0 ;
	variable_real_power_flow_12_10.up = 4.0 ;
Free Variable variable_real_power_flow_11_13 ;
	variable_real_power_flow_11_13.lo = -5.0 ;
	variable_real_power_flow_11_13.up = 5.0 ;
Free Variable variable_real_power_flow_13_11 ;
	variable_real_power_flow_13_11.lo = -5.0 ;
	variable_real_power_flow_13_11.up = 5.0 ;
Free Variable variable_real_power_flow_11_14 ;
	variable_real_power_flow_11_14.lo = -5.0 ;
	variable_real_power_flow_11_14.up = 5.0 ;
Free Variable variable_real_power_flow_14_11 ;
	variable_real_power_flow_14_11.lo = -5.0 ;
	variable_real_power_flow_14_11.up = 5.0 ;
Free Variable variable_real_power_flow_12_13 ;
	variable_real_power_flow_12_13.lo = -5.0 ;
	variable_real_power_flow_12_13.up = 5.0 ;
Free Variable variable_real_power_flow_13_12 ;
	variable_real_power_flow_13_12.lo = -5.0 ;
	variable_real_power_flow_13_12.up = 5.0 ;
Free Variable variable_real_power_flow_12_23 ;
	variable_real_power_flow_12_23.lo = -5.0 ;
	variable_real_power_flow_12_23.up = 5.0 ;
Free Variable variable_real_power_flow_23_12 ;
	variable_real_power_flow_23_12.lo = -5.0 ;
	variable_real_power_flow_23_12.up = 5.0 ;
Free Variable variable_real_power_flow_13_23 ;
	variable_real_power_flow_13_23.lo = -5.0 ;
	variable_real_power_flow_13_23.up = 5.0 ;
Free Variable variable_real_power_flow_23_13 ;
	variable_real_power_flow_23_13.lo = -5.0 ;
	variable_real_power_flow_23_13.up = 5.0 ;
Free Variable variable_real_power_flow_14_16 ;
	variable_real_power_flow_14_16.lo = -5.0 ;
	variable_real_power_flow_14_16.up = 5.0 ;
Free Variable variable_real_power_flow_16_14 ;
	variable_real_power_flow_16_14.lo = -5.0 ;
	variable_real_power_flow_16_14.up = 5.0 ;
Free Variable variable_real_power_flow_15_16 ;
	variable_real_power_flow_15_16.lo = -5.0 ;
	variable_real_power_flow_15_16.up = 5.0 ;
Free Variable variable_real_power_flow_16_15 ;
	variable_real_power_flow_16_15.lo = -5.0 ;
	variable_real_power_flow_16_15.up = 5.0 ;
Free Variable variable_real_power_flow_15_21 ;
	variable_real_power_flow_15_21.lo = -5.0 ;
	variable_real_power_flow_15_21.up = 5.0 ;
Free Variable variable_real_power_flow_21_15 ;
	variable_real_power_flow_21_15.lo = -5.0 ;
	variable_real_power_flow_21_15.up = 5.0 ;
Free Variable variable_real_power_flow_15_21_2 ;
	variable_real_power_flow_15_21_2.lo = -5.0 ;
	variable_real_power_flow_15_21_2.up = 5.0 ;
Free Variable variable_real_power_flow_21_15_2 ;
	variable_real_power_flow_21_15_2.lo = -5.0 ;
	variable_real_power_flow_21_15_2.up = 5.0 ;
Free Variable variable_real_power_flow_15_24 ;
	variable_real_power_flow_15_24.lo = -5.0 ;
	variable_real_power_flow_15_24.up = 5.0 ;
Free Variable variable_real_power_flow_24_15 ;
	variable_real_power_flow_24_15.lo = -5.0 ;
	variable_real_power_flow_24_15.up = 5.0 ;
Free Variable variable_real_power_flow_16_17 ;
	variable_real_power_flow_16_17.lo = -5.0 ;
	variable_real_power_flow_16_17.up = 5.0 ;
Free Variable variable_real_power_flow_17_16 ;
	variable_real_power_flow_17_16.lo = -5.0 ;
	variable_real_power_flow_17_16.up = 5.0 ;
Free Variable variable_real_power_flow_16_19 ;
	variable_real_power_flow_16_19.lo = -5.0 ;
	variable_real_power_flow_16_19.up = 5.0 ;
Free Variable variable_real_power_flow_19_16 ;
	variable_real_power_flow_19_16.lo = -5.0 ;
	variable_real_power_flow_19_16.up = 5.0 ;
Free Variable variable_real_power_flow_17_18 ;
	variable_real_power_flow_17_18.lo = -5.0 ;
	variable_real_power_flow_17_18.up = 5.0 ;
Free Variable variable_real_power_flow_18_17 ;
	variable_real_power_flow_18_17.lo = -5.0 ;
	variable_real_power_flow_18_17.up = 5.0 ;
Free Variable variable_real_power_flow_17_22 ;
	variable_real_power_flow_17_22.lo = -5.0 ;
	variable_real_power_flow_17_22.up = 5.0 ;
Free Variable variable_real_power_flow_22_17 ;
	variable_real_power_flow_22_17.lo = -5.0 ;
	variable_real_power_flow_22_17.up = 5.0 ;
Free Variable variable_real_power_flow_18_21 ;
	variable_real_power_flow_18_21.lo = -5.0 ;
	variable_real_power_flow_18_21.up = 5.0 ;
Free Variable variable_real_power_flow_21_18 ;
	variable_real_power_flow_21_18.lo = -5.0 ;
	variable_real_power_flow_21_18.up = 5.0 ;
Free Variable variable_real_power_flow_18_21_2 ;
	variable_real_power_flow_18_21_2.lo = -5.0 ;
	variable_real_power_flow_18_21_2.up = 5.0 ;
Free Variable variable_real_power_flow_21_18_2 ;
	variable_real_power_flow_21_18_2.lo = -5.0 ;
	variable_real_power_flow_21_18_2.up = 5.0 ;
Free Variable variable_real_power_flow_19_20 ;
	variable_real_power_flow_19_20.lo = -5.0 ;
	variable_real_power_flow_19_20.up = 5.0 ;
Free Variable variable_real_power_flow_20_19 ;
	variable_real_power_flow_20_19.lo = -5.0 ;
	variable_real_power_flow_20_19.up = 5.0 ;
Free Variable variable_real_power_flow_19_20_2 ;
	variable_real_power_flow_19_20_2.lo = -5.0 ;
	variable_real_power_flow_19_20_2.up = 5.0 ;
Free Variable variable_real_power_flow_20_19_2 ;
	variable_real_power_flow_20_19_2.lo = -5.0 ;
	variable_real_power_flow_20_19_2.up = 5.0 ;
Free Variable variable_real_power_flow_20_23 ;
	variable_real_power_flow_20_23.lo = -5.0 ;
	variable_real_power_flow_20_23.up = 5.0 ;
Free Variable variable_real_power_flow_23_20 ;
	variable_real_power_flow_23_20.lo = -5.0 ;
	variable_real_power_flow_23_20.up = 5.0 ;
Free Variable variable_real_power_flow_20_23_2 ;
	variable_real_power_flow_20_23_2.lo = -5.0 ;
	variable_real_power_flow_20_23_2.up = 5.0 ;
Free Variable variable_real_power_flow_23_20_2 ;
	variable_real_power_flow_23_20_2.lo = -5.0 ;
	variable_real_power_flow_23_20_2.up = 5.0 ;
Free Variable variable_real_power_flow_21_22 ;
	variable_real_power_flow_21_22.lo = -5.0 ;
	variable_real_power_flow_21_22.up = 5.0 ;
Free Variable variable_real_power_flow_22_21 ;
	variable_real_power_flow_22_21.lo = -5.0 ;
	variable_real_power_flow_22_21.up = 5.0 ;
Free Variable variable_reactive_power_flow_1_2 ;
	variable_reactive_power_flow_1_2.lo = -1.75 ;
	variable_reactive_power_flow_1_2.up = 1.75 ;
Free Variable variable_reactive_power_flow_2_1 ;
	variable_reactive_power_flow_2_1.lo = -1.75 ;
	variable_reactive_power_flow_2_1.up = 1.75 ;
Free Variable variable_reactive_power_flow_1_3 ;
	variable_reactive_power_flow_1_3.lo = -1.75 ;
	variable_reactive_power_flow_1_3.up = 1.75 ;
Free Variable variable_reactive_power_flow_3_1 ;
	variable_reactive_power_flow_3_1.lo = -1.75 ;
	variable_reactive_power_flow_3_1.up = 1.75 ;
Free Variable variable_reactive_power_flow_1_5 ;
	variable_reactive_power_flow_1_5.lo = -1.75 ;
	variable_reactive_power_flow_1_5.up = 1.75 ;
Free Variable variable_reactive_power_flow_5_1 ;
	variable_reactive_power_flow_5_1.lo = -1.75 ;
	variable_reactive_power_flow_5_1.up = 1.75 ;
Free Variable variable_reactive_power_flow_2_4 ;
	variable_reactive_power_flow_2_4.lo = -1.75 ;
	variable_reactive_power_flow_2_4.up = 1.75 ;
Free Variable variable_reactive_power_flow_4_2 ;
	variable_reactive_power_flow_4_2.lo = -1.75 ;
	variable_reactive_power_flow_4_2.up = 1.75 ;
Free Variable variable_reactive_power_flow_2_6 ;
	variable_reactive_power_flow_2_6.lo = -1.75 ;
	variable_reactive_power_flow_2_6.up = 1.75 ;
Free Variable variable_reactive_power_flow_6_2 ;
	variable_reactive_power_flow_6_2.lo = -1.75 ;
	variable_reactive_power_flow_6_2.up = 1.75 ;
Free Variable variable_reactive_power_flow_3_9 ;
	variable_reactive_power_flow_3_9.lo = -1.75 ;
	variable_reactive_power_flow_3_9.up = 1.75 ;
Free Variable variable_reactive_power_flow_9_3 ;
	variable_reactive_power_flow_9_3.lo = -1.75 ;
	variable_reactive_power_flow_9_3.up = 1.75 ;
Free Variable variable_reactive_power_flow_3_24 ;
	variable_reactive_power_flow_3_24.lo = -4.0 ;
	variable_reactive_power_flow_3_24.up = 4.0 ;
Free Variable variable_reactive_power_flow_24_3 ;
	variable_reactive_power_flow_24_3.lo = -4.0 ;
	variable_reactive_power_flow_24_3.up = 4.0 ;
Free Variable variable_reactive_power_flow_4_9 ;
	variable_reactive_power_flow_4_9.lo = -1.75 ;
	variable_reactive_power_flow_4_9.up = 1.75 ;
Free Variable variable_reactive_power_flow_9_4 ;
	variable_reactive_power_flow_9_4.lo = -1.75 ;
	variable_reactive_power_flow_9_4.up = 1.75 ;
Free Variable variable_reactive_power_flow_5_10 ;
	variable_reactive_power_flow_5_10.lo = -1.75 ;
	variable_reactive_power_flow_5_10.up = 1.75 ;
Free Variable variable_reactive_power_flow_10_5 ;
	variable_reactive_power_flow_10_5.lo = -1.75 ;
	variable_reactive_power_flow_10_5.up = 1.75 ;
Free Variable variable_reactive_power_flow_6_10 ;
	variable_reactive_power_flow_6_10.lo = -1.75 ;
	variable_reactive_power_flow_6_10.up = 1.75 ;
Free Variable variable_reactive_power_flow_10_6 ;
	variable_reactive_power_flow_10_6.lo = -1.75 ;
	variable_reactive_power_flow_10_6.up = 1.75 ;
Free Variable variable_reactive_power_flow_7_8 ;
	variable_reactive_power_flow_7_8.lo = -1.75 ;
	variable_reactive_power_flow_7_8.up = 1.75 ;
Free Variable variable_reactive_power_flow_8_7 ;
	variable_reactive_power_flow_8_7.lo = -1.75 ;
	variable_reactive_power_flow_8_7.up = 1.75 ;
Free Variable variable_reactive_power_flow_8_9 ;
	variable_reactive_power_flow_8_9.lo = -1.75 ;
	variable_reactive_power_flow_8_9.up = 1.75 ;
Free Variable variable_reactive_power_flow_9_8 ;
	variable_reactive_power_flow_9_8.lo = -1.75 ;
	variable_reactive_power_flow_9_8.up = 1.75 ;
Free Variable variable_reactive_power_flow_8_10 ;
	variable_reactive_power_flow_8_10.lo = -1.75 ;
	variable_reactive_power_flow_8_10.up = 1.75 ;
Free Variable variable_reactive_power_flow_10_8 ;
	variable_reactive_power_flow_10_8.lo = -1.75 ;
	variable_reactive_power_flow_10_8.up = 1.75 ;
Free Variable variable_reactive_power_flow_9_11 ;
	variable_reactive_power_flow_9_11.lo = -4.0 ;
	variable_reactive_power_flow_9_11.up = 4.0 ;
Free Variable variable_reactive_power_flow_11_9 ;
	variable_reactive_power_flow_11_9.lo = -4.0 ;
	variable_reactive_power_flow_11_9.up = 4.0 ;
Free Variable variable_reactive_power_flow_9_12 ;
	variable_reactive_power_flow_9_12.lo = -4.0 ;
	variable_reactive_power_flow_9_12.up = 4.0 ;
Free Variable variable_reactive_power_flow_12_9 ;
	variable_reactive_power_flow_12_9.lo = -4.0 ;
	variable_reactive_power_flow_12_9.up = 4.0 ;
Free Variable variable_reactive_power_flow_10_11 ;
	variable_reactive_power_flow_10_11.lo = -4.0 ;
	variable_reactive_power_flow_10_11.up = 4.0 ;
Free Variable variable_reactive_power_flow_11_10 ;
	variable_reactive_power_flow_11_10.lo = -4.0 ;
	variable_reactive_power_flow_11_10.up = 4.0 ;
Free Variable variable_reactive_power_flow_10_12 ;
	variable_reactive_power_flow_10_12.lo = -4.0 ;
	variable_reactive_power_flow_10_12.up = 4.0 ;
Free Variable variable_reactive_power_flow_12_10 ;
	variable_reactive_power_flow_12_10.lo = -4.0 ;
	variable_reactive_power_flow_12_10.up = 4.0 ;
Free Variable variable_reactive_power_flow_11_13 ;
	variable_reactive_power_flow_11_13.lo = -5.0 ;
	variable_reactive_power_flow_11_13.up = 5.0 ;
Free Variable variable_reactive_power_flow_13_11 ;
	variable_reactive_power_flow_13_11.lo = -5.0 ;
	variable_reactive_power_flow_13_11.up = 5.0 ;
Free Variable variable_reactive_power_flow_11_14 ;
	variable_reactive_power_flow_11_14.lo = -5.0 ;
	variable_reactive_power_flow_11_14.up = 5.0 ;
Free Variable variable_reactive_power_flow_14_11 ;
	variable_reactive_power_flow_14_11.lo = -5.0 ;
	variable_reactive_power_flow_14_11.up = 5.0 ;
Free Variable variable_reactive_power_flow_12_13 ;
	variable_reactive_power_flow_12_13.lo = -5.0 ;
	variable_reactive_power_flow_12_13.up = 5.0 ;
Free Variable variable_reactive_power_flow_13_12 ;
	variable_reactive_power_flow_13_12.lo = -5.0 ;
	variable_reactive_power_flow_13_12.up = 5.0 ;
Free Variable variable_reactive_power_flow_12_23 ;
	variable_reactive_power_flow_12_23.lo = -5.0 ;
	variable_reactive_power_flow_12_23.up = 5.0 ;
Free Variable variable_reactive_power_flow_23_12 ;
	variable_reactive_power_flow_23_12.lo = -5.0 ;
	variable_reactive_power_flow_23_12.up = 5.0 ;
Free Variable variable_reactive_power_flow_13_23 ;
	variable_reactive_power_flow_13_23.lo = -5.0 ;
	variable_reactive_power_flow_13_23.up = 5.0 ;
Free Variable variable_reactive_power_flow_23_13 ;
	variable_reactive_power_flow_23_13.lo = -5.0 ;
	variable_reactive_power_flow_23_13.up = 5.0 ;
Free Variable variable_reactive_power_flow_14_16 ;
	variable_reactive_power_flow_14_16.lo = -5.0 ;
	variable_reactive_power_flow_14_16.up = 5.0 ;
Free Variable variable_reactive_power_flow_16_14 ;
	variable_reactive_power_flow_16_14.lo = -5.0 ;
	variable_reactive_power_flow_16_14.up = 5.0 ;
Free Variable variable_reactive_power_flow_15_16 ;
	variable_reactive_power_flow_15_16.lo = -5.0 ;
	variable_reactive_power_flow_15_16.up = 5.0 ;
Free Variable variable_reactive_power_flow_16_15 ;
	variable_reactive_power_flow_16_15.lo = -5.0 ;
	variable_reactive_power_flow_16_15.up = 5.0 ;
Free Variable variable_reactive_power_flow_15_21 ;
	variable_reactive_power_flow_15_21.lo = -5.0 ;
	variable_reactive_power_flow_15_21.up = 5.0 ;
Free Variable variable_reactive_power_flow_21_15 ;
	variable_reactive_power_flow_21_15.lo = -5.0 ;
	variable_reactive_power_flow_21_15.up = 5.0 ;
Free Variable variable_reactive_power_flow_15_21_2 ;
	variable_reactive_power_flow_15_21_2.lo = -5.0 ;
	variable_reactive_power_flow_15_21_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_21_15_2 ;
	variable_reactive_power_flow_21_15_2.lo = -5.0 ;
	variable_reactive_power_flow_21_15_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_15_24 ;
	variable_reactive_power_flow_15_24.lo = -5.0 ;
	variable_reactive_power_flow_15_24.up = 5.0 ;
Free Variable variable_reactive_power_flow_24_15 ;
	variable_reactive_power_flow_24_15.lo = -5.0 ;
	variable_reactive_power_flow_24_15.up = 5.0 ;
Free Variable variable_reactive_power_flow_16_17 ;
	variable_reactive_power_flow_16_17.lo = -5.0 ;
	variable_reactive_power_flow_16_17.up = 5.0 ;
Free Variable variable_reactive_power_flow_17_16 ;
	variable_reactive_power_flow_17_16.lo = -5.0 ;
	variable_reactive_power_flow_17_16.up = 5.0 ;
Free Variable variable_reactive_power_flow_16_19 ;
	variable_reactive_power_flow_16_19.lo = -5.0 ;
	variable_reactive_power_flow_16_19.up = 5.0 ;
Free Variable variable_reactive_power_flow_19_16 ;
	variable_reactive_power_flow_19_16.lo = -5.0 ;
	variable_reactive_power_flow_19_16.up = 5.0 ;
Free Variable variable_reactive_power_flow_17_18 ;
	variable_reactive_power_flow_17_18.lo = -5.0 ;
	variable_reactive_power_flow_17_18.up = 5.0 ;
Free Variable variable_reactive_power_flow_18_17 ;
	variable_reactive_power_flow_18_17.lo = -5.0 ;
	variable_reactive_power_flow_18_17.up = 5.0 ;
Free Variable variable_reactive_power_flow_17_22 ;
	variable_reactive_power_flow_17_22.lo = -5.0 ;
	variable_reactive_power_flow_17_22.up = 5.0 ;
Free Variable variable_reactive_power_flow_22_17 ;
	variable_reactive_power_flow_22_17.lo = -5.0 ;
	variable_reactive_power_flow_22_17.up = 5.0 ;
Free Variable variable_reactive_power_flow_18_21 ;
	variable_reactive_power_flow_18_21.lo = -5.0 ;
	variable_reactive_power_flow_18_21.up = 5.0 ;
Free Variable variable_reactive_power_flow_21_18 ;
	variable_reactive_power_flow_21_18.lo = -5.0 ;
	variable_reactive_power_flow_21_18.up = 5.0 ;
Free Variable variable_reactive_power_flow_18_21_2 ;
	variable_reactive_power_flow_18_21_2.lo = -5.0 ;
	variable_reactive_power_flow_18_21_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_21_18_2 ;
	variable_reactive_power_flow_21_18_2.lo = -5.0 ;
	variable_reactive_power_flow_21_18_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_19_20 ;
	variable_reactive_power_flow_19_20.lo = -5.0 ;
	variable_reactive_power_flow_19_20.up = 5.0 ;
Free Variable variable_reactive_power_flow_20_19 ;
	variable_reactive_power_flow_20_19.lo = -5.0 ;
	variable_reactive_power_flow_20_19.up = 5.0 ;
Free Variable variable_reactive_power_flow_19_20_2 ;
	variable_reactive_power_flow_19_20_2.lo = -5.0 ;
	variable_reactive_power_flow_19_20_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_20_19_2 ;
	variable_reactive_power_flow_20_19_2.lo = -5.0 ;
	variable_reactive_power_flow_20_19_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_20_23 ;
	variable_reactive_power_flow_20_23.lo = -5.0 ;
	variable_reactive_power_flow_20_23.up = 5.0 ;
Free Variable variable_reactive_power_flow_23_20 ;
	variable_reactive_power_flow_23_20.lo = -5.0 ;
	variable_reactive_power_flow_23_20.up = 5.0 ;
Free Variable variable_reactive_power_flow_20_23_2 ;
	variable_reactive_power_flow_20_23_2.lo = -5.0 ;
	variable_reactive_power_flow_20_23_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_23_20_2 ;
	variable_reactive_power_flow_23_20_2.lo = -5.0 ;
	variable_reactive_power_flow_23_20_2.up = 5.0 ;
Free Variable variable_reactive_power_flow_21_22 ;
	variable_reactive_power_flow_21_22.lo = -5.0 ;
	variable_reactive_power_flow_21_22.up = 5.0 ;
Free Variable variable_reactive_power_flow_22_21 ;
	variable_reactive_power_flow_22_21.lo = -5.0 ;
	variable_reactive_power_flow_22_21.up = 5.0 ;
Free Variable variable_voltage_product_real_1_2 ;
	variable_voltage_product_real_1_2.lo = 0.0 ;
	variable_voltage_product_real_1_2.up = 1.1025 ;
Free Variable variable_voltage_product_real_1_3 ;
	variable_voltage_product_real_1_3.lo = 0.0 ;
	variable_voltage_product_real_1_3.up = 1.1025 ;
Free Variable variable_voltage_product_real_1_5 ;
	variable_voltage_product_real_1_5.lo = 0.0 ;
	variable_voltage_product_real_1_5.up = 1.1025 ;
Free Variable variable_voltage_product_real_2_4 ;
	variable_voltage_product_real_2_4.lo = 0.0 ;
	variable_voltage_product_real_2_4.up = 1.1025 ;
Free Variable variable_voltage_product_real_2_6 ;
	variable_voltage_product_real_2_6.lo = 0.0 ;
	variable_voltage_product_real_2_6.up = 1.1025 ;
Free Variable variable_voltage_product_real_3_9 ;
	variable_voltage_product_real_3_9.lo = 0.0 ;
	variable_voltage_product_real_3_9.up = 1.1025 ;
Free Variable variable_voltage_product_real_3_24 ;
	variable_voltage_product_real_3_24.lo = 0.0 ;
	variable_voltage_product_real_3_24.up = 1.1025 ;
Free Variable variable_voltage_product_real_4_9 ;
	variable_voltage_product_real_4_9.lo = 0.0 ;
	variable_voltage_product_real_4_9.up = 1.1025 ;
Free Variable variable_voltage_product_real_5_10 ;
	variable_voltage_product_real_5_10.lo = 0.0 ;
	variable_voltage_product_real_5_10.up = 1.1025 ;
Free Variable variable_voltage_product_real_6_10 ;
	variable_voltage_product_real_6_10.lo = 0.0 ;
	variable_voltage_product_real_6_10.up = 1.1025 ;
Free Variable variable_voltage_product_real_7_8 ;
	variable_voltage_product_real_7_8.lo = 0.0 ;
	variable_voltage_product_real_7_8.up = 1.1025 ;
Free Variable variable_voltage_product_real_8_9 ;
	variable_voltage_product_real_8_9.lo = 0.0 ;
	variable_voltage_product_real_8_9.up = 1.1025 ;
Free Variable variable_voltage_product_real_8_10 ;
	variable_voltage_product_real_8_10.lo = 0.0 ;
	variable_voltage_product_real_8_10.up = 1.1025 ;
Free Variable variable_voltage_product_real_9_11 ;
	variable_voltage_product_real_9_11.lo = 0.0 ;
	variable_voltage_product_real_9_11.up = 1.1025 ;
Free Variable variable_voltage_product_real_9_12 ;
	variable_voltage_product_real_9_12.lo = 0.0 ;
	variable_voltage_product_real_9_12.up = 1.1025 ;
Free Variable variable_voltage_product_real_10_11 ;
	variable_voltage_product_real_10_11.lo = 0.0 ;
	variable_voltage_product_real_10_11.up = 1.1025 ;
Free Variable variable_voltage_product_real_10_12 ;
	variable_voltage_product_real_10_12.lo = 0.0 ;
	variable_voltage_product_real_10_12.up = 1.1025 ;
Free Variable variable_voltage_product_real_11_13 ;
	variable_voltage_product_real_11_13.lo = 0.0 ;
	variable_voltage_product_real_11_13.up = 1.1025 ;
Free Variable variable_voltage_product_real_11_14 ;
	variable_voltage_product_real_11_14.lo = 0.0 ;
	variable_voltage_product_real_11_14.up = 1.1025 ;
Free Variable variable_voltage_product_real_12_13 ;
	variable_voltage_product_real_12_13.lo = 0.0 ;
	variable_voltage_product_real_12_13.up = 1.1025 ;
Free Variable variable_voltage_product_real_12_23 ;
	variable_voltage_product_real_12_23.lo = 0.0 ;
	variable_voltage_product_real_12_23.up = 1.1025 ;
Free Variable variable_voltage_product_real_13_23 ;
	variable_voltage_product_real_13_23.lo = 0.0 ;
	variable_voltage_product_real_13_23.up = 1.1025 ;
Free Variable variable_voltage_product_real_14_16 ;
	variable_voltage_product_real_14_16.lo = 0.0 ;
	variable_voltage_product_real_14_16.up = 1.1025 ;
Free Variable variable_voltage_product_real_15_16 ;
	variable_voltage_product_real_15_16.lo = 0.0 ;
	variable_voltage_product_real_15_16.up = 1.1025 ;
Free Variable variable_voltage_product_real_15_21 ;
	variable_voltage_product_real_15_21.lo = 0.0 ;
	variable_voltage_product_real_15_21.up = 1.1025 ;
Free Variable variable_voltage_product_real_15_21_2 ;
	variable_voltage_product_real_15_21_2.lo = 0.0 ;
	variable_voltage_product_real_15_21_2.up = 1.1025 ;
Free Variable variable_voltage_product_real_15_24 ;
	variable_voltage_product_real_15_24.lo = 0.0 ;
	variable_voltage_product_real_15_24.up = 1.1025 ;
Free Variable variable_voltage_product_real_16_17 ;
	variable_voltage_product_real_16_17.lo = 0.0 ;
	variable_voltage_product_real_16_17.up = 1.1025 ;
Free Variable variable_voltage_product_real_16_19 ;
	variable_voltage_product_real_16_19.lo = 0.0 ;
	variable_voltage_product_real_16_19.up = 1.1025 ;
Free Variable variable_voltage_product_real_17_18 ;
	variable_voltage_product_real_17_18.lo = 0.0 ;
	variable_voltage_product_real_17_18.up = 1.1025 ;
Free Variable variable_voltage_product_real_17_22 ;
	variable_voltage_product_real_17_22.lo = 0.0 ;
	variable_voltage_product_real_17_22.up = 1.1025 ;
Free Variable variable_voltage_product_real_18_21 ;
	variable_voltage_product_real_18_21.lo = 0.0 ;
	variable_voltage_product_real_18_21.up = 1.1025 ;
Free Variable variable_voltage_product_real_18_21_2 ;
	variable_voltage_product_real_18_21_2.lo = 0.0 ;
	variable_voltage_product_real_18_21_2.up = 1.1025 ;
Free Variable variable_voltage_product_real_19_20 ;
	variable_voltage_product_real_19_20.lo = 0.0 ;
	variable_voltage_product_real_19_20.up = 1.1025 ;
Free Variable variable_voltage_product_real_19_20_2 ;
	variable_voltage_product_real_19_20_2.lo = 0.0 ;
	variable_voltage_product_real_19_20_2.up = 1.1025 ;
Free Variable variable_voltage_product_real_20_23 ;
	variable_voltage_product_real_20_23.lo = 0.0 ;
	variable_voltage_product_real_20_23.up = 1.1025 ;
Free Variable variable_voltage_product_real_20_23_2 ;
	variable_voltage_product_real_20_23_2.lo = 0.0 ;
	variable_voltage_product_real_20_23_2.up = 1.1025 ;
Free Variable variable_voltage_product_real_21_22 ;
	variable_voltage_product_real_21_22.lo = 0.0 ;
	variable_voltage_product_real_21_22.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_1_2 ;
	variable_voltage_product_imaginary_1_2.lo = -1.1025 ;
	variable_voltage_product_imaginary_1_2.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_1_3 ;
	variable_voltage_product_imaginary_1_3.lo = -1.1025 ;
	variable_voltage_product_imaginary_1_3.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_1_5 ;
	variable_voltage_product_imaginary_1_5.lo = -1.1025 ;
	variable_voltage_product_imaginary_1_5.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_2_4 ;
	variable_voltage_product_imaginary_2_4.lo = -1.1025 ;
	variable_voltage_product_imaginary_2_4.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_2_6 ;
	variable_voltage_product_imaginary_2_6.lo = -1.1025 ;
	variable_voltage_product_imaginary_2_6.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_3_9 ;
	variable_voltage_product_imaginary_3_9.lo = -1.1025 ;
	variable_voltage_product_imaginary_3_9.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_3_24 ;
	variable_voltage_product_imaginary_3_24.lo = -1.1025 ;
	variable_voltage_product_imaginary_3_24.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_4_9 ;
	variable_voltage_product_imaginary_4_9.lo = -1.1025 ;
	variable_voltage_product_imaginary_4_9.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_5_10 ;
	variable_voltage_product_imaginary_5_10.lo = -1.1025 ;
	variable_voltage_product_imaginary_5_10.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_6_10 ;
	variable_voltage_product_imaginary_6_10.lo = -1.1025 ;
	variable_voltage_product_imaginary_6_10.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_7_8 ;
	variable_voltage_product_imaginary_7_8.lo = -1.1025 ;
	variable_voltage_product_imaginary_7_8.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_8_9 ;
	variable_voltage_product_imaginary_8_9.lo = -1.1025 ;
	variable_voltage_product_imaginary_8_9.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_8_10 ;
	variable_voltage_product_imaginary_8_10.lo = -1.1025 ;
	variable_voltage_product_imaginary_8_10.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_9_11 ;
	variable_voltage_product_imaginary_9_11.lo = -1.1025 ;
	variable_voltage_product_imaginary_9_11.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_9_12 ;
	variable_voltage_product_imaginary_9_12.lo = -1.1025 ;
	variable_voltage_product_imaginary_9_12.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_10_11 ;
	variable_voltage_product_imaginary_10_11.lo = -1.1025 ;
	variable_voltage_product_imaginary_10_11.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_10_12 ;
	variable_voltage_product_imaginary_10_12.lo = -1.1025 ;
	variable_voltage_product_imaginary_10_12.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_11_13 ;
	variable_voltage_product_imaginary_11_13.lo = -1.1025 ;
	variable_voltage_product_imaginary_11_13.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_11_14 ;
	variable_voltage_product_imaginary_11_14.lo = -1.1025 ;
	variable_voltage_product_imaginary_11_14.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_12_13 ;
	variable_voltage_product_imaginary_12_13.lo = -1.1025 ;
	variable_voltage_product_imaginary_12_13.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_12_23 ;
	variable_voltage_product_imaginary_12_23.lo = -1.1025 ;
	variable_voltage_product_imaginary_12_23.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_13_23 ;
	variable_voltage_product_imaginary_13_23.lo = -1.1025 ;
	variable_voltage_product_imaginary_13_23.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_14_16 ;
	variable_voltage_product_imaginary_14_16.lo = -1.1025 ;
	variable_voltage_product_imaginary_14_16.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_15_16 ;
	variable_voltage_product_imaginary_15_16.lo = -1.1025 ;
	variable_voltage_product_imaginary_15_16.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_15_21 ;
	variable_voltage_product_imaginary_15_21.lo = -1.1025 ;
	variable_voltage_product_imaginary_15_21.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_15_21_2 ;
	variable_voltage_product_imaginary_15_21_2.lo = -1.1025 ;
	variable_voltage_product_imaginary_15_21_2.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_15_24 ;
	variable_voltage_product_imaginary_15_24.lo = -1.1025 ;
	variable_voltage_product_imaginary_15_24.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_16_17 ;
	variable_voltage_product_imaginary_16_17.lo = -1.1025 ;
	variable_voltage_product_imaginary_16_17.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_16_19 ;
	variable_voltage_product_imaginary_16_19.lo = -1.1025 ;
	variable_voltage_product_imaginary_16_19.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_17_18 ;
	variable_voltage_product_imaginary_17_18.lo = -1.1025 ;
	variable_voltage_product_imaginary_17_18.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_17_22 ;
	variable_voltage_product_imaginary_17_22.lo = -1.1025 ;
	variable_voltage_product_imaginary_17_22.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_18_21 ;
	variable_voltage_product_imaginary_18_21.lo = -1.1025 ;
	variable_voltage_product_imaginary_18_21.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_18_21_2 ;
	variable_voltage_product_imaginary_18_21_2.lo = -1.1025 ;
	variable_voltage_product_imaginary_18_21_2.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_19_20 ;
	variable_voltage_product_imaginary_19_20.lo = -1.1025 ;
	variable_voltage_product_imaginary_19_20.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_19_20_2 ;
	variable_voltage_product_imaginary_19_20_2.lo = -1.1025 ;
	variable_voltage_product_imaginary_19_20_2.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_20_23 ;
	variable_voltage_product_imaginary_20_23.lo = -1.1025 ;
	variable_voltage_product_imaginary_20_23.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_20_23_2 ;
	variable_voltage_product_imaginary_20_23_2.lo = -1.1025 ;
	variable_voltage_product_imaginary_20_23_2.up = 1.1025 ;
Free Variable variable_voltage_product_imaginary_21_22 ;
	variable_voltage_product_imaginary_21_22.lo = -1.1025 ;
	variable_voltage_product_imaginary_21_22.up = 1.1025 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_5 ;
	variable_curtailed_feed_in_5.lo = 0.0 ;
	variable_curtailed_feed_in_5.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_7 ;
	variable_curtailed_feed_in_7.lo = 0.0 ;
	variable_curtailed_feed_in_7.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_9 ;
	variable_curtailed_feed_in_9.lo = 0.0 ;
	variable_curtailed_feed_in_9.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_11 ;
	variable_curtailed_feed_in_11.lo = 0.0 ;
	variable_curtailed_feed_in_11.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_13 ;
	variable_curtailed_feed_in_13.lo = 0.0 ;
	variable_curtailed_feed_in_13.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_15 ;
	variable_curtailed_feed_in_15.lo = 0.0 ;
	variable_curtailed_feed_in_15.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_17 ;
	variable_curtailed_feed_in_17.lo = 0.0 ;
	variable_curtailed_feed_in_17.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_19 ;
	variable_curtailed_feed_in_19.lo = 0.0 ;
	variable_curtailed_feed_in_19.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_21 ;
	variable_curtailed_feed_in_21.lo = 0.0 ;
	variable_curtailed_feed_in_21.up = 9.1174 ;
Free Variable variable_curtailed_feed_in_23 ;
	variable_curtailed_feed_in_23.lo = 0.0 ;
	variable_curtailed_feed_in_23.up = 9.1174 ;
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

*===== SECTION: CONSTRAINTS
Equation objective_objective ;
objective_objective..
	objval =e= -266.2219*variable_curtailed_feed_in_1 - 266.2219*variable_curtailed_feed_in_11 - 266.2219*variable_curtailed_feed_in_13 - 266.2219*variable_curtailed_feed_in_15 - 266.2219*variable_curtailed_feed_in_17 - 266.2219*variable_curtailed_feed_in_19 - 266.2219*variable_curtailed_feed_in_21 - 266.2219*variable_curtailed_feed_in_23 - 266.2219*variable_curtailed_feed_in_3 - 266.2219*variable_curtailed_feed_in_5 - 266.2219*variable_curtailed_feed_in_7 - 266.2219*variable_curtailed_feed_in_9 + 65.6781*variable_real_power_gen_13_1 + 62.2836*variable_real_power_gen_13_2 + 110.4077*variable_real_power_gen_13_3 + 654.3459*variable_real_power_gen_15_1 + 104.8022*variable_real_power_gen_15_2 + 73.4774*variable_real_power_gen_15_3 + 720.9866*variable_real_power_gen_15_4 + 98.9379*variable_real_power_gen_15_5 + 102.0578*variable_real_power_gen_15_6 + 99.3749*variable_real_power_gen_16 + 105.588*variable_real_power_gen_18 + 664.7751*variable_real_power_gen_1_1 + 621.9813*variable_real_power_gen_1_2 + 735.8006*variable_real_power_gen_1_3 + 734.9334*variable_real_power_gen_1_4 + 130.4062*variable_real_power_gen_21 + 145.5688*variable_real_power_gen_22_1 + 95.0415*variable_real_power_gen_22_2 + 118.5803*variable_real_power_gen_22_3 + 744.9273*variable_real_power_gen_22_4 + 105.4805*variable_real_power_gen_22_5 + 114.0347*variable_real_power_gen_22_6 + 106.4903*variable_real_power_gen_23_1 + 76.984*variable_real_power_gen_23_2 + 113.8411*variable_real_power_gen_23_3 + 110.5532*variable_real_power_gen_2_1 + 661.0238*variable_real_power_gen_2_2 + 97.3207*variable_real_power_gen_2_3 + 711.9281*variable_real_power_gen_2_4 + 87.67*variable_real_power_gen_7_1 + 71.8776*variable_real_power_gen_7_2 + 71.9416*variable_real_power_gen_7_3 + 58254.03722544
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_3 - variable_real_power_flow_1_5 + variable_real_power_gen_1_1 + variable_real_power_gen_1_2 + variable_real_power_gen_1_3 + variable_real_power_gen_1_4) =e= (2.073)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_4 - variable_real_power_flow_2_6 + variable_real_power_gen_2_1 + variable_real_power_gen_2_2 + variable_real_power_gen_2_3 + variable_real_power_gen_2_4) =e= (1.8619)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_1 - variable_real_power_flow_3_24 - variable_real_power_flow_3_9) =e= (3.455)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_2 - variable_real_power_flow_4_9) =e= (1.4204)
Equation linear_constraint_real_flow_conservation_5 ;
linear_constraint_real_flow_conservation_5..
	(variable_curtailed_feed_in_5 - variable_real_power_flow_5_1 - variable_real_power_flow_5_10) =e= (1.3628)
Equation linear_constraint_real_flow_conservation_6 ;
linear_constraint_real_flow_conservation_6..
	(-variable_real_power_flow_6_10 - variable_real_power_flow_6_2) =e= (2.6105)
Equation linear_constraint_real_flow_conservation_7 ;
linear_constraint_real_flow_conservation_7..
	(variable_curtailed_feed_in_7 - variable_real_power_flow_7_8 + variable_real_power_gen_7_1 + variable_real_power_gen_7_2 + variable_real_power_gen_7_3) =e= (2.3993)
Equation linear_constraint_real_flow_conservation_8 ;
linear_constraint_real_flow_conservation_8..
	(-variable_real_power_flow_8_10 - variable_real_power_flow_8_7 - variable_real_power_flow_8_9) =e= (3.2823)
Equation linear_constraint_real_flow_conservation_9 ;
linear_constraint_real_flow_conservation_9..
	(variable_curtailed_feed_in_9 - variable_real_power_flow_9_11 - variable_real_power_flow_9_12 - variable_real_power_flow_9_3 - variable_real_power_flow_9_4 - variable_real_power_flow_9_8) =e= (3.3591)
Equation linear_constraint_real_flow_conservation_10 ;
linear_constraint_real_flow_conservation_10..
	(-variable_real_power_flow_10_11 - variable_real_power_flow_10_12 - variable_real_power_flow_10_5 - variable_real_power_flow_10_6 - variable_real_power_flow_10_8) =e= (3.7429)
Equation linear_constraint_real_flow_conservation_11 ;
linear_constraint_real_flow_conservation_11..
	(variable_curtailed_feed_in_11 - variable_real_power_flow_11_10 - variable_real_power_flow_11_13 - variable_real_power_flow_11_14 - variable_real_power_flow_11_9) =e= (0.0)
Equation linear_constraint_real_flow_conservation_12 ;
linear_constraint_real_flow_conservation_12..
	(-variable_real_power_flow_12_10 - variable_real_power_flow_12_13 - variable_real_power_flow_12_23 - variable_real_power_flow_12_9) =e= (0.0)
Equation linear_constraint_real_flow_conservation_13 ;
linear_constraint_real_flow_conservation_13..
	(variable_curtailed_feed_in_13 - variable_real_power_flow_13_11 - variable_real_power_flow_13_12 - variable_real_power_flow_13_23 + variable_real_power_gen_13_1 + variable_real_power_gen_13_2 + variable_real_power_gen_13_3) =e= (5.0866)
Equation linear_constraint_real_flow_conservation_14 ;
linear_constraint_real_flow_conservation_14..
	(-variable_real_power_flow_14_11 - variable_real_power_flow_14_16 + variable_real_power_gen_14) =e= (3.7237)
Equation linear_constraint_real_flow_conservation_15 ;
linear_constraint_real_flow_conservation_15..
	(variable_curtailed_feed_in_15 - variable_real_power_flow_15_16 - variable_real_power_flow_15_21 - variable_real_power_flow_15_21_2 - variable_real_power_flow_15_24 + variable_real_power_gen_15_1 + variable_real_power_gen_15_2 + variable_real_power_gen_15_3 + variable_real_power_gen_15_4 + variable_real_power_gen_15_5 + variable_real_power_gen_15_6) =e= (6.0847)
Equation linear_constraint_real_flow_conservation_16 ;
linear_constraint_real_flow_conservation_16..
	(-variable_real_power_flow_16_14 - variable_real_power_flow_16_15 - variable_real_power_flow_16_17 - variable_real_power_flow_16_19 + variable_real_power_gen_16) =e= (1.9195)
Equation linear_constraint_real_flow_conservation_17 ;
linear_constraint_real_flow_conservation_17..
	(variable_curtailed_feed_in_17 - variable_real_power_flow_17_16 - variable_real_power_flow_17_18 - variable_real_power_flow_17_22) =e= (0.0)
Equation linear_constraint_real_flow_conservation_18 ;
linear_constraint_real_flow_conservation_18..
	(-variable_real_power_flow_18_17 - variable_real_power_flow_18_21 - variable_real_power_flow_18_21_2 + variable_real_power_gen_18) =e= (6.3918)
Equation linear_constraint_real_flow_conservation_19 ;
linear_constraint_real_flow_conservation_19..
	(variable_curtailed_feed_in_19 - variable_real_power_flow_19_16 - variable_real_power_flow_19_20 - variable_real_power_flow_19_20_2) =e= (3.4742)
Equation linear_constraint_real_flow_conservation_20 ;
linear_constraint_real_flow_conservation_20..
	(-variable_real_power_flow_20_19 - variable_real_power_flow_20_19_2 - variable_real_power_flow_20_23 - variable_real_power_flow_20_23_2) =e= (2.4569)
Equation linear_constraint_real_flow_conservation_21 ;
linear_constraint_real_flow_conservation_21..
	(variable_curtailed_feed_in_21 - variable_real_power_flow_21_15 - variable_real_power_flow_21_15_2 - variable_real_power_flow_21_18 - variable_real_power_flow_21_18_2 - variable_real_power_flow_21_22 + variable_real_power_gen_21) =e= (0.0)
Equation linear_constraint_real_flow_conservation_22 ;
linear_constraint_real_flow_conservation_22..
	(-variable_real_power_flow_22_17 - variable_real_power_flow_22_21 + variable_real_power_gen_22_1 + variable_real_power_gen_22_2 + variable_real_power_gen_22_3 + variable_real_power_gen_22_4 + variable_real_power_gen_22_5 + variable_real_power_gen_22_6) =e= (0.0)
Equation linear_constraint_real_flow_conservation_23 ;
linear_constraint_real_flow_conservation_23..
	(variable_curtailed_feed_in_23 - variable_real_power_flow_23_12 - variable_real_power_flow_23_13 - variable_real_power_flow_23_20 - variable_real_power_flow_23_20_2 + variable_real_power_gen_23_1 + variable_real_power_gen_23_2 + variable_real_power_gen_23_3) =e= (0.0)
Equation linear_constraint_real_flow_conservation_24 ;
linear_constraint_real_flow_conservation_24..
	(-variable_real_power_flow_24_15 - variable_real_power_flow_24_3) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_2 - variable_reactive_power_flow_1_3 - variable_reactive_power_flow_1_5 + variable_reactive_power_gen_1_1 + variable_reactive_power_gen_1_2 + variable_reactive_power_gen_1_3 + variable_reactive_power_gen_1_4) =e= (0.22)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_1 - variable_reactive_power_flow_2_4 - variable_reactive_power_flow_2_6 + variable_reactive_power_gen_2_1 + variable_reactive_power_gen_2_2 + variable_reactive_power_gen_2_3 + variable_reactive_power_gen_2_4) =e= (0.2)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_1 - variable_reactive_power_flow_3_24 - variable_reactive_power_flow_3_9) =e= (0.37)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_2 - variable_reactive_power_flow_4_9) =e= (0.15)
Equation linear_constraint_reactive_flow_conservation_5 ;
linear_constraint_reactive_flow_conservation_5..
	(0.48*variable_curtailed_feed_in_5 - variable_reactive_power_flow_5_1 - variable_reactive_power_flow_5_10) =e= (0.14)
Equation linear_constraint_reactive_flow_conservation_6 ;
linear_constraint_reactive_flow_conservation_6..
	(-variable_reactive_power_flow_6_10 - variable_reactive_power_flow_6_2 - 1.0*variable_voltage_square_6) =e= (0.28)
Equation linear_constraint_reactive_flow_conservation_7 ;
linear_constraint_reactive_flow_conservation_7..
	(0.48*variable_curtailed_feed_in_7 - variable_reactive_power_flow_7_8 + variable_reactive_power_gen_7_1 + variable_reactive_power_gen_7_2 + variable_reactive_power_gen_7_3) =e= (0.25)
Equation linear_constraint_reactive_flow_conservation_8 ;
linear_constraint_reactive_flow_conservation_8..
	(-variable_reactive_power_flow_8_10 - variable_reactive_power_flow_8_7 - variable_reactive_power_flow_8_9) =e= (0.35)
Equation linear_constraint_reactive_flow_conservation_9 ;
linear_constraint_reactive_flow_conservation_9..
	(0.48*variable_curtailed_feed_in_9 - variable_reactive_power_flow_9_11 - variable_reactive_power_flow_9_12 - variable_reactive_power_flow_9_3 - variable_reactive_power_flow_9_4 - variable_reactive_power_flow_9_8) =e= (0.36)
Equation linear_constraint_reactive_flow_conservation_10 ;
linear_constraint_reactive_flow_conservation_10..
	(-variable_reactive_power_flow_10_11 - variable_reactive_power_flow_10_12 - variable_reactive_power_flow_10_5 - variable_reactive_power_flow_10_6 - variable_reactive_power_flow_10_8) =e= (0.4)
Equation linear_constraint_reactive_flow_conservation_11 ;
linear_constraint_reactive_flow_conservation_11..
	(0.48*variable_curtailed_feed_in_11 - variable_reactive_power_flow_11_10 - variable_reactive_power_flow_11_13 - variable_reactive_power_flow_11_14 - variable_reactive_power_flow_11_9) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_12 ;
linear_constraint_reactive_flow_conservation_12..
	(-variable_reactive_power_flow_12_10 - variable_reactive_power_flow_12_13 - variable_reactive_power_flow_12_23 - variable_reactive_power_flow_12_9) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_13 ;
linear_constraint_reactive_flow_conservation_13..
	(0.48*variable_curtailed_feed_in_13 - variable_reactive_power_flow_13_11 - variable_reactive_power_flow_13_12 - variable_reactive_power_flow_13_23 + variable_reactive_power_gen_13_1 + variable_reactive_power_gen_13_2 + variable_reactive_power_gen_13_3) =e= (0.54)
Equation linear_constraint_reactive_flow_conservation_14 ;
linear_constraint_reactive_flow_conservation_14..
	(-variable_reactive_power_flow_14_11 - variable_reactive_power_flow_14_16 + variable_reactive_power_gen_14) =e= (0.39)
Equation linear_constraint_reactive_flow_conservation_15 ;
linear_constraint_reactive_flow_conservation_15..
	(0.48*variable_curtailed_feed_in_15 - variable_reactive_power_flow_15_16 - variable_reactive_power_flow_15_21 - variable_reactive_power_flow_15_21_2 - variable_reactive_power_flow_15_24 + variable_reactive_power_gen_15_1 + variable_reactive_power_gen_15_2 + variable_reactive_power_gen_15_3 + variable_reactive_power_gen_15_4 + variable_reactive_power_gen_15_5 + variable_reactive_power_gen_15_6) =e= (0.64)
Equation linear_constraint_reactive_flow_conservation_16 ;
linear_constraint_reactive_flow_conservation_16..
	(-variable_reactive_power_flow_16_14 - variable_reactive_power_flow_16_15 - variable_reactive_power_flow_16_17 - variable_reactive_power_flow_16_19 + variable_reactive_power_gen_16) =e= (0.2)
Equation linear_constraint_reactive_flow_conservation_17 ;
linear_constraint_reactive_flow_conservation_17..
	(0.48*variable_curtailed_feed_in_17 - variable_reactive_power_flow_17_16 - variable_reactive_power_flow_17_18 - variable_reactive_power_flow_17_22) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_18 ;
linear_constraint_reactive_flow_conservation_18..
	(-variable_reactive_power_flow_18_17 - variable_reactive_power_flow_18_21 - variable_reactive_power_flow_18_21_2 + variable_reactive_power_gen_18) =e= (0.68)
Equation linear_constraint_reactive_flow_conservation_19 ;
linear_constraint_reactive_flow_conservation_19..
	(0.48*variable_curtailed_feed_in_19 - variable_reactive_power_flow_19_16 - variable_reactive_power_flow_19_20 - variable_reactive_power_flow_19_20_2) =e= (0.37)
Equation linear_constraint_reactive_flow_conservation_20 ;
linear_constraint_reactive_flow_conservation_20..
	(-variable_reactive_power_flow_20_19 - variable_reactive_power_flow_20_19_2 - variable_reactive_power_flow_20_23 - variable_reactive_power_flow_20_23_2) =e= (0.26)
Equation linear_constraint_reactive_flow_conservation_21 ;
linear_constraint_reactive_flow_conservation_21..
	(0.48*variable_curtailed_feed_in_21 - variable_reactive_power_flow_21_15 - variable_reactive_power_flow_21_15_2 - variable_reactive_power_flow_21_18 - variable_reactive_power_flow_21_18_2 - variable_reactive_power_flow_21_22 + variable_reactive_power_gen_21) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_22 ;
linear_constraint_reactive_flow_conservation_22..
	(-variable_reactive_power_flow_22_17 - variable_reactive_power_flow_22_21 + variable_reactive_power_gen_22_1 + variable_reactive_power_gen_22_2 + variable_reactive_power_gen_22_3 + variable_reactive_power_gen_22_4 + variable_reactive_power_gen_22_5 + variable_reactive_power_gen_22_6) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_23 ;
linear_constraint_reactive_flow_conservation_23..
	(0.48*variable_curtailed_feed_in_23 - variable_reactive_power_flow_23_12 - variable_reactive_power_flow_23_13 - variable_reactive_power_flow_23_20 - variable_reactive_power_flow_23_20_2 + variable_reactive_power_gen_23_1 + variable_reactive_power_gen_23_2 + variable_reactive_power_gen_23_3) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_24 ;
linear_constraint_reactive_flow_conservation_24..
	(-variable_reactive_power_flow_24_15 - variable_reactive_power_flow_24_3) =e= (0.0)
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
Equation nonlinear_constraint_voltage_square_rectangular_15 ;
nonlinear_constraint_voltage_square_rectangular_15..
	(variable_voltage_square_15) =e= (power(variable_voltage_imag_15,2) + power(variable_voltage_real_15,2))
Equation nonlinear_constraint_voltage_square_rectangular_16 ;
nonlinear_constraint_voltage_square_rectangular_16..
	(variable_voltage_square_16) =e= (power(variable_voltage_imag_16,2) + power(variable_voltage_real_16,2))
Equation nonlinear_constraint_voltage_square_rectangular_17 ;
nonlinear_constraint_voltage_square_rectangular_17..
	(variable_voltage_square_17) =e= (power(variable_voltage_imag_17,2) + power(variable_voltage_real_17,2))
Equation nonlinear_constraint_voltage_square_rectangular_18 ;
nonlinear_constraint_voltage_square_rectangular_18..
	(variable_voltage_square_18) =e= (power(variable_voltage_imag_18,2) + power(variable_voltage_real_18,2))
Equation nonlinear_constraint_voltage_square_rectangular_19 ;
nonlinear_constraint_voltage_square_rectangular_19..
	(variable_voltage_square_19) =e= (power(variable_voltage_imag_19,2) + power(variable_voltage_real_19,2))
Equation nonlinear_constraint_voltage_square_rectangular_20 ;
nonlinear_constraint_voltage_square_rectangular_20..
	(variable_voltage_square_20) =e= (power(variable_voltage_imag_20,2) + power(variable_voltage_real_20,2))
Equation nonlinear_constraint_voltage_square_rectangular_21 ;
nonlinear_constraint_voltage_square_rectangular_21..
	(variable_voltage_square_21) =e= (power(variable_voltage_imag_21,2) + power(variable_voltage_real_21,2))
Equation nonlinear_constraint_voltage_square_rectangular_22 ;
nonlinear_constraint_voltage_square_rectangular_22..
	(variable_voltage_square_22) =e= (power(variable_voltage_imag_22,2) + power(variable_voltage_real_22,2))
Equation nonlinear_constraint_voltage_square_rectangular_23 ;
nonlinear_constraint_voltage_square_rectangular_23..
	(variable_voltage_square_23) =e= (power(variable_voltage_imag_23,2) + power(variable_voltage_real_23,2))
Equation nonlinear_constraint_voltage_square_rectangular_24 ;
nonlinear_constraint_voltage_square_rectangular_24..
	(variable_voltage_square_24) =e= (power(variable_voltage_imag_24,2) + power(variable_voltage_real_24,2))
Equation nonlinear_constraint_voltage_product_real_rectangular_1_2 ;
nonlinear_constraint_voltage_product_real_rectangular_1_2..
	(variable_voltage_product_real_1_2) =e= (variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_imag_2 + variable_transmission_switch_1_2*variable_voltage_real_1*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_real_rectangular_1_3 ;
nonlinear_constraint_voltage_product_real_rectangular_1_3..
	(variable_voltage_product_real_1_3) =e= (variable_transmission_switch_1_3*variable_voltage_imag_1*variable_voltage_imag_3 + variable_transmission_switch_1_3*variable_voltage_real_1*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_real_rectangular_1_5 ;
nonlinear_constraint_voltage_product_real_rectangular_1_5..
	(variable_voltage_product_real_1_5) =e= (variable_transmission_switch_1_5*variable_voltage_imag_1*variable_voltage_imag_5 + variable_transmission_switch_1_5*variable_voltage_real_1*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_4 ;
nonlinear_constraint_voltage_product_real_rectangular_2_4..
	(variable_voltage_product_real_2_4) =e= (variable_transmission_switch_2_4*variable_voltage_imag_2*variable_voltage_imag_4 + variable_transmission_switch_2_4*variable_voltage_real_2*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_6 ;
nonlinear_constraint_voltage_product_real_rectangular_2_6..
	(variable_voltage_product_real_2_6) =e= (variable_transmission_switch_2_6*variable_voltage_imag_2*variable_voltage_imag_6 + variable_transmission_switch_2_6*variable_voltage_real_2*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_3_9 ;
nonlinear_constraint_voltage_product_real_rectangular_3_9..
	(variable_voltage_product_real_3_9) =e= (variable_transmission_switch_3_9*variable_voltage_imag_3*variable_voltage_imag_9 + variable_transmission_switch_3_9*variable_voltage_real_3*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_3_24 ;
nonlinear_constraint_voltage_product_real_rectangular_3_24..
	(variable_voltage_product_real_3_24) =e= (variable_transmission_switch_3_24*variable_voltage_imag_24*variable_voltage_imag_3 + variable_transmission_switch_3_24*variable_voltage_real_24*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_real_rectangular_4_9 ;
nonlinear_constraint_voltage_product_real_rectangular_4_9..
	(variable_voltage_product_real_4_9) =e= (variable_transmission_switch_4_9*variable_voltage_imag_4*variable_voltage_imag_9 + variable_transmission_switch_4_9*variable_voltage_real_4*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_5_10 ;
nonlinear_constraint_voltage_product_real_rectangular_5_10..
	(variable_voltage_product_real_5_10) =e= (variable_transmission_switch_5_10*variable_voltage_imag_10*variable_voltage_imag_5 + variable_transmission_switch_5_10*variable_voltage_real_10*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_real_rectangular_6_10 ;
nonlinear_constraint_voltage_product_real_rectangular_6_10..
	(variable_voltage_product_real_6_10) =e= (variable_transmission_switch_6_10*variable_voltage_imag_10*variable_voltage_imag_6 + variable_transmission_switch_6_10*variable_voltage_real_10*variable_voltage_real_6)
Equation nonlinear_constraint_voltage_product_real_rectangular_7_8 ;
nonlinear_constraint_voltage_product_real_rectangular_7_8..
	(variable_voltage_product_real_7_8) =e= (variable_transmission_switch_7_8*variable_voltage_imag_7*variable_voltage_imag_8 + variable_transmission_switch_7_8*variable_voltage_real_7*variable_voltage_real_8)
Equation nonlinear_constraint_voltage_product_real_rectangular_8_9 ;
nonlinear_constraint_voltage_product_real_rectangular_8_9..
	(variable_voltage_product_real_8_9) =e= (variable_transmission_switch_8_9*variable_voltage_imag_8*variable_voltage_imag_9 + variable_transmission_switch_8_9*variable_voltage_real_8*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_8_10 ;
nonlinear_constraint_voltage_product_real_rectangular_8_10..
	(variable_voltage_product_real_8_10) =e= (variable_transmission_switch_8_10*variable_voltage_imag_10*variable_voltage_imag_8 + variable_transmission_switch_8_10*variable_voltage_real_10*variable_voltage_real_8)
Equation nonlinear_constraint_voltage_product_real_rectangular_9_11 ;
nonlinear_constraint_voltage_product_real_rectangular_9_11..
	(variable_voltage_product_real_9_11) =e= (variable_transmission_switch_9_11*variable_voltage_imag_11*variable_voltage_imag_9 + variable_transmission_switch_9_11*variable_voltage_real_11*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_9_12 ;
nonlinear_constraint_voltage_product_real_rectangular_9_12..
	(variable_voltage_product_real_9_12) =e= (variable_transmission_switch_9_12*variable_voltage_imag_12*variable_voltage_imag_9 + variable_transmission_switch_9_12*variable_voltage_real_12*variable_voltage_real_9)
Equation nonlinear_constraint_voltage_product_real_rectangular_10_11 ;
nonlinear_constraint_voltage_product_real_rectangular_10_11..
	(variable_voltage_product_real_10_11) =e= (variable_transmission_switch_10_11*variable_voltage_imag_10*variable_voltage_imag_11 + variable_transmission_switch_10_11*variable_voltage_real_10*variable_voltage_real_11)
Equation nonlinear_constraint_voltage_product_real_rectangular_10_12 ;
nonlinear_constraint_voltage_product_real_rectangular_10_12..
	(variable_voltage_product_real_10_12) =e= (variable_transmission_switch_10_12*variable_voltage_imag_10*variable_voltage_imag_12 + variable_transmission_switch_10_12*variable_voltage_real_10*variable_voltage_real_12)
Equation nonlinear_constraint_voltage_product_real_rectangular_11_13 ;
nonlinear_constraint_voltage_product_real_rectangular_11_13..
	(variable_voltage_product_real_11_13) =e= (variable_transmission_switch_11_13*variable_voltage_imag_11*variable_voltage_imag_13 + variable_transmission_switch_11_13*variable_voltage_real_11*variable_voltage_real_13)
Equation nonlinear_constraint_voltage_product_real_rectangular_11_14 ;
nonlinear_constraint_voltage_product_real_rectangular_11_14..
	(variable_voltage_product_real_11_14) =e= (variable_transmission_switch_11_14*variable_voltage_imag_11*variable_voltage_imag_14 + variable_transmission_switch_11_14*variable_voltage_real_11*variable_voltage_real_14)
Equation nonlinear_constraint_voltage_product_real_rectangular_12_13 ;
nonlinear_constraint_voltage_product_real_rectangular_12_13..
	(variable_voltage_product_real_12_13) =e= (variable_transmission_switch_12_13*variable_voltage_imag_12*variable_voltage_imag_13 + variable_transmission_switch_12_13*variable_voltage_real_12*variable_voltage_real_13)
Equation nonlinear_constraint_voltage_product_real_rectangular_12_23 ;
nonlinear_constraint_voltage_product_real_rectangular_12_23..
	(variable_voltage_product_real_12_23) =e= (variable_transmission_switch_12_23*variable_voltage_imag_12*variable_voltage_imag_23 + variable_transmission_switch_12_23*variable_voltage_real_12*variable_voltage_real_23)
Equation nonlinear_constraint_voltage_product_real_rectangular_13_23 ;
nonlinear_constraint_voltage_product_real_rectangular_13_23..
	(variable_voltage_product_real_13_23) =e= (variable_transmission_switch_13_23*variable_voltage_imag_13*variable_voltage_imag_23 + variable_transmission_switch_13_23*variable_voltage_real_13*variable_voltage_real_23)
Equation nonlinear_constraint_voltage_product_real_rectangular_14_16 ;
nonlinear_constraint_voltage_product_real_rectangular_14_16..
	(variable_voltage_product_real_14_16) =e= (variable_transmission_switch_14_16*variable_voltage_imag_14*variable_voltage_imag_16 + variable_transmission_switch_14_16*variable_voltage_real_14*variable_voltage_real_16)
Equation nonlinear_constraint_voltage_product_real_rectangular_15_16 ;
nonlinear_constraint_voltage_product_real_rectangular_15_16..
	(variable_voltage_product_real_15_16) =e= (variable_transmission_switch_15_16*variable_voltage_imag_15*variable_voltage_imag_16 + variable_transmission_switch_15_16*variable_voltage_real_15*variable_voltage_real_16)
Equation nonlinear_constraint_voltage_product_real_rectangular_15_21 ;
nonlinear_constraint_voltage_product_real_rectangular_15_21..
	(variable_voltage_product_real_15_21) =e= (variable_transmission_switch_15_21*variable_voltage_imag_15*variable_voltage_imag_21 + variable_transmission_switch_15_21*variable_voltage_real_15*variable_voltage_real_21)
Equation nonlinear_constraint_voltage_product_real_rectangular_15_21_2 ;
nonlinear_constraint_voltage_product_real_rectangular_15_21_2..
	(variable_voltage_product_real_15_21_2) =e= (variable_transmission_switch_15_21_2*variable_voltage_imag_15*variable_voltage_imag_21 + variable_transmission_switch_15_21_2*variable_voltage_real_15*variable_voltage_real_21)
Equation nonlinear_constraint_voltage_product_real_rectangular_15_24 ;
nonlinear_constraint_voltage_product_real_rectangular_15_24..
	(variable_voltage_product_real_15_24) =e= (variable_transmission_switch_15_24*variable_voltage_imag_15*variable_voltage_imag_24 + variable_transmission_switch_15_24*variable_voltage_real_15*variable_voltage_real_24)
Equation nonlinear_constraint_voltage_product_real_rectangular_16_17 ;
nonlinear_constraint_voltage_product_real_rectangular_16_17..
	(variable_voltage_product_real_16_17) =e= (variable_transmission_switch_16_17*variable_voltage_imag_16*variable_voltage_imag_17 + variable_transmission_switch_16_17*variable_voltage_real_16*variable_voltage_real_17)
Equation nonlinear_constraint_voltage_product_real_rectangular_16_19 ;
nonlinear_constraint_voltage_product_real_rectangular_16_19..
	(variable_voltage_product_real_16_19) =e= (variable_transmission_switch_16_19*variable_voltage_imag_16*variable_voltage_imag_19 + variable_transmission_switch_16_19*variable_voltage_real_16*variable_voltage_real_19)
Equation nonlinear_constraint_voltage_product_real_rectangular_17_18 ;
nonlinear_constraint_voltage_product_real_rectangular_17_18..
	(variable_voltage_product_real_17_18) =e= (variable_transmission_switch_17_18*variable_voltage_imag_17*variable_voltage_imag_18 + variable_transmission_switch_17_18*variable_voltage_real_17*variable_voltage_real_18)
Equation nonlinear_constraint_voltage_product_real_rectangular_17_22 ;
nonlinear_constraint_voltage_product_real_rectangular_17_22..
	(variable_voltage_product_real_17_22) =e= (variable_transmission_switch_17_22*variable_voltage_imag_17*variable_voltage_imag_22 + variable_transmission_switch_17_22*variable_voltage_real_17*variable_voltage_real_22)
Equation nonlinear_constraint_voltage_product_real_rectangular_18_21 ;
nonlinear_constraint_voltage_product_real_rectangular_18_21..
	(variable_voltage_product_real_18_21) =e= (variable_transmission_switch_18_21*variable_voltage_imag_18*variable_voltage_imag_21 + variable_transmission_switch_18_21*variable_voltage_real_18*variable_voltage_real_21)
Equation nonlinear_constraint_voltage_product_real_rectangular_18_21_2 ;
nonlinear_constraint_voltage_product_real_rectangular_18_21_2..
	(variable_voltage_product_real_18_21_2) =e= (variable_transmission_switch_18_21_2*variable_voltage_imag_18*variable_voltage_imag_21 + variable_transmission_switch_18_21_2*variable_voltage_real_18*variable_voltage_real_21)
Equation nonlinear_constraint_voltage_product_real_rectangular_19_20 ;
nonlinear_constraint_voltage_product_real_rectangular_19_20..
	(variable_voltage_product_real_19_20) =e= (variable_transmission_switch_19_20*variable_voltage_imag_19*variable_voltage_imag_20 + variable_transmission_switch_19_20*variable_voltage_real_19*variable_voltage_real_20)
Equation nonlinear_constraint_voltage_product_real_rectangular_19_20_2 ;
nonlinear_constraint_voltage_product_real_rectangular_19_20_2..
	(variable_voltage_product_real_19_20_2) =e= (variable_transmission_switch_19_20_2*variable_voltage_imag_19*variable_voltage_imag_20 + variable_transmission_switch_19_20_2*variable_voltage_real_19*variable_voltage_real_20)
Equation nonlinear_constraint_voltage_product_real_rectangular_20_23 ;
nonlinear_constraint_voltage_product_real_rectangular_20_23..
	(variable_voltage_product_real_20_23) =e= (variable_transmission_switch_20_23*variable_voltage_imag_20*variable_voltage_imag_23 + variable_transmission_switch_20_23*variable_voltage_real_20*variable_voltage_real_23)
Equation nonlinear_constraint_voltage_product_real_rectangular_20_23_2 ;
nonlinear_constraint_voltage_product_real_rectangular_20_23_2..
	(variable_voltage_product_real_20_23_2) =e= (variable_transmission_switch_20_23_2*variable_voltage_imag_20*variable_voltage_imag_23 + variable_transmission_switch_20_23_2*variable_voltage_real_20*variable_voltage_real_23)
Equation nonlinear_constraint_voltage_product_real_rectangular_21_22 ;
nonlinear_constraint_voltage_product_real_rectangular_21_22..
	(variable_voltage_product_real_21_22) =e= (variable_transmission_switch_21_22*variable_voltage_imag_21*variable_voltage_imag_22 + variable_transmission_switch_21_22*variable_voltage_real_21*variable_voltage_real_22)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_2..
	(variable_voltage_product_imaginary_1_2) =e= (-variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_real_2 + variable_transmission_switch_1_2*variable_voltage_imag_2*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_3 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_3..
	(variable_voltage_product_imaginary_1_3) =e= (-variable_transmission_switch_1_3*variable_voltage_imag_1*variable_voltage_real_3 + variable_transmission_switch_1_3*variable_voltage_imag_3*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_5 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_5..
	(variable_voltage_product_imaginary_1_5) =e= (-variable_transmission_switch_1_5*variable_voltage_imag_1*variable_voltage_real_5 + variable_transmission_switch_1_5*variable_voltage_imag_5*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_4..
	(variable_voltage_product_imaginary_2_4) =e= (-variable_transmission_switch_2_4*variable_voltage_imag_2*variable_voltage_real_4 + variable_transmission_switch_2_4*variable_voltage_imag_4*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_6 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_6..
	(variable_voltage_product_imaginary_2_6) =e= (-variable_transmission_switch_2_6*variable_voltage_imag_2*variable_voltage_real_6 + variable_transmission_switch_2_6*variable_voltage_imag_6*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_3_9 ;
nonlinear_constraint_voltage_product_imag_rectangular_3_9..
	(variable_voltage_product_imaginary_3_9) =e= (-variable_transmission_switch_3_9*variable_voltage_imag_3*variable_voltage_real_9 + variable_transmission_switch_3_9*variable_voltage_imag_9*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_imag_rectangular_3_24 ;
nonlinear_constraint_voltage_product_imag_rectangular_3_24..
	(variable_voltage_product_imaginary_3_24) =e= (variable_transmission_switch_3_24*variable_voltage_imag_24*variable_voltage_real_3 - variable_transmission_switch_3_24*variable_voltage_imag_3*variable_voltage_real_24)
Equation nonlinear_constraint_voltage_product_imag_rectangular_4_9 ;
nonlinear_constraint_voltage_product_imag_rectangular_4_9..
	(variable_voltage_product_imaginary_4_9) =e= (-variable_transmission_switch_4_9*variable_voltage_imag_4*variable_voltage_real_9 + variable_transmission_switch_4_9*variable_voltage_imag_9*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_imag_rectangular_5_10 ;
nonlinear_constraint_voltage_product_imag_rectangular_5_10..
	(variable_voltage_product_imaginary_5_10) =e= (variable_transmission_switch_5_10*variable_voltage_imag_10*variable_voltage_real_5 - variable_transmission_switch_5_10*variable_voltage_imag_5*variable_voltage_real_10)
Equation nonlinear_constraint_voltage_product_imag_rectangular_6_10 ;
nonlinear_constraint_voltage_product_imag_rectangular_6_10..
	(variable_voltage_product_imaginary_6_10) =e= (variable_transmission_switch_6_10*variable_voltage_imag_10*variable_voltage_real_6 - variable_transmission_switch_6_10*variable_voltage_imag_6*variable_voltage_real_10)
Equation nonlinear_constraint_voltage_product_imag_rectangular_7_8 ;
nonlinear_constraint_voltage_product_imag_rectangular_7_8..
	(variable_voltage_product_imaginary_7_8) =e= (-variable_transmission_switch_7_8*variable_voltage_imag_7*variable_voltage_real_8 + variable_transmission_switch_7_8*variable_voltage_imag_8*variable_voltage_real_7)
Equation nonlinear_constraint_voltage_product_imag_rectangular_8_9 ;
nonlinear_constraint_voltage_product_imag_rectangular_8_9..
	(variable_voltage_product_imaginary_8_9) =e= (-variable_transmission_switch_8_9*variable_voltage_imag_8*variable_voltage_real_9 + variable_transmission_switch_8_9*variable_voltage_imag_9*variable_voltage_real_8)
Equation nonlinear_constraint_voltage_product_imag_rectangular_8_10 ;
nonlinear_constraint_voltage_product_imag_rectangular_8_10..
	(variable_voltage_product_imaginary_8_10) =e= (variable_transmission_switch_8_10*variable_voltage_imag_10*variable_voltage_real_8 - variable_transmission_switch_8_10*variable_voltage_imag_8*variable_voltage_real_10)
Equation nonlinear_constraint_voltage_product_imag_rectangular_9_11 ;
nonlinear_constraint_voltage_product_imag_rectangular_9_11..
	(variable_voltage_product_imaginary_9_11) =e= (variable_transmission_switch_9_11*variable_voltage_imag_11*variable_voltage_real_9 - variable_transmission_switch_9_11*variable_voltage_imag_9*variable_voltage_real_11)
Equation nonlinear_constraint_voltage_product_imag_rectangular_9_12 ;
nonlinear_constraint_voltage_product_imag_rectangular_9_12..
	(variable_voltage_product_imaginary_9_12) =e= (variable_transmission_switch_9_12*variable_voltage_imag_12*variable_voltage_real_9 - variable_transmission_switch_9_12*variable_voltage_imag_9*variable_voltage_real_12)
Equation nonlinear_constraint_voltage_product_imag_rectangular_10_11 ;
nonlinear_constraint_voltage_product_imag_rectangular_10_11..
	(variable_voltage_product_imaginary_10_11) =e= (-variable_transmission_switch_10_11*variable_voltage_imag_10*variable_voltage_real_11 + variable_transmission_switch_10_11*variable_voltage_imag_11*variable_voltage_real_10)
Equation nonlinear_constraint_voltage_product_imag_rectangular_10_12 ;
nonlinear_constraint_voltage_product_imag_rectangular_10_12..
	(variable_voltage_product_imaginary_10_12) =e= (-variable_transmission_switch_10_12*variable_voltage_imag_10*variable_voltage_real_12 + variable_transmission_switch_10_12*variable_voltage_imag_12*variable_voltage_real_10)
Equation nonlinear_constraint_voltage_product_imag_rectangular_11_13 ;
nonlinear_constraint_voltage_product_imag_rectangular_11_13..
	(variable_voltage_product_imaginary_11_13) =e= (-variable_transmission_switch_11_13*variable_voltage_imag_11*variable_voltage_real_13 + variable_transmission_switch_11_13*variable_voltage_imag_13*variable_voltage_real_11)
Equation nonlinear_constraint_voltage_product_imag_rectangular_11_14 ;
nonlinear_constraint_voltage_product_imag_rectangular_11_14..
	(variable_voltage_product_imaginary_11_14) =e= (-variable_transmission_switch_11_14*variable_voltage_imag_11*variable_voltage_real_14 + variable_transmission_switch_11_14*variable_voltage_imag_14*variable_voltage_real_11)
Equation nonlinear_constraint_voltage_product_imag_rectangular_12_13 ;
nonlinear_constraint_voltage_product_imag_rectangular_12_13..
	(variable_voltage_product_imaginary_12_13) =e= (-variable_transmission_switch_12_13*variable_voltage_imag_12*variable_voltage_real_13 + variable_transmission_switch_12_13*variable_voltage_imag_13*variable_voltage_real_12)
Equation nonlinear_constraint_voltage_product_imag_rectangular_12_23 ;
nonlinear_constraint_voltage_product_imag_rectangular_12_23..
	(variable_voltage_product_imaginary_12_23) =e= (-variable_transmission_switch_12_23*variable_voltage_imag_12*variable_voltage_real_23 + variable_transmission_switch_12_23*variable_voltage_imag_23*variable_voltage_real_12)
Equation nonlinear_constraint_voltage_product_imag_rectangular_13_23 ;
nonlinear_constraint_voltage_product_imag_rectangular_13_23..
	(variable_voltage_product_imaginary_13_23) =e= (-variable_transmission_switch_13_23*variable_voltage_imag_13*variable_voltage_real_23 + variable_transmission_switch_13_23*variable_voltage_imag_23*variable_voltage_real_13)
Equation nonlinear_constraint_voltage_product_imag_rectangular_14_16 ;
nonlinear_constraint_voltage_product_imag_rectangular_14_16..
	(variable_voltage_product_imaginary_14_16) =e= (-variable_transmission_switch_14_16*variable_voltage_imag_14*variable_voltage_real_16 + variable_transmission_switch_14_16*variable_voltage_imag_16*variable_voltage_real_14)
Equation nonlinear_constraint_voltage_product_imag_rectangular_15_16 ;
nonlinear_constraint_voltage_product_imag_rectangular_15_16..
	(variable_voltage_product_imaginary_15_16) =e= (-variable_transmission_switch_15_16*variable_voltage_imag_15*variable_voltage_real_16 + variable_transmission_switch_15_16*variable_voltage_imag_16*variable_voltage_real_15)
Equation nonlinear_constraint_voltage_product_imag_rectangular_15_21 ;
nonlinear_constraint_voltage_product_imag_rectangular_15_21..
	(variable_voltage_product_imaginary_15_21) =e= (-variable_transmission_switch_15_21*variable_voltage_imag_15*variable_voltage_real_21 + variable_transmission_switch_15_21*variable_voltage_imag_21*variable_voltage_real_15)
Equation nonlinear_constraint_voltage_product_imag_rectangular_15_21_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_15_21_2..
	(variable_voltage_product_imaginary_15_21_2) =e= (-variable_transmission_switch_15_21_2*variable_voltage_imag_15*variable_voltage_real_21 + variable_transmission_switch_15_21_2*variable_voltage_imag_21*variable_voltage_real_15)
Equation nonlinear_constraint_voltage_product_imag_rectangular_15_24 ;
nonlinear_constraint_voltage_product_imag_rectangular_15_24..
	(variable_voltage_product_imaginary_15_24) =e= (-variable_transmission_switch_15_24*variable_voltage_imag_15*variable_voltage_real_24 + variable_transmission_switch_15_24*variable_voltage_imag_24*variable_voltage_real_15)
Equation nonlinear_constraint_voltage_product_imag_rectangular_16_17 ;
nonlinear_constraint_voltage_product_imag_rectangular_16_17..
	(variable_voltage_product_imaginary_16_17) =e= (-variable_transmission_switch_16_17*variable_voltage_imag_16*variable_voltage_real_17 + variable_transmission_switch_16_17*variable_voltage_imag_17*variable_voltage_real_16)
Equation nonlinear_constraint_voltage_product_imag_rectangular_16_19 ;
nonlinear_constraint_voltage_product_imag_rectangular_16_19..
	(variable_voltage_product_imaginary_16_19) =e= (-variable_transmission_switch_16_19*variable_voltage_imag_16*variable_voltage_real_19 + variable_transmission_switch_16_19*variable_voltage_imag_19*variable_voltage_real_16)
Equation nonlinear_constraint_voltage_product_imag_rectangular_17_18 ;
nonlinear_constraint_voltage_product_imag_rectangular_17_18..
	(variable_voltage_product_imaginary_17_18) =e= (-variable_transmission_switch_17_18*variable_voltage_imag_17*variable_voltage_real_18 + variable_transmission_switch_17_18*variable_voltage_imag_18*variable_voltage_real_17)
Equation nonlinear_constraint_voltage_product_imag_rectangular_17_22 ;
nonlinear_constraint_voltage_product_imag_rectangular_17_22..
	(variable_voltage_product_imaginary_17_22) =e= (-variable_transmission_switch_17_22*variable_voltage_imag_17*variable_voltage_real_22 + variable_transmission_switch_17_22*variable_voltage_imag_22*variable_voltage_real_17)
Equation nonlinear_constraint_voltage_product_imag_rectangular_18_21 ;
nonlinear_constraint_voltage_product_imag_rectangular_18_21..
	(variable_voltage_product_imaginary_18_21) =e= (-variable_transmission_switch_18_21*variable_voltage_imag_18*variable_voltage_real_21 + variable_transmission_switch_18_21*variable_voltage_imag_21*variable_voltage_real_18)
Equation nonlinear_constraint_voltage_product_imag_rectangular_18_21_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_18_21_2..
	(variable_voltage_product_imaginary_18_21_2) =e= (-variable_transmission_switch_18_21_2*variable_voltage_imag_18*variable_voltage_real_21 + variable_transmission_switch_18_21_2*variable_voltage_imag_21*variable_voltage_real_18)
Equation nonlinear_constraint_voltage_product_imag_rectangular_19_20 ;
nonlinear_constraint_voltage_product_imag_rectangular_19_20..
	(variable_voltage_product_imaginary_19_20) =e= (-variable_transmission_switch_19_20*variable_voltage_imag_19*variable_voltage_real_20 + variable_transmission_switch_19_20*variable_voltage_imag_20*variable_voltage_real_19)
Equation nonlinear_constraint_voltage_product_imag_rectangular_19_20_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_19_20_2..
	(variable_voltage_product_imaginary_19_20_2) =e= (-variable_transmission_switch_19_20_2*variable_voltage_imag_19*variable_voltage_real_20 + variable_transmission_switch_19_20_2*variable_voltage_imag_20*variable_voltage_real_19)
Equation nonlinear_constraint_voltage_product_imag_rectangular_20_23 ;
nonlinear_constraint_voltage_product_imag_rectangular_20_23..
	(variable_voltage_product_imaginary_20_23) =e= (-variable_transmission_switch_20_23*variable_voltage_imag_20*variable_voltage_real_23 + variable_transmission_switch_20_23*variable_voltage_imag_23*variable_voltage_real_20)
Equation nonlinear_constraint_voltage_product_imag_rectangular_20_23_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_20_23_2..
	(variable_voltage_product_imaginary_20_23_2) =e= (-variable_transmission_switch_20_23_2*variable_voltage_imag_20*variable_voltage_real_23 + variable_transmission_switch_20_23_2*variable_voltage_imag_23*variable_voltage_real_20)
Equation nonlinear_constraint_voltage_product_imag_rectangular_21_22 ;
nonlinear_constraint_voltage_product_imag_rectangular_21_22..
	(variable_voltage_product_imaginary_21_22) =e= (-variable_transmission_switch_21_22*variable_voltage_imag_21*variable_voltage_real_22 + variable_transmission_switch_21_22*variable_voltage_imag_22*variable_voltage_real_21)
Equation linear_constraint_real_power_flow_equation_1_2 ;
linear_constraint_real_power_flow_equation_1_2..
	(variable_real_power_flow_1_2) =e= (13.0019502925439*variable_switched_voltage_square_1_2 - 69.5104265639846*variable_voltage_product_imaginary_1_2 - 13.0019502925439*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_1 ;
linear_constraint_real_power_flow_equation_2_1..
	(variable_real_power_flow_2_1) =e= (13.0019502925439*variable_switched_voltage_square_2_1 + 69.5104265639846*variable_voltage_product_imaginary_1_2 - 13.0019502925439*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_1_3 ;
linear_constraint_real_power_flow_equation_1_3..
	(variable_real_power_flow_1_3) =e= (1.14738182597622*variable_switched_voltage_square_1_3 - 4.43822420597395*variable_voltage_product_imaginary_1_3 - 1.14738182597622*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_3_1 ;
linear_constraint_real_power_flow_equation_3_1..
	(variable_real_power_flow_3_1) =e= (1.14738182597622*variable_switched_voltage_square_3_1 + 4.43822420597395*variable_voltage_product_imaginary_1_3 - 1.14738182597622*variable_voltage_product_real_1_3)
Equation linear_constraint_real_power_flow_equation_1_5 ;
linear_constraint_real_power_flow_equation_1_5..
	(variable_real_power_flow_1_5) =e= (2.86258664905344*variable_switched_voltage_square_1_5 - 11.0958060479365*variable_voltage_product_imaginary_1_5 - 2.86258664905344*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_5_1 ;
linear_constraint_real_power_flow_equation_5_1..
	(variable_real_power_flow_5_1) =e= (2.86258664905344*variable_switched_voltage_square_5_1 + 11.0958060479365*variable_voltage_product_imaginary_1_5 - 2.86258664905344*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_2_4 ;
linear_constraint_real_power_flow_equation_2_4..
	(variable_real_power_flow_2_4) =e= (1.91491137988631*variable_switched_voltage_square_2_4 - 7.39692901925595*variable_voltage_product_imaginary_2_4 - 1.91491137988631*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_4_2 ;
linear_constraint_real_power_flow_equation_4_2..
	(variable_real_power_flow_4_2) =e= (1.91491137988631*variable_switched_voltage_square_4_2 + 7.39692901925595*variable_voltage_product_imaginary_2_4 - 1.91491137988631*variable_voltage_product_real_2_4)
Equation linear_constraint_real_power_flow_equation_2_6 ;
linear_constraint_real_power_flow_equation_2_6..
	(variable_real_power_flow_2_6) =e= (1.26353501504674*variable_switched_voltage_square_2_6 - 4.88126202995925*variable_voltage_product_imaginary_2_6 - 1.26353501504674*variable_voltage_product_real_2_6)
Equation linear_constraint_real_power_flow_equation_6_2 ;
linear_constraint_real_power_flow_equation_6_2..
	(variable_real_power_flow_6_2) =e= (1.26353501504674*variable_switched_voltage_square_6_2 + 4.88126202995925*variable_voltage_product_imaginary_2_6 - 1.26353501504674*variable_voltage_product_real_2_6)
Equation linear_constraint_real_power_flow_equation_3_9 ;
linear_constraint_real_power_flow_equation_3_9..
	(variable_real_power_flow_3_9) =e= (2.03843374163779*variable_switched_voltage_square_3_9 - 7.87576672905509*variable_voltage_product_imaginary_3_9 - 2.03843374163779*variable_voltage_product_real_3_9)
Equation linear_constraint_real_power_flow_equation_9_3 ;
linear_constraint_real_power_flow_equation_9_3..
	(variable_real_power_flow_9_3) =e= (2.03843374163779*variable_switched_voltage_square_9_3 + 7.87576672905509*variable_voltage_product_imaginary_3_9 - 2.03843374163779*variable_voltage_product_real_3_9)
Equation linear_constraint_real_power_flow_equation_3_24 ;
linear_constraint_real_power_flow_equation_3_24..
	(variable_real_power_flow_3_24) =e= (0.307753650508572*variable_switched_voltage_square_3_24 - 11.5631074852171*variable_voltage_product_imaginary_3_24 - 0.316986260023829*variable_voltage_product_real_3_24)
Equation linear_constraint_real_power_flow_equation_24_3 ;
linear_constraint_real_power_flow_equation_24_3..
	(variable_real_power_flow_24_3) =e= (0.326495847824544*variable_switched_voltage_square_24_3 + 11.5631074852171*variable_voltage_product_imaginary_3_24 - 0.316986260023829*variable_voltage_product_real_3_24)
Equation linear_constraint_real_power_flow_equation_4_9 ;
linear_constraint_real_power_flow_equation_4_9..
	(variable_real_power_flow_4_9) =e= (2.33613698828358*variable_switched_voltage_square_4_9 - 9.03945543600772*variable_voltage_product_imaginary_4_9 - 2.33613698828358*variable_voltage_product_real_4_9)
Equation linear_constraint_real_power_flow_equation_9_4 ;
linear_constraint_real_power_flow_equation_9_4..
	(variable_real_power_flow_9_4) =e= (2.33613698828358*variable_switched_voltage_square_9_4 + 9.03945543600772*variable_voltage_product_imaginary_4_9 - 2.33613698828358*variable_voltage_product_real_4_9)
Equation linear_constraint_real_power_flow_equation_5_10 ;
linear_constraint_real_power_flow_equation_5_10..
	(variable_real_power_flow_5_10) =e= (2.74146208906626*variable_switched_voltage_square_5_10 - 10.6171536168662*variable_voltage_product_imaginary_5_10 - 2.74146208906626*variable_voltage_product_real_5_10)
Equation linear_constraint_real_power_flow_equation_10_5 ;
linear_constraint_real_power_flow_equation_10_5..
	(variable_real_power_flow_10_5) =e= (2.74146208906626*variable_switched_voltage_square_10_5 + 10.6171536168662*variable_voltage_product_imaginary_5_10 - 2.74146208906626*variable_voltage_product_real_5_10)
Equation linear_constraint_real_power_flow_equation_6_10 ;
linear_constraint_real_power_flow_equation_6_10..
	(variable_real_power_flow_6_10) =e= (3.60714786192149*variable_switched_voltage_square_6_10 - 15.7001759457734*variable_voltage_product_imaginary_6_10 - 3.60714786192149*variable_voltage_product_real_6_10)
Equation linear_constraint_real_power_flow_equation_10_6 ;
linear_constraint_real_power_flow_equation_10_6..
	(variable_real_power_flow_10_6) =e= (3.60714786192149*variable_switched_voltage_square_10_6 + 15.7001759457734*variable_voltage_product_imaginary_6_10 - 3.60714786192149*variable_voltage_product_real_6_10)
Equation linear_constraint_real_power_flow_equation_7_8 ;
linear_constraint_real_power_flow_equation_7_8..
	(variable_real_power_flow_7_8) =e= (3.95250039152127*variable_switched_voltage_square_7_8 - 15.2631147194595*variable_voltage_product_imaginary_7_8 - 3.95250039152127*variable_voltage_product_real_7_8)
Equation linear_constraint_real_power_flow_equation_8_7 ;
linear_constraint_real_power_flow_equation_8_7..
	(variable_real_power_flow_8_7) =e= (3.95250039152127*variable_switched_voltage_square_8_7 + 15.2631147194595*variable_voltage_product_imaginary_7_8 - 3.95250039152127*variable_voltage_product_real_7_8)
Equation linear_constraint_real_power_flow_equation_8_9 ;
linear_constraint_real_power_flow_equation_8_9..
	(variable_real_power_flow_8_9) =e= (1.46829749701698*variable_switched_voltage_square_8_9 - 5.67718774607738*variable_voltage_product_imaginary_8_9 - 1.46829749701698*variable_voltage_product_real_8_9)
Equation linear_constraint_real_power_flow_equation_9_8 ;
linear_constraint_real_power_flow_equation_9_8..
	(variable_real_power_flow_9_8) =e= (1.46829749701698*variable_switched_voltage_square_9_8 + 5.67718774607738*variable_voltage_product_imaginary_8_9 - 1.46829749701698*variable_voltage_product_real_8_9)
Equation linear_constraint_real_power_flow_equation_8_10 ;
linear_constraint_real_power_flow_equation_8_10..
	(variable_real_power_flow_8_10) =e= (1.46829749701698*variable_switched_voltage_square_8_10 - 5.67718774607738*variable_voltage_product_imaginary_8_10 - 1.46829749701698*variable_voltage_product_real_8_10)
Equation linear_constraint_real_power_flow_equation_10_8 ;
linear_constraint_real_power_flow_equation_10_8..
	(variable_real_power_flow_10_8) =e= (1.46829749701698*variable_switched_voltage_square_10_8 + 5.67718774607738*variable_voltage_product_imaginary_8_10 - 1.46829749701698*variable_voltage_product_real_8_10)
Equation linear_constraint_real_power_flow_equation_9_11 ;
linear_constraint_real_power_flow_equation_9_11..
	(variable_real_power_flow_9_11) =e= (0.307753650508572*variable_switched_voltage_square_9_11 - 11.5631074852171*variable_voltage_product_imaginary_9_11 - 0.316986260023829*variable_voltage_product_real_9_11)
Equation linear_constraint_real_power_flow_equation_11_9 ;
linear_constraint_real_power_flow_equation_11_9..
	(variable_real_power_flow_11_9) =e= (0.326495847824544*variable_switched_voltage_square_11_9 + 11.5631074852171*variable_voltage_product_imaginary_9_11 - 0.316986260023829*variable_voltage_product_real_9_11)
Equation linear_constraint_real_power_flow_equation_9_12 ;
linear_constraint_real_power_flow_equation_9_12..
	(variable_real_power_flow_9_12) =e= (0.307753650508572*variable_switched_voltage_square_9_12 - 11.5631074852171*variable_voltage_product_imaginary_9_12 - 0.316986260023829*variable_voltage_product_real_9_12)
Equation linear_constraint_real_power_flow_equation_12_9 ;
linear_constraint_real_power_flow_equation_12_9..
	(variable_real_power_flow_12_9) =e= (0.326495847824544*variable_switched_voltage_square_12_9 + 11.5631074852171*variable_voltage_product_imaginary_9_12 - 0.316986260023829*variable_voltage_product_real_9_12)
Equation linear_constraint_real_power_flow_equation_10_11 ;
linear_constraint_real_power_flow_equation_10_11..
	(variable_real_power_flow_10_11) =e= (0.31381761613278*variable_switched_voltage_square_10_11 - 11.6764712840917*variable_voltage_product_imaginary_10_11 - 0.320093968455435*variable_voltage_product_real_10_11)
Equation linear_constraint_real_power_flow_equation_11_10 ;
linear_constraint_real_power_flow_equation_11_10..
	(variable_real_power_flow_11_10) =e= (0.326495847824544*variable_switched_voltage_square_11_10 + 11.6764712840917*variable_voltage_product_imaginary_10_11 - 0.320093968455435*variable_voltage_product_real_10_11)
Equation linear_constraint_real_power_flow_equation_10_12 ;
linear_constraint_real_power_flow_equation_10_12..
	(variable_real_power_flow_10_12) =e= (0.31381761613278*variable_switched_voltage_square_10_12 - 11.6764712840917*variable_voltage_product_imaginary_10_12 - 0.320093968455435*variable_voltage_product_real_10_12)
Equation linear_constraint_real_power_flow_equation_12_10 ;
linear_constraint_real_power_flow_equation_12_10..
	(variable_real_power_flow_12_10) =e= (0.326495847824544*variable_switched_voltage_square_12_10 + 11.6764712840917*variable_voltage_product_imaginary_10_12 - 0.320093968455435*variable_voltage_product_real_10_12)
Equation linear_constraint_real_power_flow_equation_11_13 ;
linear_constraint_real_power_flow_equation_11_13..
	(variable_real_power_flow_11_13) =e= (2.64875356604732*variable_switched_voltage_square_11_13 - 20.6689622530906*variable_voltage_product_imaginary_11_13 - 2.64875356604732*variable_voltage_product_real_11_13)
Equation linear_constraint_real_power_flow_equation_13_11 ;
linear_constraint_real_power_flow_equation_13_11..
	(variable_real_power_flow_13_11) =e= (2.64875356604732*variable_switched_voltage_square_13_11 + 20.6689622530906*variable_voltage_product_imaginary_11_13 - 2.64875356604732*variable_voltage_product_real_11_13)
Equation linear_constraint_real_power_flow_equation_11_14 ;
linear_constraint_real_power_flow_equation_11_14..
	(variable_real_power_flow_11_14) =e= (3.03985588831344*variable_switched_voltage_square_11_14 - 23.5307363206485*variable_voltage_product_imaginary_11_14 - 3.03985588831344*variable_voltage_product_real_11_14)
Equation linear_constraint_real_power_flow_equation_14_11 ;
linear_constraint_real_power_flow_equation_14_11..
	(variable_real_power_flow_14_11) =e= (3.03985588831344*variable_switched_voltage_square_14_11 + 23.5307363206485*variable_voltage_product_imaginary_11_14 - 3.03985588831344*variable_voltage_product_real_11_14)
Equation linear_constraint_real_power_flow_equation_12_13 ;
linear_constraint_real_power_flow_equation_12_13..
	(variable_real_power_flow_12_13) =e= (2.64875356604732*variable_switched_voltage_square_12_13 - 20.6689622530906*variable_voltage_product_imaginary_12_13 - 2.64875356604732*variable_voltage_product_real_12_13)
Equation linear_constraint_real_power_flow_equation_13_12 ;
linear_constraint_real_power_flow_equation_13_12..
	(variable_real_power_flow_13_12) =e= (2.64875356604732*variable_switched_voltage_square_13_12 + 20.6689622530906*variable_voltage_product_imaginary_12_13 - 2.64875356604732*variable_voltage_product_real_12_13)
Equation linear_constraint_real_power_flow_equation_12_23 ;
linear_constraint_real_power_flow_equation_12_23..
	(variable_real_power_flow_12_23) =e= (1.30728325454492*variable_switched_voltage_square_12_23 - 10.1841582571806*variable_voltage_product_imaginary_12_23 - 1.30728325454492*variable_voltage_product_real_12_23)
Equation linear_constraint_real_power_flow_equation_23_12 ;
linear_constraint_real_power_flow_equation_23_12..
	(variable_real_power_flow_23_12) =e= (1.30728325454492*variable_switched_voltage_square_23_12 + 10.1841582571806*variable_voltage_product_imaginary_12_23 - 1.30728325454492*variable_voltage_product_real_12_23)
Equation linear_constraint_real_power_flow_equation_13_23 ;
linear_constraint_real_power_flow_equation_13_23..
	(variable_real_power_flow_13_23) =e= (1.45947779621482*variable_switched_voltage_square_13_23 - 11.373408051584*variable_voltage_product_imaginary_13_23 - 1.45947779621482*variable_voltage_product_real_13_23)
Equation linear_constraint_real_power_flow_equation_23_13 ;
linear_constraint_real_power_flow_equation_23_13..
	(variable_real_power_flow_23_13) =e= (1.45947779621482*variable_switched_voltage_square_23_13 + 11.373408051584*variable_voltage_product_imaginary_13_23 - 1.45947779621482*variable_voltage_product_real_13_23)
Equation linear_constraint_real_power_flow_equation_14_16 ;
linear_constraint_real_power_flow_equation_14_16..
	(variable_real_power_flow_14_16) =e= (3.25053146189402*variable_switched_voltage_square_14_16 - 25.2891347735355*variable_voltage_product_imaginary_14_16 - 3.25053146189402*variable_voltage_product_real_14_16)
Equation linear_constraint_real_power_flow_equation_16_14 ;
linear_constraint_real_power_flow_equation_16_14..
	(variable_real_power_flow_16_14) =e= (3.25053146189402*variable_switched_voltage_square_16_14 + 25.2891347735355*variable_voltage_product_imaginary_14_16 - 3.25053146189402*variable_voltage_product_real_14_16)
Equation linear_constraint_real_power_flow_equation_15_16 ;
linear_constraint_real_power_flow_equation_15_16..
	(variable_real_power_flow_15_16) =e= (7.23374872587381*variable_switched_voltage_square_15_16 - 56.8835695261895*variable_voltage_product_imaginary_15_16 - 7.23374872587381*variable_voltage_product_real_15_16)
Equation linear_constraint_real_power_flow_equation_16_15 ;
linear_constraint_real_power_flow_equation_16_15..
	(variable_real_power_flow_16_15) =e= (7.23374872587381*variable_switched_voltage_square_16_15 + 56.8835695261895*variable_voltage_product_imaginary_15_16 - 7.23374872587381*variable_voltage_product_real_15_16)
Equation linear_constraint_real_power_flow_equation_15_21 ;
linear_constraint_real_power_flow_equation_15_21..
	(variable_real_power_flow_15_21) =e= (2.58123727306622*variable_switched_voltage_square_15_21 - 20.0762899016262*variable_voltage_product_imaginary_15_21 - 2.58123727306622*variable_voltage_product_real_15_21)
Equation linear_constraint_real_power_flow_equation_21_15 ;
linear_constraint_real_power_flow_equation_21_15..
	(variable_real_power_flow_21_15) =e= (2.58123727306622*variable_switched_voltage_square_21_15 + 20.0762899016262*variable_voltage_product_imaginary_15_21 - 2.58123727306622*variable_voltage_product_real_15_21)
Equation linear_constraint_real_power_flow_equation_15_21_2 ;
linear_constraint_real_power_flow_equation_15_21_2..
	(variable_real_power_flow_15_21_2) =e= (2.58123727306622*variable_switched_voltage_square_15_21_2 - 20.0762899016262*variable_voltage_product_imaginary_15_21_2 - 2.58123727306622*variable_voltage_product_real_15_21_2)
Equation linear_constraint_real_power_flow_equation_21_15_2 ;
linear_constraint_real_power_flow_equation_21_15_2..
	(variable_real_power_flow_21_15_2) =e= (2.58123727306622*variable_switched_voltage_square_21_15_2 + 20.0762899016262*variable_voltage_product_imaginary_15_21_2 - 2.58123727306622*variable_voltage_product_real_15_21_2)
Equation linear_constraint_real_power_flow_equation_15_24 ;
linear_constraint_real_power_flow_equation_15_24..
	(variable_real_power_flow_15_24) =e= (2.44659485119591*variable_switched_voltage_square_15_24 - 18.9519810115026*variable_voltage_product_imaginary_15_24 - 2.44659485119591*variable_voltage_product_real_15_24)
Equation linear_constraint_real_power_flow_equation_24_15 ;
linear_constraint_real_power_flow_equation_24_15..
	(variable_real_power_flow_24_15) =e= (2.44659485119591*variable_switched_voltage_square_24_15 + 18.9519810115026*variable_voltage_product_imaginary_15_24 - 2.44659485119591*variable_voltage_product_real_15_24)
Equation linear_constraint_real_power_flow_equation_16_17 ;
linear_constraint_real_power_flow_equation_16_17..
	(variable_real_power_flow_16_17) =e= (4.84083907877365*variable_switched_voltage_square_16_17 - 37.9932521637084*variable_voltage_product_imaginary_16_17 - 4.84083907877365*variable_voltage_product_real_16_17)
Equation linear_constraint_real_power_flow_equation_17_16 ;
linear_constraint_real_power_flow_equation_17_16..
	(variable_real_power_flow_17_16) =e= (4.84083907877365*variable_switched_voltage_square_17_16 + 37.9932521637084*variable_voltage_product_imaginary_16_17 - 4.84083907877365*variable_voltage_product_real_16_17)
Equation linear_constraint_real_power_flow_equation_16_19 ;
linear_constraint_real_power_flow_equation_16_19..
	(variable_real_power_flow_16_19) =e= (5.52883286338254*variable_switched_voltage_square_16_19 - 42.5720130480456*variable_voltage_product_imaginary_16_19 - 5.52883286338254*variable_voltage_product_real_16_19)
Equation linear_constraint_real_power_flow_equation_19_16 ;
linear_constraint_real_power_flow_equation_19_16..
	(variable_real_power_flow_19_16) =e= (5.52883286338254*variable_switched_voltage_square_19_16 + 42.5720130480456*variable_voltage_product_imaginary_16_19 - 5.52883286338254*variable_voltage_product_real_16_19)
Equation linear_constraint_real_power_flow_equation_17_18 ;
linear_constraint_real_power_flow_equation_17_18..
	(variable_real_power_flow_17_18) =e= (8.54700854700855*variable_switched_voltage_square_17_18 - 68.3760683760684*variable_voltage_product_imaginary_17_18 - 8.54700854700855*variable_voltage_product_real_17_18)
Equation linear_constraint_real_power_flow_equation_18_17 ;
linear_constraint_real_power_flow_equation_18_17..
	(variable_real_power_flow_18_17) =e= (8.54700854700855*variable_switched_voltage_square_18_17 + 68.3760683760684*variable_voltage_product_imaginary_17_18 - 8.54700854700855*variable_voltage_product_real_17_18)
Equation linear_constraint_real_power_flow_equation_17_22 ;
linear_constraint_real_power_flow_equation_17_22..
	(variable_real_power_flow_17_22) =e= (1.19783431555747*variable_switched_voltage_square_17_22 - 9.34310766134828*variable_voltage_product_imaginary_17_22 - 1.19783431555747*variable_voltage_product_real_17_22)
Equation linear_constraint_real_power_flow_equation_22_17 ;
linear_constraint_real_power_flow_equation_22_17..
	(variable_real_power_flow_22_17) =e= (1.19783431555747*variable_switched_voltage_square_22_17 + 9.34310766134828*variable_voltage_product_imaginary_17_22 - 1.19783431555747*variable_voltage_product_real_17_22)
Equation linear_constraint_real_power_flow_equation_18_21 ;
linear_constraint_real_power_flow_equation_18_21..
	(variable_real_power_flow_18_21) =e= (4.84083907877365*variable_switched_voltage_square_18_21 - 37.9932521637084*variable_voltage_product_imaginary_18_21 - 4.84083907877365*variable_voltage_product_real_18_21)
Equation linear_constraint_real_power_flow_equation_21_18 ;
linear_constraint_real_power_flow_equation_21_18..
	(variable_real_power_flow_21_18) =e= (4.84083907877365*variable_switched_voltage_square_21_18 + 37.9932521637084*variable_voltage_product_imaginary_18_21 - 4.84083907877365*variable_voltage_product_real_18_21)
Equation linear_constraint_real_power_flow_equation_18_21_2 ;
linear_constraint_real_power_flow_equation_18_21_2..
	(variable_real_power_flow_18_21_2) =e= (4.84083907877365*variable_switched_voltage_square_18_21_2 - 37.9932521637084*variable_voltage_product_imaginary_18_21_2 - 4.84083907877365*variable_voltage_product_real_18_21_2)
Equation linear_constraint_real_power_flow_equation_21_18_2 ;
linear_constraint_real_power_flow_equation_21_18_2..
	(variable_real_power_flow_21_18_2) =e= (4.84083907877365*variable_switched_voltage_square_21_18_2 + 37.9932521637084*variable_voltage_product_imaginary_18_21_2 - 4.84083907877365*variable_voltage_product_real_18_21_2)
Equation linear_constraint_real_power_flow_equation_19_20 ;
linear_constraint_real_power_flow_equation_19_20..
	(variable_real_power_flow_19_20) =e= (3.19915692805661*variable_switched_voltage_square_19_20 - 24.8405126178513*variable_voltage_product_imaginary_19_20 - 3.19915692805661*variable_voltage_product_real_19_20)
Equation linear_constraint_real_power_flow_equation_20_19 ;
linear_constraint_real_power_flow_equation_20_19..
	(variable_real_power_flow_20_19) =e= (3.19915692805661*variable_switched_voltage_square_20_19 + 24.8405126178513*variable_voltage_product_imaginary_19_20 - 3.19915692805661*variable_voltage_product_real_19_20)
Equation linear_constraint_real_power_flow_equation_19_20_2 ;
linear_constraint_real_power_flow_equation_19_20_2..
	(variable_real_power_flow_19_20_2) =e= (3.19915692805661*variable_switched_voltage_square_19_20_2 - 24.8405126178513*variable_voltage_product_imaginary_19_20_2 - 3.19915692805661*variable_voltage_product_real_19_20_2)
Equation linear_constraint_real_power_flow_equation_20_19_2 ;
linear_constraint_real_power_flow_equation_20_19_2..
	(variable_real_power_flow_20_19_2) =e= (3.19915692805661*variable_switched_voltage_square_20_19_2 + 24.8405126178513*variable_voltage_product_imaginary_19_20_2 - 3.19915692805661*variable_voltage_product_real_19_20_2)
Equation linear_constraint_real_power_flow_equation_20_23 ;
linear_constraint_real_power_flow_equation_20_23..
	(variable_real_power_flow_20_23) =e= (5.90219224283305*variable_switched_voltage_square_20_23 - 45.531197301855*variable_voltage_product_imaginary_20_23 - 5.90219224283305*variable_voltage_product_real_20_23)
Equation linear_constraint_real_power_flow_equation_23_20 ;
linear_constraint_real_power_flow_equation_23_20..
	(variable_real_power_flow_23_20) =e= (5.90219224283305*variable_switched_voltage_square_23_20 + 45.531197301855*variable_voltage_product_imaginary_20_23 - 5.90219224283305*variable_voltage_product_real_20_23)
Equation linear_constraint_real_power_flow_equation_20_23_2 ;
linear_constraint_real_power_flow_equation_20_23_2..
	(variable_real_power_flow_20_23_2) =e= (5.90219224283305*variable_switched_voltage_square_20_23_2 - 45.531197301855*variable_voltage_product_imaginary_20_23_2 - 5.90219224283305*variable_voltage_product_real_20_23_2)
Equation linear_constraint_real_power_flow_equation_23_20_2 ;
linear_constraint_real_power_flow_equation_23_20_2..
	(variable_real_power_flow_23_20_2) =e= (5.90219224283305*variable_switched_voltage_square_23_20_2 + 45.531197301855*variable_voltage_product_imaginary_20_23_2 - 5.90219224283305*variable_voltage_product_real_20_23_2)
Equation linear_constraint_real_power_flow_equation_21_22 ;
linear_constraint_real_power_flow_equation_21_22..
	(variable_real_power_flow_21_22) =e= (1.86194631174118*variable_switched_voltage_square_21_22 - 14.5103402225347*variable_voltage_product_imaginary_21_22 - 1.86194631174118*variable_voltage_product_real_21_22)
Equation linear_constraint_real_power_flow_equation_22_21 ;
linear_constraint_real_power_flow_equation_22_21..
	(variable_real_power_flow_22_21) =e= (1.86194631174118*variable_switched_voltage_square_22_21 + 14.5103402225347*variable_voltage_product_imaginary_21_22 - 1.86194631174118*variable_voltage_product_real_21_22)
Equation linear_constraint_reactive_power_flow_equation_1_2 ;
linear_constraint_reactive_power_flow_equation_1_2..
	(variable_reactive_power_flow_1_2) =e= (69.2798765639846*variable_switched_voltage_square_1_2 + 13.0019502925439*variable_voltage_product_imaginary_1_2 - 69.5104265639846*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_1 ;
linear_constraint_reactive_power_flow_equation_2_1..
	(variable_reactive_power_flow_2_1) =e= (69.2798765639846*variable_switched_voltage_square_2_1 - 13.0019502925439*variable_voltage_product_imaginary_1_2 - 69.5104265639846*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_1_3 ;
linear_constraint_reactive_power_flow_equation_1_3..
	(variable_reactive_power_flow_1_3) =e= (4.40962420597395*variable_switched_voltage_square_1_3 + 1.14738182597622*variable_voltage_product_imaginary_1_3 - 4.43822420597395*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_3_1 ;
linear_constraint_reactive_power_flow_equation_3_1..
	(variable_reactive_power_flow_3_1) =e= (4.40962420597395*variable_switched_voltage_square_3_1 - 1.14738182597622*variable_voltage_product_imaginary_1_3 - 4.43822420597395*variable_voltage_product_real_1_3)
Equation linear_constraint_reactive_power_flow_equation_1_5 ;
linear_constraint_reactive_power_flow_equation_1_5..
	(variable_reactive_power_flow_1_5) =e= (11.0843560479365*variable_switched_voltage_square_1_5 + 2.86258664905344*variable_voltage_product_imaginary_1_5 - 11.0958060479365*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_5_1 ;
linear_constraint_reactive_power_flow_equation_5_1..
	(variable_reactive_power_flow_5_1) =e= (11.0843560479365*variable_switched_voltage_square_5_1 - 2.86258664905344*variable_voltage_product_imaginary_1_5 - 11.0958060479365*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_2_4 ;
linear_constraint_reactive_power_flow_equation_2_4..
	(variable_reactive_power_flow_2_4) =e= (7.37977901925595*variable_switched_voltage_square_2_4 + 1.91491137988631*variable_voltage_product_imaginary_2_4 - 7.39692901925595*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_4_2 ;
linear_constraint_reactive_power_flow_equation_4_2..
	(variable_reactive_power_flow_4_2) =e= (7.37977901925595*variable_switched_voltage_square_4_2 - 1.91491137988631*variable_voltage_product_imaginary_2_4 - 7.39692901925595*variable_voltage_product_real_2_4)
Equation linear_constraint_reactive_power_flow_equation_2_6 ;
linear_constraint_reactive_power_flow_equation_2_6..
	(variable_reactive_power_flow_2_6) =e= (4.85526202995925*variable_switched_voltage_square_2_6 + 1.26353501504674*variable_voltage_product_imaginary_2_6 - 4.88126202995925*variable_voltage_product_real_2_6)
Equation linear_constraint_reactive_power_flow_equation_6_2 ;
linear_constraint_reactive_power_flow_equation_6_2..
	(variable_reactive_power_flow_6_2) =e= (4.85526202995925*variable_switched_voltage_square_6_2 - 1.26353501504674*variable_voltage_product_imaginary_2_6 - 4.88126202995925*variable_voltage_product_real_2_6)
Equation linear_constraint_reactive_power_flow_equation_3_9 ;
linear_constraint_reactive_power_flow_equation_3_9..
	(variable_reactive_power_flow_3_9) =e= (7.85966672905509*variable_switched_voltage_square_3_9 + 2.03843374163779*variable_voltage_product_imaginary_3_9 - 7.87576672905509*variable_voltage_product_real_3_9)
Equation linear_constraint_reactive_power_flow_equation_9_3 ;
linear_constraint_reactive_power_flow_equation_9_3..
	(variable_reactive_power_flow_9_3) =e= (7.85966672905509*variable_switched_voltage_square_9_3 - 2.03843374163779*variable_voltage_product_imaginary_3_9 - 7.87576672905509*variable_voltage_product_real_3_9)
Equation linear_constraint_reactive_power_flow_equation_3_24 ;
linear_constraint_reactive_power_flow_equation_3_24..
	(variable_reactive_power_flow_3_24) =e= (11.2263179468127*variable_switched_voltage_square_3_24 + 0.316986260023829*variable_voltage_product_imaginary_3_24 - 11.5631074852171*variable_voltage_product_real_3_24)
Equation linear_constraint_reactive_power_flow_equation_24_3 ;
linear_constraint_reactive_power_flow_equation_24_3..
	(variable_reactive_power_flow_24_3) =e= (11.9100007097736*variable_switched_voltage_square_24_3 - 0.316986260023829*variable_voltage_product_imaginary_3_24 - 11.5631074852171*variable_voltage_product_real_3_24)
Equation linear_constraint_reactive_power_flow_equation_4_9 ;
linear_constraint_reactive_power_flow_equation_4_9..
	(variable_reactive_power_flow_4_9) =e= (9.02540543600772*variable_switched_voltage_square_4_9 + 2.33613698828358*variable_voltage_product_imaginary_4_9 - 9.03945543600772*variable_voltage_product_real_4_9)
Equation linear_constraint_reactive_power_flow_equation_9_4 ;
linear_constraint_reactive_power_flow_equation_9_4..
	(variable_reactive_power_flow_9_4) =e= (9.02540543600772*variable_switched_voltage_square_9_4 - 2.33613698828358*variable_voltage_product_imaginary_4_9 - 9.03945543600772*variable_voltage_product_real_4_9)
Equation linear_constraint_reactive_power_flow_equation_5_10 ;
linear_constraint_reactive_power_flow_equation_5_10..
	(variable_reactive_power_flow_5_10) =e= (10.6052036168662*variable_switched_voltage_square_5_10 + 2.74146208906626*variable_voltage_product_imaginary_5_10 - 10.6171536168662*variable_voltage_product_real_5_10)
Equation linear_constraint_reactive_power_flow_equation_10_5 ;
linear_constraint_reactive_power_flow_equation_10_5..
	(variable_reactive_power_flow_10_5) =e= (10.6052036168662*variable_switched_voltage_square_10_5 - 2.74146208906626*variable_voltage_product_imaginary_5_10 - 10.6171536168662*variable_voltage_product_real_5_10)
Equation linear_constraint_reactive_power_flow_equation_6_10 ;
linear_constraint_reactive_power_flow_equation_6_10..
	(variable_reactive_power_flow_6_10) =e= (14.4706759457734*variable_switched_voltage_square_6_10 + 3.60714786192149*variable_voltage_product_imaginary_6_10 - 15.7001759457734*variable_voltage_product_real_6_10)
Equation linear_constraint_reactive_power_flow_equation_10_6 ;
linear_constraint_reactive_power_flow_equation_10_6..
	(variable_reactive_power_flow_10_6) =e= (14.4706759457734*variable_switched_voltage_square_10_6 - 3.60714786192149*variable_voltage_product_imaginary_6_10 - 15.7001759457734*variable_voltage_product_real_6_10)
Equation linear_constraint_reactive_power_flow_equation_7_8 ;
linear_constraint_reactive_power_flow_equation_7_8..
	(variable_reactive_power_flow_7_8) =e= (15.2548147194595*variable_switched_voltage_square_7_8 + 3.95250039152127*variable_voltage_product_imaginary_7_8 - 15.2631147194595*variable_voltage_product_real_7_8)
Equation linear_constraint_reactive_power_flow_equation_8_7 ;
linear_constraint_reactive_power_flow_equation_8_7..
	(variable_reactive_power_flow_8_7) =e= (15.2548147194595*variable_switched_voltage_square_8_7 - 3.95250039152127*variable_voltage_product_imaginary_7_8 - 15.2631147194595*variable_voltage_product_real_7_8)
Equation linear_constraint_reactive_power_flow_equation_8_9 ;
linear_constraint_reactive_power_flow_equation_8_9..
	(variable_reactive_power_flow_8_9) =e= (5.65483774607738*variable_switched_voltage_square_8_9 + 1.46829749701698*variable_voltage_product_imaginary_8_9 - 5.67718774607738*variable_voltage_product_real_8_9)
Equation linear_constraint_reactive_power_flow_equation_9_8 ;
linear_constraint_reactive_power_flow_equation_9_8..
	(variable_reactive_power_flow_9_8) =e= (5.65483774607738*variable_switched_voltage_square_9_8 - 1.46829749701698*variable_voltage_product_imaginary_8_9 - 5.67718774607738*variable_voltage_product_real_8_9)
Equation linear_constraint_reactive_power_flow_equation_8_10 ;
linear_constraint_reactive_power_flow_equation_8_10..
	(variable_reactive_power_flow_8_10) =e= (5.65483774607738*variable_switched_voltage_square_8_10 + 1.46829749701698*variable_voltage_product_imaginary_8_10 - 5.67718774607738*variable_voltage_product_real_8_10)
Equation linear_constraint_reactive_power_flow_equation_10_8 ;
linear_constraint_reactive_power_flow_equation_10_8..
	(variable_reactive_power_flow_10_8) =e= (5.65483774607738*variable_switched_voltage_square_10_8 - 1.46829749701698*variable_voltage_product_imaginary_8_10 - 5.67718774607738*variable_voltage_product_real_8_10)
Equation linear_constraint_reactive_power_flow_equation_9_11 ;
linear_constraint_reactive_power_flow_equation_9_11..
	(variable_reactive_power_flow_9_11) =e= (11.2263179468127*variable_switched_voltage_square_9_11 + 0.316986260023829*variable_voltage_product_imaginary_9_11 - 11.5631074852171*variable_voltage_product_real_9_11)
Equation linear_constraint_reactive_power_flow_equation_11_9 ;
linear_constraint_reactive_power_flow_equation_11_9..
	(variable_reactive_power_flow_11_9) =e= (11.9100007097736*variable_switched_voltage_square_11_9 - 0.316986260023829*variable_voltage_product_imaginary_9_11 - 11.5631074852171*variable_voltage_product_real_9_11)
Equation linear_constraint_reactive_power_flow_equation_9_12 ;
linear_constraint_reactive_power_flow_equation_9_12..
	(variable_reactive_power_flow_9_12) =e= (11.2263179468127*variable_switched_voltage_square_9_12 + 0.316986260023829*variable_voltage_product_imaginary_9_12 - 11.5631074852171*variable_voltage_product_real_9_12)
Equation linear_constraint_reactive_power_flow_equation_12_9 ;
linear_constraint_reactive_power_flow_equation_12_9..
	(variable_reactive_power_flow_12_9) =e= (11.9100007097736*variable_switched_voltage_square_12_9 - 0.316986260023829*variable_voltage_product_imaginary_9_12 - 11.5631074852171*variable_voltage_product_real_9_12)
Equation linear_constraint_reactive_power_flow_equation_10_11 ;
linear_constraint_reactive_power_flow_equation_10_11..
	(variable_reactive_power_flow_10_11) =e= (11.4475208667566*variable_switched_voltage_square_10_11 + 0.320093968455435*variable_voltage_product_imaginary_10_11 - 11.6764712840917*variable_voltage_product_real_10_11)
Equation linear_constraint_reactive_power_flow_equation_11_10 ;
linear_constraint_reactive_power_flow_equation_11_10..
	(variable_reactive_power_flow_11_10) =e= (11.9100007097736*variable_switched_voltage_square_11_10 - 0.320093968455435*variable_voltage_product_imaginary_10_11 - 11.6764712840917*variable_voltage_product_real_10_11)
Equation linear_constraint_reactive_power_flow_equation_10_12 ;
linear_constraint_reactive_power_flow_equation_10_12..
	(variable_reactive_power_flow_10_12) =e= (11.4475208667566*variable_switched_voltage_square_10_12 + 0.320093968455435*variable_voltage_product_imaginary_10_12 - 11.6764712840917*variable_voltage_product_real_10_12)
Equation linear_constraint_reactive_power_flow_equation_12_10 ;
linear_constraint_reactive_power_flow_equation_12_10..
	(variable_reactive_power_flow_12_10) =e= (11.9100007097736*variable_switched_voltage_square_12_10 - 0.320093968455435*variable_voltage_product_imaginary_10_12 - 11.6764712840917*variable_voltage_product_real_10_12)
Equation linear_constraint_reactive_power_flow_equation_11_13 ;
linear_constraint_reactive_power_flow_equation_11_13..
	(variable_reactive_power_flow_11_13) =e= (20.6190122530906*variable_switched_voltage_square_11_13 + 2.64875356604732*variable_voltage_product_imaginary_11_13 - 20.6689622530906*variable_voltage_product_real_11_13)
Equation linear_constraint_reactive_power_flow_equation_13_11 ;
linear_constraint_reactive_power_flow_equation_13_11..
	(variable_reactive_power_flow_13_11) =e= (20.6190122530906*variable_switched_voltage_square_13_11 - 2.64875356604732*variable_voltage_product_imaginary_11_13 - 20.6689622530906*variable_voltage_product_real_11_13)
Equation linear_constraint_reactive_power_flow_equation_11_14 ;
linear_constraint_reactive_power_flow_equation_11_14..
	(variable_reactive_power_flow_11_14) =e= (23.4867863206485*variable_switched_voltage_square_11_14 + 3.03985588831344*variable_voltage_product_imaginary_11_14 - 23.5307363206485*variable_voltage_product_real_11_14)
Equation linear_constraint_reactive_power_flow_equation_14_11 ;
linear_constraint_reactive_power_flow_equation_14_11..
	(variable_reactive_power_flow_14_11) =e= (23.4867863206485*variable_switched_voltage_square_14_11 - 3.03985588831344*variable_voltage_product_imaginary_11_14 - 23.5307363206485*variable_voltage_product_real_11_14)
Equation linear_constraint_reactive_power_flow_equation_12_13 ;
linear_constraint_reactive_power_flow_equation_12_13..
	(variable_reactive_power_flow_12_13) =e= (20.6190122530906*variable_switched_voltage_square_12_13 + 2.64875356604732*variable_voltage_product_imaginary_12_13 - 20.6689622530906*variable_voltage_product_real_12_13)
Equation linear_constraint_reactive_power_flow_equation_13_12 ;
linear_constraint_reactive_power_flow_equation_13_12..
	(variable_reactive_power_flow_13_12) =e= (20.6190122530906*variable_switched_voltage_square_13_12 - 2.64875356604732*variable_voltage_product_imaginary_12_13 - 20.6689622530906*variable_voltage_product_real_12_13)
Equation linear_constraint_reactive_power_flow_equation_12_23 ;
linear_constraint_reactive_power_flow_equation_12_23..
	(variable_reactive_power_flow_12_23) =e= (10.0826582571806*variable_switched_voltage_square_12_23 + 1.30728325454492*variable_voltage_product_imaginary_12_23 - 10.1841582571806*variable_voltage_product_real_12_23)
Equation linear_constraint_reactive_power_flow_equation_23_12 ;
linear_constraint_reactive_power_flow_equation_23_12..
	(variable_reactive_power_flow_23_12) =e= (10.0826582571806*variable_switched_voltage_square_23_12 - 1.30728325454492*variable_voltage_product_imaginary_12_23 - 10.1841582571806*variable_voltage_product_real_12_23)
Equation linear_constraint_reactive_power_flow_equation_13_23 ;
linear_constraint_reactive_power_flow_equation_13_23..
	(variable_reactive_power_flow_13_23) =e= (11.282508051584*variable_switched_voltage_square_13_23 + 1.45947779621482*variable_voltage_product_imaginary_13_23 - 11.373408051584*variable_voltage_product_real_13_23)
Equation linear_constraint_reactive_power_flow_equation_23_13 ;
linear_constraint_reactive_power_flow_equation_23_13..
	(variable_reactive_power_flow_23_13) =e= (11.282508051584*variable_switched_voltage_square_23_13 - 1.45947779621482*variable_voltage_product_imaginary_13_23 - 11.373408051584*variable_voltage_product_real_13_23)
Equation linear_constraint_reactive_power_flow_equation_14_16 ;
linear_constraint_reactive_power_flow_equation_14_16..
	(variable_reactive_power_flow_14_16) =e= (25.2482347735355*variable_switched_voltage_square_14_16 + 3.25053146189402*variable_voltage_product_imaginary_14_16 - 25.2891347735355*variable_voltage_product_real_14_16)
Equation linear_constraint_reactive_power_flow_equation_16_14 ;
linear_constraint_reactive_power_flow_equation_16_14..
	(variable_reactive_power_flow_16_14) =e= (25.2482347735355*variable_switched_voltage_square_16_14 - 3.25053146189402*variable_voltage_product_imaginary_14_16 - 25.2891347735355*variable_voltage_product_real_14_16)
Equation linear_constraint_reactive_power_flow_equation_15_16 ;
linear_constraint_reactive_power_flow_equation_15_16..
	(variable_reactive_power_flow_15_16) =e= (56.8653695261895*variable_switched_voltage_square_15_16 + 7.23374872587381*variable_voltage_product_imaginary_15_16 - 56.8835695261895*variable_voltage_product_real_15_16)
Equation linear_constraint_reactive_power_flow_equation_16_15 ;
linear_constraint_reactive_power_flow_equation_16_15..
	(variable_reactive_power_flow_16_15) =e= (56.8653695261895*variable_switched_voltage_square_16_15 - 7.23374872587381*variable_voltage_product_imaginary_15_16 - 56.8835695261895*variable_voltage_product_real_15_16)
Equation linear_constraint_reactive_power_flow_equation_15_21 ;
linear_constraint_reactive_power_flow_equation_15_21..
	(variable_reactive_power_flow_15_21) =e= (20.0247899016262*variable_switched_voltage_square_15_21 + 2.58123727306622*variable_voltage_product_imaginary_15_21 - 20.0762899016262*variable_voltage_product_real_15_21)
Equation linear_constraint_reactive_power_flow_equation_21_15 ;
linear_constraint_reactive_power_flow_equation_21_15..
	(variable_reactive_power_flow_21_15) =e= (20.0247899016262*variable_switched_voltage_square_21_15 - 2.58123727306622*variable_voltage_product_imaginary_15_21 - 20.0762899016262*variable_voltage_product_real_15_21)
Equation linear_constraint_reactive_power_flow_equation_15_21_2 ;
linear_constraint_reactive_power_flow_equation_15_21_2..
	(variable_reactive_power_flow_15_21_2) =e= (20.0247899016262*variable_switched_voltage_square_15_21_2 + 2.58123727306622*variable_voltage_product_imaginary_15_21_2 - 20.0762899016262*variable_voltage_product_real_15_21_2)
Equation linear_constraint_reactive_power_flow_equation_21_15_2 ;
linear_constraint_reactive_power_flow_equation_21_15_2..
	(variable_reactive_power_flow_21_15_2) =e= (20.0247899016262*variable_switched_voltage_square_21_15_2 - 2.58123727306622*variable_voltage_product_imaginary_15_21_2 - 20.0762899016262*variable_voltage_product_real_15_21_2)
Equation linear_constraint_reactive_power_flow_equation_15_24 ;
linear_constraint_reactive_power_flow_equation_15_24..
	(variable_reactive_power_flow_15_24) =e= (18.8974310115026*variable_switched_voltage_square_15_24 + 2.44659485119591*variable_voltage_product_imaginary_15_24 - 18.9519810115026*variable_voltage_product_real_15_24)
Equation linear_constraint_reactive_power_flow_equation_24_15 ;
linear_constraint_reactive_power_flow_equation_24_15..
	(variable_reactive_power_flow_24_15) =e= (18.8974310115026*variable_switched_voltage_square_24_15 - 2.44659485119591*variable_voltage_product_imaginary_15_24 - 18.9519810115026*variable_voltage_product_real_15_24)
Equation linear_constraint_reactive_power_flow_equation_16_17 ;
linear_constraint_reactive_power_flow_equation_16_17..
	(variable_reactive_power_flow_16_17) =e= (37.9660021637084*variable_switched_voltage_square_16_17 + 4.84083907877365*variable_voltage_product_imaginary_16_17 - 37.9932521637084*variable_voltage_product_real_16_17)
Equation linear_constraint_reactive_power_flow_equation_17_16 ;
linear_constraint_reactive_power_flow_equation_17_16..
	(variable_reactive_power_flow_17_16) =e= (37.9660021637084*variable_switched_voltage_square_17_16 - 4.84083907877365*variable_voltage_product_imaginary_16_17 - 37.9932521637084*variable_voltage_product_real_16_17)
Equation linear_constraint_reactive_power_flow_equation_16_19 ;
linear_constraint_reactive_power_flow_equation_16_19..
	(variable_reactive_power_flow_16_19) =e= (42.5477630480456*variable_switched_voltage_square_16_19 + 5.52883286338254*variable_voltage_product_imaginary_16_19 - 42.5720130480456*variable_voltage_product_real_16_19)
Equation linear_constraint_reactive_power_flow_equation_19_16 ;
linear_constraint_reactive_power_flow_equation_19_16..
	(variable_reactive_power_flow_19_16) =e= (42.5477630480456*variable_switched_voltage_square_19_16 - 5.52883286338254*variable_voltage_product_imaginary_16_19 - 42.5720130480456*variable_voltage_product_real_16_19)
Equation linear_constraint_reactive_power_flow_equation_17_18 ;
linear_constraint_reactive_power_flow_equation_17_18..
	(variable_reactive_power_flow_17_18) =e= (68.3609183760684*variable_switched_voltage_square_17_18 + 8.54700854700855*variable_voltage_product_imaginary_17_18 - 68.3760683760684*variable_voltage_product_real_17_18)
Equation linear_constraint_reactive_power_flow_equation_18_17 ;
linear_constraint_reactive_power_flow_equation_18_17..
	(variable_reactive_power_flow_18_17) =e= (68.3609183760684*variable_switched_voltage_square_18_17 - 8.54700854700855*variable_voltage_product_imaginary_17_18 - 68.3760683760684*variable_voltage_product_real_17_18)
Equation linear_constraint_reactive_power_flow_equation_17_22 ;
linear_constraint_reactive_power_flow_equation_17_22..
	(variable_reactive_power_flow_17_22) =e= (9.23250766134828*variable_switched_voltage_square_17_22 + 1.19783431555747*variable_voltage_product_imaginary_17_22 - 9.34310766134828*variable_voltage_product_real_17_22)
Equation linear_constraint_reactive_power_flow_equation_22_17 ;
linear_constraint_reactive_power_flow_equation_22_17..
	(variable_reactive_power_flow_22_17) =e= (9.23250766134828*variable_switched_voltage_square_22_17 - 1.19783431555747*variable_voltage_product_imaginary_17_22 - 9.34310766134828*variable_voltage_product_real_17_22)
Equation linear_constraint_reactive_power_flow_equation_18_21 ;
linear_constraint_reactive_power_flow_equation_18_21..
	(variable_reactive_power_flow_18_21) =e= (37.9660021637084*variable_switched_voltage_square_18_21 + 4.84083907877365*variable_voltage_product_imaginary_18_21 - 37.9932521637084*variable_voltage_product_real_18_21)
Equation linear_constraint_reactive_power_flow_equation_21_18 ;
linear_constraint_reactive_power_flow_equation_21_18..
	(variable_reactive_power_flow_21_18) =e= (37.9660021637084*variable_switched_voltage_square_21_18 - 4.84083907877365*variable_voltage_product_imaginary_18_21 - 37.9932521637084*variable_voltage_product_real_18_21)
Equation linear_constraint_reactive_power_flow_equation_18_21_2 ;
linear_constraint_reactive_power_flow_equation_18_21_2..
	(variable_reactive_power_flow_18_21_2) =e= (37.9660021637084*variable_switched_voltage_square_18_21_2 + 4.84083907877365*variable_voltage_product_imaginary_18_21_2 - 37.9932521637084*variable_voltage_product_real_18_21_2)
Equation linear_constraint_reactive_power_flow_equation_21_18_2 ;
linear_constraint_reactive_power_flow_equation_21_18_2..
	(variable_reactive_power_flow_21_18_2) =e= (37.9660021637084*variable_switched_voltage_square_21_18_2 - 4.84083907877365*variable_voltage_product_imaginary_18_21_2 - 37.9932521637084*variable_voltage_product_real_18_21_2)
Equation linear_constraint_reactive_power_flow_equation_19_20 ;
linear_constraint_reactive_power_flow_equation_19_20..
	(variable_reactive_power_flow_19_20) =e= (24.7988626178513*variable_switched_voltage_square_19_20 + 3.19915692805661*variable_voltage_product_imaginary_19_20 - 24.8405126178513*variable_voltage_product_real_19_20)
Equation linear_constraint_reactive_power_flow_equation_20_19 ;
linear_constraint_reactive_power_flow_equation_20_19..
	(variable_reactive_power_flow_20_19) =e= (24.7988626178513*variable_switched_voltage_square_20_19 - 3.19915692805661*variable_voltage_product_imaginary_19_20 - 24.8405126178513*variable_voltage_product_real_19_20)
Equation linear_constraint_reactive_power_flow_equation_19_20_2 ;
linear_constraint_reactive_power_flow_equation_19_20_2..
	(variable_reactive_power_flow_19_20_2) =e= (24.7988626178513*variable_switched_voltage_square_19_20_2 + 3.19915692805661*variable_voltage_product_imaginary_19_20_2 - 24.8405126178513*variable_voltage_product_real_19_20_2)
Equation linear_constraint_reactive_power_flow_equation_20_19_2 ;
linear_constraint_reactive_power_flow_equation_20_19_2..
	(variable_reactive_power_flow_20_19_2) =e= (24.7988626178513*variable_switched_voltage_square_20_19_2 - 3.19915692805661*variable_voltage_product_imaginary_19_20_2 - 24.8405126178513*variable_voltage_product_real_19_20_2)
Equation linear_constraint_reactive_power_flow_equation_20_23 ;
linear_constraint_reactive_power_flow_equation_20_23..
	(variable_reactive_power_flow_20_23) =e= (45.508447301855*variable_switched_voltage_square_20_23 + 5.90219224283305*variable_voltage_product_imaginary_20_23 - 45.531197301855*variable_voltage_product_real_20_23)
Equation linear_constraint_reactive_power_flow_equation_23_20 ;
linear_constraint_reactive_power_flow_equation_23_20..
	(variable_reactive_power_flow_23_20) =e= (45.508447301855*variable_switched_voltage_square_23_20 - 5.90219224283305*variable_voltage_product_imaginary_20_23 - 45.531197301855*variable_voltage_product_real_20_23)
Equation linear_constraint_reactive_power_flow_equation_20_23_2 ;
linear_constraint_reactive_power_flow_equation_20_23_2..
	(variable_reactive_power_flow_20_23_2) =e= (45.508447301855*variable_switched_voltage_square_20_23_2 + 5.90219224283305*variable_voltage_product_imaginary_20_23_2 - 45.531197301855*variable_voltage_product_real_20_23_2)
Equation linear_constraint_reactive_power_flow_equation_23_20_2 ;
linear_constraint_reactive_power_flow_equation_23_20_2..
	(variable_reactive_power_flow_23_20_2) =e= (45.508447301855*variable_switched_voltage_square_23_20_2 - 5.90219224283305*variable_voltage_product_imaginary_20_23_2 - 45.531197301855*variable_voltage_product_real_20_23_2)
Equation linear_constraint_reactive_power_flow_equation_21_22 ;
linear_constraint_reactive_power_flow_equation_21_22..
	(variable_reactive_power_flow_21_22) =e= (14.4391402225347*variable_switched_voltage_square_21_22 + 1.86194631174118*variable_voltage_product_imaginary_21_22 - 14.5103402225347*variable_voltage_product_real_21_22)
Equation linear_constraint_reactive_power_flow_equation_22_21 ;
linear_constraint_reactive_power_flow_equation_22_21..
	(variable_reactive_power_flow_22_21) =e= (14.4391402225347*variable_switched_voltage_square_22_21 - 1.86194631174118*variable_voltage_product_imaginary_21_22 - 14.5103402225347*variable_voltage_product_real_21_22)
Equation nonlinear_constraint_thermal_limit_1_2 ;
nonlinear_constraint_thermal_limit_1_2..
	power(variable_reactive_power_flow_1_2,2) + power(variable_real_power_flow_1_2,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_2_1 ;
nonlinear_constraint_thermal_limit_2_1..
	power(variable_reactive_power_flow_2_1,2) + power(variable_real_power_flow_2_1,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_1_3 ;
nonlinear_constraint_thermal_limit_1_3..
	power(variable_reactive_power_flow_1_3,2) + power(variable_real_power_flow_1_3,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_3_1 ;
nonlinear_constraint_thermal_limit_3_1..
	power(variable_reactive_power_flow_3_1,2) + power(variable_real_power_flow_3_1,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_1_5 ;
nonlinear_constraint_thermal_limit_1_5..
	power(variable_reactive_power_flow_1_5,2) + power(variable_real_power_flow_1_5,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_5_1 ;
nonlinear_constraint_thermal_limit_5_1..
	power(variable_reactive_power_flow_5_1,2) + power(variable_real_power_flow_5_1,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_2_4 ;
nonlinear_constraint_thermal_limit_2_4..
	power(variable_reactive_power_flow_2_4,2) + power(variable_real_power_flow_2_4,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_4_2 ;
nonlinear_constraint_thermal_limit_4_2..
	power(variable_reactive_power_flow_4_2,2) + power(variable_real_power_flow_4_2,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_2_6 ;
nonlinear_constraint_thermal_limit_2_6..
	power(variable_reactive_power_flow_2_6,2) + power(variable_real_power_flow_2_6,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_6_2 ;
nonlinear_constraint_thermal_limit_6_2..
	power(variable_reactive_power_flow_6_2,2) + power(variable_real_power_flow_6_2,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_3_9 ;
nonlinear_constraint_thermal_limit_3_9..
	power(variable_reactive_power_flow_3_9,2) + power(variable_real_power_flow_3_9,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_9_3 ;
nonlinear_constraint_thermal_limit_9_3..
	power(variable_reactive_power_flow_9_3,2) + power(variable_real_power_flow_9_3,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_3_24 ;
nonlinear_constraint_thermal_limit_3_24..
	power(variable_reactive_power_flow_3_24,2) + power(variable_real_power_flow_3_24,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_24_3 ;
nonlinear_constraint_thermal_limit_24_3..
	power(variable_reactive_power_flow_24_3,2) + power(variable_real_power_flow_24_3,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_4_9 ;
nonlinear_constraint_thermal_limit_4_9..
	power(variable_reactive_power_flow_4_9,2) + power(variable_real_power_flow_4_9,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_9_4 ;
nonlinear_constraint_thermal_limit_9_4..
	power(variable_reactive_power_flow_9_4,2) + power(variable_real_power_flow_9_4,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_5_10 ;
nonlinear_constraint_thermal_limit_5_10..
	power(variable_reactive_power_flow_5_10,2) + power(variable_real_power_flow_5_10,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_10_5 ;
nonlinear_constraint_thermal_limit_10_5..
	power(variable_reactive_power_flow_10_5,2) + power(variable_real_power_flow_10_5,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_6_10 ;
nonlinear_constraint_thermal_limit_6_10..
	power(variable_reactive_power_flow_6_10,2) + power(variable_real_power_flow_6_10,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_10_6 ;
nonlinear_constraint_thermal_limit_10_6..
	power(variable_reactive_power_flow_10_6,2) + power(variable_real_power_flow_10_6,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_7_8 ;
nonlinear_constraint_thermal_limit_7_8..
	power(variable_reactive_power_flow_7_8,2) + power(variable_real_power_flow_7_8,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_8_7 ;
nonlinear_constraint_thermal_limit_8_7..
	power(variable_reactive_power_flow_8_7,2) + power(variable_real_power_flow_8_7,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_8_9 ;
nonlinear_constraint_thermal_limit_8_9..
	power(variable_reactive_power_flow_8_9,2) + power(variable_real_power_flow_8_9,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_9_8 ;
nonlinear_constraint_thermal_limit_9_8..
	power(variable_reactive_power_flow_9_8,2) + power(variable_real_power_flow_9_8,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_8_10 ;
nonlinear_constraint_thermal_limit_8_10..
	power(variable_reactive_power_flow_8_10,2) + power(variable_real_power_flow_8_10,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_10_8 ;
nonlinear_constraint_thermal_limit_10_8..
	power(variable_reactive_power_flow_10_8,2) + power(variable_real_power_flow_10_8,2) =l= 3.0625
Equation nonlinear_constraint_thermal_limit_9_11 ;
nonlinear_constraint_thermal_limit_9_11..
	power(variable_reactive_power_flow_9_11,2) + power(variable_real_power_flow_9_11,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_11_9 ;
nonlinear_constraint_thermal_limit_11_9..
	power(variable_reactive_power_flow_11_9,2) + power(variable_real_power_flow_11_9,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_9_12 ;
nonlinear_constraint_thermal_limit_9_12..
	power(variable_reactive_power_flow_9_12,2) + power(variable_real_power_flow_9_12,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_12_9 ;
nonlinear_constraint_thermal_limit_12_9..
	power(variable_reactive_power_flow_12_9,2) + power(variable_real_power_flow_12_9,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_10_11 ;
nonlinear_constraint_thermal_limit_10_11..
	power(variable_reactive_power_flow_10_11,2) + power(variable_real_power_flow_10_11,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_11_10 ;
nonlinear_constraint_thermal_limit_11_10..
	power(variable_reactive_power_flow_11_10,2) + power(variable_real_power_flow_11_10,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_10_12 ;
nonlinear_constraint_thermal_limit_10_12..
	power(variable_reactive_power_flow_10_12,2) + power(variable_real_power_flow_10_12,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_12_10 ;
nonlinear_constraint_thermal_limit_12_10..
	power(variable_reactive_power_flow_12_10,2) + power(variable_real_power_flow_12_10,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_11_13 ;
nonlinear_constraint_thermal_limit_11_13..
	power(variable_reactive_power_flow_11_13,2) + power(variable_real_power_flow_11_13,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_13_11 ;
nonlinear_constraint_thermal_limit_13_11..
	power(variable_reactive_power_flow_13_11,2) + power(variable_real_power_flow_13_11,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_11_14 ;
nonlinear_constraint_thermal_limit_11_14..
	power(variable_reactive_power_flow_11_14,2) + power(variable_real_power_flow_11_14,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_14_11 ;
nonlinear_constraint_thermal_limit_14_11..
	power(variable_reactive_power_flow_14_11,2) + power(variable_real_power_flow_14_11,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_12_13 ;
nonlinear_constraint_thermal_limit_12_13..
	power(variable_reactive_power_flow_12_13,2) + power(variable_real_power_flow_12_13,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_13_12 ;
nonlinear_constraint_thermal_limit_13_12..
	power(variable_reactive_power_flow_13_12,2) + power(variable_real_power_flow_13_12,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_12_23 ;
nonlinear_constraint_thermal_limit_12_23..
	power(variable_reactive_power_flow_12_23,2) + power(variable_real_power_flow_12_23,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_23_12 ;
nonlinear_constraint_thermal_limit_23_12..
	power(variable_reactive_power_flow_23_12,2) + power(variable_real_power_flow_23_12,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_13_23 ;
nonlinear_constraint_thermal_limit_13_23..
	power(variable_reactive_power_flow_13_23,2) + power(variable_real_power_flow_13_23,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_23_13 ;
nonlinear_constraint_thermal_limit_23_13..
	power(variable_reactive_power_flow_23_13,2) + power(variable_real_power_flow_23_13,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_14_16 ;
nonlinear_constraint_thermal_limit_14_16..
	power(variable_reactive_power_flow_14_16,2) + power(variable_real_power_flow_14_16,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_16_14 ;
nonlinear_constraint_thermal_limit_16_14..
	power(variable_reactive_power_flow_16_14,2) + power(variable_real_power_flow_16_14,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_15_16 ;
nonlinear_constraint_thermal_limit_15_16..
	power(variable_reactive_power_flow_15_16,2) + power(variable_real_power_flow_15_16,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_16_15 ;
nonlinear_constraint_thermal_limit_16_15..
	power(variable_reactive_power_flow_16_15,2) + power(variable_real_power_flow_16_15,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_15_21 ;
nonlinear_constraint_thermal_limit_15_21..
	power(variable_reactive_power_flow_15_21,2) + power(variable_real_power_flow_15_21,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_21_15 ;
nonlinear_constraint_thermal_limit_21_15..
	power(variable_reactive_power_flow_21_15,2) + power(variable_real_power_flow_21_15,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_15_21_2 ;
nonlinear_constraint_thermal_limit_15_21_2..
	power(variable_reactive_power_flow_15_21_2,2) + power(variable_real_power_flow_15_21_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_21_15_2 ;
nonlinear_constraint_thermal_limit_21_15_2..
	power(variable_reactive_power_flow_21_15_2,2) + power(variable_real_power_flow_21_15_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_15_24 ;
nonlinear_constraint_thermal_limit_15_24..
	power(variable_reactive_power_flow_15_24,2) + power(variable_real_power_flow_15_24,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_24_15 ;
nonlinear_constraint_thermal_limit_24_15..
	power(variable_reactive_power_flow_24_15,2) + power(variable_real_power_flow_24_15,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_16_17 ;
nonlinear_constraint_thermal_limit_16_17..
	power(variable_reactive_power_flow_16_17,2) + power(variable_real_power_flow_16_17,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_17_16 ;
nonlinear_constraint_thermal_limit_17_16..
	power(variable_reactive_power_flow_17_16,2) + power(variable_real_power_flow_17_16,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_16_19 ;
nonlinear_constraint_thermal_limit_16_19..
	power(variable_reactive_power_flow_16_19,2) + power(variable_real_power_flow_16_19,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_19_16 ;
nonlinear_constraint_thermal_limit_19_16..
	power(variable_reactive_power_flow_19_16,2) + power(variable_real_power_flow_19_16,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_17_18 ;
nonlinear_constraint_thermal_limit_17_18..
	power(variable_reactive_power_flow_17_18,2) + power(variable_real_power_flow_17_18,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_18_17 ;
nonlinear_constraint_thermal_limit_18_17..
	power(variable_reactive_power_flow_18_17,2) + power(variable_real_power_flow_18_17,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_17_22 ;
nonlinear_constraint_thermal_limit_17_22..
	power(variable_reactive_power_flow_17_22,2) + power(variable_real_power_flow_17_22,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_22_17 ;
nonlinear_constraint_thermal_limit_22_17..
	power(variable_reactive_power_flow_22_17,2) + power(variable_real_power_flow_22_17,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_18_21 ;
nonlinear_constraint_thermal_limit_18_21..
	power(variable_reactive_power_flow_18_21,2) + power(variable_real_power_flow_18_21,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_21_18 ;
nonlinear_constraint_thermal_limit_21_18..
	power(variable_reactive_power_flow_21_18,2) + power(variable_real_power_flow_21_18,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_18_21_2 ;
nonlinear_constraint_thermal_limit_18_21_2..
	power(variable_reactive_power_flow_18_21_2,2) + power(variable_real_power_flow_18_21_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_21_18_2 ;
nonlinear_constraint_thermal_limit_21_18_2..
	power(variable_reactive_power_flow_21_18_2,2) + power(variable_real_power_flow_21_18_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_19_20 ;
nonlinear_constraint_thermal_limit_19_20..
	power(variable_reactive_power_flow_19_20,2) + power(variable_real_power_flow_19_20,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_20_19 ;
nonlinear_constraint_thermal_limit_20_19..
	power(variable_reactive_power_flow_20_19,2) + power(variable_real_power_flow_20_19,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_19_20_2 ;
nonlinear_constraint_thermal_limit_19_20_2..
	power(variable_reactive_power_flow_19_20_2,2) + power(variable_real_power_flow_19_20_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_20_19_2 ;
nonlinear_constraint_thermal_limit_20_19_2..
	power(variable_reactive_power_flow_20_19_2,2) + power(variable_real_power_flow_20_19_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_20_23 ;
nonlinear_constraint_thermal_limit_20_23..
	power(variable_reactive_power_flow_20_23,2) + power(variable_real_power_flow_20_23,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_23_20 ;
nonlinear_constraint_thermal_limit_23_20..
	power(variable_reactive_power_flow_23_20,2) + power(variable_real_power_flow_23_20,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_20_23_2 ;
nonlinear_constraint_thermal_limit_20_23_2..
	power(variable_reactive_power_flow_20_23_2,2) + power(variable_real_power_flow_20_23_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_23_20_2 ;
nonlinear_constraint_thermal_limit_23_20_2..
	power(variable_reactive_power_flow_23_20_2,2) + power(variable_real_power_flow_23_20_2,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_21_22 ;
nonlinear_constraint_thermal_limit_21_22..
	power(variable_reactive_power_flow_21_22,2) + power(variable_real_power_flow_21_22,2) =l= 25.0
Equation nonlinear_constraint_thermal_limit_22_21 ;
nonlinear_constraint_thermal_limit_22_21..
	power(variable_reactive_power_flow_22_21,2) + power(variable_real_power_flow_22_21,2) =l= 25.0
Equation linear_constraint_reference_rectangular_13 ;
linear_constraint_reference_rectangular_13..
	(variable_voltage_real_13) =e= (0)
Equation linear_constraint_tan_bound_lower_1_2 ;
linear_constraint_tan_bound_lower_1_2..
	variable_voltage_product_imaginary_1_2 - 0.577351901726381*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_lower_1_3 ;
linear_constraint_tan_bound_lower_1_3..
	variable_voltage_product_imaginary_1_3 - 0.577351901726381*variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_tan_bound_lower_1_5 ;
linear_constraint_tan_bound_lower_1_5..
	variable_voltage_product_imaginary_1_5 - 0.577351901726381*variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_tan_bound_lower_2_4 ;
linear_constraint_tan_bound_lower_2_4..
	variable_voltage_product_imaginary_2_4 - 0.577351901726381*variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_tan_bound_lower_2_6 ;
linear_constraint_tan_bound_lower_2_6..
	variable_voltage_product_imaginary_2_6 - 0.577351901726381*variable_voltage_product_real_2_6 =l= 0
Equation linear_constraint_tan_bound_lower_3_9 ;
linear_constraint_tan_bound_lower_3_9..
	variable_voltage_product_imaginary_3_9 - 0.577351901726381*variable_voltage_product_real_3_9 =l= 0
Equation linear_constraint_tan_bound_lower_3_24 ;
linear_constraint_tan_bound_lower_3_24..
	variable_voltage_product_imaginary_3_24 - 0.577351901726381*variable_voltage_product_real_3_24 =l= 0
Equation linear_constraint_tan_bound_lower_4_9 ;
linear_constraint_tan_bound_lower_4_9..
	variable_voltage_product_imaginary_4_9 - 0.577351901726381*variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_tan_bound_lower_5_10 ;
linear_constraint_tan_bound_lower_5_10..
	variable_voltage_product_imaginary_5_10 - 0.577351901726381*variable_voltage_product_real_5_10 =l= 0
Equation linear_constraint_tan_bound_lower_6_10 ;
linear_constraint_tan_bound_lower_6_10..
	variable_voltage_product_imaginary_6_10 - 0.577351901726381*variable_voltage_product_real_6_10 =l= 0
Equation linear_constraint_tan_bound_lower_7_8 ;
linear_constraint_tan_bound_lower_7_8..
	variable_voltage_product_imaginary_7_8 - 0.577351901726381*variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_tan_bound_lower_8_9 ;
linear_constraint_tan_bound_lower_8_9..
	variable_voltage_product_imaginary_8_9 - 0.577351901726381*variable_voltage_product_real_8_9 =l= 0
Equation linear_constraint_tan_bound_lower_8_10 ;
linear_constraint_tan_bound_lower_8_10..
	variable_voltage_product_imaginary_8_10 - 0.577351901726381*variable_voltage_product_real_8_10 =l= 0
Equation linear_constraint_tan_bound_lower_9_11 ;
linear_constraint_tan_bound_lower_9_11..
	variable_voltage_product_imaginary_9_11 - 0.577351901726381*variable_voltage_product_real_9_11 =l= 0
Equation linear_constraint_tan_bound_lower_9_12 ;
linear_constraint_tan_bound_lower_9_12..
	variable_voltage_product_imaginary_9_12 - 0.577351901726381*variable_voltage_product_real_9_12 =l= 0
Equation linear_constraint_tan_bound_lower_10_11 ;
linear_constraint_tan_bound_lower_10_11..
	variable_voltage_product_imaginary_10_11 - 0.577351901726381*variable_voltage_product_real_10_11 =l= 0
Equation linear_constraint_tan_bound_lower_10_12 ;
linear_constraint_tan_bound_lower_10_12..
	variable_voltage_product_imaginary_10_12 - 0.577351901726381*variable_voltage_product_real_10_12 =l= 0
Equation linear_constraint_tan_bound_lower_11_13 ;
linear_constraint_tan_bound_lower_11_13..
	variable_voltage_product_imaginary_11_13 - 0.577351901726381*variable_voltage_product_real_11_13 =l= 0
Equation linear_constraint_tan_bound_lower_11_14 ;
linear_constraint_tan_bound_lower_11_14..
	variable_voltage_product_imaginary_11_14 - 0.577351901726381*variable_voltage_product_real_11_14 =l= 0
Equation linear_constraint_tan_bound_lower_12_13 ;
linear_constraint_tan_bound_lower_12_13..
	variable_voltage_product_imaginary_12_13 - 0.577351901726381*variable_voltage_product_real_12_13 =l= 0
Equation linear_constraint_tan_bound_lower_12_23 ;
linear_constraint_tan_bound_lower_12_23..
	variable_voltage_product_imaginary_12_23 - 0.577351901726381*variable_voltage_product_real_12_23 =l= 0
Equation linear_constraint_tan_bound_lower_13_23 ;
linear_constraint_tan_bound_lower_13_23..
	variable_voltage_product_imaginary_13_23 - 0.577351901726381*variable_voltage_product_real_13_23 =l= 0
Equation linear_constraint_tan_bound_lower_14_16 ;
linear_constraint_tan_bound_lower_14_16..
	variable_voltage_product_imaginary_14_16 - 0.577351901726381*variable_voltage_product_real_14_16 =l= 0
Equation linear_constraint_tan_bound_lower_15_16 ;
linear_constraint_tan_bound_lower_15_16..
	variable_voltage_product_imaginary_15_16 - 0.577351901726381*variable_voltage_product_real_15_16 =l= 0
Equation linear_constraint_tan_bound_lower_15_21 ;
linear_constraint_tan_bound_lower_15_21..
	variable_voltage_product_imaginary_15_21 - 0.577351901726381*variable_voltage_product_real_15_21 =l= 0
Equation linear_constraint_tan_bound_lower_15_24 ;
linear_constraint_tan_bound_lower_15_24..
	variable_voltage_product_imaginary_15_24 - 0.577351901726381*variable_voltage_product_real_15_24 =l= 0
Equation linear_constraint_tan_bound_lower_16_17 ;
linear_constraint_tan_bound_lower_16_17..
	variable_voltage_product_imaginary_16_17 - 0.577351901726381*variable_voltage_product_real_16_17 =l= 0
Equation linear_constraint_tan_bound_lower_16_19 ;
linear_constraint_tan_bound_lower_16_19..
	variable_voltage_product_imaginary_16_19 - 0.577351901726381*variable_voltage_product_real_16_19 =l= 0
Equation linear_constraint_tan_bound_lower_17_18 ;
linear_constraint_tan_bound_lower_17_18..
	variable_voltage_product_imaginary_17_18 - 0.577351901726381*variable_voltage_product_real_17_18 =l= 0
Equation linear_constraint_tan_bound_lower_17_22 ;
linear_constraint_tan_bound_lower_17_22..
	variable_voltage_product_imaginary_17_22 - 0.577351901726381*variable_voltage_product_real_17_22 =l= 0
Equation linear_constraint_tan_bound_lower_18_21 ;
linear_constraint_tan_bound_lower_18_21..
	variable_voltage_product_imaginary_18_21 - 0.577351901726381*variable_voltage_product_real_18_21 =l= 0
Equation linear_constraint_tan_bound_lower_19_20 ;
linear_constraint_tan_bound_lower_19_20..
	variable_voltage_product_imaginary_19_20 - 0.577351901726381*variable_voltage_product_real_19_20 =l= 0
Equation linear_constraint_tan_bound_lower_20_23 ;
linear_constraint_tan_bound_lower_20_23..
	variable_voltage_product_imaginary_20_23 - 0.577351901726381*variable_voltage_product_real_20_23 =l= 0
Equation linear_constraint_tan_bound_lower_21_22 ;
linear_constraint_tan_bound_lower_21_22..
	variable_voltage_product_imaginary_21_22 - 0.577351901726381*variable_voltage_product_real_21_22 =l= 0
Equation linear_constraint_tan_bound_upper_1_2 ;
linear_constraint_tan_bound_upper_1_2..
	-variable_voltage_product_imaginary_1_2 - 0.577351901726381*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_upper_1_3 ;
linear_constraint_tan_bound_upper_1_3..
	-variable_voltage_product_imaginary_1_3 - 0.577351901726381*variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_tan_bound_upper_1_5 ;
linear_constraint_tan_bound_upper_1_5..
	-variable_voltage_product_imaginary_1_5 - 0.577351901726381*variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_tan_bound_upper_2_4 ;
linear_constraint_tan_bound_upper_2_4..
	-variable_voltage_product_imaginary_2_4 - 0.577351901726381*variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_tan_bound_upper_2_6 ;
linear_constraint_tan_bound_upper_2_6..
	-variable_voltage_product_imaginary_2_6 - 0.577351901726381*variable_voltage_product_real_2_6 =l= 0
Equation linear_constraint_tan_bound_upper_3_9 ;
linear_constraint_tan_bound_upper_3_9..
	-variable_voltage_product_imaginary_3_9 - 0.577351901726381*variable_voltage_product_real_3_9 =l= 0
Equation linear_constraint_tan_bound_upper_3_24 ;
linear_constraint_tan_bound_upper_3_24..
	-variable_voltage_product_imaginary_3_24 - 0.577351901726381*variable_voltage_product_real_3_24 =l= 0
Equation linear_constraint_tan_bound_upper_4_9 ;
linear_constraint_tan_bound_upper_4_9..
	-variable_voltage_product_imaginary_4_9 - 0.577351901726381*variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_tan_bound_upper_5_10 ;
linear_constraint_tan_bound_upper_5_10..
	-variable_voltage_product_imaginary_5_10 - 0.577351901726381*variable_voltage_product_real_5_10 =l= 0
Equation linear_constraint_tan_bound_upper_6_10 ;
linear_constraint_tan_bound_upper_6_10..
	-variable_voltage_product_imaginary_6_10 - 0.577351901726381*variable_voltage_product_real_6_10 =l= 0
Equation linear_constraint_tan_bound_upper_7_8 ;
linear_constraint_tan_bound_upper_7_8..
	-variable_voltage_product_imaginary_7_8 - 0.577351901726381*variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_tan_bound_upper_8_9 ;
linear_constraint_tan_bound_upper_8_9..
	-variable_voltage_product_imaginary_8_9 - 0.577351901726381*variable_voltage_product_real_8_9 =l= 0
Equation linear_constraint_tan_bound_upper_8_10 ;
linear_constraint_tan_bound_upper_8_10..
	-variable_voltage_product_imaginary_8_10 - 0.577351901726381*variable_voltage_product_real_8_10 =l= 0
Equation linear_constraint_tan_bound_upper_9_11 ;
linear_constraint_tan_bound_upper_9_11..
	-variable_voltage_product_imaginary_9_11 - 0.577351901726381*variable_voltage_product_real_9_11 =l= 0
Equation linear_constraint_tan_bound_upper_9_12 ;
linear_constraint_tan_bound_upper_9_12..
	-variable_voltage_product_imaginary_9_12 - 0.577351901726381*variable_voltage_product_real_9_12 =l= 0
Equation linear_constraint_tan_bound_upper_10_11 ;
linear_constraint_tan_bound_upper_10_11..
	-variable_voltage_product_imaginary_10_11 - 0.577351901726381*variable_voltage_product_real_10_11 =l= 0
Equation linear_constraint_tan_bound_upper_10_12 ;
linear_constraint_tan_bound_upper_10_12..
	-variable_voltage_product_imaginary_10_12 - 0.577351901726381*variable_voltage_product_real_10_12 =l= 0
Equation linear_constraint_tan_bound_upper_11_13 ;
linear_constraint_tan_bound_upper_11_13..
	-variable_voltage_product_imaginary_11_13 - 0.577351901726381*variable_voltage_product_real_11_13 =l= 0
Equation linear_constraint_tan_bound_upper_11_14 ;
linear_constraint_tan_bound_upper_11_14..
	-variable_voltage_product_imaginary_11_14 - 0.577351901726381*variable_voltage_product_real_11_14 =l= 0
Equation linear_constraint_tan_bound_upper_12_13 ;
linear_constraint_tan_bound_upper_12_13..
	-variable_voltage_product_imaginary_12_13 - 0.577351901726381*variable_voltage_product_real_12_13 =l= 0
Equation linear_constraint_tan_bound_upper_12_23 ;
linear_constraint_tan_bound_upper_12_23..
	-variable_voltage_product_imaginary_12_23 - 0.577351901726381*variable_voltage_product_real_12_23 =l= 0
Equation linear_constraint_tan_bound_upper_13_23 ;
linear_constraint_tan_bound_upper_13_23..
	-variable_voltage_product_imaginary_13_23 - 0.577351901726381*variable_voltage_product_real_13_23 =l= 0
Equation linear_constraint_tan_bound_upper_14_16 ;
linear_constraint_tan_bound_upper_14_16..
	-variable_voltage_product_imaginary_14_16 - 0.577351901726381*variable_voltage_product_real_14_16 =l= 0
Equation linear_constraint_tan_bound_upper_15_16 ;
linear_constraint_tan_bound_upper_15_16..
	-variable_voltage_product_imaginary_15_16 - 0.577351901726381*variable_voltage_product_real_15_16 =l= 0
Equation linear_constraint_tan_bound_upper_15_21 ;
linear_constraint_tan_bound_upper_15_21..
	-variable_voltage_product_imaginary_15_21 - 0.577351901726381*variable_voltage_product_real_15_21 =l= 0
Equation linear_constraint_tan_bound_upper_15_24 ;
linear_constraint_tan_bound_upper_15_24..
	-variable_voltage_product_imaginary_15_24 - 0.577351901726381*variable_voltage_product_real_15_24 =l= 0
Equation linear_constraint_tan_bound_upper_16_17 ;
linear_constraint_tan_bound_upper_16_17..
	-variable_voltage_product_imaginary_16_17 - 0.577351901726381*variable_voltage_product_real_16_17 =l= 0
Equation linear_constraint_tan_bound_upper_16_19 ;
linear_constraint_tan_bound_upper_16_19..
	-variable_voltage_product_imaginary_16_19 - 0.577351901726381*variable_voltage_product_real_16_19 =l= 0
Equation linear_constraint_tan_bound_upper_17_18 ;
linear_constraint_tan_bound_upper_17_18..
	-variable_voltage_product_imaginary_17_18 - 0.577351901726381*variable_voltage_product_real_17_18 =l= 0
Equation linear_constraint_tan_bound_upper_17_22 ;
linear_constraint_tan_bound_upper_17_22..
	-variable_voltage_product_imaginary_17_22 - 0.577351901726381*variable_voltage_product_real_17_22 =l= 0
Equation linear_constraint_tan_bound_upper_18_21 ;
linear_constraint_tan_bound_upper_18_21..
	-variable_voltage_product_imaginary_18_21 - 0.577351901726381*variable_voltage_product_real_18_21 =l= 0
Equation linear_constraint_tan_bound_upper_19_20 ;
linear_constraint_tan_bound_upper_19_20..
	-variable_voltage_product_imaginary_19_20 - 0.577351901726381*variable_voltage_product_real_19_20 =l= 0
Equation linear_constraint_tan_bound_upper_20_23 ;
linear_constraint_tan_bound_upper_20_23..
	-variable_voltage_product_imaginary_20_23 - 0.577351901726381*variable_voltage_product_real_20_23 =l= 0
Equation linear_constraint_tan_bound_upper_21_22 ;
linear_constraint_tan_bound_upper_21_22..
	-variable_voltage_product_imaginary_21_22 - 0.577351901726381*variable_voltage_product_real_21_22 =l= 0
Equation linear_constraint_generator_switch_lower_1_1 ;
linear_constraint_generator_switch_lower_1_1..
	0.146*variable_generator_switch_1_1 - variable_real_power_gen_1_1 =l= 0
Equation linear_constraint_generator_switch_lower_1_2 ;
linear_constraint_generator_switch_lower_1_2..
	0.244*variable_generator_switch_1_2 - variable_real_power_gen_1_2 =l= 0
Equation linear_constraint_generator_switch_lower_1_3 ;
linear_constraint_generator_switch_lower_1_3..
	0.266*variable_generator_switch_1_3 - variable_real_power_gen_1_3 =l= 0
Equation linear_constraint_generator_switch_lower_1_4 ;
linear_constraint_generator_switch_lower_1_4..
	0.234*variable_generator_switch_1_4 - variable_real_power_gen_1_4 =l= 0
Equation linear_constraint_generator_switch_lower_2_1 ;
linear_constraint_generator_switch_lower_2_1..
	0.932*variable_generator_switch_2_1 - variable_real_power_gen_2_1 =l= 0
Equation linear_constraint_generator_switch_lower_2_2 ;
linear_constraint_generator_switch_lower_2_2..
	0.342*variable_generator_switch_2_2 - variable_real_power_gen_2_2 =l= 0
Equation linear_constraint_generator_switch_lower_2_3 ;
linear_constraint_generator_switch_lower_2_3..
	1.17*variable_generator_switch_2_3 - variable_real_power_gen_2_3 =l= 0
Equation linear_constraint_generator_switch_lower_2_4 ;
linear_constraint_generator_switch_lower_2_4..
	0.362*variable_generator_switch_2_4 - variable_real_power_gen_2_4 =l= 0
Equation linear_constraint_generator_switch_lower_7_1 ;
linear_constraint_generator_switch_lower_7_1..
	0.436*variable_generator_switch_7_1 - variable_real_power_gen_7_1 =l= 0
Equation linear_constraint_generator_switch_lower_7_2 ;
linear_constraint_generator_switch_lower_7_2..
	0.82*variable_generator_switch_7_2 - variable_real_power_gen_7_2 =l= 0
Equation linear_constraint_generator_switch_lower_7_3 ;
linear_constraint_generator_switch_lower_7_3..
	0.262*variable_generator_switch_7_3 - variable_real_power_gen_7_3 =l= 0
Equation linear_constraint_generator_switch_lower_13_1 ;
linear_constraint_generator_switch_lower_13_1..
	1.15*variable_generator_switch_13_1 - variable_real_power_gen_13_1 =l= 0
Equation linear_constraint_generator_switch_lower_13_2 ;
linear_constraint_generator_switch_lower_13_2..
	2.252*variable_generator_switch_13_2 - variable_real_power_gen_13_2 =l= 0
Equation linear_constraint_generator_switch_lower_13_3 ;
linear_constraint_generator_switch_lower_13_3..
	1.086*variable_generator_switch_13_3 - variable_real_power_gen_13_3 =l= 0
Equation linear_constraint_generator_switch_lower_14 ;
linear_constraint_generator_switch_lower_14..
	-variable_real_power_gen_14 =l= 0
Equation linear_constraint_generator_switch_lower_15_1 ;
linear_constraint_generator_switch_lower_15_1..
	0.342*variable_generator_switch_15_1 - variable_real_power_gen_15_1 =l= 0
Equation linear_constraint_generator_switch_lower_15_2 ;
linear_constraint_generator_switch_lower_15_2..
	0.286*variable_generator_switch_15_2 - variable_real_power_gen_15_2 =l= 0
Equation linear_constraint_generator_switch_lower_15_3 ;
linear_constraint_generator_switch_lower_15_3..
	0.63*variable_generator_switch_15_3 - variable_real_power_gen_15_3 =l= 0
Equation linear_constraint_generator_switch_lower_15_4 ;
linear_constraint_generator_switch_lower_15_4..
	0.344*variable_generator_switch_15_4 - variable_real_power_gen_15_4 =l= 0
Equation linear_constraint_generator_switch_lower_15_5 ;
linear_constraint_generator_switch_lower_15_5..
	0.67*variable_generator_switch_15_5 - variable_real_power_gen_15_5 =l= 0
Equation linear_constraint_generator_switch_lower_15_6 ;
linear_constraint_generator_switch_lower_15_6..
	0.912*variable_generator_switch_15_6 - variable_real_power_gen_15_6 =l= 0
Equation linear_constraint_generator_switch_lower_16 ;
linear_constraint_generator_switch_lower_16..
	1.148*variable_generator_switch_16 - variable_real_power_gen_16 =l= 0
Equation linear_constraint_generator_switch_lower_18 ;
linear_constraint_generator_switch_lower_18..
	0.632*variable_generator_switch_18 - variable_real_power_gen_18 =l= 0
Equation linear_constraint_generator_switch_lower_21 ;
linear_constraint_generator_switch_lower_21..
	0.538*variable_generator_switch_21 - variable_real_power_gen_21 =l= 0
Equation linear_constraint_generator_switch_lower_22_1 ;
linear_constraint_generator_switch_lower_22_1..
	0.23*variable_generator_switch_22_1 - variable_real_power_gen_22_1 =l= 0
Equation linear_constraint_generator_switch_lower_22_2 ;
linear_constraint_generator_switch_lower_22_2..
	0.17*variable_generator_switch_22_2 - variable_real_power_gen_22_2 =l= 0
Equation linear_constraint_generator_switch_lower_22_3 ;
linear_constraint_generator_switch_lower_22_3..
	0.27*variable_generator_switch_22_3 - variable_real_power_gen_22_3 =l= 0
Equation linear_constraint_generator_switch_lower_22_4 ;
linear_constraint_generator_switch_lower_22_4..
	0.218*variable_generator_switch_22_4 - variable_real_power_gen_22_4 =l= 0
Equation linear_constraint_generator_switch_lower_22_5 ;
linear_constraint_generator_switch_lower_22_5..
	0.16*variable_generator_switch_22_5 - variable_real_power_gen_22_5 =l= 0
Equation linear_constraint_generator_switch_lower_22_6 ;
linear_constraint_generator_switch_lower_22_6..
	0.448*variable_generator_switch_22_6 - variable_real_power_gen_22_6 =l= 0
Equation linear_constraint_generator_switch_lower_23_1 ;
linear_constraint_generator_switch_lower_23_1..
	0.74*variable_generator_switch_23_1 - variable_real_power_gen_23_1 =l= 0
Equation linear_constraint_generator_switch_lower_23_2 ;
linear_constraint_generator_switch_lower_23_2..
	0.488*variable_generator_switch_23_2 - variable_real_power_gen_23_2 =l= 0
Equation linear_constraint_generator_switch_lower_23_3 ;
linear_constraint_generator_switch_lower_23_3..
	0.706*variable_generator_switch_23_3 - variable_real_power_gen_23_3 =l= 0
Equation linear_constraint_generator_switch_upper_1_1 ;
linear_constraint_generator_switch_upper_1_1..
	0.73*variable_generator_switch_1_1 - variable_real_power_gen_1_1 =g= 0
Equation linear_constraint_generator_switch_upper_1_2 ;
linear_constraint_generator_switch_upper_1_2..
	1.22*variable_generator_switch_1_2 - variable_real_power_gen_1_2 =g= 0
Equation linear_constraint_generator_switch_upper_1_3 ;
linear_constraint_generator_switch_upper_1_3..
	1.33*variable_generator_switch_1_3 - variable_real_power_gen_1_3 =g= 0
Equation linear_constraint_generator_switch_upper_1_4 ;
linear_constraint_generator_switch_upper_1_4..
	1.17*variable_generator_switch_1_4 - variable_real_power_gen_1_4 =g= 0
Equation linear_constraint_generator_switch_upper_2_1 ;
linear_constraint_generator_switch_upper_2_1..
	4.66*variable_generator_switch_2_1 - variable_real_power_gen_2_1 =g= 0
Equation linear_constraint_generator_switch_upper_2_2 ;
linear_constraint_generator_switch_upper_2_2..
	1.71*variable_generator_switch_2_2 - variable_real_power_gen_2_2 =g= 0
Equation linear_constraint_generator_switch_upper_2_3 ;
linear_constraint_generator_switch_upper_2_3..
	5.85*variable_generator_switch_2_3 - variable_real_power_gen_2_3 =g= 0
Equation linear_constraint_generator_switch_upper_2_4 ;
linear_constraint_generator_switch_upper_2_4..
	1.81*variable_generator_switch_2_4 - variable_real_power_gen_2_4 =g= 0
Equation linear_constraint_generator_switch_upper_7_1 ;
linear_constraint_generator_switch_upper_7_1..
	2.18*variable_generator_switch_7_1 - variable_real_power_gen_7_1 =g= 0
Equation linear_constraint_generator_switch_upper_7_2 ;
linear_constraint_generator_switch_upper_7_2..
	4.1*variable_generator_switch_7_2 - variable_real_power_gen_7_2 =g= 0
Equation linear_constraint_generator_switch_upper_7_3 ;
linear_constraint_generator_switch_upper_7_3..
	1.31*variable_generator_switch_7_3 - variable_real_power_gen_7_3 =g= 0
Equation linear_constraint_generator_switch_upper_13_1 ;
linear_constraint_generator_switch_upper_13_1..
	5.75*variable_generator_switch_13_1 - variable_real_power_gen_13_1 =g= 0
Equation linear_constraint_generator_switch_upper_13_2 ;
linear_constraint_generator_switch_upper_13_2..
	11.26*variable_generator_switch_13_2 - variable_real_power_gen_13_2 =g= 0
Equation linear_constraint_generator_switch_upper_13_3 ;
linear_constraint_generator_switch_upper_13_3..
	5.43*variable_generator_switch_13_3 - variable_real_power_gen_13_3 =g= 0
Equation linear_constraint_generator_switch_upper_14 ;
linear_constraint_generator_switch_upper_14..
	-variable_real_power_gen_14 =g= 0
Equation linear_constraint_generator_switch_upper_15_1 ;
linear_constraint_generator_switch_upper_15_1..
	1.71*variable_generator_switch_15_1 - variable_real_power_gen_15_1 =g= 0
Equation linear_constraint_generator_switch_upper_15_2 ;
linear_constraint_generator_switch_upper_15_2..
	1.43*variable_generator_switch_15_2 - variable_real_power_gen_15_2 =g= 0
Equation linear_constraint_generator_switch_upper_15_3 ;
linear_constraint_generator_switch_upper_15_3..
	3.15*variable_generator_switch_15_3 - variable_real_power_gen_15_3 =g= 0
Equation linear_constraint_generator_switch_upper_15_4 ;
linear_constraint_generator_switch_upper_15_4..
	1.72*variable_generator_switch_15_4 - variable_real_power_gen_15_4 =g= 0
Equation linear_constraint_generator_switch_upper_15_5 ;
linear_constraint_generator_switch_upper_15_5..
	3.35*variable_generator_switch_15_5 - variable_real_power_gen_15_5 =g= 0
Equation linear_constraint_generator_switch_upper_15_6 ;
linear_constraint_generator_switch_upper_15_6..
	4.56*variable_generator_switch_15_6 - variable_real_power_gen_15_6 =g= 0
Equation linear_constraint_generator_switch_upper_16 ;
linear_constraint_generator_switch_upper_16..
	5.74*variable_generator_switch_16 - variable_real_power_gen_16 =g= 0
Equation linear_constraint_generator_switch_upper_18 ;
linear_constraint_generator_switch_upper_18..
	3.16*variable_generator_switch_18 - variable_real_power_gen_18 =g= 0
Equation linear_constraint_generator_switch_upper_21 ;
linear_constraint_generator_switch_upper_21..
	2.69*variable_generator_switch_21 - variable_real_power_gen_21 =g= 0
Equation linear_constraint_generator_switch_upper_22_1 ;
linear_constraint_generator_switch_upper_22_1..
	1.15*variable_generator_switch_22_1 - variable_real_power_gen_22_1 =g= 0
Equation linear_constraint_generator_switch_upper_22_2 ;
linear_constraint_generator_switch_upper_22_2..
	0.85*variable_generator_switch_22_2 - variable_real_power_gen_22_2 =g= 0
Equation linear_constraint_generator_switch_upper_22_3 ;
linear_constraint_generator_switch_upper_22_3..
	1.35*variable_generator_switch_22_3 - variable_real_power_gen_22_3 =g= 0
Equation linear_constraint_generator_switch_upper_22_4 ;
linear_constraint_generator_switch_upper_22_4..
	1.09*variable_generator_switch_22_4 - variable_real_power_gen_22_4 =g= 0
Equation linear_constraint_generator_switch_upper_22_5 ;
linear_constraint_generator_switch_upper_22_5..
	0.8*variable_generator_switch_22_5 - variable_real_power_gen_22_5 =g= 0
Equation linear_constraint_generator_switch_upper_22_6 ;
linear_constraint_generator_switch_upper_22_6..
	2.24*variable_generator_switch_22_6 - variable_real_power_gen_22_6 =g= 0
Equation linear_constraint_generator_switch_upper_23_1 ;
linear_constraint_generator_switch_upper_23_1..
	3.7*variable_generator_switch_23_1 - variable_real_power_gen_23_1 =g= 0
Equation linear_constraint_generator_switch_upper_23_2 ;
linear_constraint_generator_switch_upper_23_2..
	2.44*variable_generator_switch_23_2 - variable_real_power_gen_23_2 =g= 0
Equation linear_constraint_generator_switch_upper_23_3 ;
linear_constraint_generator_switch_upper_23_3..
	3.53*variable_generator_switch_23_3 - variable_real_power_gen_23_3 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1_1 ;
linear_constraint_generator_switch__reactive_lower_1_1..
	-0.37*variable_generator_switch_1_1 - variable_reactive_power_gen_1_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_1_2 ;
linear_constraint_generator_switch__reactive_lower_1_2..
	-0.61*variable_generator_switch_1_2 - variable_reactive_power_gen_1_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_1_3 ;
linear_constraint_generator_switch__reactive_lower_1_3..
	-0.67*variable_generator_switch_1_3 - variable_reactive_power_gen_1_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_1_4 ;
linear_constraint_generator_switch__reactive_lower_1_4..
	-0.59*variable_generator_switch_1_4 - variable_reactive_power_gen_1_4 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2_1 ;
linear_constraint_generator_switch__reactive_lower_2_1..
	-2.33*variable_generator_switch_2_1 - variable_reactive_power_gen_2_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2_2 ;
linear_constraint_generator_switch__reactive_lower_2_2..
	-0.86*variable_generator_switch_2_2 - variable_reactive_power_gen_2_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2_3 ;
linear_constraint_generator_switch__reactive_lower_2_3..
	-2.93*variable_generator_switch_2_3 - variable_reactive_power_gen_2_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_2_4 ;
linear_constraint_generator_switch__reactive_lower_2_4..
	-0.91*variable_generator_switch_2_4 - variable_reactive_power_gen_2_4 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_7_1 ;
linear_constraint_generator_switch__reactive_lower_7_1..
	-1.09*variable_generator_switch_7_1 - variable_reactive_power_gen_7_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_7_2 ;
linear_constraint_generator_switch__reactive_lower_7_2..
	-2.05*variable_generator_switch_7_2 - variable_reactive_power_gen_7_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_7_3 ;
linear_constraint_generator_switch__reactive_lower_7_3..
	-0.66*variable_generator_switch_7_3 - variable_reactive_power_gen_7_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_13_1 ;
linear_constraint_generator_switch__reactive_lower_13_1..
	-2.88*variable_generator_switch_13_1 - variable_reactive_power_gen_13_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_13_2 ;
linear_constraint_generator_switch__reactive_lower_13_2..
	-5.63*variable_generator_switch_13_2 - variable_reactive_power_gen_13_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_13_3 ;
linear_constraint_generator_switch__reactive_lower_13_3..
	-2.72*variable_generator_switch_13_3 - variable_reactive_power_gen_13_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_14 ;
linear_constraint_generator_switch__reactive_lower_14..
	-2.508*variable_generator_switch_14 - variable_reactive_power_gen_14 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_15_1 ;
linear_constraint_generator_switch__reactive_lower_15_1..
	-0.948*variable_generator_switch_15_1 - variable_reactive_power_gen_15_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_15_2 ;
linear_constraint_generator_switch__reactive_lower_15_2..
	-0.948*variable_generator_switch_15_2 - variable_reactive_power_gen_15_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_15_3 ;
linear_constraint_generator_switch__reactive_lower_15_3..
	-1.58*variable_generator_switch_15_3 - variable_reactive_power_gen_15_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_15_4 ;
linear_constraint_generator_switch__reactive_lower_15_4..
	-0.948*variable_generator_switch_15_4 - variable_reactive_power_gen_15_4 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_15_5 ;
linear_constraint_generator_switch__reactive_lower_15_5..
	-1.68*variable_generator_switch_15_5 - variable_reactive_power_gen_15_5 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_15_6 ;
linear_constraint_generator_switch__reactive_lower_15_6..
	-2.28*variable_generator_switch_15_6 - variable_reactive_power_gen_15_6 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_16 ;
linear_constraint_generator_switch__reactive_lower_16..
	-2.87*variable_generator_switch_16 - variable_reactive_power_gen_16 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_18 ;
linear_constraint_generator_switch__reactive_lower_18..
	-1.58*variable_generator_switch_18 - variable_reactive_power_gen_18 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_21 ;
linear_constraint_generator_switch__reactive_lower_21..
	-1.416*variable_generator_switch_21 - variable_reactive_power_gen_21 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_22_1 ;
linear_constraint_generator_switch__reactive_lower_22_1..
	-0.58*variable_generator_switch_22_1 - variable_reactive_power_gen_22_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_22_2 ;
linear_constraint_generator_switch__reactive_lower_22_2..
	-0.43*variable_generator_switch_22_2 - variable_reactive_power_gen_22_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_22_3 ;
linear_constraint_generator_switch__reactive_lower_22_3..
	-0.68*variable_generator_switch_22_3 - variable_reactive_power_gen_22_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_22_4 ;
linear_constraint_generator_switch__reactive_lower_22_4..
	-0.55*variable_generator_switch_22_4 - variable_reactive_power_gen_22_4 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_22_5 ;
linear_constraint_generator_switch__reactive_lower_22_5..
	-0.4*variable_generator_switch_22_5 - variable_reactive_power_gen_22_5 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_22_6 ;
linear_constraint_generator_switch__reactive_lower_22_6..
	-1.12*variable_generator_switch_22_6 - variable_reactive_power_gen_22_6 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_23_1 ;
linear_constraint_generator_switch__reactive_lower_23_1..
	-1.85*variable_generator_switch_23_1 - variable_reactive_power_gen_23_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_23_2 ;
linear_constraint_generator_switch__reactive_lower_23_2..
	-1.22*variable_generator_switch_23_2 - variable_reactive_power_gen_23_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_23_3 ;
linear_constraint_generator_switch__reactive_lower_23_3..
	-1.77*variable_generator_switch_23_3 - variable_reactive_power_gen_23_3 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1_1 ;
linear_constraint_generator_switch_reactive_upper_1_1..
	0.37*variable_generator_switch_1_1 - variable_reactive_power_gen_1_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_1_2 ;
linear_constraint_generator_switch_reactive_upper_1_2..
	0.61*variable_generator_switch_1_2 - variable_reactive_power_gen_1_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_1_3 ;
linear_constraint_generator_switch_reactive_upper_1_3..
	0.67*variable_generator_switch_1_3 - variable_reactive_power_gen_1_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_1_4 ;
linear_constraint_generator_switch_reactive_upper_1_4..
	0.59*variable_generator_switch_1_4 - variable_reactive_power_gen_1_4 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2_1 ;
linear_constraint_generator_switch_reactive_upper_2_1..
	2.33*variable_generator_switch_2_1 - variable_reactive_power_gen_2_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2_2 ;
linear_constraint_generator_switch_reactive_upper_2_2..
	0.86*variable_generator_switch_2_2 - variable_reactive_power_gen_2_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2_3 ;
linear_constraint_generator_switch_reactive_upper_2_3..
	2.93*variable_generator_switch_2_3 - variable_reactive_power_gen_2_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_2_4 ;
linear_constraint_generator_switch_reactive_upper_2_4..
	0.91*variable_generator_switch_2_4 - variable_reactive_power_gen_2_4 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_7_1 ;
linear_constraint_generator_switch_reactive_upper_7_1..
	1.09*variable_generator_switch_7_1 - variable_reactive_power_gen_7_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_7_2 ;
linear_constraint_generator_switch_reactive_upper_7_2..
	2.05*variable_generator_switch_7_2 - variable_reactive_power_gen_7_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_7_3 ;
linear_constraint_generator_switch_reactive_upper_7_3..
	0.66*variable_generator_switch_7_3 - variable_reactive_power_gen_7_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_13_1 ;
linear_constraint_generator_switch_reactive_upper_13_1..
	2.88*variable_generator_switch_13_1 - variable_reactive_power_gen_13_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_13_2 ;
linear_constraint_generator_switch_reactive_upper_13_2..
	5.63*variable_generator_switch_13_2 - variable_reactive_power_gen_13_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_13_3 ;
linear_constraint_generator_switch_reactive_upper_13_3..
	2.72*variable_generator_switch_13_3 - variable_reactive_power_gen_13_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_14 ;
linear_constraint_generator_switch_reactive_upper_14..
	2.508*variable_generator_switch_14 - variable_reactive_power_gen_14 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_15_1 ;
linear_constraint_generator_switch_reactive_upper_15_1..
	0.948*variable_generator_switch_15_1 - variable_reactive_power_gen_15_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_15_2 ;
linear_constraint_generator_switch_reactive_upper_15_2..
	0.948*variable_generator_switch_15_2 - variable_reactive_power_gen_15_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_15_3 ;
linear_constraint_generator_switch_reactive_upper_15_3..
	1.58*variable_generator_switch_15_3 - variable_reactive_power_gen_15_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_15_4 ;
linear_constraint_generator_switch_reactive_upper_15_4..
	0.948*variable_generator_switch_15_4 - variable_reactive_power_gen_15_4 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_15_5 ;
linear_constraint_generator_switch_reactive_upper_15_5..
	1.68*variable_generator_switch_15_5 - variable_reactive_power_gen_15_5 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_15_6 ;
linear_constraint_generator_switch_reactive_upper_15_6..
	2.28*variable_generator_switch_15_6 - variable_reactive_power_gen_15_6 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_16 ;
linear_constraint_generator_switch_reactive_upper_16..
	2.87*variable_generator_switch_16 - variable_reactive_power_gen_16 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_18 ;
linear_constraint_generator_switch_reactive_upper_18..
	2.0*variable_generator_switch_18 - variable_reactive_power_gen_18 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_21 ;
linear_constraint_generator_switch_reactive_upper_21..
	2.0*variable_generator_switch_21 - variable_reactive_power_gen_21 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_22_1 ;
linear_constraint_generator_switch_reactive_upper_22_1..
	0.58*variable_generator_switch_22_1 - variable_reactive_power_gen_22_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_22_2 ;
linear_constraint_generator_switch_reactive_upper_22_2..
	0.43*variable_generator_switch_22_2 - variable_reactive_power_gen_22_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_22_3 ;
linear_constraint_generator_switch_reactive_upper_22_3..
	0.68*variable_generator_switch_22_3 - variable_reactive_power_gen_22_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_22_4 ;
linear_constraint_generator_switch_reactive_upper_22_4..
	0.55*variable_generator_switch_22_4 - variable_reactive_power_gen_22_4 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_22_5 ;
linear_constraint_generator_switch_reactive_upper_22_5..
	0.4*variable_generator_switch_22_5 - variable_reactive_power_gen_22_5 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_22_6 ;
linear_constraint_generator_switch_reactive_upper_22_6..
	1.12*variable_generator_switch_22_6 - variable_reactive_power_gen_22_6 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_23_1 ;
linear_constraint_generator_switch_reactive_upper_23_1..
	1.85*variable_generator_switch_23_1 - variable_reactive_power_gen_23_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_23_2 ;
linear_constraint_generator_switch_reactive_upper_23_2..
	1.22*variable_generator_switch_23_2 - variable_reactive_power_gen_23_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_23_3 ;
linear_constraint_generator_switch_reactive_upper_23_3..
	1.77*variable_generator_switch_23_3 - variable_reactive_power_gen_23_3 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_3 ;
linear_constraint_voltage_product_real_lower_1_3..
	-variable_voltage_product_real_1_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_5 ;
linear_constraint_voltage_product_real_lower_1_5..
	-variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_4 ;
linear_constraint_voltage_product_real_lower_2_4..
	-variable_voltage_product_real_2_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_6 ;
linear_constraint_voltage_product_real_lower_2_6..
	-variable_voltage_product_real_2_6 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_9 ;
linear_constraint_voltage_product_real_lower_3_9..
	-variable_voltage_product_real_3_9 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_24 ;
linear_constraint_voltage_product_real_lower_3_24..
	-variable_voltage_product_real_3_24 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_9 ;
linear_constraint_voltage_product_real_lower_4_9..
	-variable_voltage_product_real_4_9 =l= 0
Equation linear_constraint_voltage_product_real_lower_5_10 ;
linear_constraint_voltage_product_real_lower_5_10..
	-variable_voltage_product_real_5_10 =l= 0
Equation linear_constraint_voltage_product_real_lower_6_10 ;
linear_constraint_voltage_product_real_lower_6_10..
	-variable_voltage_product_real_6_10 =l= 0
Equation linear_constraint_voltage_product_real_lower_7_8 ;
linear_constraint_voltage_product_real_lower_7_8..
	-variable_voltage_product_real_7_8 =l= 0
Equation linear_constraint_voltage_product_real_lower_8_9 ;
linear_constraint_voltage_product_real_lower_8_9..
	-variable_voltage_product_real_8_9 =l= 0
Equation linear_constraint_voltage_product_real_lower_8_10 ;
linear_constraint_voltage_product_real_lower_8_10..
	-variable_voltage_product_real_8_10 =l= 0
Equation linear_constraint_voltage_product_real_lower_9_11 ;
linear_constraint_voltage_product_real_lower_9_11..
	-variable_voltage_product_real_9_11 =l= 0
Equation linear_constraint_voltage_product_real_lower_9_12 ;
linear_constraint_voltage_product_real_lower_9_12..
	-variable_voltage_product_real_9_12 =l= 0
Equation linear_constraint_voltage_product_real_lower_10_11 ;
linear_constraint_voltage_product_real_lower_10_11..
	-variable_voltage_product_real_10_11 =l= 0
Equation linear_constraint_voltage_product_real_lower_10_12 ;
linear_constraint_voltage_product_real_lower_10_12..
	-variable_voltage_product_real_10_12 =l= 0
Equation linear_constraint_voltage_product_real_lower_11_13 ;
linear_constraint_voltage_product_real_lower_11_13..
	-variable_voltage_product_real_11_13 =l= 0
Equation linear_constraint_voltage_product_real_lower_11_14 ;
linear_constraint_voltage_product_real_lower_11_14..
	-variable_voltage_product_real_11_14 =l= 0
Equation linear_constraint_voltage_product_real_lower_12_13 ;
linear_constraint_voltage_product_real_lower_12_13..
	-variable_voltage_product_real_12_13 =l= 0
Equation linear_constraint_voltage_product_real_lower_12_23 ;
linear_constraint_voltage_product_real_lower_12_23..
	-variable_voltage_product_real_12_23 =l= 0
Equation linear_constraint_voltage_product_real_lower_13_23 ;
linear_constraint_voltage_product_real_lower_13_23..
	-variable_voltage_product_real_13_23 =l= 0
Equation linear_constraint_voltage_product_real_lower_14_16 ;
linear_constraint_voltage_product_real_lower_14_16..
	-variable_voltage_product_real_14_16 =l= 0
Equation linear_constraint_voltage_product_real_lower_15_16 ;
linear_constraint_voltage_product_real_lower_15_16..
	-variable_voltage_product_real_15_16 =l= 0
Equation linear_constraint_voltage_product_real_lower_15_21 ;
linear_constraint_voltage_product_real_lower_15_21..
	-variable_voltage_product_real_15_21 =l= 0
Equation linear_constraint_voltage_product_real_lower_15_21_2 ;
linear_constraint_voltage_product_real_lower_15_21_2..
	-variable_voltage_product_real_15_21_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_15_24 ;
linear_constraint_voltage_product_real_lower_15_24..
	-variable_voltage_product_real_15_24 =l= 0
Equation linear_constraint_voltage_product_real_lower_16_17 ;
linear_constraint_voltage_product_real_lower_16_17..
	-variable_voltage_product_real_16_17 =l= 0
Equation linear_constraint_voltage_product_real_lower_16_19 ;
linear_constraint_voltage_product_real_lower_16_19..
	-variable_voltage_product_real_16_19 =l= 0
Equation linear_constraint_voltage_product_real_lower_17_18 ;
linear_constraint_voltage_product_real_lower_17_18..
	-variable_voltage_product_real_17_18 =l= 0
Equation linear_constraint_voltage_product_real_lower_17_22 ;
linear_constraint_voltage_product_real_lower_17_22..
	-variable_voltage_product_real_17_22 =l= 0
Equation linear_constraint_voltage_product_real_lower_18_21 ;
linear_constraint_voltage_product_real_lower_18_21..
	-variable_voltage_product_real_18_21 =l= 0
Equation linear_constraint_voltage_product_real_lower_18_21_2 ;
linear_constraint_voltage_product_real_lower_18_21_2..
	-variable_voltage_product_real_18_21_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_19_20 ;
linear_constraint_voltage_product_real_lower_19_20..
	-variable_voltage_product_real_19_20 =l= 0
Equation linear_constraint_voltage_product_real_lower_19_20_2 ;
linear_constraint_voltage_product_real_lower_19_20_2..
	-variable_voltage_product_real_19_20_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_20_23 ;
linear_constraint_voltage_product_real_lower_20_23..
	-variable_voltage_product_real_20_23 =l= 0
Equation linear_constraint_voltage_product_real_lower_20_23_2 ;
linear_constraint_voltage_product_real_lower_20_23_2..
	-variable_voltage_product_real_20_23_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_21_22 ;
linear_constraint_voltage_product_real_lower_21_22..
	-variable_voltage_product_real_21_22 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_2 ;
linear_constraint_voltage_product_real_upper_1_2..
	1.1025*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_3 ;
linear_constraint_voltage_product_real_upper_1_3..
	1.1025*variable_transmission_switch_1_3 - variable_voltage_product_real_1_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_5 ;
linear_constraint_voltage_product_real_upper_1_5..
	1.1025*variable_transmission_switch_1_5 - variable_voltage_product_real_1_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_4 ;
linear_constraint_voltage_product_real_upper_2_4..
	1.1025*variable_transmission_switch_2_4 - variable_voltage_product_real_2_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_6 ;
linear_constraint_voltage_product_real_upper_2_6..
	1.1025*variable_transmission_switch_2_6 - variable_voltage_product_real_2_6 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_9 ;
linear_constraint_voltage_product_real_upper_3_9..
	1.1025*variable_transmission_switch_3_9 - variable_voltage_product_real_3_9 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_24 ;
linear_constraint_voltage_product_real_upper_3_24..
	1.1025*variable_transmission_switch_3_24 - variable_voltage_product_real_3_24 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_9 ;
linear_constraint_voltage_product_real_upper_4_9..
	1.1025*variable_transmission_switch_4_9 - variable_voltage_product_real_4_9 =g= 0
Equation linear_constraint_voltage_product_real_upper_5_10 ;
linear_constraint_voltage_product_real_upper_5_10..
	1.1025*variable_transmission_switch_5_10 - variable_voltage_product_real_5_10 =g= 0
Equation linear_constraint_voltage_product_real_upper_6_10 ;
linear_constraint_voltage_product_real_upper_6_10..
	1.1025*variable_transmission_switch_6_10 - variable_voltage_product_real_6_10 =g= 0
Equation linear_constraint_voltage_product_real_upper_7_8 ;
linear_constraint_voltage_product_real_upper_7_8..
	1.1025*variable_transmission_switch_7_8 - variable_voltage_product_real_7_8 =g= 0
Equation linear_constraint_voltage_product_real_upper_8_9 ;
linear_constraint_voltage_product_real_upper_8_9..
	1.1025*variable_transmission_switch_8_9 - variable_voltage_product_real_8_9 =g= 0
Equation linear_constraint_voltage_product_real_upper_8_10 ;
linear_constraint_voltage_product_real_upper_8_10..
	1.1025*variable_transmission_switch_8_10 - variable_voltage_product_real_8_10 =g= 0
Equation linear_constraint_voltage_product_real_upper_9_11 ;
linear_constraint_voltage_product_real_upper_9_11..
	1.1025*variable_transmission_switch_9_11 - variable_voltage_product_real_9_11 =g= 0
Equation linear_constraint_voltage_product_real_upper_9_12 ;
linear_constraint_voltage_product_real_upper_9_12..
	1.1025*variable_transmission_switch_9_12 - variable_voltage_product_real_9_12 =g= 0
Equation linear_constraint_voltage_product_real_upper_10_11 ;
linear_constraint_voltage_product_real_upper_10_11..
	1.1025*variable_transmission_switch_10_11 - variable_voltage_product_real_10_11 =g= 0
Equation linear_constraint_voltage_product_real_upper_10_12 ;
linear_constraint_voltage_product_real_upper_10_12..
	1.1025*variable_transmission_switch_10_12 - variable_voltage_product_real_10_12 =g= 0
Equation linear_constraint_voltage_product_real_upper_11_13 ;
linear_constraint_voltage_product_real_upper_11_13..
	1.1025*variable_transmission_switch_11_13 - variable_voltage_product_real_11_13 =g= 0
Equation linear_constraint_voltage_product_real_upper_11_14 ;
linear_constraint_voltage_product_real_upper_11_14..
	1.1025*variable_transmission_switch_11_14 - variable_voltage_product_real_11_14 =g= 0
Equation linear_constraint_voltage_product_real_upper_12_13 ;
linear_constraint_voltage_product_real_upper_12_13..
	1.1025*variable_transmission_switch_12_13 - variable_voltage_product_real_12_13 =g= 0
Equation linear_constraint_voltage_product_real_upper_12_23 ;
linear_constraint_voltage_product_real_upper_12_23..
	1.1025*variable_transmission_switch_12_23 - variable_voltage_product_real_12_23 =g= 0
Equation linear_constraint_voltage_product_real_upper_13_23 ;
linear_constraint_voltage_product_real_upper_13_23..
	1.1025*variable_transmission_switch_13_23 - variable_voltage_product_real_13_23 =g= 0
Equation linear_constraint_voltage_product_real_upper_14_16 ;
linear_constraint_voltage_product_real_upper_14_16..
	1.1025*variable_transmission_switch_14_16 - variable_voltage_product_real_14_16 =g= 0
Equation linear_constraint_voltage_product_real_upper_15_16 ;
linear_constraint_voltage_product_real_upper_15_16..
	1.1025*variable_transmission_switch_15_16 - variable_voltage_product_real_15_16 =g= 0
Equation linear_constraint_voltage_product_real_upper_15_21 ;
linear_constraint_voltage_product_real_upper_15_21..
	1.1025*variable_transmission_switch_15_21 - variable_voltage_product_real_15_21 =g= 0
Equation linear_constraint_voltage_product_real_upper_15_21_2 ;
linear_constraint_voltage_product_real_upper_15_21_2..
	1.1025*variable_transmission_switch_15_21_2 - variable_voltage_product_real_15_21_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_15_24 ;
linear_constraint_voltage_product_real_upper_15_24..
	1.1025*variable_transmission_switch_15_24 - variable_voltage_product_real_15_24 =g= 0
Equation linear_constraint_voltage_product_real_upper_16_17 ;
linear_constraint_voltage_product_real_upper_16_17..
	1.1025*variable_transmission_switch_16_17 - variable_voltage_product_real_16_17 =g= 0
Equation linear_constraint_voltage_product_real_upper_16_19 ;
linear_constraint_voltage_product_real_upper_16_19..
	1.1025*variable_transmission_switch_16_19 - variable_voltage_product_real_16_19 =g= 0
Equation linear_constraint_voltage_product_real_upper_17_18 ;
linear_constraint_voltage_product_real_upper_17_18..
	1.1025*variable_transmission_switch_17_18 - variable_voltage_product_real_17_18 =g= 0
Equation linear_constraint_voltage_product_real_upper_17_22 ;
linear_constraint_voltage_product_real_upper_17_22..
	1.1025*variable_transmission_switch_17_22 - variable_voltage_product_real_17_22 =g= 0
Equation linear_constraint_voltage_product_real_upper_18_21 ;
linear_constraint_voltage_product_real_upper_18_21..
	1.1025*variable_transmission_switch_18_21 - variable_voltage_product_real_18_21 =g= 0
Equation linear_constraint_voltage_product_real_upper_18_21_2 ;
linear_constraint_voltage_product_real_upper_18_21_2..
	1.1025*variable_transmission_switch_18_21_2 - variable_voltage_product_real_18_21_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_19_20 ;
linear_constraint_voltage_product_real_upper_19_20..
	1.1025*variable_transmission_switch_19_20 - variable_voltage_product_real_19_20 =g= 0
Equation linear_constraint_voltage_product_real_upper_19_20_2 ;
linear_constraint_voltage_product_real_upper_19_20_2..
	1.1025*variable_transmission_switch_19_20_2 - variable_voltage_product_real_19_20_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_20_23 ;
linear_constraint_voltage_product_real_upper_20_23..
	1.1025*variable_transmission_switch_20_23 - variable_voltage_product_real_20_23 =g= 0
Equation linear_constraint_voltage_product_real_upper_20_23_2 ;
linear_constraint_voltage_product_real_upper_20_23_2..
	1.1025*variable_transmission_switch_20_23_2 - variable_voltage_product_real_20_23_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_21_22 ;
linear_constraint_voltage_product_real_upper_21_22..
	1.1025*variable_transmission_switch_21_22 - variable_voltage_product_real_21_22 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_2 ;
linear_constraint_voltage_product_imaginary_lower_1_2..
	-1.1025*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_3 ;
linear_constraint_voltage_product_imaginary_lower_1_3..
	-1.1025*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_5 ;
linear_constraint_voltage_product_imaginary_lower_1_5..
	-1.1025*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_4 ;
linear_constraint_voltage_product_imaginary_lower_2_4..
	-1.1025*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_6 ;
linear_constraint_voltage_product_imaginary_lower_2_6..
	-1.1025*variable_transmission_switch_2_6 - variable_voltage_product_imaginary_2_6 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_9 ;
linear_constraint_voltage_product_imaginary_lower_3_9..
	-1.1025*variable_transmission_switch_3_9 - variable_voltage_product_imaginary_3_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_24 ;
linear_constraint_voltage_product_imaginary_lower_3_24..
	-1.1025*variable_transmission_switch_3_24 - variable_voltage_product_imaginary_3_24 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_9 ;
linear_constraint_voltage_product_imaginary_lower_4_9..
	-1.1025*variable_transmission_switch_4_9 - variable_voltage_product_imaginary_4_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_5_10 ;
linear_constraint_voltage_product_imaginary_lower_5_10..
	-1.1025*variable_transmission_switch_5_10 - variable_voltage_product_imaginary_5_10 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_6_10 ;
linear_constraint_voltage_product_imaginary_lower_6_10..
	-1.1025*variable_transmission_switch_6_10 - variable_voltage_product_imaginary_6_10 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_7_8 ;
linear_constraint_voltage_product_imaginary_lower_7_8..
	-1.1025*variable_transmission_switch_7_8 - variable_voltage_product_imaginary_7_8 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_8_9 ;
linear_constraint_voltage_product_imaginary_lower_8_9..
	-1.1025*variable_transmission_switch_8_9 - variable_voltage_product_imaginary_8_9 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_8_10 ;
linear_constraint_voltage_product_imaginary_lower_8_10..
	-1.1025*variable_transmission_switch_8_10 - variable_voltage_product_imaginary_8_10 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_9_11 ;
linear_constraint_voltage_product_imaginary_lower_9_11..
	-1.1025*variable_transmission_switch_9_11 - variable_voltage_product_imaginary_9_11 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_9_12 ;
linear_constraint_voltage_product_imaginary_lower_9_12..
	-1.1025*variable_transmission_switch_9_12 - variable_voltage_product_imaginary_9_12 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_10_11 ;
linear_constraint_voltage_product_imaginary_lower_10_11..
	-1.1025*variable_transmission_switch_10_11 - variable_voltage_product_imaginary_10_11 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_10_12 ;
linear_constraint_voltage_product_imaginary_lower_10_12..
	-1.1025*variable_transmission_switch_10_12 - variable_voltage_product_imaginary_10_12 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_11_13 ;
linear_constraint_voltage_product_imaginary_lower_11_13..
	-1.1025*variable_transmission_switch_11_13 - variable_voltage_product_imaginary_11_13 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_11_14 ;
linear_constraint_voltage_product_imaginary_lower_11_14..
	-1.1025*variable_transmission_switch_11_14 - variable_voltage_product_imaginary_11_14 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_12_13 ;
linear_constraint_voltage_product_imaginary_lower_12_13..
	-1.1025*variable_transmission_switch_12_13 - variable_voltage_product_imaginary_12_13 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_12_23 ;
linear_constraint_voltage_product_imaginary_lower_12_23..
	-1.1025*variable_transmission_switch_12_23 - variable_voltage_product_imaginary_12_23 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_13_23 ;
linear_constraint_voltage_product_imaginary_lower_13_23..
	-1.1025*variable_transmission_switch_13_23 - variable_voltage_product_imaginary_13_23 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_14_16 ;
linear_constraint_voltage_product_imaginary_lower_14_16..
	-1.1025*variable_transmission_switch_14_16 - variable_voltage_product_imaginary_14_16 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_15_16 ;
linear_constraint_voltage_product_imaginary_lower_15_16..
	-1.1025*variable_transmission_switch_15_16 - variable_voltage_product_imaginary_15_16 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_15_21 ;
linear_constraint_voltage_product_imaginary_lower_15_21..
	-1.1025*variable_transmission_switch_15_21 - variable_voltage_product_imaginary_15_21 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_15_21_2 ;
linear_constraint_voltage_product_imaginary_lower_15_21_2..
	-1.1025*variable_transmission_switch_15_21_2 - variable_voltage_product_imaginary_15_21_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_15_24 ;
linear_constraint_voltage_product_imaginary_lower_15_24..
	-1.1025*variable_transmission_switch_15_24 - variable_voltage_product_imaginary_15_24 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_16_17 ;
linear_constraint_voltage_product_imaginary_lower_16_17..
	-1.1025*variable_transmission_switch_16_17 - variable_voltage_product_imaginary_16_17 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_16_19 ;
linear_constraint_voltage_product_imaginary_lower_16_19..
	-1.1025*variable_transmission_switch_16_19 - variable_voltage_product_imaginary_16_19 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_17_18 ;
linear_constraint_voltage_product_imaginary_lower_17_18..
	-1.1025*variable_transmission_switch_17_18 - variable_voltage_product_imaginary_17_18 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_17_22 ;
linear_constraint_voltage_product_imaginary_lower_17_22..
	-1.1025*variable_transmission_switch_17_22 - variable_voltage_product_imaginary_17_22 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_18_21 ;
linear_constraint_voltage_product_imaginary_lower_18_21..
	-1.1025*variable_transmission_switch_18_21 - variable_voltage_product_imaginary_18_21 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_18_21_2 ;
linear_constraint_voltage_product_imaginary_lower_18_21_2..
	-1.1025*variable_transmission_switch_18_21_2 - variable_voltage_product_imaginary_18_21_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_19_20 ;
linear_constraint_voltage_product_imaginary_lower_19_20..
	-1.1025*variable_transmission_switch_19_20 - variable_voltage_product_imaginary_19_20 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_19_20_2 ;
linear_constraint_voltage_product_imaginary_lower_19_20_2..
	-1.1025*variable_transmission_switch_19_20_2 - variable_voltage_product_imaginary_19_20_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_20_23 ;
linear_constraint_voltage_product_imaginary_lower_20_23..
	-1.1025*variable_transmission_switch_20_23 - variable_voltage_product_imaginary_20_23 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_20_23_2 ;
linear_constraint_voltage_product_imaginary_lower_20_23_2..
	-1.1025*variable_transmission_switch_20_23_2 - variable_voltage_product_imaginary_20_23_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_21_22 ;
linear_constraint_voltage_product_imaginary_lower_21_22..
	-1.1025*variable_transmission_switch_21_22 - variable_voltage_product_imaginary_21_22 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_2 ;
linear_constraint_voltage_product_imaginary_upper_1_2..
	1.1025*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_3 ;
linear_constraint_voltage_product_imaginary_upper_1_3..
	1.1025*variable_transmission_switch_1_3 - variable_voltage_product_imaginary_1_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_5 ;
linear_constraint_voltage_product_imaginary_upper_1_5..
	1.1025*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_4 ;
linear_constraint_voltage_product_imaginary_upper_2_4..
	1.1025*variable_transmission_switch_2_4 - variable_voltage_product_imaginary_2_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_6 ;
linear_constraint_voltage_product_imaginary_upper_2_6..
	1.1025*variable_transmission_switch_2_6 - variable_voltage_product_imaginary_2_6 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_9 ;
linear_constraint_voltage_product_imaginary_upper_3_9..
	1.1025*variable_transmission_switch_3_9 - variable_voltage_product_imaginary_3_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_24 ;
linear_constraint_voltage_product_imaginary_upper_3_24..
	1.1025*variable_transmission_switch_3_24 - variable_voltage_product_imaginary_3_24 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_9 ;
linear_constraint_voltage_product_imaginary_upper_4_9..
	1.1025*variable_transmission_switch_4_9 - variable_voltage_product_imaginary_4_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_5_10 ;
linear_constraint_voltage_product_imaginary_upper_5_10..
	1.1025*variable_transmission_switch_5_10 - variable_voltage_product_imaginary_5_10 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_6_10 ;
linear_constraint_voltage_product_imaginary_upper_6_10..
	1.1025*variable_transmission_switch_6_10 - variable_voltage_product_imaginary_6_10 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_7_8 ;
linear_constraint_voltage_product_imaginary_upper_7_8..
	1.1025*variable_transmission_switch_7_8 - variable_voltage_product_imaginary_7_8 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_8_9 ;
linear_constraint_voltage_product_imaginary_upper_8_9..
	1.1025*variable_transmission_switch_8_9 - variable_voltage_product_imaginary_8_9 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_8_10 ;
linear_constraint_voltage_product_imaginary_upper_8_10..
	1.1025*variable_transmission_switch_8_10 - variable_voltage_product_imaginary_8_10 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_9_11 ;
linear_constraint_voltage_product_imaginary_upper_9_11..
	1.1025*variable_transmission_switch_9_11 - variable_voltage_product_imaginary_9_11 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_9_12 ;
linear_constraint_voltage_product_imaginary_upper_9_12..
	1.1025*variable_transmission_switch_9_12 - variable_voltage_product_imaginary_9_12 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_10_11 ;
linear_constraint_voltage_product_imaginary_upper_10_11..
	1.1025*variable_transmission_switch_10_11 - variable_voltage_product_imaginary_10_11 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_10_12 ;
linear_constraint_voltage_product_imaginary_upper_10_12..
	1.1025*variable_transmission_switch_10_12 - variable_voltage_product_imaginary_10_12 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_11_13 ;
linear_constraint_voltage_product_imaginary_upper_11_13..
	1.1025*variable_transmission_switch_11_13 - variable_voltage_product_imaginary_11_13 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_11_14 ;
linear_constraint_voltage_product_imaginary_upper_11_14..
	1.1025*variable_transmission_switch_11_14 - variable_voltage_product_imaginary_11_14 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_12_13 ;
linear_constraint_voltage_product_imaginary_upper_12_13..
	1.1025*variable_transmission_switch_12_13 - variable_voltage_product_imaginary_12_13 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_12_23 ;
linear_constraint_voltage_product_imaginary_upper_12_23..
	1.1025*variable_transmission_switch_12_23 - variable_voltage_product_imaginary_12_23 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_13_23 ;
linear_constraint_voltage_product_imaginary_upper_13_23..
	1.1025*variable_transmission_switch_13_23 - variable_voltage_product_imaginary_13_23 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_14_16 ;
linear_constraint_voltage_product_imaginary_upper_14_16..
	1.1025*variable_transmission_switch_14_16 - variable_voltage_product_imaginary_14_16 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_15_16 ;
linear_constraint_voltage_product_imaginary_upper_15_16..
	1.1025*variable_transmission_switch_15_16 - variable_voltage_product_imaginary_15_16 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_15_21 ;
linear_constraint_voltage_product_imaginary_upper_15_21..
	1.1025*variable_transmission_switch_15_21 - variable_voltage_product_imaginary_15_21 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_15_21_2 ;
linear_constraint_voltage_product_imaginary_upper_15_21_2..
	1.1025*variable_transmission_switch_15_21_2 - variable_voltage_product_imaginary_15_21_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_15_24 ;
linear_constraint_voltage_product_imaginary_upper_15_24..
	1.1025*variable_transmission_switch_15_24 - variable_voltage_product_imaginary_15_24 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_16_17 ;
linear_constraint_voltage_product_imaginary_upper_16_17..
	1.1025*variable_transmission_switch_16_17 - variable_voltage_product_imaginary_16_17 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_16_19 ;
linear_constraint_voltage_product_imaginary_upper_16_19..
	1.1025*variable_transmission_switch_16_19 - variable_voltage_product_imaginary_16_19 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_17_18 ;
linear_constraint_voltage_product_imaginary_upper_17_18..
	1.1025*variable_transmission_switch_17_18 - variable_voltage_product_imaginary_17_18 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_17_22 ;
linear_constraint_voltage_product_imaginary_upper_17_22..
	1.1025*variable_transmission_switch_17_22 - variable_voltage_product_imaginary_17_22 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_18_21 ;
linear_constraint_voltage_product_imaginary_upper_18_21..
	1.1025*variable_transmission_switch_18_21 - variable_voltage_product_imaginary_18_21 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_18_21_2 ;
linear_constraint_voltage_product_imaginary_upper_18_21_2..
	1.1025*variable_transmission_switch_18_21_2 - variable_voltage_product_imaginary_18_21_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_19_20 ;
linear_constraint_voltage_product_imaginary_upper_19_20..
	1.1025*variable_transmission_switch_19_20 - variable_voltage_product_imaginary_19_20 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_19_20_2 ;
linear_constraint_voltage_product_imaginary_upper_19_20_2..
	1.1025*variable_transmission_switch_19_20_2 - variable_voltage_product_imaginary_19_20_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_20_23 ;
linear_constraint_voltage_product_imaginary_upper_20_23..
	1.1025*variable_transmission_switch_20_23 - variable_voltage_product_imaginary_20_23 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_20_23_2 ;
linear_constraint_voltage_product_imaginary_upper_20_23_2..
	1.1025*variable_transmission_switch_20_23_2 - variable_voltage_product_imaginary_20_23_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_21_22 ;
linear_constraint_voltage_product_imaginary_upper_21_22..
	1.1025*variable_transmission_switch_21_22 - variable_voltage_product_imaginary_21_22 =g= 0
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
	variable_switched_voltage_square_2_1 - 1.1025*variable_transmission_switch_1_2 =l= 0
Equation linear_constraint_voltage_square_big_m_2_1_3 ;
linear_constraint_voltage_square_big_m_2_1_3..
	-variable_switched_voltage_square_2_1 + 1.1025*variable_transmission_switch_1_2 + variable_voltage_square_2 =l= 1.1025
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
Equation linear_constraint_voltage_square_big_m_1_5_1 ;
linear_constraint_voltage_square_big_m_1_5_1..
	-variable_switched_voltage_square_1_5 + 0.902499999*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_2 ;
linear_constraint_voltage_square_big_m_1_5_2..
	variable_switched_voltage_square_1_5 - 1.1025*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_3 ;
linear_constraint_voltage_square_big_m_1_5_3..
	-variable_switched_voltage_square_1_5 + 1.1025*variable_transmission_switch_1_5 + variable_voltage_square_1 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_1_5_4 ;
linear_constraint_voltage_square_big_m_1_5_4..
	variable_switched_voltage_square_1_5 - 0.902499999*variable_transmission_switch_1_5 - variable_voltage_square_1 =l= -0.902499999
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
Equation linear_constraint_voltage_square_big_m_2_4_1 ;
linear_constraint_voltage_square_big_m_2_4_1..
	-variable_switched_voltage_square_2_4 + 0.902499999*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_2 ;
linear_constraint_voltage_square_big_m_2_4_2..
	variable_switched_voltage_square_2_4 - 1.1025*variable_transmission_switch_2_4 =l= 0
Equation linear_constraint_voltage_square_big_m_2_4_3 ;
linear_constraint_voltage_square_big_m_2_4_3..
	-variable_switched_voltage_square_2_4 + 1.1025*variable_transmission_switch_2_4 + variable_voltage_square_2 =l= 1.1025
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
Equation linear_constraint_voltage_square_big_m_2_6_1 ;
linear_constraint_voltage_square_big_m_2_6_1..
	-variable_switched_voltage_square_2_6 + 0.902499999*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_2_6_2 ;
linear_constraint_voltage_square_big_m_2_6_2..
	variable_switched_voltage_square_2_6 - 1.1025*variable_transmission_switch_2_6 =l= 0
Equation linear_constraint_voltage_square_big_m_2_6_3 ;
linear_constraint_voltage_square_big_m_2_6_3..
	-variable_switched_voltage_square_2_6 + 1.1025*variable_transmission_switch_2_6 + variable_voltage_square_2 =l= 1.1025
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
Equation linear_constraint_voltage_square_big_m_3_9_1 ;
linear_constraint_voltage_square_big_m_3_9_1..
	-variable_switched_voltage_square_3_9 + 0.902499999*variable_transmission_switch_3_9 =l= 0
Equation linear_constraint_voltage_square_big_m_3_9_2 ;
linear_constraint_voltage_square_big_m_3_9_2..
	variable_switched_voltage_square_3_9 - 1.1025*variable_transmission_switch_3_9 =l= 0
Equation linear_constraint_voltage_square_big_m_3_9_3 ;
linear_constraint_voltage_square_big_m_3_9_3..
	-variable_switched_voltage_square_3_9 + 1.1025*variable_transmission_switch_3_9 + variable_voltage_square_3 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_3_9_4 ;
linear_constraint_voltage_square_big_m_3_9_4..
	variable_switched_voltage_square_3_9 - 0.902499999*variable_transmission_switch_3_9 - variable_voltage_square_3 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_9_3_1 ;
linear_constraint_voltage_square_big_m_9_3_1..
	-variable_switched_voltage_square_9_3 + 0.902499999*variable_transmission_switch_3_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_3_2 ;
linear_constraint_voltage_square_big_m_9_3_2..
	variable_switched_voltage_square_9_3 - 1.1025*variable_transmission_switch_3_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_3_3 ;
linear_constraint_voltage_square_big_m_9_3_3..
	-variable_switched_voltage_square_9_3 + 1.1025*variable_transmission_switch_3_9 + variable_voltage_square_9 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_9_3_4 ;
linear_constraint_voltage_square_big_m_9_3_4..
	variable_switched_voltage_square_9_3 - 0.902499999*variable_transmission_switch_3_9 - variable_voltage_square_9 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_3_24_1 ;
linear_constraint_voltage_square_big_m_3_24_1..
	-variable_switched_voltage_square_3_24 + 0.902499999*variable_transmission_switch_3_24 =l= 0
Equation linear_constraint_voltage_square_big_m_3_24_2 ;
linear_constraint_voltage_square_big_m_3_24_2..
	variable_switched_voltage_square_3_24 - 1.1025*variable_transmission_switch_3_24 =l= 0
Equation linear_constraint_voltage_square_big_m_3_24_3 ;
linear_constraint_voltage_square_big_m_3_24_3..
	-variable_switched_voltage_square_3_24 + 1.1025*variable_transmission_switch_3_24 + variable_voltage_square_3 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_3_24_4 ;
linear_constraint_voltage_square_big_m_3_24_4..
	variable_switched_voltage_square_3_24 - 0.902499999*variable_transmission_switch_3_24 - variable_voltage_square_3 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_24_3_1 ;
linear_constraint_voltage_square_big_m_24_3_1..
	-variable_switched_voltage_square_24_3 + 0.902499999*variable_transmission_switch_3_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_3_2 ;
linear_constraint_voltage_square_big_m_24_3_2..
	variable_switched_voltage_square_24_3 - 1.1025*variable_transmission_switch_3_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_3_3 ;
linear_constraint_voltage_square_big_m_24_3_3..
	-variable_switched_voltage_square_24_3 + 1.1025*variable_transmission_switch_3_24 + variable_voltage_square_24 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_24_3_4 ;
linear_constraint_voltage_square_big_m_24_3_4..
	variable_switched_voltage_square_24_3 - 0.902499999*variable_transmission_switch_3_24 - variable_voltage_square_24 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_4_9_1 ;
linear_constraint_voltage_square_big_m_4_9_1..
	-variable_switched_voltage_square_4_9 + 0.902499999*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_4_9_2 ;
linear_constraint_voltage_square_big_m_4_9_2..
	variable_switched_voltage_square_4_9 - 1.1025*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_4_9_3 ;
linear_constraint_voltage_square_big_m_4_9_3..
	-variable_switched_voltage_square_4_9 + 1.1025*variable_transmission_switch_4_9 + variable_voltage_square_4 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_4_9_4 ;
linear_constraint_voltage_square_big_m_4_9_4..
	variable_switched_voltage_square_4_9 - 0.902499999*variable_transmission_switch_4_9 - variable_voltage_square_4 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_9_4_1 ;
linear_constraint_voltage_square_big_m_9_4_1..
	-variable_switched_voltage_square_9_4 + 0.902499999*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_4_2 ;
linear_constraint_voltage_square_big_m_9_4_2..
	variable_switched_voltage_square_9_4 - 1.1025*variable_transmission_switch_4_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_4_3 ;
linear_constraint_voltage_square_big_m_9_4_3..
	-variable_switched_voltage_square_9_4 + 1.1025*variable_transmission_switch_4_9 + variable_voltage_square_9 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_9_4_4 ;
linear_constraint_voltage_square_big_m_9_4_4..
	variable_switched_voltage_square_9_4 - 0.902499999*variable_transmission_switch_4_9 - variable_voltage_square_9 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_5_10_1 ;
linear_constraint_voltage_square_big_m_5_10_1..
	-variable_switched_voltage_square_5_10 + 0.902499999*variable_transmission_switch_5_10 =l= 0
Equation linear_constraint_voltage_square_big_m_5_10_2 ;
linear_constraint_voltage_square_big_m_5_10_2..
	variable_switched_voltage_square_5_10 - 1.1025*variable_transmission_switch_5_10 =l= 0
Equation linear_constraint_voltage_square_big_m_5_10_3 ;
linear_constraint_voltage_square_big_m_5_10_3..
	-variable_switched_voltage_square_5_10 + 1.1025*variable_transmission_switch_5_10 + variable_voltage_square_5 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_5_10_4 ;
linear_constraint_voltage_square_big_m_5_10_4..
	variable_switched_voltage_square_5_10 - 0.902499999*variable_transmission_switch_5_10 - variable_voltage_square_5 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_5_1 ;
linear_constraint_voltage_square_big_m_10_5_1..
	-variable_switched_voltage_square_10_5 + 0.902499999*variable_transmission_switch_5_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_5_2 ;
linear_constraint_voltage_square_big_m_10_5_2..
	variable_switched_voltage_square_10_5 - 1.1025*variable_transmission_switch_5_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_5_3 ;
linear_constraint_voltage_square_big_m_10_5_3..
	-variable_switched_voltage_square_10_5 + 1.1025*variable_transmission_switch_5_10 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_5_4 ;
linear_constraint_voltage_square_big_m_10_5_4..
	variable_switched_voltage_square_10_5 - 0.902499999*variable_transmission_switch_5_10 - variable_voltage_square_10 =l= -0.902499999
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
Equation linear_constraint_voltage_square_big_m_7_8_1 ;
linear_constraint_voltage_square_big_m_7_8_1..
	-variable_switched_voltage_square_7_8 + 0.902499999*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_7_8_2 ;
linear_constraint_voltage_square_big_m_7_8_2..
	variable_switched_voltage_square_7_8 - 1.1025*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_7_8_3 ;
linear_constraint_voltage_square_big_m_7_8_3..
	-variable_switched_voltage_square_7_8 + 1.1025*variable_transmission_switch_7_8 + variable_voltage_square_7 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_7_8_4 ;
linear_constraint_voltage_square_big_m_7_8_4..
	variable_switched_voltage_square_7_8 - 0.902499999*variable_transmission_switch_7_8 - variable_voltage_square_7 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_8_7_1 ;
linear_constraint_voltage_square_big_m_8_7_1..
	-variable_switched_voltage_square_8_7 + 0.902499999*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_7_2 ;
linear_constraint_voltage_square_big_m_8_7_2..
	variable_switched_voltage_square_8_7 - 1.1025*variable_transmission_switch_7_8 =l= 0
Equation linear_constraint_voltage_square_big_m_8_7_3 ;
linear_constraint_voltage_square_big_m_8_7_3..
	-variable_switched_voltage_square_8_7 + 1.1025*variable_transmission_switch_7_8 + variable_voltage_square_8 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_8_7_4 ;
linear_constraint_voltage_square_big_m_8_7_4..
	variable_switched_voltage_square_8_7 - 0.902499999*variable_transmission_switch_7_8 - variable_voltage_square_8 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_8_9_1 ;
linear_constraint_voltage_square_big_m_8_9_1..
	-variable_switched_voltage_square_8_9 + 0.902499999*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_8_9_2 ;
linear_constraint_voltage_square_big_m_8_9_2..
	variable_switched_voltage_square_8_9 - 1.1025*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_8_9_3 ;
linear_constraint_voltage_square_big_m_8_9_3..
	-variable_switched_voltage_square_8_9 + 1.1025*variable_transmission_switch_8_9 + variable_voltage_square_8 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_8_9_4 ;
linear_constraint_voltage_square_big_m_8_9_4..
	variable_switched_voltage_square_8_9 - 0.902499999*variable_transmission_switch_8_9 - variable_voltage_square_8 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_9_8_1 ;
linear_constraint_voltage_square_big_m_9_8_1..
	-variable_switched_voltage_square_9_8 + 0.902499999*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_8_2 ;
linear_constraint_voltage_square_big_m_9_8_2..
	variable_switched_voltage_square_9_8 - 1.1025*variable_transmission_switch_8_9 =l= 0
Equation linear_constraint_voltage_square_big_m_9_8_3 ;
linear_constraint_voltage_square_big_m_9_8_3..
	-variable_switched_voltage_square_9_8 + 1.1025*variable_transmission_switch_8_9 + variable_voltage_square_9 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_9_8_4 ;
linear_constraint_voltage_square_big_m_9_8_4..
	variable_switched_voltage_square_9_8 - 0.902499999*variable_transmission_switch_8_9 - variable_voltage_square_9 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_8_10_1 ;
linear_constraint_voltage_square_big_m_8_10_1..
	-variable_switched_voltage_square_8_10 + 0.902499999*variable_transmission_switch_8_10 =l= 0
Equation linear_constraint_voltage_square_big_m_8_10_2 ;
linear_constraint_voltage_square_big_m_8_10_2..
	variable_switched_voltage_square_8_10 - 1.1025*variable_transmission_switch_8_10 =l= 0
Equation linear_constraint_voltage_square_big_m_8_10_3 ;
linear_constraint_voltage_square_big_m_8_10_3..
	-variable_switched_voltage_square_8_10 + 1.1025*variable_transmission_switch_8_10 + variable_voltage_square_8 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_8_10_4 ;
linear_constraint_voltage_square_big_m_8_10_4..
	variable_switched_voltage_square_8_10 - 0.902499999*variable_transmission_switch_8_10 - variable_voltage_square_8 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_8_1 ;
linear_constraint_voltage_square_big_m_10_8_1..
	-variable_switched_voltage_square_10_8 + 0.902499999*variable_transmission_switch_8_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_8_2 ;
linear_constraint_voltage_square_big_m_10_8_2..
	variable_switched_voltage_square_10_8 - 1.1025*variable_transmission_switch_8_10 =l= 0
Equation linear_constraint_voltage_square_big_m_10_8_3 ;
linear_constraint_voltage_square_big_m_10_8_3..
	-variable_switched_voltage_square_10_8 + 1.1025*variable_transmission_switch_8_10 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_8_4 ;
linear_constraint_voltage_square_big_m_10_8_4..
	variable_switched_voltage_square_10_8 - 0.902499999*variable_transmission_switch_8_10 - variable_voltage_square_10 =l= -0.902499999
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
Equation linear_constraint_voltage_square_big_m_9_12_1 ;
linear_constraint_voltage_square_big_m_9_12_1..
	-variable_switched_voltage_square_9_12 + 0.902499999*variable_transmission_switch_9_12 =l= 0
Equation linear_constraint_voltage_square_big_m_9_12_2 ;
linear_constraint_voltage_square_big_m_9_12_2..
	variable_switched_voltage_square_9_12 - 1.1025*variable_transmission_switch_9_12 =l= 0
Equation linear_constraint_voltage_square_big_m_9_12_3 ;
linear_constraint_voltage_square_big_m_9_12_3..
	-variable_switched_voltage_square_9_12 + 1.1025*variable_transmission_switch_9_12 + variable_voltage_square_9 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_9_12_4 ;
linear_constraint_voltage_square_big_m_9_12_4..
	variable_switched_voltage_square_9_12 - 0.902499999*variable_transmission_switch_9_12 - variable_voltage_square_9 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_9_1 ;
linear_constraint_voltage_square_big_m_12_9_1..
	-variable_switched_voltage_square_12_9 + 0.902499999*variable_transmission_switch_9_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_9_2 ;
linear_constraint_voltage_square_big_m_12_9_2..
	variable_switched_voltage_square_12_9 - 1.1025*variable_transmission_switch_9_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_9_3 ;
linear_constraint_voltage_square_big_m_12_9_3..
	-variable_switched_voltage_square_12_9 + 1.1025*variable_transmission_switch_9_12 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_9_4 ;
linear_constraint_voltage_square_big_m_12_9_4..
	variable_switched_voltage_square_12_9 - 0.902499999*variable_transmission_switch_9_12 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_11_1 ;
linear_constraint_voltage_square_big_m_10_11_1..
	-variable_switched_voltage_square_10_11 + 0.902499999*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_10_11_2 ;
linear_constraint_voltage_square_big_m_10_11_2..
	variable_switched_voltage_square_10_11 - 1.1025*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_10_11_3 ;
linear_constraint_voltage_square_big_m_10_11_3..
	-variable_switched_voltage_square_10_11 + 1.1025*variable_transmission_switch_10_11 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_11_4 ;
linear_constraint_voltage_square_big_m_10_11_4..
	variable_switched_voltage_square_10_11 - 0.902499999*variable_transmission_switch_10_11 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_11_10_1 ;
linear_constraint_voltage_square_big_m_11_10_1..
	-variable_switched_voltage_square_11_10 + 0.902499999*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_10_2 ;
linear_constraint_voltage_square_big_m_11_10_2..
	variable_switched_voltage_square_11_10 - 1.1025*variable_transmission_switch_10_11 =l= 0
Equation linear_constraint_voltage_square_big_m_11_10_3 ;
linear_constraint_voltage_square_big_m_11_10_3..
	-variable_switched_voltage_square_11_10 + 1.1025*variable_transmission_switch_10_11 + variable_voltage_square_11 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_11_10_4 ;
linear_constraint_voltage_square_big_m_11_10_4..
	variable_switched_voltage_square_11_10 - 0.902499999*variable_transmission_switch_10_11 - variable_voltage_square_11 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_10_12_1 ;
linear_constraint_voltage_square_big_m_10_12_1..
	-variable_switched_voltage_square_10_12 + 0.902499999*variable_transmission_switch_10_12 =l= 0
Equation linear_constraint_voltage_square_big_m_10_12_2 ;
linear_constraint_voltage_square_big_m_10_12_2..
	variable_switched_voltage_square_10_12 - 1.1025*variable_transmission_switch_10_12 =l= 0
Equation linear_constraint_voltage_square_big_m_10_12_3 ;
linear_constraint_voltage_square_big_m_10_12_3..
	-variable_switched_voltage_square_10_12 + 1.1025*variable_transmission_switch_10_12 + variable_voltage_square_10 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_10_12_4 ;
linear_constraint_voltage_square_big_m_10_12_4..
	variable_switched_voltage_square_10_12 - 0.902499999*variable_transmission_switch_10_12 - variable_voltage_square_10 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_10_1 ;
linear_constraint_voltage_square_big_m_12_10_1..
	-variable_switched_voltage_square_12_10 + 0.902499999*variable_transmission_switch_10_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_10_2 ;
linear_constraint_voltage_square_big_m_12_10_2..
	variable_switched_voltage_square_12_10 - 1.1025*variable_transmission_switch_10_12 =l= 0
Equation linear_constraint_voltage_square_big_m_12_10_3 ;
linear_constraint_voltage_square_big_m_12_10_3..
	-variable_switched_voltage_square_12_10 + 1.1025*variable_transmission_switch_10_12 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_10_4 ;
linear_constraint_voltage_square_big_m_12_10_4..
	variable_switched_voltage_square_12_10 - 0.902499999*variable_transmission_switch_10_12 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_11_13_1 ;
linear_constraint_voltage_square_big_m_11_13_1..
	-variable_switched_voltage_square_11_13 + 0.902499999*variable_transmission_switch_11_13 =l= 0
Equation linear_constraint_voltage_square_big_m_11_13_2 ;
linear_constraint_voltage_square_big_m_11_13_2..
	variable_switched_voltage_square_11_13 - 1.1025*variable_transmission_switch_11_13 =l= 0
Equation linear_constraint_voltage_square_big_m_11_13_3 ;
linear_constraint_voltage_square_big_m_11_13_3..
	-variable_switched_voltage_square_11_13 + 1.1025*variable_transmission_switch_11_13 + variable_voltage_square_11 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_11_13_4 ;
linear_constraint_voltage_square_big_m_11_13_4..
	variable_switched_voltage_square_11_13 - 0.902499999*variable_transmission_switch_11_13 - variable_voltage_square_11 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_13_11_1 ;
linear_constraint_voltage_square_big_m_13_11_1..
	-variable_switched_voltage_square_13_11 + 0.902499999*variable_transmission_switch_11_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_11_2 ;
linear_constraint_voltage_square_big_m_13_11_2..
	variable_switched_voltage_square_13_11 - 1.1025*variable_transmission_switch_11_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_11_3 ;
linear_constraint_voltage_square_big_m_13_11_3..
	-variable_switched_voltage_square_13_11 + 1.1025*variable_transmission_switch_11_13 + variable_voltage_square_13 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_13_11_4 ;
linear_constraint_voltage_square_big_m_13_11_4..
	variable_switched_voltage_square_13_11 - 0.902499999*variable_transmission_switch_11_13 - variable_voltage_square_13 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_11_14_1 ;
linear_constraint_voltage_square_big_m_11_14_1..
	-variable_switched_voltage_square_11_14 + 0.902499999*variable_transmission_switch_11_14 =l= 0
Equation linear_constraint_voltage_square_big_m_11_14_2 ;
linear_constraint_voltage_square_big_m_11_14_2..
	variable_switched_voltage_square_11_14 - 1.1025*variable_transmission_switch_11_14 =l= 0
Equation linear_constraint_voltage_square_big_m_11_14_3 ;
linear_constraint_voltage_square_big_m_11_14_3..
	-variable_switched_voltage_square_11_14 + 1.1025*variable_transmission_switch_11_14 + variable_voltage_square_11 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_11_14_4 ;
linear_constraint_voltage_square_big_m_11_14_4..
	variable_switched_voltage_square_11_14 - 0.902499999*variable_transmission_switch_11_14 - variable_voltage_square_11 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_14_11_1 ;
linear_constraint_voltage_square_big_m_14_11_1..
	-variable_switched_voltage_square_14_11 + 0.902499999*variable_transmission_switch_11_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_11_2 ;
linear_constraint_voltage_square_big_m_14_11_2..
	variable_switched_voltage_square_14_11 - 1.1025*variable_transmission_switch_11_14 =l= 0
Equation linear_constraint_voltage_square_big_m_14_11_3 ;
linear_constraint_voltage_square_big_m_14_11_3..
	-variable_switched_voltage_square_14_11 + 1.1025*variable_transmission_switch_11_14 + variable_voltage_square_14 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_14_11_4 ;
linear_constraint_voltage_square_big_m_14_11_4..
	variable_switched_voltage_square_14_11 - 0.902499999*variable_transmission_switch_11_14 - variable_voltage_square_14 =l= -0.902499999
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
	variable_switched_voltage_square_13_12 - 1.1025*variable_transmission_switch_12_13 =l= 0
Equation linear_constraint_voltage_square_big_m_13_12_3 ;
linear_constraint_voltage_square_big_m_13_12_3..
	-variable_switched_voltage_square_13_12 + 1.1025*variable_transmission_switch_12_13 + variable_voltage_square_13 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_13_12_4 ;
linear_constraint_voltage_square_big_m_13_12_4..
	variable_switched_voltage_square_13_12 - 0.902499999*variable_transmission_switch_12_13 - variable_voltage_square_13 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_12_23_1 ;
linear_constraint_voltage_square_big_m_12_23_1..
	-variable_switched_voltage_square_12_23 + 0.902499999*variable_transmission_switch_12_23 =l= 0
Equation linear_constraint_voltage_square_big_m_12_23_2 ;
linear_constraint_voltage_square_big_m_12_23_2..
	variable_switched_voltage_square_12_23 - 1.1025*variable_transmission_switch_12_23 =l= 0
Equation linear_constraint_voltage_square_big_m_12_23_3 ;
linear_constraint_voltage_square_big_m_12_23_3..
	-variable_switched_voltage_square_12_23 + 1.1025*variable_transmission_switch_12_23 + variable_voltage_square_12 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_12_23_4 ;
linear_constraint_voltage_square_big_m_12_23_4..
	variable_switched_voltage_square_12_23 - 0.902499999*variable_transmission_switch_12_23 - variable_voltage_square_12 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_23_12_1 ;
linear_constraint_voltage_square_big_m_23_12_1..
	-variable_switched_voltage_square_23_12 + 0.902499999*variable_transmission_switch_12_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_12_2 ;
linear_constraint_voltage_square_big_m_23_12_2..
	variable_switched_voltage_square_23_12 - 1.1025*variable_transmission_switch_12_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_12_3 ;
linear_constraint_voltage_square_big_m_23_12_3..
	-variable_switched_voltage_square_23_12 + 1.1025*variable_transmission_switch_12_23 + variable_voltage_square_23 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_23_12_4 ;
linear_constraint_voltage_square_big_m_23_12_4..
	variable_switched_voltage_square_23_12 - 0.902499999*variable_transmission_switch_12_23 - variable_voltage_square_23 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_13_23_1 ;
linear_constraint_voltage_square_big_m_13_23_1..
	-variable_switched_voltage_square_13_23 + 0.902499999*variable_transmission_switch_13_23 =l= 0
Equation linear_constraint_voltage_square_big_m_13_23_2 ;
linear_constraint_voltage_square_big_m_13_23_2..
	variable_switched_voltage_square_13_23 - 1.1025*variable_transmission_switch_13_23 =l= 0
Equation linear_constraint_voltage_square_big_m_13_23_3 ;
linear_constraint_voltage_square_big_m_13_23_3..
	-variable_switched_voltage_square_13_23 + 1.1025*variable_transmission_switch_13_23 + variable_voltage_square_13 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_13_23_4 ;
linear_constraint_voltage_square_big_m_13_23_4..
	variable_switched_voltage_square_13_23 - 0.902499999*variable_transmission_switch_13_23 - variable_voltage_square_13 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_23_13_1 ;
linear_constraint_voltage_square_big_m_23_13_1..
	-variable_switched_voltage_square_23_13 + 0.902499999*variable_transmission_switch_13_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_13_2 ;
linear_constraint_voltage_square_big_m_23_13_2..
	variable_switched_voltage_square_23_13 - 1.1025*variable_transmission_switch_13_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_13_3 ;
linear_constraint_voltage_square_big_m_23_13_3..
	-variable_switched_voltage_square_23_13 + 1.1025*variable_transmission_switch_13_23 + variable_voltage_square_23 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_23_13_4 ;
linear_constraint_voltage_square_big_m_23_13_4..
	variable_switched_voltage_square_23_13 - 0.902499999*variable_transmission_switch_13_23 - variable_voltage_square_23 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_14_16_1 ;
linear_constraint_voltage_square_big_m_14_16_1..
	-variable_switched_voltage_square_14_16 + 0.902499999*variable_transmission_switch_14_16 =l= 0
Equation linear_constraint_voltage_square_big_m_14_16_2 ;
linear_constraint_voltage_square_big_m_14_16_2..
	variable_switched_voltage_square_14_16 - 1.1025*variable_transmission_switch_14_16 =l= 0
Equation linear_constraint_voltage_square_big_m_14_16_3 ;
linear_constraint_voltage_square_big_m_14_16_3..
	-variable_switched_voltage_square_14_16 + 1.1025*variable_transmission_switch_14_16 + variable_voltage_square_14 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_14_16_4 ;
linear_constraint_voltage_square_big_m_14_16_4..
	variable_switched_voltage_square_14_16 - 0.902499999*variable_transmission_switch_14_16 - variable_voltage_square_14 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_16_14_1 ;
linear_constraint_voltage_square_big_m_16_14_1..
	-variable_switched_voltage_square_16_14 + 0.902499999*variable_transmission_switch_14_16 =l= 0
Equation linear_constraint_voltage_square_big_m_16_14_2 ;
linear_constraint_voltage_square_big_m_16_14_2..
	variable_switched_voltage_square_16_14 - 1.1025*variable_transmission_switch_14_16 =l= 0
Equation linear_constraint_voltage_square_big_m_16_14_3 ;
linear_constraint_voltage_square_big_m_16_14_3..
	-variable_switched_voltage_square_16_14 + 1.1025*variable_transmission_switch_14_16 + variable_voltage_square_16 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_16_14_4 ;
linear_constraint_voltage_square_big_m_16_14_4..
	variable_switched_voltage_square_16_14 - 0.902499999*variable_transmission_switch_14_16 - variable_voltage_square_16 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_16_1 ;
linear_constraint_voltage_square_big_m_15_16_1..
	-variable_switched_voltage_square_15_16 + 0.902499999*variable_transmission_switch_15_16 =l= 0
Equation linear_constraint_voltage_square_big_m_15_16_2 ;
linear_constraint_voltage_square_big_m_15_16_2..
	variable_switched_voltage_square_15_16 - 1.1025*variable_transmission_switch_15_16 =l= 0
Equation linear_constraint_voltage_square_big_m_15_16_3 ;
linear_constraint_voltage_square_big_m_15_16_3..
	-variable_switched_voltage_square_15_16 + 1.1025*variable_transmission_switch_15_16 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_16_4 ;
linear_constraint_voltage_square_big_m_15_16_4..
	variable_switched_voltage_square_15_16 - 0.902499999*variable_transmission_switch_15_16 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_16_15_1 ;
linear_constraint_voltage_square_big_m_16_15_1..
	-variable_switched_voltage_square_16_15 + 0.902499999*variable_transmission_switch_15_16 =l= 0
Equation linear_constraint_voltage_square_big_m_16_15_2 ;
linear_constraint_voltage_square_big_m_16_15_2..
	variable_switched_voltage_square_16_15 - 1.1025*variable_transmission_switch_15_16 =l= 0
Equation linear_constraint_voltage_square_big_m_16_15_3 ;
linear_constraint_voltage_square_big_m_16_15_3..
	-variable_switched_voltage_square_16_15 + 1.1025*variable_transmission_switch_15_16 + variable_voltage_square_16 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_16_15_4 ;
linear_constraint_voltage_square_big_m_16_15_4..
	variable_switched_voltage_square_16_15 - 0.902499999*variable_transmission_switch_15_16 - variable_voltage_square_16 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_21_1 ;
linear_constraint_voltage_square_big_m_15_21_1..
	-variable_switched_voltage_square_15_21 + 0.902499999*variable_transmission_switch_15_21 =l= 0
Equation linear_constraint_voltage_square_big_m_15_21_2 ;
linear_constraint_voltage_square_big_m_15_21_2..
	variable_switched_voltage_square_15_21 - 1.1025*variable_transmission_switch_15_21 =l= 0
Equation linear_constraint_voltage_square_big_m_15_21_3 ;
linear_constraint_voltage_square_big_m_15_21_3..
	-variable_switched_voltage_square_15_21 + 1.1025*variable_transmission_switch_15_21 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_21_4 ;
linear_constraint_voltage_square_big_m_15_21_4..
	variable_switched_voltage_square_15_21 - 0.902499999*variable_transmission_switch_15_21 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_21_2_1 ;
linear_constraint_voltage_square_big_m_15_21_2_1..
	-variable_switched_voltage_square_15_21_2 + 0.902499999*variable_transmission_switch_15_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_15_21_2_2 ;
linear_constraint_voltage_square_big_m_15_21_2_2..
	variable_switched_voltage_square_15_21_2 - 1.1025*variable_transmission_switch_15_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_15_21_2_3 ;
linear_constraint_voltage_square_big_m_15_21_2_3..
	-variable_switched_voltage_square_15_21_2 + 1.1025*variable_transmission_switch_15_21_2 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_21_2_4 ;
linear_constraint_voltage_square_big_m_15_21_2_4..
	variable_switched_voltage_square_15_21_2 - 0.902499999*variable_transmission_switch_15_21_2 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_21_15_1 ;
linear_constraint_voltage_square_big_m_21_15_1..
	-variable_switched_voltage_square_21_15 + 0.902499999*variable_transmission_switch_15_21 =l= 0
Equation linear_constraint_voltage_square_big_m_21_15_2 ;
linear_constraint_voltage_square_big_m_21_15_2..
	variable_switched_voltage_square_21_15 - 1.1025*variable_transmission_switch_15_21 =l= 0
Equation linear_constraint_voltage_square_big_m_21_15_3 ;
linear_constraint_voltage_square_big_m_21_15_3..
	-variable_switched_voltage_square_21_15 + 1.1025*variable_transmission_switch_15_21 + variable_voltage_square_21 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_21_15_4 ;
linear_constraint_voltage_square_big_m_21_15_4..
	variable_switched_voltage_square_21_15 - 0.902499999*variable_transmission_switch_15_21 - variable_voltage_square_21 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_21_15_2_1 ;
linear_constraint_voltage_square_big_m_21_15_2_1..
	-variable_switched_voltage_square_21_15_2 + 0.902499999*variable_transmission_switch_15_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_21_15_2_2 ;
linear_constraint_voltage_square_big_m_21_15_2_2..
	variable_switched_voltage_square_21_15_2 - 1.1025*variable_transmission_switch_15_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_21_15_2_3 ;
linear_constraint_voltage_square_big_m_21_15_2_3..
	-variable_switched_voltage_square_21_15_2 + 1.1025*variable_transmission_switch_15_21_2 + variable_voltage_square_21 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_21_15_2_4 ;
linear_constraint_voltage_square_big_m_21_15_2_4..
	variable_switched_voltage_square_21_15_2 - 0.902499999*variable_transmission_switch_15_21_2 - variable_voltage_square_21 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_15_24_1 ;
linear_constraint_voltage_square_big_m_15_24_1..
	-variable_switched_voltage_square_15_24 + 0.902499999*variable_transmission_switch_15_24 =l= 0
Equation linear_constraint_voltage_square_big_m_15_24_2 ;
linear_constraint_voltage_square_big_m_15_24_2..
	variable_switched_voltage_square_15_24 - 1.1025*variable_transmission_switch_15_24 =l= 0
Equation linear_constraint_voltage_square_big_m_15_24_3 ;
linear_constraint_voltage_square_big_m_15_24_3..
	-variable_switched_voltage_square_15_24 + 1.1025*variable_transmission_switch_15_24 + variable_voltage_square_15 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_15_24_4 ;
linear_constraint_voltage_square_big_m_15_24_4..
	variable_switched_voltage_square_15_24 - 0.902499999*variable_transmission_switch_15_24 - variable_voltage_square_15 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_24_15_1 ;
linear_constraint_voltage_square_big_m_24_15_1..
	-variable_switched_voltage_square_24_15 + 0.902499999*variable_transmission_switch_15_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_15_2 ;
linear_constraint_voltage_square_big_m_24_15_2..
	variable_switched_voltage_square_24_15 - 1.1025*variable_transmission_switch_15_24 =l= 0
Equation linear_constraint_voltage_square_big_m_24_15_3 ;
linear_constraint_voltage_square_big_m_24_15_3..
	-variable_switched_voltage_square_24_15 + 1.1025*variable_transmission_switch_15_24 + variable_voltage_square_24 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_24_15_4 ;
linear_constraint_voltage_square_big_m_24_15_4..
	variable_switched_voltage_square_24_15 - 0.902499999*variable_transmission_switch_15_24 - variable_voltage_square_24 =l= -0.902499999
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
Equation linear_constraint_voltage_square_big_m_16_19_1 ;
linear_constraint_voltage_square_big_m_16_19_1..
	-variable_switched_voltage_square_16_19 + 0.902499999*variable_transmission_switch_16_19 =l= 0
Equation linear_constraint_voltage_square_big_m_16_19_2 ;
linear_constraint_voltage_square_big_m_16_19_2..
	variable_switched_voltage_square_16_19 - 1.1025*variable_transmission_switch_16_19 =l= 0
Equation linear_constraint_voltage_square_big_m_16_19_3 ;
linear_constraint_voltage_square_big_m_16_19_3..
	-variable_switched_voltage_square_16_19 + 1.1025*variable_transmission_switch_16_19 + variable_voltage_square_16 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_16_19_4 ;
linear_constraint_voltage_square_big_m_16_19_4..
	variable_switched_voltage_square_16_19 - 0.902499999*variable_transmission_switch_16_19 - variable_voltage_square_16 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_19_16_1 ;
linear_constraint_voltage_square_big_m_19_16_1..
	-variable_switched_voltage_square_19_16 + 0.902499999*variable_transmission_switch_16_19 =l= 0
Equation linear_constraint_voltage_square_big_m_19_16_2 ;
linear_constraint_voltage_square_big_m_19_16_2..
	variable_switched_voltage_square_19_16 - 1.1025*variable_transmission_switch_16_19 =l= 0
Equation linear_constraint_voltage_square_big_m_19_16_3 ;
linear_constraint_voltage_square_big_m_19_16_3..
	-variable_switched_voltage_square_19_16 + 1.1025*variable_transmission_switch_16_19 + variable_voltage_square_19 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_19_16_4 ;
linear_constraint_voltage_square_big_m_19_16_4..
	variable_switched_voltage_square_19_16 - 0.902499999*variable_transmission_switch_16_19 - variable_voltage_square_19 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_17_18_1 ;
linear_constraint_voltage_square_big_m_17_18_1..
	-variable_switched_voltage_square_17_18 + 0.902499999*variable_transmission_switch_17_18 =l= 0
Equation linear_constraint_voltage_square_big_m_17_18_2 ;
linear_constraint_voltage_square_big_m_17_18_2..
	variable_switched_voltage_square_17_18 - 1.1025*variable_transmission_switch_17_18 =l= 0
Equation linear_constraint_voltage_square_big_m_17_18_3 ;
linear_constraint_voltage_square_big_m_17_18_3..
	-variable_switched_voltage_square_17_18 + 1.1025*variable_transmission_switch_17_18 + variable_voltage_square_17 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_17_18_4 ;
linear_constraint_voltage_square_big_m_17_18_4..
	variable_switched_voltage_square_17_18 - 0.902499999*variable_transmission_switch_17_18 - variable_voltage_square_17 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_18_17_1 ;
linear_constraint_voltage_square_big_m_18_17_1..
	-variable_switched_voltage_square_18_17 + 0.902499999*variable_transmission_switch_17_18 =l= 0
Equation linear_constraint_voltage_square_big_m_18_17_2 ;
linear_constraint_voltage_square_big_m_18_17_2..
	variable_switched_voltage_square_18_17 - 1.1025*variable_transmission_switch_17_18 =l= 0
Equation linear_constraint_voltage_square_big_m_18_17_3 ;
linear_constraint_voltage_square_big_m_18_17_3..
	-variable_switched_voltage_square_18_17 + 1.1025*variable_transmission_switch_17_18 + variable_voltage_square_18 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_18_17_4 ;
linear_constraint_voltage_square_big_m_18_17_4..
	variable_switched_voltage_square_18_17 - 0.902499999*variable_transmission_switch_17_18 - variable_voltage_square_18 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_17_22_1 ;
linear_constraint_voltage_square_big_m_17_22_1..
	-variable_switched_voltage_square_17_22 + 0.902499999*variable_transmission_switch_17_22 =l= 0
Equation linear_constraint_voltage_square_big_m_17_22_2 ;
linear_constraint_voltage_square_big_m_17_22_2..
	variable_switched_voltage_square_17_22 - 1.1025*variable_transmission_switch_17_22 =l= 0
Equation linear_constraint_voltage_square_big_m_17_22_3 ;
linear_constraint_voltage_square_big_m_17_22_3..
	-variable_switched_voltage_square_17_22 + 1.1025*variable_transmission_switch_17_22 + variable_voltage_square_17 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_17_22_4 ;
linear_constraint_voltage_square_big_m_17_22_4..
	variable_switched_voltage_square_17_22 - 0.902499999*variable_transmission_switch_17_22 - variable_voltage_square_17 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_22_17_1 ;
linear_constraint_voltage_square_big_m_22_17_1..
	-variable_switched_voltage_square_22_17 + 0.902499999*variable_transmission_switch_17_22 =l= 0
Equation linear_constraint_voltage_square_big_m_22_17_2 ;
linear_constraint_voltage_square_big_m_22_17_2..
	variable_switched_voltage_square_22_17 - 1.1025*variable_transmission_switch_17_22 =l= 0
Equation linear_constraint_voltage_square_big_m_22_17_3 ;
linear_constraint_voltage_square_big_m_22_17_3..
	-variable_switched_voltage_square_22_17 + 1.1025*variable_transmission_switch_17_22 + variable_voltage_square_22 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_22_17_4 ;
linear_constraint_voltage_square_big_m_22_17_4..
	variable_switched_voltage_square_22_17 - 0.902499999*variable_transmission_switch_17_22 - variable_voltage_square_22 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_18_21_1 ;
linear_constraint_voltage_square_big_m_18_21_1..
	-variable_switched_voltage_square_18_21 + 0.902499999*variable_transmission_switch_18_21 =l= 0
Equation linear_constraint_voltage_square_big_m_18_21_2 ;
linear_constraint_voltage_square_big_m_18_21_2..
	variable_switched_voltage_square_18_21 - 1.1025*variable_transmission_switch_18_21 =l= 0
Equation linear_constraint_voltage_square_big_m_18_21_3 ;
linear_constraint_voltage_square_big_m_18_21_3..
	-variable_switched_voltage_square_18_21 + 1.1025*variable_transmission_switch_18_21 + variable_voltage_square_18 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_18_21_4 ;
linear_constraint_voltage_square_big_m_18_21_4..
	variable_switched_voltage_square_18_21 - 0.902499999*variable_transmission_switch_18_21 - variable_voltage_square_18 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_18_21_2_1 ;
linear_constraint_voltage_square_big_m_18_21_2_1..
	-variable_switched_voltage_square_18_21_2 + 0.902499999*variable_transmission_switch_18_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_18_21_2_2 ;
linear_constraint_voltage_square_big_m_18_21_2_2..
	variable_switched_voltage_square_18_21_2 - 1.1025*variable_transmission_switch_18_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_18_21_2_3 ;
linear_constraint_voltage_square_big_m_18_21_2_3..
	-variable_switched_voltage_square_18_21_2 + 1.1025*variable_transmission_switch_18_21_2 + variable_voltage_square_18 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_18_21_2_4 ;
linear_constraint_voltage_square_big_m_18_21_2_4..
	variable_switched_voltage_square_18_21_2 - 0.902499999*variable_transmission_switch_18_21_2 - variable_voltage_square_18 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_21_18_1 ;
linear_constraint_voltage_square_big_m_21_18_1..
	-variable_switched_voltage_square_21_18 + 0.902499999*variable_transmission_switch_18_21 =l= 0
Equation linear_constraint_voltage_square_big_m_21_18_2 ;
linear_constraint_voltage_square_big_m_21_18_2..
	variable_switched_voltage_square_21_18 - 1.1025*variable_transmission_switch_18_21 =l= 0
Equation linear_constraint_voltage_square_big_m_21_18_3 ;
linear_constraint_voltage_square_big_m_21_18_3..
	-variable_switched_voltage_square_21_18 + 1.1025*variable_transmission_switch_18_21 + variable_voltage_square_21 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_21_18_4 ;
linear_constraint_voltage_square_big_m_21_18_4..
	variable_switched_voltage_square_21_18 - 0.902499999*variable_transmission_switch_18_21 - variable_voltage_square_21 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_21_18_2_1 ;
linear_constraint_voltage_square_big_m_21_18_2_1..
	-variable_switched_voltage_square_21_18_2 + 0.902499999*variable_transmission_switch_18_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_21_18_2_2 ;
linear_constraint_voltage_square_big_m_21_18_2_2..
	variable_switched_voltage_square_21_18_2 - 1.1025*variable_transmission_switch_18_21_2 =l= 0
Equation linear_constraint_voltage_square_big_m_21_18_2_3 ;
linear_constraint_voltage_square_big_m_21_18_2_3..
	-variable_switched_voltage_square_21_18_2 + 1.1025*variable_transmission_switch_18_21_2 + variable_voltage_square_21 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_21_18_2_4 ;
linear_constraint_voltage_square_big_m_21_18_2_4..
	variable_switched_voltage_square_21_18_2 - 0.902499999*variable_transmission_switch_18_21_2 - variable_voltage_square_21 =l= -0.902499999
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
Equation linear_constraint_voltage_square_big_m_19_20_2_1 ;
linear_constraint_voltage_square_big_m_19_20_2_1..
	-variable_switched_voltage_square_19_20_2 + 0.902499999*variable_transmission_switch_19_20_2 =l= 0
Equation linear_constraint_voltage_square_big_m_19_20_2_2 ;
linear_constraint_voltage_square_big_m_19_20_2_2..
	variable_switched_voltage_square_19_20_2 - 1.1025*variable_transmission_switch_19_20_2 =l= 0
Equation linear_constraint_voltage_square_big_m_19_20_2_3 ;
linear_constraint_voltage_square_big_m_19_20_2_3..
	-variable_switched_voltage_square_19_20_2 + 1.1025*variable_transmission_switch_19_20_2 + variable_voltage_square_19 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_19_20_2_4 ;
linear_constraint_voltage_square_big_m_19_20_2_4..
	variable_switched_voltage_square_19_20_2 - 0.902499999*variable_transmission_switch_19_20_2 - variable_voltage_square_19 =l= -0.902499999
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
Equation linear_constraint_voltage_square_big_m_20_19_2_1 ;
linear_constraint_voltage_square_big_m_20_19_2_1..
	-variable_switched_voltage_square_20_19_2 + 0.902499999*variable_transmission_switch_19_20_2 =l= 0
Equation linear_constraint_voltage_square_big_m_20_19_2_2 ;
linear_constraint_voltage_square_big_m_20_19_2_2..
	variable_switched_voltage_square_20_19_2 - 1.1025*variable_transmission_switch_19_20_2 =l= 0
Equation linear_constraint_voltage_square_big_m_20_19_2_3 ;
linear_constraint_voltage_square_big_m_20_19_2_3..
	-variable_switched_voltage_square_20_19_2 + 1.1025*variable_transmission_switch_19_20_2 + variable_voltage_square_20 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_20_19_2_4 ;
linear_constraint_voltage_square_big_m_20_19_2_4..
	variable_switched_voltage_square_20_19_2 - 0.902499999*variable_transmission_switch_19_20_2 - variable_voltage_square_20 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_20_23_1 ;
linear_constraint_voltage_square_big_m_20_23_1..
	-variable_switched_voltage_square_20_23 + 0.902499999*variable_transmission_switch_20_23 =l= 0
Equation linear_constraint_voltage_square_big_m_20_23_2 ;
linear_constraint_voltage_square_big_m_20_23_2..
	variable_switched_voltage_square_20_23 - 1.1025*variable_transmission_switch_20_23 =l= 0
Equation linear_constraint_voltage_square_big_m_20_23_3 ;
linear_constraint_voltage_square_big_m_20_23_3..
	-variable_switched_voltage_square_20_23 + 1.1025*variable_transmission_switch_20_23 + variable_voltage_square_20 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_20_23_4 ;
linear_constraint_voltage_square_big_m_20_23_4..
	variable_switched_voltage_square_20_23 - 0.902499999*variable_transmission_switch_20_23 - variable_voltage_square_20 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_20_23_2_1 ;
linear_constraint_voltage_square_big_m_20_23_2_1..
	-variable_switched_voltage_square_20_23_2 + 0.902499999*variable_transmission_switch_20_23_2 =l= 0
Equation linear_constraint_voltage_square_big_m_20_23_2_2 ;
linear_constraint_voltage_square_big_m_20_23_2_2..
	variable_switched_voltage_square_20_23_2 - 1.1025*variable_transmission_switch_20_23_2 =l= 0
Equation linear_constraint_voltage_square_big_m_20_23_2_3 ;
linear_constraint_voltage_square_big_m_20_23_2_3..
	-variable_switched_voltage_square_20_23_2 + 1.1025*variable_transmission_switch_20_23_2 + variable_voltage_square_20 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_20_23_2_4 ;
linear_constraint_voltage_square_big_m_20_23_2_4..
	variable_switched_voltage_square_20_23_2 - 0.902499999*variable_transmission_switch_20_23_2 - variable_voltage_square_20 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_23_20_1 ;
linear_constraint_voltage_square_big_m_23_20_1..
	-variable_switched_voltage_square_23_20 + 0.902499999*variable_transmission_switch_20_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_20_2 ;
linear_constraint_voltage_square_big_m_23_20_2..
	variable_switched_voltage_square_23_20 - 1.1025*variable_transmission_switch_20_23 =l= 0
Equation linear_constraint_voltage_square_big_m_23_20_3 ;
linear_constraint_voltage_square_big_m_23_20_3..
	-variable_switched_voltage_square_23_20 + 1.1025*variable_transmission_switch_20_23 + variable_voltage_square_23 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_23_20_4 ;
linear_constraint_voltage_square_big_m_23_20_4..
	variable_switched_voltage_square_23_20 - 0.902499999*variable_transmission_switch_20_23 - variable_voltage_square_23 =l= -0.902499999
Equation linear_constraint_voltage_square_big_m_23_20_2_1 ;
linear_constraint_voltage_square_big_m_23_20_2_1..
	-variable_switched_voltage_square_23_20_2 + 0.902499999*variable_transmission_switch_20_23_2 =l= 0
Equation linear_constraint_voltage_square_big_m_23_20_2_2 ;
linear_constraint_voltage_square_big_m_23_20_2_2..
	variable_switched_voltage_square_23_20_2 - 1.1025*variable_transmission_switch_20_23_2 =l= 0
Equation linear_constraint_voltage_square_big_m_23_20_2_3 ;
linear_constraint_voltage_square_big_m_23_20_2_3..
	-variable_switched_voltage_square_23_20_2 + 1.1025*variable_transmission_switch_20_23_2 + variable_voltage_square_23 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_23_20_2_4 ;
linear_constraint_voltage_square_big_m_23_20_2_4..
	variable_switched_voltage_square_23_20_2 - 0.902499999*variable_transmission_switch_20_23_2 - variable_voltage_square_23 =l= -0.902499999
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
	variable_switched_voltage_square_22_21 - 1.1025*variable_transmission_switch_21_22 =l= 0
Equation linear_constraint_voltage_square_big_m_22_21_3 ;
linear_constraint_voltage_square_big_m_22_21_3..
	-variable_switched_voltage_square_22_21 + 1.1025*variable_transmission_switch_21_22 + variable_voltage_square_22 =l= 1.1025
Equation linear_constraint_voltage_square_big_m_22_21_4 ;
linear_constraint_voltage_square_big_m_22_21_4..
	variable_switched_voltage_square_22_21 - 0.902499999*variable_transmission_switch_21_22 - variable_voltage_square_22 =l= -0.902499999
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 3.419*variable_curtailment_binaries_1_1 - 6.8381*variable_curtailment_binaries_1_2 - 9.1174*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 3.419*variable_curtailment_binaries_3_1 - 6.8381*variable_curtailment_binaries_3_2 - 9.1174*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_option_5 ;
linear_constraint_curtailment_option_5..
	(variable_curtailed_feed_in_5 - 3.419*variable_curtailment_binaries_5_1 - 6.8381*variable_curtailment_binaries_5_2 - 9.1174*variable_curtailment_binaries_5_3) =e= (0)
Equation linear_constraint_curtailment_option_7 ;
linear_constraint_curtailment_option_7..
	(variable_curtailed_feed_in_7 - 3.419*variable_curtailment_binaries_7_1 - 6.8381*variable_curtailment_binaries_7_2 - 9.1174*variable_curtailment_binaries_7_3) =e= (0)
Equation linear_constraint_curtailment_option_9 ;
linear_constraint_curtailment_option_9..
	(variable_curtailed_feed_in_9 - 3.419*variable_curtailment_binaries_9_1 - 6.8381*variable_curtailment_binaries_9_2 - 9.1174*variable_curtailment_binaries_9_3) =e= (0)
Equation linear_constraint_curtailment_option_11 ;
linear_constraint_curtailment_option_11..
	(variable_curtailed_feed_in_11 - 3.419*variable_curtailment_binaries_11_1 - 6.8381*variable_curtailment_binaries_11_2 - 9.1174*variable_curtailment_binaries_11_3) =e= (0)
Equation linear_constraint_curtailment_option_13 ;
linear_constraint_curtailment_option_13..
	(variable_curtailed_feed_in_13 - 3.419*variable_curtailment_binaries_13_1 - 6.8381*variable_curtailment_binaries_13_2 - 9.1174*variable_curtailment_binaries_13_3) =e= (0)
Equation linear_constraint_curtailment_option_15 ;
linear_constraint_curtailment_option_15..
	(variable_curtailed_feed_in_15 - 3.419*variable_curtailment_binaries_15_1 - 6.8381*variable_curtailment_binaries_15_2 - 9.1174*variable_curtailment_binaries_15_3) =e= (0)
Equation linear_constraint_curtailment_option_17 ;
linear_constraint_curtailment_option_17..
	(variable_curtailed_feed_in_17 - 3.419*variable_curtailment_binaries_17_1 - 6.8381*variable_curtailment_binaries_17_2 - 9.1174*variable_curtailment_binaries_17_3) =e= (0)
Equation linear_constraint_curtailment_option_19 ;
linear_constraint_curtailment_option_19..
	(variable_curtailed_feed_in_19 - 3.419*variable_curtailment_binaries_19_1 - 6.8381*variable_curtailment_binaries_19_2 - 9.1174*variable_curtailment_binaries_19_3) =e= (0)
Equation linear_constraint_curtailment_option_21 ;
linear_constraint_curtailment_option_21..
	(variable_curtailed_feed_in_21 - 3.419*variable_curtailment_binaries_21_1 - 6.8381*variable_curtailment_binaries_21_2 - 9.1174*variable_curtailment_binaries_21_3) =e= (0)
Equation linear_constraint_curtailment_option_23 ;
linear_constraint_curtailment_option_23..
	(variable_curtailed_feed_in_23 - 3.419*variable_curtailment_binaries_23_1 - 6.8381*variable_curtailment_binaries_23_2 - 9.1174*variable_curtailment_binaries_23_3) =e= (0)
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

*===== SECTION: MODEL DEFINITION
Model minlp /all/ ;

*===== SECTION: MODEL OPTIONS AND SOLVE
option optcr = 0.0001 ;
option ResLim = 7200 ;
option MINLP = scip ;
Solve minlp min objval using MINLP ;
