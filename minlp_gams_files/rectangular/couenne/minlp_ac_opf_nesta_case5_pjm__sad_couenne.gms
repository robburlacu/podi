$title "minlp_ac_opf_nesta_case5_pjm__sad"

*===== SECTION: VARIABLE DEFINITION
Free Variable objval ;
Binary Variable variable_generator_switch_1_1 ;
Binary Variable variable_generator_switch_1_2 ;
Binary Variable variable_generator_switch_3 ;
Binary Variable variable_generator_switch_4 ;
Binary Variable variable_generator_switch_5 ;
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
Free Variable variable_real_power_gen_1_1 ;
	variable_real_power_gen_1_1.lo = 0.0 ;
	variable_real_power_gen_1_1.up = 0.4 ;
Free Variable variable_real_power_gen_1_2 ;
	variable_real_power_gen_1_2.lo = 0.0 ;
	variable_real_power_gen_1_2.up = 1.7 ;
Free Variable variable_real_power_gen_3 ;
	variable_real_power_gen_3.lo = 0.0 ;
	variable_real_power_gen_3.up = 5.2 ;
Free Variable variable_real_power_gen_4 ;
	variable_real_power_gen_4.lo = 0.0 ;
	variable_real_power_gen_4.up = 2.0 ;
Free Variable variable_real_power_gen_5 ;
	variable_real_power_gen_5.lo = 0.0 ;
	variable_real_power_gen_5.up = 6.0 ;
Free Variable variable_reactive_power_gen_1_1 ;
	variable_reactive_power_gen_1_1.lo = -0.3 ;
	variable_reactive_power_gen_1_1.up = 0.3 ;
Free Variable variable_reactive_power_gen_1_2 ;
	variable_reactive_power_gen_1_2.lo = -1.275 ;
	variable_reactive_power_gen_1_2.up = 1.275 ;
Free Variable variable_reactive_power_gen_3 ;
	variable_reactive_power_gen_3.lo = -3.9 ;
	variable_reactive_power_gen_3.up = 3.9 ;
Free Variable variable_reactive_power_gen_4 ;
	variable_reactive_power_gen_4.lo = -1.5 ;
	variable_reactive_power_gen_4.up = 1.5 ;
Free Variable variable_reactive_power_gen_5 ;
	variable_reactive_power_gen_5.lo = -4.5 ;
	variable_reactive_power_gen_5.up = 4.5 ;
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
Binary Variable variable_transmission_switch_1_2 ;
Binary Variable variable_transmission_switch_1_4 ;
Binary Variable variable_transmission_switch_1_5 ;
Binary Variable variable_transmission_switch_2_3 ;
Binary Variable variable_transmission_switch_3_4 ;
Binary Variable variable_transmission_switch_4_5 ;
Free Variable variable_switched_voltage_square_1_2 ;
	variable_switched_voltage_square_1_2.lo = 0.0 ;
	variable_switched_voltage_square_1_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_1 ;
	variable_switched_voltage_square_2_1.lo = 0.0 ;
	variable_switched_voltage_square_2_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_1_4 ;
	variable_switched_voltage_square_1_4.lo = 0.0 ;
	variable_switched_voltage_square_1_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_1 ;
	variable_switched_voltage_square_4_1.lo = 0.0 ;
	variable_switched_voltage_square_4_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_1_5 ;
	variable_switched_voltage_square_1_5.lo = 0.0 ;
	variable_switched_voltage_square_1_5.up = 1.21 ;
Free Variable variable_switched_voltage_square_5_1 ;
	variable_switched_voltage_square_5_1.lo = 0.0 ;
	variable_switched_voltage_square_5_1.up = 1.21 ;
Free Variable variable_switched_voltage_square_2_3 ;
	variable_switched_voltage_square_2_3.lo = 0.0 ;
	variable_switched_voltage_square_2_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_2 ;
	variable_switched_voltage_square_3_2.lo = 0.0 ;
	variable_switched_voltage_square_3_2.up = 1.21 ;
Free Variable variable_switched_voltage_square_3_4 ;
	variable_switched_voltage_square_3_4.lo = 0.0 ;
	variable_switched_voltage_square_3_4.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_3 ;
	variable_switched_voltage_square_4_3.lo = 0.0 ;
	variable_switched_voltage_square_4_3.up = 1.21 ;
Free Variable variable_switched_voltage_square_4_5 ;
	variable_switched_voltage_square_4_5.lo = 0.0 ;
	variable_switched_voltage_square_4_5.up = 1.21 ;
Free Variable variable_switched_voltage_square_5_4 ;
	variable_switched_voltage_square_5_4.lo = 0.0 ;
	variable_switched_voltage_square_5_4.up = 1.21 ;
Free Variable variable_real_power_flow_1_2 ;
	variable_real_power_flow_1_2.lo = -4.0 ;
	variable_real_power_flow_1_2.up = 4.0 ;
Free Variable variable_real_power_flow_2_1 ;
	variable_real_power_flow_2_1.lo = -4.0 ;
	variable_real_power_flow_2_1.up = 4.0 ;
Free Variable variable_real_power_flow_1_4 ;
	variable_real_power_flow_1_4.lo = -4.26 ;
	variable_real_power_flow_1_4.up = 4.26 ;
Free Variable variable_real_power_flow_4_1 ;
	variable_real_power_flow_4_1.lo = -4.26 ;
	variable_real_power_flow_4_1.up = 4.26 ;
Free Variable variable_real_power_flow_1_5 ;
	variable_real_power_flow_1_5.lo = -4.26 ;
	variable_real_power_flow_1_5.up = 4.26 ;
Free Variable variable_real_power_flow_5_1 ;
	variable_real_power_flow_5_1.lo = -4.26 ;
	variable_real_power_flow_5_1.up = 4.26 ;
Free Variable variable_real_power_flow_2_3 ;
	variable_real_power_flow_2_3.lo = -4.26 ;
	variable_real_power_flow_2_3.up = 4.26 ;
Free Variable variable_real_power_flow_3_2 ;
	variable_real_power_flow_3_2.lo = -4.26 ;
	variable_real_power_flow_3_2.up = 4.26 ;
Free Variable variable_real_power_flow_3_4 ;
	variable_real_power_flow_3_4.lo = -4.26 ;
	variable_real_power_flow_3_4.up = 4.26 ;
Free Variable variable_real_power_flow_4_3 ;
	variable_real_power_flow_4_3.lo = -4.26 ;
	variable_real_power_flow_4_3.up = 4.26 ;
Free Variable variable_real_power_flow_4_5 ;
	variable_real_power_flow_4_5.lo = -2.4 ;
	variable_real_power_flow_4_5.up = 2.4 ;
Free Variable variable_real_power_flow_5_4 ;
	variable_real_power_flow_5_4.lo = -2.4 ;
	variable_real_power_flow_5_4.up = 2.4 ;
Free Variable variable_reactive_power_flow_1_2 ;
	variable_reactive_power_flow_1_2.lo = -4.0 ;
	variable_reactive_power_flow_1_2.up = 4.0 ;
Free Variable variable_reactive_power_flow_2_1 ;
	variable_reactive_power_flow_2_1.lo = -4.0 ;
	variable_reactive_power_flow_2_1.up = 4.0 ;
Free Variable variable_reactive_power_flow_1_4 ;
	variable_reactive_power_flow_1_4.lo = -4.26 ;
	variable_reactive_power_flow_1_4.up = 4.26 ;
Free Variable variable_reactive_power_flow_4_1 ;
	variable_reactive_power_flow_4_1.lo = -4.26 ;
	variable_reactive_power_flow_4_1.up = 4.26 ;
Free Variable variable_reactive_power_flow_1_5 ;
	variable_reactive_power_flow_1_5.lo = -4.26 ;
	variable_reactive_power_flow_1_5.up = 4.26 ;
Free Variable variable_reactive_power_flow_5_1 ;
	variable_reactive_power_flow_5_1.lo = -4.26 ;
	variable_reactive_power_flow_5_1.up = 4.26 ;
Free Variable variable_reactive_power_flow_2_3 ;
	variable_reactive_power_flow_2_3.lo = -4.26 ;
	variable_reactive_power_flow_2_3.up = 4.26 ;
Free Variable variable_reactive_power_flow_3_2 ;
	variable_reactive_power_flow_3_2.lo = -4.26 ;
	variable_reactive_power_flow_3_2.up = 4.26 ;
Free Variable variable_reactive_power_flow_3_4 ;
	variable_reactive_power_flow_3_4.lo = -4.26 ;
	variable_reactive_power_flow_3_4.up = 4.26 ;
Free Variable variable_reactive_power_flow_4_3 ;
	variable_reactive_power_flow_4_3.lo = -4.26 ;
	variable_reactive_power_flow_4_3.up = 4.26 ;
Free Variable variable_reactive_power_flow_4_5 ;
	variable_reactive_power_flow_4_5.lo = -2.4 ;
	variable_reactive_power_flow_4_5.up = 2.4 ;
Free Variable variable_reactive_power_flow_5_4 ;
	variable_reactive_power_flow_5_4.lo = -2.4 ;
	variable_reactive_power_flow_5_4.up = 2.4 ;
Free Variable variable_voltage_product_real_1_2 ;
	variable_voltage_product_real_1_2.lo = 0.0 ;
	variable_voltage_product_real_1_2.up = 1.21 ;
Free Variable variable_voltage_product_real_1_4 ;
	variable_voltage_product_real_1_4.lo = 0.0 ;
	variable_voltage_product_real_1_4.up = 1.21 ;
Free Variable variable_voltage_product_real_1_5 ;
	variable_voltage_product_real_1_5.lo = 0.0 ;
	variable_voltage_product_real_1_5.up = 1.21 ;
Free Variable variable_voltage_product_real_2_3 ;
	variable_voltage_product_real_2_3.lo = 0.0 ;
	variable_voltage_product_real_2_3.up = 1.21 ;
Free Variable variable_voltage_product_real_3_4 ;
	variable_voltage_product_real_3_4.lo = 0.0 ;
	variable_voltage_product_real_3_4.up = 1.21 ;
Free Variable variable_voltage_product_real_4_5 ;
	variable_voltage_product_real_4_5.lo = 0.0 ;
	variable_voltage_product_real_4_5.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_2 ;
	variable_voltage_product_imaginary_1_2.lo = -1.21 ;
	variable_voltage_product_imaginary_1_2.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_4 ;
	variable_voltage_product_imaginary_1_4.lo = -1.21 ;
	variable_voltage_product_imaginary_1_4.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_1_5 ;
	variable_voltage_product_imaginary_1_5.lo = -1.21 ;
	variable_voltage_product_imaginary_1_5.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_2_3 ;
	variable_voltage_product_imaginary_2_3.lo = -1.21 ;
	variable_voltage_product_imaginary_2_3.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_3_4 ;
	variable_voltage_product_imaginary_3_4.lo = -1.21 ;
	variable_voltage_product_imaginary_3_4.up = 1.21 ;
Free Variable variable_voltage_product_imaginary_4_5 ;
	variable_voltage_product_imaginary_4_5.lo = -1.21 ;
	variable_voltage_product_imaginary_4_5.up = 1.21 ;
Free Variable variable_curtailed_feed_in_1 ;
	variable_curtailed_feed_in_1.lo = 0.0 ;
	variable_curtailed_feed_in_1.up = 6.6667 ;
Free Variable variable_curtailed_feed_in_3 ;
	variable_curtailed_feed_in_3.lo = 0.0 ;
	variable_curtailed_feed_in_3.up = 6.6667 ;
Free Variable variable_curtailed_feed_in_5 ;
	variable_curtailed_feed_in_5.lo = 0.0 ;
	variable_curtailed_feed_in_5.up = 6.6667 ;
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
	objval =e= -2180.0*variable_curtailed_feed_in_1 - 2180.0*variable_curtailed_feed_in_3 - 2180.0*variable_curtailed_feed_in_5 + 1400.0*variable_real_power_gen_1_1 + 1500.0*variable_real_power_gen_1_2 + 3000.0*variable_real_power_gen_3 + 4000.0*variable_real_power_gen_4 + 1000.0*variable_real_power_gen_5 + 87200.436
Equation linear_constraint_real_flow_conservation_1 ;
linear_constraint_real_flow_conservation_1..
	(variable_curtailed_feed_in_1 - variable_real_power_flow_1_2 - variable_real_power_flow_1_4 - variable_real_power_flow_1_5 + variable_real_power_gen_1_1 + variable_real_power_gen_1_2) =e= (0.0)
Equation linear_constraint_real_flow_conservation_2 ;
linear_constraint_real_flow_conservation_2..
	(-variable_real_power_flow_2_1 - variable_real_power_flow_2_3) =e= (3.0)
Equation linear_constraint_real_flow_conservation_3 ;
linear_constraint_real_flow_conservation_3..
	(variable_curtailed_feed_in_3 - variable_real_power_flow_3_2 - variable_real_power_flow_3_4 + variable_real_power_gen_3) =e= (3.0)
Equation linear_constraint_real_flow_conservation_4 ;
linear_constraint_real_flow_conservation_4..
	(-variable_real_power_flow_4_1 - variable_real_power_flow_4_3 - variable_real_power_flow_4_5 + variable_real_power_gen_4) =e= (4.0)
Equation linear_constraint_real_flow_conservation_5 ;
linear_constraint_real_flow_conservation_5..
	(variable_curtailed_feed_in_5 - variable_real_power_flow_5_1 - variable_real_power_flow_5_4 + variable_real_power_gen_5) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_1 ;
linear_constraint_reactive_flow_conservation_1..
	(0.48*variable_curtailed_feed_in_1 - variable_reactive_power_flow_1_2 - variable_reactive_power_flow_1_4 - variable_reactive_power_flow_1_5 + variable_reactive_power_gen_1_1 + variable_reactive_power_gen_1_2) =e= (0.0)
Equation linear_constraint_reactive_flow_conservation_2 ;
linear_constraint_reactive_flow_conservation_2..
	(-variable_reactive_power_flow_2_1 - variable_reactive_power_flow_2_3) =e= (0.9861)
Equation linear_constraint_reactive_flow_conservation_3 ;
linear_constraint_reactive_flow_conservation_3..
	(0.48*variable_curtailed_feed_in_3 - variable_reactive_power_flow_3_2 - variable_reactive_power_flow_3_4 + variable_reactive_power_gen_3) =e= (0.9861)
Equation linear_constraint_reactive_flow_conservation_4 ;
linear_constraint_reactive_flow_conservation_4..
	(-variable_reactive_power_flow_4_1 - variable_reactive_power_flow_4_3 - variable_reactive_power_flow_4_5 + variable_reactive_power_gen_4) =e= (1.3147)
Equation linear_constraint_reactive_flow_conservation_5 ;
linear_constraint_reactive_flow_conservation_5..
	(0.48*variable_curtailed_feed_in_5 - variable_reactive_power_flow_5_1 - variable_reactive_power_flow_5_4 + variable_reactive_power_gen_5) =e= (0.0)
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
Equation nonlinear_constraint_voltage_product_real_rectangular_1_2 ;
nonlinear_constraint_voltage_product_real_rectangular_1_2..
	(variable_voltage_product_real_1_2) =e= (variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_imag_2 + variable_transmission_switch_1_2*variable_voltage_real_1*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_real_rectangular_1_4 ;
nonlinear_constraint_voltage_product_real_rectangular_1_4..
	(variable_voltage_product_real_1_4) =e= (variable_transmission_switch_1_4*variable_voltage_imag_1*variable_voltage_imag_4 + variable_transmission_switch_1_4*variable_voltage_real_1*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_real_rectangular_1_5 ;
nonlinear_constraint_voltage_product_real_rectangular_1_5..
	(variable_voltage_product_real_1_5) =e= (variable_transmission_switch_1_5*variable_voltage_imag_1*variable_voltage_imag_5 + variable_transmission_switch_1_5*variable_voltage_real_1*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_real_rectangular_2_3 ;
nonlinear_constraint_voltage_product_real_rectangular_2_3..
	(variable_voltage_product_real_2_3) =e= (variable_transmission_switch_2_3*variable_voltage_imag_2*variable_voltage_imag_3 + variable_transmission_switch_2_3*variable_voltage_real_2*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_real_rectangular_3_4 ;
nonlinear_constraint_voltage_product_real_rectangular_3_4..
	(variable_voltage_product_real_3_4) =e= (variable_transmission_switch_3_4*variable_voltage_imag_3*variable_voltage_imag_4 + variable_transmission_switch_3_4*variable_voltage_real_3*variable_voltage_real_4)
Equation nonlinear_constraint_voltage_product_real_rectangular_4_5 ;
nonlinear_constraint_voltage_product_real_rectangular_4_5..
	(variable_voltage_product_real_4_5) =e= (variable_transmission_switch_4_5*variable_voltage_imag_4*variable_voltage_imag_5 + variable_transmission_switch_4_5*variable_voltage_real_4*variable_voltage_real_5)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_2 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_2..
	(variable_voltage_product_imaginary_1_2) =e= (-variable_transmission_switch_1_2*variable_voltage_imag_1*variable_voltage_real_2 + variable_transmission_switch_1_2*variable_voltage_imag_2*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_4..
	(variable_voltage_product_imaginary_1_4) =e= (-variable_transmission_switch_1_4*variable_voltage_imag_1*variable_voltage_real_4 + variable_transmission_switch_1_4*variable_voltage_imag_4*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_1_5 ;
nonlinear_constraint_voltage_product_imag_rectangular_1_5..
	(variable_voltage_product_imaginary_1_5) =e= (-variable_transmission_switch_1_5*variable_voltage_imag_1*variable_voltage_real_5 + variable_transmission_switch_1_5*variable_voltage_imag_5*variable_voltage_real_1)
Equation nonlinear_constraint_voltage_product_imag_rectangular_2_3 ;
nonlinear_constraint_voltage_product_imag_rectangular_2_3..
	(variable_voltage_product_imaginary_2_3) =e= (-variable_transmission_switch_2_3*variable_voltage_imag_2*variable_voltage_real_3 + variable_transmission_switch_2_3*variable_voltage_imag_3*variable_voltage_real_2)
Equation nonlinear_constraint_voltage_product_imag_rectangular_3_4 ;
nonlinear_constraint_voltage_product_imag_rectangular_3_4..
	(variable_voltage_product_imaginary_3_4) =e= (-variable_transmission_switch_3_4*variable_voltage_imag_3*variable_voltage_real_4 + variable_transmission_switch_3_4*variable_voltage_imag_4*variable_voltage_real_3)
Equation nonlinear_constraint_voltage_product_imag_rectangular_4_5 ;
nonlinear_constraint_voltage_product_imag_rectangular_4_5..
	(variable_voltage_product_imaginary_4_5) =e= (-variable_transmission_switch_4_5*variable_voltage_imag_4*variable_voltage_real_5 + variable_transmission_switch_4_5*variable_voltage_imag_5*variable_voltage_real_4)
Equation linear_constraint_real_power_flow_equation_1_2 ;
linear_constraint_real_power_flow_equation_1_2..
	(variable_real_power_flow_1_2) =e= (3.52348402099996*variable_switched_voltage_square_1_2 - 35.2348402099996*variable_voltage_product_imaginary_1_2 - 3.52348402099996*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_2_1 ;
linear_constraint_real_power_flow_equation_2_1..
	(variable_real_power_flow_2_1) =e= (3.52348402099996*variable_switched_voltage_square_2_1 + 35.2348402099996*variable_voltage_product_imaginary_1_2 - 3.52348402099996*variable_voltage_product_real_1_2)
Equation linear_constraint_real_power_flow_equation_1_4 ;
linear_constraint_real_power_flow_equation_1_4..
	(variable_real_power_flow_1_4) =e= (3.2569046378322*variable_switched_voltage_square_1_4 - 32.569046378322*variable_voltage_product_imaginary_1_4 - 3.2569046378322*variable_voltage_product_real_1_4)
Equation linear_constraint_real_power_flow_equation_4_1 ;
linear_constraint_real_power_flow_equation_4_1..
	(variable_real_power_flow_4_1) =e= (3.2569046378322*variable_switched_voltage_square_4_1 + 32.569046378322*variable_voltage_product_imaginary_1_4 - 3.2569046378322*variable_voltage_product_real_1_4)
Equation linear_constraint_real_power_flow_equation_1_5 ;
linear_constraint_real_power_flow_equation_1_5..
	(variable_real_power_flow_1_5) =e= (15.470297029703*variable_switched_voltage_square_1_5 - 154.70297029703*variable_voltage_product_imaginary_1_5 - 15.470297029703*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_5_1 ;
linear_constraint_real_power_flow_equation_5_1..
	(variable_real_power_flow_5_1) =e= (15.470297029703*variable_switched_voltage_square_5_1 + 154.70297029703*variable_voltage_product_imaginary_1_5 - 15.470297029703*variable_voltage_product_real_1_5)
Equation linear_constraint_real_power_flow_equation_2_3 ;
linear_constraint_real_power_flow_equation_2_3..
	(variable_real_power_flow_2_3) =e= (9.16758342500917*variable_switched_voltage_square_2_3 - 91.6758342500917*variable_voltage_product_imaginary_2_3 - 9.16758342500917*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_3_2 ;
linear_constraint_real_power_flow_equation_3_2..
	(variable_real_power_flow_3_2) =e= (9.16758342500917*variable_switched_voltage_square_3_2 + 91.6758342500917*variable_voltage_product_imaginary_2_3 - 9.16758342500917*variable_voltage_product_real_2_3)
Equation linear_constraint_real_power_flow_equation_3_4 ;
linear_constraint_real_power_flow_equation_3_4..
	(variable_real_power_flow_3_4) =e= (3.33366670000333*variable_switched_voltage_square_3_4 - 33.3366670000333*variable_voltage_product_imaginary_3_4 - 3.33366670000333*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_3 ;
linear_constraint_real_power_flow_equation_4_3..
	(variable_real_power_flow_4_3) =e= (3.33366670000333*variable_switched_voltage_square_4_3 + 33.3366670000333*variable_voltage_product_imaginary_3_4 - 3.33366670000333*variable_voltage_product_real_3_4)
Equation linear_constraint_real_power_flow_equation_4_5 ;
linear_constraint_real_power_flow_equation_4_5..
	(variable_real_power_flow_4_5) =e= (3.33366670000333*variable_switched_voltage_square_4_5 - 33.3366670000333*variable_voltage_product_imaginary_4_5 - 3.33366670000333*variable_voltage_product_real_4_5)
Equation linear_constraint_real_power_flow_equation_5_4 ;
linear_constraint_real_power_flow_equation_5_4..
	(variable_real_power_flow_5_4) =e= (3.33366670000333*variable_switched_voltage_square_5_4 + 33.3366670000333*variable_voltage_product_imaginary_4_5 - 3.33366670000333*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_1_2 ;
linear_constraint_reactive_power_flow_equation_1_2..
	(variable_reactive_power_flow_1_2) =e= (35.2312802099996*variable_switched_voltage_square_1_2 + 3.52348402099996*variable_voltage_product_imaginary_1_2 - 35.2348402099996*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_2_1 ;
linear_constraint_reactive_power_flow_equation_2_1..
	(variable_reactive_power_flow_2_1) =e= (35.2312802099996*variable_switched_voltage_square_2_1 - 3.52348402099996*variable_voltage_product_imaginary_1_2 - 35.2348402099996*variable_voltage_product_real_1_2)
Equation linear_constraint_reactive_power_flow_equation_1_4 ;
linear_constraint_reactive_power_flow_equation_1_4..
	(variable_reactive_power_flow_1_4) =e= (32.565756378322*variable_switched_voltage_square_1_4 + 3.2569046378322*variable_voltage_product_imaginary_1_4 - 32.569046378322*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_4_1 ;
linear_constraint_reactive_power_flow_equation_4_1..
	(variable_reactive_power_flow_4_1) =e= (32.565756378322*variable_switched_voltage_square_4_1 - 3.2569046378322*variable_voltage_product_imaginary_1_4 - 32.569046378322*variable_voltage_product_real_1_4)
Equation linear_constraint_reactive_power_flow_equation_1_5 ;
linear_constraint_reactive_power_flow_equation_1_5..
	(variable_reactive_power_flow_1_5) =e= (154.68734029703*variable_switched_voltage_square_1_5 + 15.470297029703*variable_voltage_product_imaginary_1_5 - 154.70297029703*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_5_1 ;
linear_constraint_reactive_power_flow_equation_5_1..
	(variable_reactive_power_flow_5_1) =e= (154.68734029703*variable_switched_voltage_square_5_1 - 15.470297029703*variable_voltage_product_imaginary_1_5 - 154.70297029703*variable_voltage_product_real_1_5)
Equation linear_constraint_reactive_power_flow_equation_2_3 ;
linear_constraint_reactive_power_flow_equation_2_3..
	(variable_reactive_power_flow_2_3) =e= (91.6665742500917*variable_switched_voltage_square_2_3 + 9.16758342500917*variable_voltage_product_imaginary_2_3 - 91.6758342500917*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_3_2 ;
linear_constraint_reactive_power_flow_equation_3_2..
	(variable_reactive_power_flow_3_2) =e= (91.6665742500917*variable_switched_voltage_square_3_2 - 9.16758342500917*variable_voltage_product_imaginary_2_3 - 91.6758342500917*variable_voltage_product_real_2_3)
Equation linear_constraint_reactive_power_flow_equation_3_4 ;
linear_constraint_reactive_power_flow_equation_3_4..
	(variable_reactive_power_flow_3_4) =e= (33.3332970000333*variable_switched_voltage_square_3_4 + 3.33366670000333*variable_voltage_product_imaginary_3_4 - 33.3366670000333*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_3 ;
linear_constraint_reactive_power_flow_equation_4_3..
	(variable_reactive_power_flow_4_3) =e= (33.3332970000333*variable_switched_voltage_square_4_3 - 3.33366670000333*variable_voltage_product_imaginary_3_4 - 33.3366670000333*variable_voltage_product_real_3_4)
Equation linear_constraint_reactive_power_flow_equation_4_5 ;
linear_constraint_reactive_power_flow_equation_4_5..
	(variable_reactive_power_flow_4_5) =e= (33.3332970000333*variable_switched_voltage_square_4_5 + 3.33366670000333*variable_voltage_product_imaginary_4_5 - 33.3366670000333*variable_voltage_product_real_4_5)
Equation linear_constraint_reactive_power_flow_equation_5_4 ;
linear_constraint_reactive_power_flow_equation_5_4..
	(variable_reactive_power_flow_5_4) =e= (33.3332970000333*variable_switched_voltage_square_5_4 - 3.33366670000333*variable_voltage_product_imaginary_4_5 - 33.3366670000333*variable_voltage_product_real_4_5)
Equation nonlinear_constraint_thermal_limit_1_2 ;
nonlinear_constraint_thermal_limit_1_2..
	power(variable_reactive_power_flow_1_2,2) + power(variable_real_power_flow_1_2,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_2_1 ;
nonlinear_constraint_thermal_limit_2_1..
	power(variable_reactive_power_flow_2_1,2) + power(variable_real_power_flow_2_1,2) =l= 16.0
Equation nonlinear_constraint_thermal_limit_1_4 ;
nonlinear_constraint_thermal_limit_1_4..
	power(variable_reactive_power_flow_1_4,2) + power(variable_real_power_flow_1_4,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_4_1 ;
nonlinear_constraint_thermal_limit_4_1..
	power(variable_reactive_power_flow_4_1,2) + power(variable_real_power_flow_4_1,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_1_5 ;
nonlinear_constraint_thermal_limit_1_5..
	power(variable_reactive_power_flow_1_5,2) + power(variable_real_power_flow_1_5,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_5_1 ;
nonlinear_constraint_thermal_limit_5_1..
	power(variable_reactive_power_flow_5_1,2) + power(variable_real_power_flow_5_1,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_2_3 ;
nonlinear_constraint_thermal_limit_2_3..
	power(variable_reactive_power_flow_2_3,2) + power(variable_real_power_flow_2_3,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_3_2 ;
nonlinear_constraint_thermal_limit_3_2..
	power(variable_reactive_power_flow_3_2,2) + power(variable_real_power_flow_3_2,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_3_4 ;
nonlinear_constraint_thermal_limit_3_4..
	power(variable_reactive_power_flow_3_4,2) + power(variable_real_power_flow_3_4,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_4_3 ;
nonlinear_constraint_thermal_limit_4_3..
	power(variable_reactive_power_flow_4_3,2) + power(variable_real_power_flow_4_3,2) =l= 18.1476
Equation nonlinear_constraint_thermal_limit_4_5 ;
nonlinear_constraint_thermal_limit_4_5..
	power(variable_reactive_power_flow_4_5,2) + power(variable_real_power_flow_4_5,2) =l= 5.76
Equation nonlinear_constraint_thermal_limit_5_4 ;
nonlinear_constraint_thermal_limit_5_4..
	power(variable_reactive_power_flow_5_4,2) + power(variable_real_power_flow_5_4,2) =l= 5.76
Equation linear_constraint_reference_rectangular_4 ;
linear_constraint_reference_rectangular_4..
	(variable_voltage_real_4) =e= (0)
Equation linear_constraint_tan_bound_lower_1_2 ;
linear_constraint_tan_bound_lower_1_2..
	variable_voltage_product_imaginary_1_2 - 0.0233042173614944*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_lower_1_4 ;
linear_constraint_tan_bound_lower_1_4..
	variable_voltage_product_imaginary_1_4 - 0.0233042173614944*variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_tan_bound_lower_1_5 ;
linear_constraint_tan_bound_lower_1_5..
	variable_voltage_product_imaginary_1_5 - 0.0233042173614944*variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_tan_bound_lower_2_3 ;
linear_constraint_tan_bound_lower_2_3..
	variable_voltage_product_imaginary_2_3 - 0.0233042173614944*variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_tan_bound_lower_3_4 ;
linear_constraint_tan_bound_lower_3_4..
	variable_voltage_product_imaginary_3_4 - 0.0233042173614944*variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_tan_bound_lower_4_5 ;
linear_constraint_tan_bound_lower_4_5..
	variable_voltage_product_imaginary_4_5 - 0.0233042173614944*variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_tan_bound_upper_1_2 ;
linear_constraint_tan_bound_upper_1_2..
	-variable_voltage_product_imaginary_1_2 - 0.0233042173614944*variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_tan_bound_upper_1_4 ;
linear_constraint_tan_bound_upper_1_4..
	-variable_voltage_product_imaginary_1_4 - 0.0233042173614944*variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_tan_bound_upper_1_5 ;
linear_constraint_tan_bound_upper_1_5..
	-variable_voltage_product_imaginary_1_5 - 0.0233042173614944*variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_tan_bound_upper_2_3 ;
linear_constraint_tan_bound_upper_2_3..
	-variable_voltage_product_imaginary_2_3 - 0.0233042173614944*variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_tan_bound_upper_3_4 ;
linear_constraint_tan_bound_upper_3_4..
	-variable_voltage_product_imaginary_3_4 - 0.0233042173614944*variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_tan_bound_upper_4_5 ;
linear_constraint_tan_bound_upper_4_5..
	-variable_voltage_product_imaginary_4_5 - 0.0233042173614944*variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_generator_switch_lower_1_1 ;
linear_constraint_generator_switch_lower_1_1..
	0.08*variable_generator_switch_1_1 - variable_real_power_gen_1_1 =l= 0
Equation linear_constraint_generator_switch_lower_1_2 ;
linear_constraint_generator_switch_lower_1_2..
	0.34*variable_generator_switch_1_2 - variable_real_power_gen_1_2 =l= 0
Equation linear_constraint_generator_switch_lower_3 ;
linear_constraint_generator_switch_lower_3..
	1.04*variable_generator_switch_3 - variable_real_power_gen_3 =l= 0
Equation linear_constraint_generator_switch_lower_4 ;
linear_constraint_generator_switch_lower_4..
	0.4*variable_generator_switch_4 - variable_real_power_gen_4 =l= 0
Equation linear_constraint_generator_switch_lower_5 ;
linear_constraint_generator_switch_lower_5..
	1.2*variable_generator_switch_5 - variable_real_power_gen_5 =l= 0
Equation linear_constraint_generator_switch_upper_1_1 ;
linear_constraint_generator_switch_upper_1_1..
	0.4*variable_generator_switch_1_1 - variable_real_power_gen_1_1 =g= 0
Equation linear_constraint_generator_switch_upper_1_2 ;
linear_constraint_generator_switch_upper_1_2..
	1.7*variable_generator_switch_1_2 - variable_real_power_gen_1_2 =g= 0
Equation linear_constraint_generator_switch_upper_3 ;
linear_constraint_generator_switch_upper_3..
	5.2*variable_generator_switch_3 - variable_real_power_gen_3 =g= 0
Equation linear_constraint_generator_switch_upper_4 ;
linear_constraint_generator_switch_upper_4..
	2.0*variable_generator_switch_4 - variable_real_power_gen_4 =g= 0
Equation linear_constraint_generator_switch_upper_5 ;
linear_constraint_generator_switch_upper_5..
	6.0*variable_generator_switch_5 - variable_real_power_gen_5 =g= 0
Equation linear_constraint_generator_switch__reactive_lower_1_1 ;
linear_constraint_generator_switch__reactive_lower_1_1..
	-0.3*variable_generator_switch_1_1 - variable_reactive_power_gen_1_1 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_1_2 ;
linear_constraint_generator_switch__reactive_lower_1_2..
	-1.275*variable_generator_switch_1_2 - variable_reactive_power_gen_1_2 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_3 ;
linear_constraint_generator_switch__reactive_lower_3..
	-3.9*variable_generator_switch_3 - variable_reactive_power_gen_3 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_4 ;
linear_constraint_generator_switch__reactive_lower_4..
	-1.5*variable_generator_switch_4 - variable_reactive_power_gen_4 =l= 0
Equation linear_constraint_generator_switch__reactive_lower_5 ;
linear_constraint_generator_switch__reactive_lower_5..
	-4.5*variable_generator_switch_5 - variable_reactive_power_gen_5 =l= 0
Equation linear_constraint_generator_switch_reactive_upper_1_1 ;
linear_constraint_generator_switch_reactive_upper_1_1..
	0.3*variable_generator_switch_1_1 - variable_reactive_power_gen_1_1 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_1_2 ;
linear_constraint_generator_switch_reactive_upper_1_2..
	1.275*variable_generator_switch_1_2 - variable_reactive_power_gen_1_2 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_3 ;
linear_constraint_generator_switch_reactive_upper_3..
	3.9*variable_generator_switch_3 - variable_reactive_power_gen_3 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_4 ;
linear_constraint_generator_switch_reactive_upper_4..
	1.5*variable_generator_switch_4 - variable_reactive_power_gen_4 =g= 0
Equation linear_constraint_generator_switch_reactive_upper_5 ;
linear_constraint_generator_switch_reactive_upper_5..
	4.5*variable_generator_switch_5 - variable_reactive_power_gen_5 =g= 0
Equation linear_constraint_voltage_product_real_lower_1_2 ;
linear_constraint_voltage_product_real_lower_1_2..
	-variable_voltage_product_real_1_2 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_4 ;
linear_constraint_voltage_product_real_lower_1_4..
	-variable_voltage_product_real_1_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_1_5 ;
linear_constraint_voltage_product_real_lower_1_5..
	-variable_voltage_product_real_1_5 =l= 0
Equation linear_constraint_voltage_product_real_lower_2_3 ;
linear_constraint_voltage_product_real_lower_2_3..
	-variable_voltage_product_real_2_3 =l= 0
Equation linear_constraint_voltage_product_real_lower_3_4 ;
linear_constraint_voltage_product_real_lower_3_4..
	-variable_voltage_product_real_3_4 =l= 0
Equation linear_constraint_voltage_product_real_lower_4_5 ;
linear_constraint_voltage_product_real_lower_4_5..
	-variable_voltage_product_real_4_5 =l= 0
Equation linear_constraint_voltage_product_real_upper_1_2 ;
linear_constraint_voltage_product_real_upper_1_2..
	1.21*variable_transmission_switch_1_2 - variable_voltage_product_real_1_2 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_4 ;
linear_constraint_voltage_product_real_upper_1_4..
	1.21*variable_transmission_switch_1_4 - variable_voltage_product_real_1_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_1_5 ;
linear_constraint_voltage_product_real_upper_1_5..
	1.21*variable_transmission_switch_1_5 - variable_voltage_product_real_1_5 =g= 0
Equation linear_constraint_voltage_product_real_upper_2_3 ;
linear_constraint_voltage_product_real_upper_2_3..
	1.21*variable_transmission_switch_2_3 - variable_voltage_product_real_2_3 =g= 0
Equation linear_constraint_voltage_product_real_upper_3_4 ;
linear_constraint_voltage_product_real_upper_3_4..
	1.21*variable_transmission_switch_3_4 - variable_voltage_product_real_3_4 =g= 0
Equation linear_constraint_voltage_product_real_upper_4_5 ;
linear_constraint_voltage_product_real_upper_4_5..
	1.21*variable_transmission_switch_4_5 - variable_voltage_product_real_4_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_2 ;
linear_constraint_voltage_product_imaginary_lower_1_2..
	-1.21*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_4 ;
linear_constraint_voltage_product_imaginary_lower_1_4..
	-1.21*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_1_5 ;
linear_constraint_voltage_product_imaginary_lower_1_5..
	-1.21*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_2_3 ;
linear_constraint_voltage_product_imaginary_lower_2_3..
	-1.21*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_3_4 ;
linear_constraint_voltage_product_imaginary_lower_3_4..
	-1.21*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =l= 0
Equation linear_constraint_voltage_product_imaginary_lower_4_5 ;
linear_constraint_voltage_product_imaginary_lower_4_5..
	-1.21*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =l= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_2 ;
linear_constraint_voltage_product_imaginary_upper_1_2..
	1.21*variable_transmission_switch_1_2 - variable_voltage_product_imaginary_1_2 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_4 ;
linear_constraint_voltage_product_imaginary_upper_1_4..
	1.21*variable_transmission_switch_1_4 - variable_voltage_product_imaginary_1_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_1_5 ;
linear_constraint_voltage_product_imaginary_upper_1_5..
	1.21*variable_transmission_switch_1_5 - variable_voltage_product_imaginary_1_5 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_2_3 ;
linear_constraint_voltage_product_imaginary_upper_2_3..
	1.21*variable_transmission_switch_2_3 - variable_voltage_product_imaginary_2_3 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_3_4 ;
linear_constraint_voltage_product_imaginary_upper_3_4..
	1.21*variable_transmission_switch_3_4 - variable_voltage_product_imaginary_3_4 =g= 0
Equation linear_constraint_voltage_product_imaginary_upper_4_5 ;
linear_constraint_voltage_product_imaginary_upper_4_5..
	1.21*variable_transmission_switch_4_5 - variable_voltage_product_imaginary_4_5 =g= 0
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
Equation linear_constraint_voltage_square_big_m_1_5_1 ;
linear_constraint_voltage_square_big_m_1_5_1..
	-variable_switched_voltage_square_1_5 + 0.81*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_2 ;
linear_constraint_voltage_square_big_m_1_5_2..
	variable_switched_voltage_square_1_5 - 1.21*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_1_5_3 ;
linear_constraint_voltage_square_big_m_1_5_3..
	-variable_switched_voltage_square_1_5 + 1.21*variable_transmission_switch_1_5 + variable_voltage_square_1 =l= 1.21
Equation linear_constraint_voltage_square_big_m_1_5_4 ;
linear_constraint_voltage_square_big_m_1_5_4..
	variable_switched_voltage_square_1_5 - 0.81*variable_transmission_switch_1_5 - variable_voltage_square_1 =l= -0.81
Equation linear_constraint_voltage_square_big_m_5_1_1 ;
linear_constraint_voltage_square_big_m_5_1_1..
	-variable_switched_voltage_square_5_1 + 0.81*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_1_2 ;
linear_constraint_voltage_square_big_m_5_1_2..
	variable_switched_voltage_square_5_1 - 1.21*variable_transmission_switch_1_5 =l= 0
Equation linear_constraint_voltage_square_big_m_5_1_3 ;
linear_constraint_voltage_square_big_m_5_1_3..
	-variable_switched_voltage_square_5_1 + 1.21*variable_transmission_switch_1_5 + variable_voltage_square_5 =l= 1.21
Equation linear_constraint_voltage_square_big_m_5_1_4 ;
linear_constraint_voltage_square_big_m_5_1_4..
	variable_switched_voltage_square_5_1 - 0.81*variable_transmission_switch_1_5 - variable_voltage_square_5 =l= -0.81
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
Equation linear_constraint_curtailment_option_1 ;
linear_constraint_curtailment_option_1..
	(variable_curtailed_feed_in_1 - 2.5*variable_curtailment_binaries_1_1 - 5.0*variable_curtailment_binaries_1_2 - 6.6667*variable_curtailment_binaries_1_3) =e= (0)
Equation linear_constraint_curtailment_option_3 ;
linear_constraint_curtailment_option_3..
	(variable_curtailed_feed_in_3 - 2.5*variable_curtailment_binaries_3_1 - 5.0*variable_curtailment_binaries_3_2 - 6.6667*variable_curtailment_binaries_3_3) =e= (0)
Equation linear_constraint_curtailment_option_5 ;
linear_constraint_curtailment_option_5..
	(variable_curtailed_feed_in_5 - 2.5*variable_curtailment_binaries_5_1 - 5.0*variable_curtailment_binaries_5_2 - 6.6667*variable_curtailment_binaries_5_3) =e= (0)
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
option MINLP = couenne ;
Solve minlp min objval using MINLP ;
