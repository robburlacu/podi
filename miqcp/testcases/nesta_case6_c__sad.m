%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%           Optimal Power Flow - Small Angle Difference            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case6_c__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 25.0	 10.0	 0.0	 0.0	 1	    1.10000	    0.00000	 230.0	 1	    1.10000	    0.90000;
	2	 2	 15.0	 5.0	 0.0	 0.0	 1	    1.07055	   -0.52506	 230.0	 1	    1.10000	    0.90000;
	3	 1	 27.5	 11.0	 0.0	 0.0	 1	    1.06852	   -0.83031	 230.0	 1	    1.10000	    0.90000;
	4	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.07552	   -1.05982	 230.0	 1	    1.10000	    0.90000;
	5	 1	 15.0	 9.0	 0.0	 0.0	 1	    1.05528	   -2.29617	 230.0	 1	    1.10000	    0.90000;
	6	 1	 25.0	 15.0	 0.0	 0.0	 1	    1.06308	   -2.08498	 230.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 56.339	 35.899	 100.0	 -100.0	 1.1	 100.0	 1	 949.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 51.56	 9.64	 27.0	 -27.0	 1.07055	 100.0	 1	 53.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   0.211822	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.241315	   0.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 4	 0.02	 0.185	 0.009	 170.0	 100.0	 100.0	 0.0	 0.0	 1	 -2.084977	 2.084977;
	1	 6	 0.031	 0.259	 0.01	 122.0	 100.0	 100.0	 0.0	 0.0	 1	 -2.084977	 2.084977;
	2	 3	 0.006	 0.025	 0.0	 281.0	 100.0	 100.0	 0.0	 0.0	 1	 -2.084977	 2.084977;
	2	 5	 0.071	 0.32	 0.015	 97.0	 97.0	 97.0	 0.0	 0.0	 1	 -2.084977	 2.084977;
	4	 6	 0.024	 0.204	 0.01	 154.0	 100.0	 100.0	 0.0	 0.0	 1	 -2.084977	 2.084977;
	3	 4	 0.075	 0.067	 0.0	 135.0	 100.0	 100.0	 0.0	 0.0	 1	 -2.084977	 2.084977;
	5	 6	 0.025	 0.15	 0.017	 208.0	 100.0	 100.0	 0.0	 0.0	 1	 -2.084977	 2.084977;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           2.084977 (deg.)
% INFO    : AC OPF Solution File:        ./nesta_case6_c__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.1, theta=0.0 -> V=1.1, theta=0.0
% INFO    : Bus 2	: V=1.06319, theta=-6.04206 -> V=1.07055, theta=-0.52506
% INFO    : Bus 3	: V=1.05965, theta=-5.81219 -> V=1.06852, theta=-0.83031
% INFO    : Bus 4	: V=1.08467, theta=-4.16443 -> V=1.07552, theta=-1.05982
% INFO    : Bus 5	: V=1.05541, theta=-5.71987 -> V=1.05528, theta=-2.29617
% INFO    : Bus 6	: V=1.06571, theta=-4.52694 -> V=1.06308, theta=-2.08498
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=109.555, Qg=26.076 -> Pg=56.339, Qg=35.899
% INFO    : Gen at bus 1	: Vg=1.1 -> Vg=1.1
% INFO    : Gen at bus 2	: Pg=0.0, Qg=25.419 -> Pg=51.56, Qg=9.64
% INFO    : Gen at bus 2	: Vg=1.06319 -> Vg=1.07055
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
