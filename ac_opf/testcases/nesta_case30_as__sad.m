%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%           Optimal Power Flow - Small Angle Difference            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case30_as__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% area data
%	area	refbus
mpc.areas = [
	1	 1;
];

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 0.0	 0.0	 0.0	 0.0	 1	    1.05000	    0.00000	 135.0	 1	    1.05000	    0.95000;
	2	 2	 21.7	 12.7	 0.0	 0.0	 1	    1.04961	   -2.57729	 135.0	 1	    1.10000	    0.95000;
	3	 1	 2.4	 1.2	 0.0	 0.0	 1	    1.02540	   -3.45789	 135.0	 1	    1.05000	    0.95000;
	4	 1	 7.6	 1.6	 0.0	 0.0	 1	    1.01971	   -4.12742	 135.0	 1	    1.05000	    0.95000;
	5	 1	 94.2	 19.0	 0.0	 0.0	 1	    0.97471	   -6.07702	 135.0	 1	    1.05000	    0.95000;
	6	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00610	   -4.59796	 135.0	 1	    1.05000	    0.95000;
	7	 1	 22.8	 10.9	 0.0	 0.0	 1	    0.98471	   -5.76091	 135.0	 1	    1.05000	    0.95000;
	8	 1	 30.0	 30.0	 0.0	 0.0	 1	    0.99283	   -4.34594	 135.0	 1	    1.05000	    0.95000;
	9	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.02345	   -5.14916	 135.0	 1	    1.05000	    0.95000;
	10	 1	 5.8	 2.0	 0.0	 5.26	 1	    1.02022	   -7.24791	 135.0	 1	    1.05000	    0.95000;
	11	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.05000	   -1.82029	 135.0	 1	    1.05000	    0.95000;
	12	 1	 11.2	 7.5	 0.0	 0.0	 1	    1.05000	   -6.63570	 135.0	 1	    1.05000	    0.95000;
	13	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.09763	   -4.60809	 135.0	 1	    1.10000	    0.95000;
	14	 1	 6.2	 1.6	 0.0	 0.0	 1	    1.03519	   -7.61596	 135.0	 1	    1.05000	    0.95000;
	15	 1	 8.2	 2.5	 0.0	 0.0	 1	    1.03017	   -7.78785	 135.0	 1	    1.05000	    0.95000;
	16	 1	 3.5	 1.8	 0.0	 0.0	 1	    1.03013	   -7.16172	 135.0	 1	    1.05000	    0.95000;
	17	 1	 9.0	 5.8	 0.0	 0.0	 1	    1.01777	   -7.43430	 135.0	 1	    1.05000	    0.95000;
	18	 1	 3.2	 0.9	 0.0	 0.0	 1	    1.01436	   -8.31217	 135.0	 1	    1.05000	    0.95000;
	19	 1	 9.5	 3.4	 0.0	 0.0	 1	    1.00816	   -8.42808	 135.0	 1	    1.05000	    0.95000;
	20	 1	 2.2	 0.7	 0.0	 0.0	 1	    1.01039	   -8.19031	 135.0	 1	    1.05000	    0.95000;
	21	 1	 17.5	 11.2	 0.0	 0.0	 1	    1.01348	   -7.89875	 135.0	 1	    1.05000	    0.95000;
	22	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.01588	   -7.94665	 135.0	 1	    1.10000	    0.95000;
	23	 2	 3.2	 1.6	 0.0	 0.0	 1	    1.02528	   -8.58343	 135.0	 1	    1.10000	    0.95000;
	24	 1	 8.7	 6.7	 0.0	 25.0	 1	    1.02741	   -9.29377	 135.0	 1	    1.05000	    0.95000;
	25	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00522	   -8.93152	 135.0	 1	    1.05000	    0.95000;
	26	 1	 3.5	 2.3	 0.0	 0.0	 1	    0.98733	   -9.36154	 135.0	 1	    1.05000	    0.95000;
	27	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00013	   -8.45599	 135.0	 1	    1.10000	    0.95000;
	28	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00124	   -4.95626	 135.0	 1	    1.05000	    0.95000;
	29	 1	 2.4	 0.9	 0.0	 0.0	 1	    0.97978	   -9.74470	 135.0	 1	    1.05000	    0.95000;
	30	 1	 10.6	 1.9	 0.0	 0.0	 1	    0.96801	  -10.67114	 135.0	 1	    1.05000	    0.95000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 114.888	 -20.0	 250.0	 -20.0	 1.05	 100.0	 1	 200.0	 50.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 30.809	 95.382	 100.0	 -20.0	 1.04961	 100.0	 1	 80.0	 20.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	5	 49.499	 -15.0	 80.0	 -15.0	 0.97471	 100.0	 1	 50.0	 15.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	8	 35.0	 -8.323	 60.0	 -15.0	 0.99283	 100.0	 1	 35.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	11	 30.0	 14.276	 50.0	 -10.0	 1.05	 100.0	 1	 30.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 29.127	 37.862	 60.0	 -15.0	 1.09763	 100.0	 1	 40.0	 12.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.003750	   2.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.017500	   1.750000	   0.000000;
	2	 0.0	 0.0	 3	   0.062500	   1.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.008340	   3.250000	   0.000000;
	2	 0.0	 0.0	 3	   0.025000	   3.000000	   0.000000;
	2	 0.0	 0.0	 3	   0.025000	   3.000000	   0.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0192	 0.0575	 0.0264	 130.0	 130.0	 130.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	1	 3	 0.0452	 0.1852	 0.0204	 130.0	 130.0	 130.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	2	 4	 0.057	 0.1737	 0.0184	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	3	 4	 0.0132	 0.0379	 0.0042	 130.0	 130.0	 130.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	2	 5	 0.0472	 0.1983	 0.0209	 130.0	 130.0	 130.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	2	 6	 0.0581	 0.1763	 0.0187	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	4	 6	 0.0119	 0.0414	 0.0045	 90.0	 90.0	 90.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	5	 7	 0.046	 0.116	 0.0102	 70.0	 70.0	 70.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	6	 7	 0.0267	 0.082	 0.0085	 130.0	 130.0	 130.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	6	 8	 0.012	 0.042	 0.0045	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	6	 9	 0.0	 0.208	 0.0	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	6	 10	 0.0	 0.556	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	9	 11	 0.0	 0.208	 0.0	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	9	 10	 0.0	 0.11	 0.0	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	4	 12	 0.0	 0.256	 0.0	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	12	 13	 0.0	 0.14	 0.0	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	12	 14	 0.1231	 0.2559	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	12	 15	 0.0662	 0.1304	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	12	 16	 0.0945	 0.1987	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	14	 15	 0.221	 0.1997	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	16	 17	 0.0824	 0.1932	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	15	 18	 0.107	 0.2185	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	18	 19	 0.0639	 0.1292	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	19	 20	 0.034	 0.068	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	10	 20	 0.0936	 0.209	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	10	 17	 0.0324	 0.0845	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	10	 21	 0.0348	 0.0749	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	10	 22	 0.0727	 0.1499	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	21	 22	 0.0116	 0.0236	 0.0	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	15	 23	 0.1	 0.202	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	22	 24	 0.115	 0.179	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	23	 24	 0.132	 0.27	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	24	 25	 0.1885	 0.3292	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	25	 26	 0.2544	 0.38	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	25	 27	 0.1093	 0.2087	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	28	 27	 0.0	 0.396	 0.0	 65.0	 65.0	 65.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	27	 29	 0.2198	 0.4153	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	27	 30	 0.3202	 0.6027	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	29	 30	 0.2399	 0.4533	 0.0	 16.0	 16.0	 16.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	8	 28	 0.0636	 0.2	 0.0214	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
	6	 28	 0.0169	 0.0599	 0.0065	 32.0	 32.0	 32.0	 0.0	 0.0	 1	 -3.49973	 3.49973;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           3.49973 (deg.)
% INFO    : AC OPF Solution File:        ./nesta_case30_as__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.05, theta=-0.0 -> V=1.05, theta=0.0
% INFO    : Bus 2	: V=1.03852, theta=-3.69896 -> V=1.04961, theta=-2.57729
% INFO    : Bus 3	: V=1.02752, theta=-5.74184 -> V=1.0254, theta=-3.45789
% INFO    : Bus 4	: V=1.02228, theta=-6.90597 -> V=1.01971, theta=-4.12742
% INFO    : Bus 5	: V=1.01205, theta=-10.49663 -> V=0.97471, theta=-6.07702
% INFO    : Bus 6	: V=1.01893, theta=-8.03889 -> V=1.0061, theta=-4.59796
% INFO    : Bus 7	: V=1.00791, theta=-9.56342 -> V=0.98471, theta=-5.76091
% INFO    : Bus 8	: V=1.02094, theta=-8.32762 -> V=0.99283, theta=-4.34594
% INFO    : Bus 9	: V=1.02683, theta=-10.17984 -> V=1.02345, theta=-5.14916
% INFO    : Bus 10	: V=1.01983, theta=-12.04949 -> V=1.02022, theta=-7.24791
% INFO    : Bus 11	: V=1.05, theta=-8.82366 -> V=1.05, theta=-1.82029
% INFO    : Bus 12	: V=1.03249, theta=-11.35278 -> V=1.05, theta=-6.6357
% INFO    : Bus 13	: V=1.06068, theta=-10.47381 -> V=1.09763, theta=-4.60809
% INFO    : Bus 14	: V=1.01983, theta=-12.33186 -> V=1.03519, theta=-7.61596
% INFO    : Bus 15	: V=1.01725, theta=-12.52883 -> V=1.03017, theta=-7.78785
% INFO    : Bus 16	: V=1.01978, theta=-11.93358 -> V=1.03013, theta=-7.16172
% INFO    : Bus 17	: V=1.01436, theta=-12.23291 -> V=1.01777, theta=-7.4343
% INFO    : Bus 18	: V=1.00575, theta=-13.08596 -> V=1.01436, theta=-8.31217
% INFO    : Bus 19	: V=1.00214, theta=-13.21715 -> V=1.00816, theta=-8.42808
% INFO    : Bus 20	: V=1.00577, theta=-12.98437 -> V=1.01039, theta=-8.19031
% INFO    : Bus 21	: V=1.01291, theta=-12.66616 -> V=1.01348, theta=-7.89875
% INFO    : Bus 22	: V=1.01527, theta=-12.70293 -> V=1.01588, theta=-7.94665
% INFO    : Bus 23	: V=1.01744, theta=-13.27418 -> V=1.02528, theta=-8.58343
% INFO    : Bus 24	: V=1.02634, theta=-13.90091 -> V=1.02741, theta=-9.29377
% INFO    : Bus 25	: V=1.01185, theta=-13.19644 -> V=1.00522, theta=-8.93152
% INFO    : Bus 26	: V=0.99407, theta=-13.62075 -> V=0.98733, theta=-9.36154
% INFO    : Bus 27	: V=1.01139, theta=-12.50249 -> V=1.00013, theta=-8.45599
% INFO    : Bus 28	: V=1.01678, theta=-8.55577 -> V=1.00124, theta=-4.95626
% INFO    : Bus 29	: V=0.9913, theta=-13.76204 -> V=0.97978, theta=-9.7447
% INFO    : Bus 30	: V=0.97967, theta=-14.66682 -> V=0.96801, theta=-10.67114
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=176.173, Qg=-15.56 -> Pg=114.888, Qg=-20.0
% INFO    : Gen at bus 1	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 2	: Pg=48.863, Qg=30.287 -> Pg=30.809, Qg=95.382
% INFO    : Gen at bus 2	: Vg=1.03852 -> Vg=1.04961
% INFO    : Gen at bus 5	: Pg=21.525, Qg=30.405 -> Pg=49.499, Qg=-15.0
% INFO    : Gen at bus 5	: Vg=1.01205 -> Vg=0.97471
% INFO    : Gen at bus 8	: Pg=22.253, Qg=37.836 -> Pg=35.0, Qg=-8.323
% INFO    : Gen at bus 8	: Vg=1.02094 -> Vg=0.99283
% INFO    : Gen at bus 11	: Pg=12.268, Qg=11.841 -> Pg=30.0, Qg=14.276
% INFO    : Gen at bus 11	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 13	: Pg=12.0, Qg=21.45 -> Pg=29.127, Qg=37.862
% INFO    : Gen at bus 13	: Vg=1.06068 -> Vg=1.09763
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
