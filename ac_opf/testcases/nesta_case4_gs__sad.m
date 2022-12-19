%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%           Optimal Power Flow - Small Angle Difference            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case4_gs__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 50.0	 30.99	 0.0	 0.0	 1	    1.10000	    0.00000	 230.0	 1	    1.10000	    0.90000;
	2	 1	 170.0	 105.35	 0.0	 0.0	 1	    1.07116	   -1.72436	 230.0	 1	    1.10000	    0.90000;
	3	 1	 200.0	 123.94	 0.0	 0.0	 1	    1.06400	   -2.13890	 230.0	 1	    1.10000	    0.90000;
	4	 2	 80.0	 49.58	 0.0	 0.0	 1	    1.09541	   -0.25925	 230.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	4	 239.863	 132.819	 150.0	 -150.0	 1.09541	 100.0	 1	 419.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 263.753	 150.0	 150.0	 -150.0	 1.1	 100.0	 1	 1220.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   1.074863	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.219975	   0.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.01008	 0.0504	 0.1025	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -2.138901	 2.138901;
	1	 3	 0.00744	 0.0372	 0.0775	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -2.138901	 2.138901;
	2	 4	 0.00744	 0.0372	 0.0775	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -2.138901	 2.138901;
	3	 4	 0.01272	 0.0636	 0.1275	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -2.138901	 2.138901;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           2.138901 (deg.)
% INFO    : AC OPF Solution File:        ./nesta_case4_gs__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.1, theta=0.0 -> V=1.1, theta=0.0
% INFO    : Bus 2	: V=1.06448, theta=-4.26217 -> V=1.07116, theta=-1.72436
% INFO    : Bus 3	: V=1.05939, theta=-3.76655 -> V=1.064, theta=-2.1389
% INFO    : Bus 4	: V=1.08567, theta=-4.66233 -> V=1.09541, theta=-0.25925
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 4	: Pg=52.531, Qg=150.0 -> Pg=239.863, Qg=132.819
% INFO    : Gen at bus 4	: Vg=1.08567 -> Vg=1.09541
% INFO    : Gen at bus 1	: Pg=454.432, Qg=150.0 -> Pg=263.753, Qg=150.0
% INFO    : Gen at bus 1	: Vg=1.1 -> Vg=1.1
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
