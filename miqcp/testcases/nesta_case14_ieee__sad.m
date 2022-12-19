%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%           Optimal Power Flow - Small Angle Difference            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case14_ieee__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 0.0	 0.0	 0.0	 0.0	 1	    1.06000	   -0.00000	 0.0	 1	    1.06000	    0.94000;
	2	 2	 21.7	 12.7	 0.0	 0.0	 1	    1.04017	   -4.25303	 0.0	 1	    1.06000	    0.94000;
	3	 2	 94.2	 19.0	 0.0	 0.0	 1	    1.00788	  -12.18881	 0.0	 1	    1.06000	    0.94000;
	4	 1	 47.8	 -3.9	 0.0	 0.0	 1	    1.01043	   -9.73410	 0.0	 1	    1.06000	    0.94000;
	5	 1	 7.6	 1.6	 0.0	 0.0	 1	    1.01324	   -8.24923	 0.0	 1	    1.06000	    0.94000;
	6	 2	 11.2	 7.5	 0.0	 0.0	 1	    1.06000	  -13.80994	 0.0	 1	    1.06000	    0.94000;
	7	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.04402	  -12.83516	 0.0	 1	    1.06000	    0.94000;
	8	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.06000	  -12.83516	 0.0	 1	    1.06000	    0.94000;
	9	 1	 29.5	 16.6	 0.0	 19.0	 1	    1.04096	  -14.45372	 0.0	 1	    1.06000	    0.94000;
	10	 1	 9.0	 5.8	 0.0	 0.0	 1	    1.03679	  -14.63018	 0.0	 1	    1.06000	    0.94000;
	11	 1	 3.5	 1.8	 0.0	 0.0	 1	    1.04473	  -14.35082	 0.0	 1	    1.06000	    0.94000;
	12	 1	 6.1	 1.6	 0.0	 0.0	 1	    1.04467	  -14.67869	 0.0	 1	    1.06000	    0.94000;
	13	 1	 13.5	 5.8	 0.0	 0.0	 1	    1.03948	  -14.75038	 0.0	 1	    1.06000	    0.94000;
	14	 1	 14.9	 5.0	 0.0	 0.0	 1	    1.02209	  -15.60843	 0.0	 1	    1.06000	    0.94000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 208.317	 0.0	 10.0	 0.0	 1.06	 100.0	 1	 362.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 63.0	 26.964	 32.0	 -32.0	 1.04017	 100.0	 1	 63.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	3	 0.0	 29.63	 40.0	 0.0	 1.00788	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	6	 0.0	 13.23	 24.0	 -6.0	 1.06	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	8	 0.0	 9.618	 24.0	 -6.0	 1.06	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   1.026133	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.480811	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.01938	 0.05917	 0.0528	 472.0	 472.0	 472.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	1	 5	 0.05403	 0.22304	 0.0492	 128.0	 128.0	 128.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	2	 3	 0.04699	 0.19797	 0.0438	 145.0	 145.0	 145.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	2	 4	 0.05811	 0.17632	 0.034	 158.0	 158.0	 158.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	2	 5	 0.05695	 0.17388	 0.0346	 161.0	 161.0	 161.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	3	 4	 0.06701	 0.17103	 0.0128	 160.0	 160.0	 160.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	4	 5	 0.01335	 0.04211	 0.0	 664.0	 664.0	 664.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	4	 7	 0.0	 0.20912	 0.0	 141.0	 141.0	 141.0	 0.978	 0.0	 1	 -8.508642	 8.508642;
	4	 9	 0.0	 0.55618	 0.0	 53.0	 53.0	 53.0	 0.969	 0.0	 1	 -8.508642	 8.508642;
	5	 6	 0.0	 0.25202	 0.0	 117.0	 117.0	 117.0	 0.932	 0.0	 1	 -8.508642	 8.508642;
	6	 11	 0.09498	 0.1989	 0.0	 134.0	 134.0	 134.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	6	 12	 0.12291	 0.25581	 0.0	 104.0	 104.0	 104.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	6	 13	 0.06615	 0.13027	 0.0	 201.0	 201.0	 201.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	7	 8	 0.0	 0.17615	 0.0	 167.0	 167.0	 167.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	7	 9	 0.0	 0.11001	 0.0	 267.0	 267.0	 267.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	9	 10	 0.03181	 0.0845	 0.0	 325.0	 325.0	 325.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	9	 14	 0.12711	 0.27038	 0.0	 99.0	 99.0	 99.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	10	 11	 0.08205	 0.19207	 0.0	 141.0	 141.0	 141.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	12	 13	 0.22092	 0.19988	 0.0	 99.0	 99.0	 99.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
	13	 14	 0.17093	 0.34802	 0.0	 76.0	 76.0	 76.0	 0.0	 0.0	 1	 -8.508642	 8.508642;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           8.508642 (deg.)
% INFO    : AC OPF Solution File:        ./nesta_case14_ieee__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.06, theta=0.0 -> V=1.06, theta=-0.0
% INFO    : Bus 2	: V=1.04017, theta=-4.25303 -> V=1.04017, theta=-4.25303
% INFO    : Bus 3	: V=1.00788, theta=-12.18881 -> V=1.00788, theta=-12.18881
% INFO    : Bus 4	: V=1.01043, theta=-9.7341 -> V=1.01043, theta=-9.7341
% INFO    : Bus 5	: V=1.01324, theta=-8.24923 -> V=1.01324, theta=-8.24923
% INFO    : Bus 6	: V=1.06, theta=-13.80994 -> V=1.06, theta=-13.80994
% INFO    : Bus 7	: V=1.04402, theta=-12.83516 -> V=1.04402, theta=-12.83516
% INFO    : Bus 8	: V=1.06, theta=-12.83516 -> V=1.06, theta=-12.83516
% INFO    : Bus 9	: V=1.04096, theta=-14.45372 -> V=1.04096, theta=-14.45372
% INFO    : Bus 10	: V=1.03679, theta=-14.63018 -> V=1.03679, theta=-14.63018
% INFO    : Bus 11	: V=1.04473, theta=-14.35082 -> V=1.04473, theta=-14.35082
% INFO    : Bus 12	: V=1.04467, theta=-14.67869 -> V=1.04467, theta=-14.67869
% INFO    : Bus 13	: V=1.03948, theta=-14.75038 -> V=1.03948, theta=-14.75038
% INFO    : Bus 14	: V=1.02209, theta=-15.60843 -> V=1.02209, theta=-15.60843
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=208.317, Qg=0.0 -> Pg=208.317, Qg=0.0
% INFO    : Gen at bus 1	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 2	: Pg=63.0, Qg=26.964 -> Pg=63.0, Qg=26.964
% INFO    : Gen at bus 2	: Vg=1.04017 -> Vg=1.04017
% INFO    : Gen at bus 3	: Pg=0.0, Qg=29.63 -> Pg=0.0, Qg=29.63
% INFO    : Gen at bus 3	: Vg=1.00788 -> Vg=1.00788
% INFO    : Gen at bus 6	: Pg=0.0, Qg=13.23 -> Pg=0.0, Qg=13.23
% INFO    : Gen at bus 6	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 8	: Pg=0.0, Qg=9.618 -> Pg=0.0, Qg=9.618
% INFO    : Gen at bus 8	: Vg=1.06 -> Vg=1.06
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
