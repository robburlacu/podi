%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%           Optimal Power Flow - Small Angle Difference            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case24_ieee_rts__sad
mpc.version = '2';
mpc.baseMVA = 100.0;

%% area data
%	area	refbus
mpc.areas = [
	1	 1;
	2	 3;
	3	 8;
	4	 6;
];

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 2	 108.0	 22.0	 0.0	 0.0	 1	    1.03223	   -8.39860	 138.0	 1	    1.05000	    0.95000;
	2	 2	 97.0	 20.0	 0.0	 0.0	 1	    1.02726	   -8.36215	 138.0	 1	    1.05000	    0.95000;
	3	 1	 180.0	 37.0	 0.0	 0.0	 1	    1.01343	  -10.02133	 138.0	 1	    1.05000	    0.95000;
	4	 1	 74.0	 15.0	 0.0	 0.0	 1	    1.00857	  -11.16980	 138.0	 1	    1.05000	    0.95000;
	5	 1	 71.0	 14.0	 0.0	 0.0	 1	    1.02775	  -11.17020	 138.0	 1	    1.05000	    0.95000;
	6	 1	 136.0	 28.0	 0.0	 -100.0	 2	    1.02754	  -13.59340	 138.0	 1	    1.05000	    0.95000;
	7	 2	 125.0	 25.0	 0.0	 0.0	 2	    1.02889	   -3.74283	 138.0	 1	    1.05000	    0.95000;
	8	 1	 171.0	 35.0	 0.0	 0.0	 2	    1.00378	   -9.66140	 138.0	 1	    1.05000	    0.95000;
	9	 1	 175.0	 36.0	 0.0	 0.0	 1	    1.02662	   -9.39709	 138.0	 1	    1.05000	    0.95000;
	10	 1	 195.0	 40.0	 0.0	 0.0	 2	    1.05000	  -10.82735	 138.0	 1	    1.05000	    0.95000;
	11	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.03253	   -4.72832	 230.0	 1	    1.05000	    0.95000;
	12	 1	 0.0	 0.0	 0.0	 0.0	 3	    1.02646	   -3.52654	 230.0	 1	    1.05000	    0.95000;
	13	 3	 265.0	 54.0	 0.0	 0.0	 3	    1.05000	    0.00000	 230.0	 1	    1.05000	    0.95000;
	14	 2	 194.0	 39.0	 0.0	 0.0	 3	    1.05000	   -3.78652	 230.0	 1	    1.05000	    0.95000;
	15	 2	 317.0	 64.0	 0.0	 0.0	 4	    1.04301	    1.56612	 230.0	 1	    1.05000	    0.95000;
	16	 2	 100.0	 20.0	 0.0	 0.0	 4	    1.04741	    1.24268	 230.0	 1	    1.05000	    0.95000;
	17	 1	 0.0	 0.0	 0.0	 0.0	 4	    1.04882	    5.31327	 230.0	 1	    1.05000	    0.95000;
	18	 2	 333.0	 68.0	 0.0	 0.0	 4	    1.05000	    6.57830	 230.0	 1	    1.05000	    0.95000;
	19	 1	 181.0	 37.0	 0.0	 0.0	 3	    1.04059	    0.83016	 230.0	 1	    1.05000	    0.95000;
	20	 1	 128.0	 26.0	 0.0	 0.0	 3	    1.04439	    2.33075	 230.0	 1	    1.05000	    0.95000;
	21	 2	 0.0	 0.0	 0.0	 0.0	 4	    1.05000	    7.26641	 230.0	 1	    1.05000	    0.95000;
	22	 2	 0.0	 0.0	 0.0	 0.0	 4	    1.05000	   12.69533	 230.0	 1	    1.05000	    0.95000;
	23	 2	 0.0	 0.0	 0.0	 0.0	 3	    1.05000	    3.85552	 230.0	 1	    1.05000	    0.95000;
	24	 1	 0.0	 0.0	 0.0	 0.0	 4	    1.01239	   -2.63927	 230.0	 1	    1.05000	    0.95000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 16.0	 5.2	 10.0	 0.0	 1.03223	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 16.0	 5.2	 10.0	 0.0	 1.03223	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 76.0	 8.26	 30.0	 -25.0	 1.03223	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	1	 76.0	 8.26	 30.0	 -25.0	 1.03223	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 16.0	 0.0	 10.0	 0.0	 1.02726	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 16.0	 0.0	 10.0	 0.0	 1.02726	 100.0	 1	 20.0	 16.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 76.0	 -25.0	 30.0	 -25.0	 1.02726	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	2	 76.0	 -25.0	 30.0	 -25.0	 1.02726	 100.0	 1	 76.0	 15.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	7	 99.977	 9.957	 60.0	 0.0	 1.02889	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	7	 99.977	 9.957	 60.0	 0.0	 1.02889	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	7	 99.977	 9.957	 60.0	 0.0	 1.02889	 100.0	 1	 100.0	 25.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 171.905	 35.415	 80.0	 0.0	 1.05	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 171.905	 35.415	 80.0	 0.0	 1.05	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	13	 171.905	 35.415	 80.0	 0.0	 1.05	 100.0	 1	 197.0	 69.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	14	 0.0	 116.667	 200.0	 -50.0	 1.05	 100.0	 1	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 2.4	 6.0	 6.0	 0.0	 1.04301	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 2.4	 6.0	 6.0	 0.0	 1.04301	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 2.4	 6.0	 6.0	 0.0	 1.04301	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 2.4	 6.0	 6.0	 0.0	 1.04301	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 2.4	 6.0	 6.0	 0.0	 1.04301	 100.0	 1	 12.0	 2.4	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	15	 54.3	 80.0	 80.0	 -50.0	 1.04301	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	16	 54.3	 80.0	 80.0	 -50.0	 1.04741	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	18	 400.0	 63.301	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	21	 393.603	 -15.766	 200.0	 -50.0	 1.05	 100.0	 1	 400.0	 100.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 47.62	 -6.591	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 47.62	 -6.591	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 47.62	 -6.591	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 47.62	 -6.591	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 47.62	 -6.591	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	22	 47.62	 -6.591	 16.0	 -10.0	 1.05	 100.0	 1	 50.0	 10.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	23	 120.997	 -8.988	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	23	 120.997	 -8.988	 80.0	 -50.0	 1.05	 100.0	 1	 155.0	 54.3	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
	23	 261.238	 22.627	 150.0	 -25.0	 1.05	 100.0	 1	 350.0	 140.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0;
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.000000	 130.000000	 400.684900;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.014142	  16.081100	 212.307600;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.052672	  43.661500	 781.521000;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.007170	  48.580400	 832.757500;
	2	 1500.0	 0.0	 3	   0.000000	   0.000000	   0.000000;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.328412	  56.564000	  86.385200;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000213	   4.423100	 395.374900;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.000000	   0.001000	   0.001000;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.008342	  12.388300	 382.239100;
	2	 1500.0	 0.0	 3	   0.004895	  11.849500	 665.109400;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0026	 0.0139	 0.4611	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	1	 3	 0.0546	 0.2112	 0.0572	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	1	 5	 0.0218	 0.0845	 0.0229	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	2	 4	 0.0328	 0.1267	 0.0343	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	2	 6	 0.0497	 0.192	 0.052	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	3	 9	 0.0308	 0.119	 0.0322	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	3	 24	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.382059	 7.382059;
	4	 9	 0.0268	 0.1037	 0.0281	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	5	 10	 0.0228	 0.0883	 0.0239	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	6	 10	 0.0139	 0.0605	 2.459	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	7	 8	 0.0159	 0.0614	 0.0166	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	8	 9	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	8	 10	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	9	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.382059	 7.382059;
	9	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -7.382059	 7.382059;
	10	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -7.382059	 7.382059;
	10	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -7.382059	 7.382059;
	11	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	11	 14	 0.0054	 0.0418	 0.0879	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	12	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	12	 23	 0.0124	 0.0966	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	13	 23	 0.0111	 0.0865	 0.1818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	14	 16	 0.005	 0.0389	 0.0818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 16	 0.0022	 0.0173	 0.0364	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	15	 24	 0.0067	 0.0519	 0.1091	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	16	 17	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	16	 19	 0.003	 0.0231	 0.0485	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	17	 18	 0.0018	 0.0144	 0.0303	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	17	 22	 0.0135	 0.1053	 0.2212	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
	21	 22	 0.0087	 0.0678	 0.1424	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -7.382059	 7.382059;
];

% INFO    : === Translation Options ===
% INFO    : Phase Angle Bound:           7.382059 (deg.)
% INFO    : AC OPF Solution File:        ./nesta_case24_ieee_rts__sad.m.opf.sol
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.04723, theta=-6.75543 -> V=1.03223, theta=-8.3986
% INFO    : Bus 2	: V=1.04721, theta=-6.83108 -> V=1.02726, theta=-8.36215
% INFO    : Bus 3	: V=1.01378, theta=-6.18747 -> V=1.01343, theta=-10.02133
% INFO    : Bus 4	: V=1.01625, theta=-9.57433 -> V=1.00857, theta=-11.1698
% INFO    : Bus 5	: V=1.03543, theta=-9.73755 -> V=1.02775, theta=-11.1702
% INFO    : Bus 6	: V=1.03241, theta=-12.31055 -> V=1.02754, theta=-13.5934
% INFO    : Bus 7	: V=1.036, theta=-9.87656 -> V=1.02889, theta=-3.74283
% INFO    : Bus 8	: V=1.00896, theta=-12.55316 -> V=1.00378, theta=-9.6614
% INFO    : Bus 9	: V=1.02393, theta=-7.81824 -> V=1.02662, theta=-9.39709
% INFO    : Bus 10	: V=1.05, theta=-9.67832 -> V=1.05, theta=-10.82735
% INFO    : Bus 11	: V=1.02263, theta=-2.61309 -> V=1.03253, theta=-4.72832
% INFO    : Bus 12	: V=1.01727, theta=-1.87607 -> V=1.02646, theta=-3.52654
% INFO    : Bus 13	: V=1.03348, theta=0.0 -> V=1.05, theta=0.0
% INFO    : Bus 14	: V=1.03987, theta=1.01244 -> V=1.05, theta=-3.78652
% INFO    : Bus 15	: V=1.04106, theta=9.32436 -> V=1.04301, theta=1.56612
% INFO    : Bus 16	: V=1.04428, theta=8.54258 -> V=1.04741, theta=1.24268
% INFO    : Bus 17	: V=1.04756, theta=12.89163 -> V=1.04882, theta=5.31327
% INFO    : Bus 18	: V=1.05, theta=14.24704 -> V=1.05, theta=6.5783
% INFO    : Bus 19	: V=1.03895, theta=7.49316 -> V=1.04059, theta=0.83016
% INFO    : Bus 20	: V=1.04397, theta=8.4523 -> V=1.04439, theta=2.33075
% INFO    : Bus 21	: V=1.05, theta=15.02296 -> V=1.05, theta=7.26641
% INFO    : Bus 22	: V=1.05, theta=20.69119 -> V=1.05, theta=12.69533
% INFO    : Bus 23	: V=1.05, theta=9.68377 -> V=1.05, theta=3.85552
% INFO    : Bus 24	: V=1.00585, theta=3.66828 -> V=1.01239, theta=-2.63927
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=16.0, Qg=4.862 -> Pg=16.0, Qg=5.2
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.03223
% INFO    : Gen at bus 1	: Pg=16.0, Qg=4.862 -> Pg=16.0, Qg=5.2
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.03223
% INFO    : Gen at bus 1	: Pg=76.0, Qg=-1.576 -> Pg=76.0, Qg=8.26
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.03223
% INFO    : Gen at bus 1	: Pg=76.0, Qg=-1.576 -> Pg=76.0, Qg=8.26
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.03223
% INFO    : Gen at bus 2	: Pg=16.0, Qg=4.814 -> Pg=16.0, Qg=0.0
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.02726
% INFO    : Gen at bus 2	: Pg=16.0, Qg=4.814 -> Pg=16.0, Qg=0.0
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.02726
% INFO    : Gen at bus 2	: Pg=76.0, Qg=-2.923 -> Pg=76.0, Qg=-25.0
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.02726
% INFO    : Gen at bus 2	: Pg=76.0, Qg=-2.923 -> Pg=76.0, Qg=-25.0
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.02726
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=99.977, Qg=9.957
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.02889
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=99.977, Qg=9.957
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.02889
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=99.977, Qg=9.957
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.02889
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=171.905, Qg=35.415
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.05
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=171.905, Qg=35.415
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.05
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=171.905, Qg=35.415
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.05
% INFO    : Gen at bus 14	: Pg=0.0, Qg=114.908 -> Pg=0.0, Qg=116.667
% INFO    : Gen at bus 14	: Vg=1.03987 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=2.4, Qg=6.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.04301
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=2.4, Qg=6.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.04301
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=2.4, Qg=6.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.04301
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=2.4, Qg=6.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.04301
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=2.4, Qg=6.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.04301
% INFO    : Gen at bus 15	: Pg=155.0, Qg=80.0 -> Pg=54.3, Qg=80.0
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.04301
% INFO    : Gen at bus 16	: Pg=155.0, Qg=80.0 -> Pg=54.3, Qg=80.0
% INFO    : Gen at bus 16	: Vg=1.04428 -> Vg=1.04741
% INFO    : Gen at bus 18	: Pg=400.0, Qg=72.898 -> Pg=400.0, Qg=63.301
% INFO    : Gen at bus 18	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 21	: Pg=400.0, Qg=-7.458 -> Pg=393.603, Qg=-15.766
% INFO    : Gen at bus 21	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=47.62, Qg=-6.591
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=47.62, Qg=-6.591
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=47.62, Qg=-6.591
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=47.62, Qg=-6.591
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=47.62, Qg=-6.591
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=47.62, Qg=-6.591
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 23	: Pg=155.0, Qg=2.548 -> Pg=120.997, Qg=-8.988
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 23	: Pg=155.0, Qg=2.548 -> Pg=120.997, Qg=-8.988
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 23	: Pg=350.0, Qg=40.548 -> Pg=261.238, Qg=22.627
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.05
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===