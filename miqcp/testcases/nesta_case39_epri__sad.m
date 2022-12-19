%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%           Optimal Power Flow - Small Angle Difference            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case39_epri__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 1	 97.6	 44.2	 0.0	 0.0	 2	    1.02029	   -6.70366	 345.0	 1	    1.06000	    0.94000;
	2	 1	 0.0	 0.0	 0.0	 0.0	 2	    1.05085	   -3.38719	 345.0	 1	    1.06000	    0.94000;
	3	 1	 322.0	 2.4	 0.0	 0.0	 2	    1.04234	   -6.81257	 345.0	 1	    1.06000	    0.94000;
	4	 1	 500.0	 184.0	 0.0	 0.0	 1	    1.03271	   -8.25036	 345.0	 1	    1.06000	    0.94000;
	5	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.04143	   -7.44263	 345.0	 1	    1.06000	    0.94000;
	6	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.04595	   -6.87397	 345.0	 1	    1.06000	    0.94000;
	7	 1	 233.8	 84.0	 0.0	 0.0	 1	    1.03184	   -8.81118	 345.0	 1	    1.06000	    0.94000;
	8	 1	 522.0	 176.6	 0.0	 0.0	 1	    1.02891	   -9.22440	 345.0	 1	    1.06000	    0.94000;
	9	 1	 6.5	 -66.6	 0.0	 0.0	 1	    1.03218	   -8.30354	 345.0	 1	    1.06000	    0.94000;
	10	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.05828	   -4.67144	 345.0	 1	    1.06000	    0.94000;
	11	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.05289	   -5.41858	 345.0	 1	    1.06000	    0.94000;
	12	 1	 8.53	 88.0	 0.0	 0.0	 1	    1.04031	   -5.38969	 345.0	 1	    1.06000	    0.94000;
	13	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.05249	   -5.23959	 345.0	 1	    1.06000	    0.94000;
	14	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.04240	   -6.56812	 345.0	 1	    1.06000	    0.94000;
	15	 1	 320.0	 153.0	 0.0	 0.0	 3	    1.03213	   -6.63392	 345.0	 1	    1.06000	    0.94000;
	16	 1	 329.0	 32.3	 0.0	 0.0	 3	    1.04216	   -5.11656	 345.0	 1	    1.06000	    0.94000;
	17	 1	 0.0	 0.0	 0.0	 0.0	 2	    1.04411	   -5.93740	 345.0	 1	    1.06000	    0.94000;
	18	 1	 158.0	 30.0	 0.0	 0.0	 2	    1.04217	   -6.69059	 345.0	 1	    1.06000	    0.94000;
	19	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.04768	   -0.26729	 345.0	 1	    1.06000	    0.94000;
	20	 1	 680.0	 103.0	 0.0	 0.0	 3	    0.98335	   -1.67661	 345.0	 1	    1.06000	    0.94000;
	21	 1	 274.0	 115.0	 0.0	 0.0	 3	    1.04169	   -2.83546	 345.0	 1	    1.06000	    0.94000;
	22	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.05877	    1.45267	 345.0	 1	    1.06000	    0.94000;
	23	 1	 247.5	 84.6	 0.0	 0.0	 3	    1.05174	    1.02417	 345.0	 1	    1.06000	    0.94000;
	24	 1	 308.6	 -92.2	 0.0	 0.0	 3	    1.04731	   -5.05864	 345.0	 1	    1.06000	    0.94000;
	25	 1	 224.0	 47.2	 0.0	 0.0	 2	    1.06000	   -2.15446	 345.0	 1	    1.06000	    0.94000;
	26	 1	 139.0	 17.0	 0.0	 0.0	 2	    1.06000	   -3.80671	 345.0	 1	    1.06000	    0.94000;
	27	 1	 281.0	 75.5	 0.0	 0.0	 2	    1.04688	   -5.91981	 345.0	 1	    1.06000	    0.94000;
	28	 1	 206.0	 27.6	 0.0	 0.0	 3	    1.05985	   -0.43403	 345.0	 1	    1.06000	    0.94000;
	29	 1	 283.5	 26.9	 0.0	 0.0	 3	    1.06000	    2.24887	 345.0	 1	    1.06000	    0.94000;
	30	 2	 0.0	 0.0	 0.0	 0.0	 2	    1.04739	    0.21096	 345.0	 1	    1.06000	    0.94000;
	31	 3	 9.2	 4.6	 0.0	 0.0	 1	    1.04141	    0.00000	 345.0	 1	    1.06000	    0.94000;
	32	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.03965	    2.20252	 345.0	 1	    1.06000	    0.94000;
	33	 2	 0.0	 0.0	 0.0	 0.0	 3	    0.99164	    5.16875	 345.0	 1	    1.06000	    0.94000;
	34	 2	 0.0	 0.0	 0.0	 0.0	 3	    0.99800	    3.64987	 345.0	 1	    1.06000	    0.94000;
	35	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.06000	    6.60042	 345.0	 1	    1.06000	    0.94000;
	36	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.06000	    7.89814	 345.0	 1	    1.06000	    0.94000;
	37	 2	 0.0	 0.0	 0.0	 0.0	 2	    1.02991	    4.71951	 345.0	 1	    1.06000	    0.94000;
	38	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.03662	    9.12283	 345.0	 1	    1.06000	    0.94000;
	39	 2	 1104.0	 250.0	 0.0	 0.0	 1	    0.99790	   -7.47319	 345.0	 1	    1.06000	    0.94000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	30	 372.323	 140.0	 400.0	 140.0	 1.04739	 100.0	 1	 1040.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	31	 496.558	 300.0	 300.0	 -100.0	 1.04141	 100.0	 1	 646.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	32	 615.339	 300.0	 300.0	 150.0	 1.03965	 100.0	 1	 725.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	33	 652.0	 85.858	 250.0	 0.0	 0.99164	 100.0	 1	 652.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	34	 508.0	 127.755	 167.0	 0.0	 0.998	 100.0	 1	 508.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	35	 687.0	 231.445	 300.0	 -100.0	 1.06	 100.0	 1	 687.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	36	 491.522	 52.621	 240.0	 0.0	 1.06	 100.0	 1	 580.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	37	 549.462	 0.0	 250.0	 0.0	 1.02991	 100.0	 1	 564.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	38	 823.683	 23.62	 300.0	 -150.0	 1.03662	 100.0	 1	 865.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	39	 1100.0	 -72.35	 300.0	 -100.0	 0.9979	 100.0	 1	 1100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.010500	  15.370000	 240.000000;
	2	 0.0	 0.0	 3	   0.009000	  11.290000	 200.000000;
	2	 0.0	 0.0	 3	   0.009000	   8.800000	 220.000000;
	2	 0.0	 0.0	 3	   0.009500	   8.000000	 250.000000;
	2	 0.0	 0.0	 3	   0.008500	  11.400000	 220.000000;
	2	 0.0	 0.0	 3	   0.007500	  10.450000	 190.000000;
	2	 0.0	 0.0	 3	   0.009000	  10.030000	 200.000000;
	2	 0.0	 0.0	 3	   0.009000	  10.150000	 210.000000;
	2	 0.0	 0.0	 3	   0.007000	   7.980000	 230.000000;
	2	 0.0	 0.0	 3	   0.006000	   8.000000	 220.000000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0035	 0.0411	 0.6987	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	1	 39	 0.001	 0.025	 0.75	 1000.0	 1000.0	 1000.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	2	 3	 0.0013	 0.0151	 0.2572	 500.0	 500.0	 500.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	2	 25	 0.007	 0.0086	 0.146	 500.0	 500.0	 500.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	2	 30	 0.0	 0.0181	 0.0	 900.0	 900.0	 2500.0	 1.025	 0.0	 1	 -6.873967	 6.873967;
	3	 4	 0.0013	 0.0213	 0.2214	 500.0	 500.0	 500.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	3	 18	 0.0011	 0.0133	 0.2138	 500.0	 500.0	 500.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	4	 5	 0.0008	 0.0128	 0.1342	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	4	 14	 0.0008	 0.0129	 0.1382	 500.0	 500.0	 500.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	5	 6	 0.0002	 0.0026	 0.0434	 1200.0	 1200.0	 1200.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	5	 8	 0.0008	 0.0112	 0.1476	 900.0	 900.0	 900.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	6	 7	 0.0006	 0.0092	 0.113	 900.0	 900.0	 900.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	6	 11	 0.0007	 0.0082	 0.1389	 480.0	 480.0	 480.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	6	 31	 0.0	 0.025	 0.0	 1800.0	 1800.0	 1800.0	 1.07	 0.0	 1	 -6.873967	 6.873967;
	7	 8	 0.0004	 0.0046	 0.078	 900.0	 900.0	 900.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	8	 9	 0.0023	 0.0363	 0.3804	 900.0	 900.0	 900.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	9	 39	 0.001	 0.025	 1.2	 900.0	 900.0	 900.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	10	 11	 0.0004	 0.0043	 0.0729	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	10	 13	 0.0004	 0.0043	 0.0729	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	10	 32	 0.0	 0.02	 0.0	 900.0	 900.0	 2500.0	 1.07	 0.0	 1	 -6.873967	 6.873967;
	12	 11	 0.0016	 0.0435	 0.0	 500.0	 500.0	 500.0	 1.006	 0.0	 1	 -6.873967	 6.873967;
	12	 13	 0.0016	 0.0435	 0.0	 500.0	 500.0	 500.0	 1.006	 0.0	 1	 -6.873967	 6.873967;
	13	 14	 0.0009	 0.0101	 0.1723	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	14	 15	 0.0018	 0.0217	 0.366	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	15	 16	 0.0009	 0.0094	 0.171	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	16	 17	 0.0007	 0.0089	 0.1342	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	16	 19	 0.0016	 0.0195	 0.304	 600.0	 600.0	 2500.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	16	 21	 0.0008	 0.0135	 0.2548	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	16	 24	 0.0003	 0.0059	 0.068	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	17	 18	 0.0007	 0.0082	 0.1319	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	17	 27	 0.0013	 0.0173	 0.3216	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	19	 20	 0.0007	 0.0138	 0.0	 900.0	 900.0	 2500.0	 1.06	 0.0	 1	 -6.873967	 6.873967;
	19	 33	 0.0007	 0.0142	 0.0	 900.0	 900.0	 2500.0	 1.07	 0.0	 1	 -6.873967	 6.873967;
	20	 34	 0.0009	 0.018	 0.0	 900.0	 900.0	 2500.0	 1.009	 0.0	 1	 -6.873967	 6.873967;
	21	 22	 0.0008	 0.014	 0.2565	 900.0	 900.0	 900.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	22	 23	 0.0006	 0.0096	 0.1846	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	22	 35	 0.0	 0.0143	 0.0	 900.0	 900.0	 2500.0	 1.025	 0.0	 1	 -6.873967	 6.873967;
	23	 24	 0.0022	 0.035	 0.361	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	23	 36	 0.0005	 0.0272	 0.0	 900.0	 900.0	 2500.0	 1.0	 0.0	 1	 -6.873967	 6.873967;
	25	 26	 0.0032	 0.0323	 0.531	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	25	 37	 0.0006	 0.0232	 0.0	 900.0	 900.0	 2500.0	 1.025	 0.0	 1	 -6.873967	 6.873967;
	26	 27	 0.0014	 0.0147	 0.2396	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	26	 28	 0.0043	 0.0474	 0.7802	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	26	 29	 0.0057	 0.0625	 1.029	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	28	 29	 0.0014	 0.0151	 0.249	 600.0	 600.0	 600.0	 0.0	 0.0	 1	 -6.873967	 6.873967;
	29	 38	 0.0008	 0.0156	 0.0	 1200.0	 1200.0	 2500.0	 1.025	 0.0	 1	 -6.873967	 6.873967;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           6.873967 (deg.)
% INFO    : AC OPF Solution File:        ./nesta_case39_epri__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.02106, theta=-8.57979 -> V=1.02029, theta=-6.70366
% INFO    : Bus 2	: V=1.04906, theta=-5.41045 -> V=1.05085, theta=-3.38719
% INFO    : Bus 3	: V=1.03886, theta=-8.24051 -> V=1.04234, theta=-6.81257
% INFO    : Bus 4	: V=1.02281, theta=-9.16485 -> V=1.03271, theta=-8.25036
% INFO    : Bus 5	: V=1.02894, theta=-8.1638 -> V=1.04143, theta=-7.44263
% INFO    : Bus 6	: V=1.0328, theta=-7.52826 -> V=1.04595, theta=-6.87397
% INFO    : Bus 7	: V=1.0196, theta=-9.59603 -> V=1.03184, theta=-8.81118
% INFO    : Bus 8	: V=1.01722, theta=-10.06161 -> V=1.02891, theta=-9.2244
% INFO    : Bus 9	: V=1.02865, theta=-9.69153 -> V=1.03218, theta=-8.30354
% INFO    : Bus 10	: V=1.0416, theta=-5.12279 -> V=1.05828, theta=-4.67144
% INFO    : Bus 11	: V=1.03738, theta=-5.94177 -> V=1.05289, theta=-5.41858
% INFO    : Bus 12	: V=1.02467, theta=-5.92136 -> V=1.04031, theta=-5.38969
% INFO    : Bus 13	: V=1.03747, theta=-5.77611 -> V=1.05249, theta=-5.23959
% INFO    : Bus 14	: V=1.03156, theta=-7.30027 -> V=1.0424, theta=-6.56812
% INFO    : Bus 15	: V=1.02925, theta=-7.46573 -> V=1.03213, theta=-6.63392
% INFO    : Bus 16	: V=1.04276, theta=-5.98988 -> V=1.04216, theta=-5.11656
% INFO    : Bus 17	: V=1.04353, theta=-7.0227 -> V=1.04411, theta=-5.9374
% INFO    : Bus 18	: V=1.04045, theta=-7.90692 -> V=1.04217, theta=-6.69059
% INFO    : Bus 19	: V=1.06, theta=-1.3472 -> V=1.04768, theta=-0.26729
% INFO    : Bus 20	: V=0.99765, theta=-2.72741 -> V=0.98335, theta=-1.67661
% INFO    : Bus 21	: V=1.04163, theta=-3.54132 -> V=1.04169, theta=-2.83546
% INFO    : Bus 22	: V=1.0584, theta=0.92111 -> V=1.05877, theta=1.45267
% INFO    : Bus 23	: V=1.05102, theta=0.73891 -> V=1.05174, theta=1.02417
% INFO    : Bus 24	: V=1.04756, theta=-5.84768 -> V=1.04731, theta=-5.05864
% INFO    : Bus 25	: V=1.06, theta=-4.02571 -> V=1.06, theta=-2.15446
% INFO    : Bus 26	: V=1.05983, theta=-5.14581 -> V=1.06, theta=-3.80671
% INFO    : Bus 27	: V=1.04658, theta=-7.14352 -> V=1.04688, theta=-5.91981
% INFO    : Bus 28	: V=1.0597, theta=-1.56636 -> V=1.05985, theta=-0.43403
% INFO    : Bus 29	: V=1.06, theta=1.18239 -> V=1.06, theta=2.24887
% INFO    : Bus 30	: V=1.04671, theta=-2.90692 -> V=1.04739, theta=0.21096
% INFO    : Bus 31	: V=1.0287, theta=0.0 -> V=1.04141, theta=0.0
% INFO    : Bus 32	: V=1.01075, theta=2.57794 -> V=1.03965, theta=2.20252
% INFO    : Bus 33	: V=1.00896, theta=3.83858 -> V=0.99164, theta=5.16875
% INFO    : Bus 34	: V=1.0151, theta=2.42458 -> V=0.998, theta=3.64987
% INFO    : Bus 35	: V=1.06, theta=5.8757 -> V=1.06, theta=6.60042
% INFO    : Bus 36	: V=1.06, theta=8.70177 -> V=1.06, theta=7.89814
% INFO    : Bus 37	: V=1.02992, theta=2.84196 -> V=1.02991, theta=4.71951
% INFO    : Bus 38	: V=1.03722, theta=8.19516 -> V=1.03662, theta=9.12283
% INFO    : Bus 39	: V=1.0, theta=-9.24794 -> V=0.9979, theta=-7.47319
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 30	: Pg=258.533, Qg=140.0 -> Pg=372.323, Qg=140.0
% INFO    : Gen at bus 30	: Vg=1.04671 -> Vg=1.04739
% INFO    : Gen at bus 31	: Pg=529.559, Qg=300.0 -> Pg=496.558, Qg=300.0
% INFO    : Gen at bus 31	: Vg=1.0287 -> Vg=1.04141
% INFO    : Gen at bus 32	: Pg=659.218, Qg=232.834 -> Pg=615.339, Qg=300.0
% INFO    : Gen at bus 32	: Vg=1.01075 -> Vg=1.03965
% INFO    : Gen at bus 33	: Pg=642.492, Qg=127.223 -> Pg=652.0, Qg=85.858
% INFO    : Gen at bus 33	: Vg=1.00896 -> Vg=0.99164
% INFO    : Gen at bus 34	: Pg=508.0, Qg=145.731 -> Pg=508.0, Qg=127.755
% INFO    : Gen at bus 34	: Vg=1.0151 -> Vg=0.998
% INFO    : Gen at bus 35	: Pg=661.059, Qg=231.802 -> Pg=687.0, Qg=231.445
% INFO    : Gen at bus 35	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 36	: Pg=568.586, Qg=64.03 -> Pg=491.522, Qg=52.621
% INFO    : Gen at bus 36	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 37	: Pg=548.967, Qg=0.0 -> Pg=549.462, Qg=0.0
% INFO    : Gen at bus 37	: Vg=1.02992 -> Vg=1.02991
% INFO    : Gen at bus 38	: Pg=840.956, Qg=28.761 -> Pg=823.683, Qg=23.62
% INFO    : Gen at bus 38	: Vg=1.03722 -> Vg=1.03662
% INFO    : Gen at bus 39	: Pg=1080.329, Qg=-44.972 -> Pg=1100.0, Qg=-72.35
% INFO    : Gen at bus 39	: Vg=1.0 -> Vg=0.9979
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===