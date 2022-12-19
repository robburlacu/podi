%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%            Optimal Power Flow - Active Power Increase            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case24_ieee_rts__api
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
	1	 2	 207.30	 22.00	 0.0	 0.0	 1	    1.04533	  -19.50391	 138.0	 1	    1.05000	    0.95000;
	2	 2	 186.19	 20.00	 0.0	 0.0	 1	    1.05000	  -18.24931	 138.0	 1	    1.05000	    0.95000;
	3	 1	 345.50	 37.00	 0.0	 0.0	 1	    0.95254	  -24.34752	 138.0	 1	    1.05000	    0.95000;
	4	 1	 142.04	 15.00	 0.0	 0.0	 1	    0.96636	  -26.68111	 138.0	 1	    1.05000	    0.95000;
	5	 1	 136.28	 14.00	 0.0	 0.0	 1	    0.98661	  -26.88244	 138.0	 1	    1.05000	    0.95000;
	6	 1	 261.05	 28.00	 0.0	 -100.0	 2	    0.95000	  -32.91900	 138.0	 1	    1.05000	    0.95000;
	7	 2	 239.93	 25.00	 0.0	 0.0	 2	    1.05000	  -39.77161	 138.0	 1	    1.05000	    0.95000;
	8	 1	 328.23	 35.00	 0.0	 0.0	 2	    0.95954	  -41.16298	 138.0	 1	    1.05000	    0.95000;
	9	 1	 335.91	 36.00	 0.0	 0.0	 1	    0.95988	  -25.30534	 138.0	 1	    1.05000	    0.95000;
	10	 1	 374.29	 40.00	 0.0	 0.0	 2	    0.97648	  -28.11591	 138.0	 1	    1.05000	    0.95000;
	11	 1	 0.00	 0.00	 0.0	 0.0	 3	    0.97066	  -12.66484	 230.0	 1	    1.05000	    0.95000;
	12	 1	 0.00	 0.00	 0.0	 0.0	 3	    0.96791	  -11.53703	 230.0	 1	    1.05000	    0.95000;
	13	 3	 508.66	 54.00	 0.0	 0.0	 3	    1.03864	    0.00000	 230.0	 1	    1.05000	    0.95000;
	14	 2	 372.37	 39.00	 0.0	 0.0	 3	    1.00725	  -11.28215	 230.0	 1	    1.05000	    0.95000;
	15	 2	 608.47	 64.00	 0.0	 0.0	 4	    1.05000	    1.25743	 230.0	 1	    1.05000	    0.95000;
	16	 2	 191.95	 20.00	 0.0	 0.0	 4	    1.00896	   -1.34361	 230.0	 1	    1.05000	    0.95000;
	17	 1	 0.00	 0.00	 0.0	 0.0	 4	    1.02148	   -0.16522	 230.0	 1	    1.05000	    0.95000;
	18	 2	 639.18	 68.00	 0.0	 0.0	 4	    1.02401	   -0.66940	 230.0	 1	    1.05000	    0.95000;
	19	 1	 347.42	 37.00	 0.0	 0.0	 3	    1.01367	   -5.60067	 230.0	 1	    1.05000	    0.95000;
	20	 1	 245.69	 26.00	 0.0	 0.0	 3	    1.03397	   -5.43289	 230.0	 1	    1.05000	    0.95000;
	21	 2	 0.00	 0.00	 0.0	 0.0	 4	    1.03604	    1.11523	 230.0	 1	    1.05000	    0.95000;
	22	 2	 0.00	 0.00	 0.0	 0.0	 4	    1.05000	    8.18104	 230.0	 1	    1.05000	    0.95000;
	23	 2	 0.00	 0.00	 0.0	 0.0	 3	    1.05000	   -3.95355	 230.0	 1	    1.05000	    0.95000;
	24	 1	 0.00	 0.00	 0.0	 0.0	 4	    0.97065	   -7.55027	 230.0	 1	    1.05000	    0.95000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 73.0	 7.356	 37.0	 -37.0	 1.04533	 100.0	 1	 73	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	1	 122.0	 18.833	 61.0	 -61.0	 1.04533	 100.0	 1	 122	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	1	 7.6	 22.325	 67.0	 -67.0	 1.04533	 100.0	 1	 133	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	1	 47.477	 17.718	 59.0	 -59.0	 1.04533	 100.0	 1	 117	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	2	 29.01	 25.952	 233.0	 -233.0	 1.05	 100.0	 1	 466	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 8.0	 3.574	 86.0	 -86.0	 1.05	 100.0	 1	 171	 8.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	2	 585.0	 40.75	 293.0	 -293.0	 1.05	 100.0	 1	 585	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	2	 7.6	 4.001	 91.0	 -91.0	 1.05	 100.0	 1	 181	 7.6	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	7	 12.5	 37.254	 109.0	 -109.0	 1.05	 100.0	 1	 218	 12.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	7	 289.926	 107.883	 205.0	 -205.0	 1.05	 100.0	 1	 410	 12.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	7	 12.501	 14.698	 66.0	 -66.0	 1.05	 100.0	 1	 131	 12.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	13	 354.82	 53.735	 288.0	 -288.0	 1.03864	 100.0	 1	 575	 34.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	13	 1126.0	 188.821	 563.0	 -563.0	 1.03864	 100.0	 1	 1126	 34.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	13	 34.5	 48.105	 272.0	 -272.0	 1.03864	 100.0	 1	 543	 34.5	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	14	 0.0	 201.862	 250.8	 -250.8	 1.00725	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	15	 1.2	 39.699	 94.8	 -94.8	 1.05	 100.0	 1	 171	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	15	 143.0	 39.699	 94.8	 -94.8	 1.05	 100.0	 1	 143	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	15	 315.0	 90.171	 158.0	 -158.0	 1.05	 100.0	 1	 315	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	15	 1.2	 39.699	 94.8	 -94.8	 1.05	 100.0	 1	 172	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	15	 335.0	 98.848	 168.0	 -168.0	 1.05	 100.0	 1	 335	 1.2	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	15	 456.0	 153.026	 228.0	 -228.0	 1.05	 100.0	 1	 456	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	16	 574.0	 -287.0	 287.0	 -287.0	 1.00896	 100.0	 1	 574	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	18	 316.0	 28.787	 200.0	 -158.0	 1.02401	 100.0	 1	 316	 50.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	21	 50.0	 1.396	 200.0	 -141.6	 1.03604	 100.0	 1	 269	 50.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 5.0	 1.026	 58.0	 -58.0	 1.05	 100.0	 1	 115	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 85.0	 0.564	 43.0	 -43.0	 1.05	 100.0	 1	 85	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 5.0	 1.41	 68.0	 -68.0	 1.05	 100.0	 1	 135	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 5.0	 0.923	 55.0	 -55.0	 1.05	 100.0	 1	 109	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % PEL
	22	 80.0	 0.488	 40.0	 -40.0	 1.05	 100.0	 1	 80	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	22	 168.845	 3.823	 112.0	 -112.0	 1.05	 100.0	 1	 224	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	23	 27.15	 84.459	 185.0	 -185.0	 1.05	 100.0	 1	 370	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	23	 244.0	 41.129	 122.0	 -122.0	 1.05	 100.0	 1	 244	 27.15	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	23	 70.0	 78.472	 177.0	 -177.0	 1.05	 100.0	 1	 353	 70.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 1500.0	 0.0	 3	   0.000000	   6.647751	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   6.219813	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   7.358006	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   7.349334	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   1.105532	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   6.610238	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   0.973207	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   7.119281	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   0.876700	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.718776	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.719416	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.656781	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.622836	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   1.104077	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 1500.0	 0.0	 3	   0.000000	   6.543459	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   1.048022	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.734774	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   7.209866	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   0.989379	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.020578	   0.000000; % COW
	2	 1500.0	 0.0	 3	   0.000000	   0.993749	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.055880	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.304062	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.455688	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.950415	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.185803	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   7.449273	   0.000000; % PEL
	2	 1500.0	 0.0	 3	   0.000000	   1.054805	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.140347	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.064903	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   0.769840	   0.000000; % NG
	2	 1500.0	 0.0	 3	   0.000000	   1.138411	   0.000000; % NG
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0026	 0.0139	 0.4611	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 3	 0.0546	 0.2112	 0.0572	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 5	 0.0218	 0.0845	 0.0229	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 4	 0.0328	 0.1267	 0.0343	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 6	 0.0497	 0.192	 0.052	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 9	 0.0308	 0.119	 0.0322	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 24	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -30.0	 30.0;
	4	 9	 0.0268	 0.1037	 0.0281	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5	 10	 0.0228	 0.0883	 0.0239	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 10	 0.0139	 0.0605	 2.459	 175.0	 193.0	 200.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 8	 0.0159	 0.0614	 0.0166	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 9	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 10	 0.0427	 0.1651	 0.0447	 175.0	 208.0	 220.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -30.0	 30.0;
	9	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.03	 0.0	 1	 -30.0	 30.0;
	10	 11	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -30.0	 30.0;
	10	 12	 0.0023	 0.0839	 0.0	 400.0	 510.0	 600.0	 1.02	 0.0	 1	 -30.0	 30.0;
	11	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	11	 14	 0.0054	 0.0418	 0.0879	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 13	 0.0061	 0.0476	 0.0999	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 23	 0.0124	 0.0966	 0.203	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	13	 23	 0.0111	 0.0865	 0.1818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	14	 16	 0.005	 0.0389	 0.0818	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 16	 0.0022	 0.0173	 0.0364	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 21	 0.0063	 0.049	 0.103	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 24	 0.0067	 0.0519	 0.1091	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	16	 17	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	16	 19	 0.003	 0.0231	 0.0485	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	17	 18	 0.0018	 0.0144	 0.0303	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	17	 22	 0.0135	 0.1053	 0.2212	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	18	 21	 0.0033	 0.0259	 0.0545	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	19	 20	 0.0051	 0.0396	 0.0833	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	20	 23	 0.0028	 0.0216	 0.0455	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
	21	 22	 0.0087	 0.0678	 0.1424	 500.0	 600.0	 625.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./nesta_case24_ieee_rts.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=108.0, Qd=22.0 -> Pd=207.30, Qd=22.00
% INFO    : Bus 2	: Pd=97.0, Qd=20.0 -> Pd=186.19, Qd=20.00
% INFO    : Bus 3	: Pd=180.0, Qd=37.0 -> Pd=345.50, Qd=37.00
% INFO    : Bus 4	: Pd=74.0, Qd=15.0 -> Pd=142.04, Qd=15.00
% INFO    : Bus 5	: Pd=71.0, Qd=14.0 -> Pd=136.28, Qd=14.00
% INFO    : Bus 6	: Pd=136.0, Qd=28.0 -> Pd=261.05, Qd=28.00
% INFO    : Bus 7	: Pd=125.0, Qd=25.0 -> Pd=239.93, Qd=25.00
% INFO    : Bus 8	: Pd=171.0, Qd=35.0 -> Pd=328.23, Qd=35.00
% INFO    : Bus 9	: Pd=175.0, Qd=36.0 -> Pd=335.91, Qd=36.00
% INFO    : Bus 10	: Pd=195.0, Qd=40.0 -> Pd=374.29, Qd=40.00
% INFO    : Bus 11	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 12	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 13	: Pd=265.0, Qd=54.0 -> Pd=508.66, Qd=54.00
% INFO    : Bus 14	: Pd=194.0, Qd=39.0 -> Pd=372.37, Qd=39.00
% INFO    : Bus 15	: Pd=317.0, Qd=64.0 -> Pd=608.47, Qd=64.00
% INFO    : Bus 16	: Pd=100.0, Qd=20.0 -> Pd=191.95, Qd=20.00
% INFO    : Bus 17	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 18	: Pd=333.0, Qd=68.0 -> Pd=639.18, Qd=68.00
% INFO    : Bus 19	: Pd=181.0, Qd=37.0 -> Pd=347.42, Qd=37.00
% INFO    : Bus 20	: Pd=128.0, Qd=26.0 -> Pd=245.69, Qd=26.00
% INFO    : Bus 21	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 22	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 23	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 24	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=16.0, Qg=4.862 -> Pg=73.0, Qg=1.0
% INFO    : Gen at bus 1	: Pg=16.0, Qg=4.862 -> Pg=73.0, Qg=1.0
% INFO    : Gen at bus 1	: Pg=76.0, Qg=-1.576 -> Pg=72.0, Qg=1.0
% INFO    : Gen at bus 1	: Pg=76.0, Qg=-1.576 -> Pg=72.0, Qg=1.0
% INFO    : Gen at bus 2	: Pg=16.0, Qg=4.814 -> Pg=157.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=16.0, Qg=4.814 -> Pg=157.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=76.0, Qg=-2.923 -> Pg=156.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=76.0, Qg=-2.923 -> Pg=156.0, Qg=31.0
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=126.0, Qg=42.0
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=126.0, Qg=42.0
% INFO    : Gen at bus 7	: Pg=70.343, Qg=16.438 -> Pg=126.0, Qg=42.0
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=410.0, Qg=105.0
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=410.0, Qg=105.0
% INFO    : Gen at bus 13	: Pg=78.579, Qg=32.592 -> Pg=410.0, Qg=105.0
% INFO    : Gen at bus 14	: Pg=0.0, Qg=114.908 -> Pg=0.0, Qg=209.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=2.4, Qg=6.0 -> Pg=132.0, Qg=79.0
% INFO    : Gen at bus 15	: Pg=155.0, Qg=80.0 -> Pg=184.0, Qg=79.0
% INFO    : Gen at bus 16	: Pg=155.0, Qg=80.0 -> Pg=521.0, Qg=-31.0
% INFO    : Gen at bus 18	: Pg=400.0, Qg=72.898 -> Pg=302.0, Qg=32.0
% INFO    : Gen at bus 21	: Pg=400.0, Qg=-7.458 -> Pg=203.0, Qg=-118.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 22	: Pg=50.0, Qg=-6.413 -> Pg=68.0, Qg=-9.0
% INFO    : Gen at bus 23	: Pg=155.0, Qg=2.548 -> Pg=237.0, Qg=15.0
% INFO    : Gen at bus 23	: Pg=155.0, Qg=2.548 -> Pg=237.0, Qg=15.0
% INFO    : Gen at bus 23	: Pg=350.0, Qg=40.548 -> Pg=323.0, Qg=15.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 1	: Qg 1.0, Qmin 0.0, Qmax 10.0 -> Qmin -1.2, Qmax 10.0
% INFO    : Gen at bus 1	: Qg 1.0, Qmin 0.0, Qmax 10.0 -> Qmin -1.2, Qmax 10.0
% INFO    : Gen at bus 2	: Qg 31.0, Qmin 0.0, Qmax 10.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 31.0, Qmin 0.0, Qmax 10.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 31.0, Qmin -25.0, Qmax 30.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 31.0, Qmin -25.0, Qmax 30.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 7	: Qg 42.0, Qmin 0.0, Qmax 60.0 -> Qmin -50.4, Qmax 60.0
% INFO    : Gen at bus 7	: Qg 42.0, Qmin 0.0, Qmax 60.0 -> Qmin -50.4, Qmax 60.0
% INFO    : Gen at bus 7	: Qg 42.0, Qmin 0.0, Qmax 60.0 -> Qmin -50.4, Qmax 60.0
% INFO    : Gen at bus 13	: Qg 105.0, Qmin 0.0, Qmax 80.0 -> Qmin -126.0, Qmax 126.0
% INFO    : Gen at bus 13	: Qg 105.0, Qmin 0.0, Qmax 80.0 -> Qmin -126.0, Qmax 126.0
% INFO    : Gen at bus 13	: Qg 105.0, Qmin 0.0, Qmax 80.0 -> Qmin -126.0, Qmax 126.0
% INFO    : Gen at bus 14	: Qg 209.0, Qmin -50.0, Qmax 200.0 -> Qmin -250.8, Qmax 250.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin 0.0, Qmax 6.0 -> Qmin -94.8, Qmax 94.8
% INFO    : Gen at bus 15	: Qg 79.0, Qmin -50.0, Qmax 80.0 -> Qmin -94.8, Qmax 80.0
% INFO    : Gen at bus 21	: Qg -118.0, Qmin -50.0, Qmax 200.0 -> Qmin -141.6, Qmax 200.0
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : PEL    9   -    16.70
% INFO    : SYNC   1   -     0.00
% INFO    : COW    7   -    27.47
% INFO    : NG     16  -    55.83
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - PEL	: Pg=73.0, Pmax=20.0 -> Pmax=73   samples: 5
% INFO    : Gen at bus 1 - PEL	: Pg=73.0, Pmax=20.0 -> Pmax=122   samples: 5
% INFO    : Gen at bus 1 - PEL	: Pg=72.0, Pmax=76.0 -> Pmax=133   samples: 11
% INFO    : Gen at bus 1 - PEL	: Pg=72.0, Pmax=76.0 -> Pmax=117   samples: 6
% INFO    : Gen at bus 2 - NG	: Pg=157.0, Pmax=20.0 -> Pmax=466   samples: 2
% INFO    : Gen at bus 2 - PEL	: Pg=157.0, Pmax=20.0 -> Pmax=171   samples: 54
% INFO    : Gen at bus 2 - COW	: Pg=156.0, Pmax=76.0 -> Pmax=585   samples: 2
% WARNING : Failed to find a generator capacity within (156.0-780.0) after 100 samples, using percent increase model
% INFO    : Gen at bus 2 - PEL	: Pg=156.0, Pmax=76.0 -> Pmax=181   samples: 100
% INFO    : Gen at bus 7 - COW	: Pg=126.0, Pmax=100.0 -> Pmax=218   samples: 1
% INFO    : Gen at bus 7 - COW	: Pg=126.0, Pmax=100.0 -> Pmax=410   samples: 2
% INFO    : Gen at bus 7 - COW	: Pg=126.0, Pmax=100.0 -> Pmax=131   samples: 2
% INFO    : Gen at bus 13 - COW	: Pg=410.0, Pmax=197.0 -> Pmax=575   samples: 5
% INFO    : Gen at bus 13 - COW	: Pg=410.0, Pmax=197.0 -> Pmax=1126   samples: 2
% INFO    : Gen at bus 13 - NG	: Pg=410.0, Pmax=197.0 -> Pmax=543   samples: 4
% INFO    : Gen at bus 14 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 15 - PEL	: Pg=132.0, Pmax=12.0 -> Pmax=171   samples: 35
% INFO    : Gen at bus 15 - NG	: Pg=132.0, Pmax=12.0 -> Pmax=143   samples: 5
% INFO    : Gen at bus 15 - NG	: Pg=132.0, Pmax=12.0 -> Pmax=315   samples: 6
% INFO    : Gen at bus 15 - PEL	: Pg=132.0, Pmax=12.0 -> Pmax=172   samples: 47
% INFO    : Gen at bus 15 - NG	: Pg=132.0, Pmax=12.0 -> Pmax=335   samples: 7
% INFO    : Gen at bus 15 - COW	: Pg=184.0, Pmax=155.0 -> Pmax=456   samples: 1
% INFO    : Gen at bus 16 - NG	: Pg=521.0, Pmax=155.0 -> Pmax=574   samples: 49
% INFO    : Gen at bus 18 - NG	: Pg=302.0, Pmax=400.0 -> Pmax=316   samples: 6
% INFO    : Gen at bus 21 - NG	: Pg=203.0, Pmax=400.0 -> Pmax=269   samples: 5
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=115   samples: 2
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=85   samples: 3
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=135   samples: 1
% INFO    : Gen at bus 22 - PEL	: Pg=68.0, Pmax=50.0 -> Pmax=109   samples: 2
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=80   samples: 1
% INFO    : Gen at bus 22 - NG	: Pg=68.0, Pmax=50.0 -> Pmax=224   samples: 5
% INFO    : Gen at bus 23 - NG	: Pg=237.0, Pmax=155.0 -> Pmax=370   samples: 18
% INFO    : Gen at bus 23 - NG	: Pg=237.0, Pmax=155.0 -> Pmax=244   samples: 1
% INFO    : Gen at bus 23 - NG	: Pg=323.0, Pmax=350.0 -> Pmax=353   samples: 22
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : Gen at bus 1	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 1	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 1	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 1	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 2	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 2	: Pmin=16.0 -> Pmin=8.0 
% INFO    : Gen at bus 2	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 2	: Pmin=15.2 -> Pmin=7.6 
% INFO    : Gen at bus 7	: Pmin=25.0 -> Pmin=12.5 
% INFO    : Gen at bus 7	: Pmin=25.0 -> Pmin=12.5 
% INFO    : Gen at bus 7	: Pmin=25.0 -> Pmin=12.5 
% INFO    : Gen at bus 13	: Pmin=69.0 -> Pmin=34.5 
% INFO    : Gen at bus 13	: Pmin=69.0 -> Pmin=34.5 
% INFO    : Gen at bus 13	: Pmin=69.0 -> Pmin=34.5 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=2.4 -> Pmin=1.2 
% INFO    : Gen at bus 15	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 16	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 18	: Pmin=100.0 -> Pmin=50.0 
% INFO    : Gen at bus 21	: Pmin=100.0 -> Pmin=50.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 22	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 23	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 23	: Pmin=54.3 -> Pmin=27.15 
% INFO    : Gen at bus 23	: Pmin=140.0 -> Pmin=70.0 
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 1 - PEL	: Pmax 73.0, Qmin -1.2, Qmax 10.0 -> Qmin -37.0, Qmax 37.0
% INFO    : Gen at bus 1 - PEL	: Pmax 122.0, Qmin -1.2, Qmax 10.0 -> Qmin -61.0, Qmax 61.0
% INFO    : Gen at bus 1 - PEL	: Pmax 133.0, Qmin -25.0, Qmax 30.0 -> Qmin -67.0, Qmax 67.0
% INFO    : Gen at bus 1 - PEL	: Pmax 117.0, Qmin -25.0, Qmax 30.0 -> Qmin -59.0, Qmax 59.0
% INFO    : Gen at bus 2 - NG	: Pmax 466.0, Qmin -37.2, Qmax 37.2 -> Qmin -233.0, Qmax 233.0
% INFO    : Gen at bus 2 - PEL	: Pmax 171.0, Qmin -37.2, Qmax 37.2 -> Qmin -86.0, Qmax 86.0
% INFO    : Gen at bus 2 - COW	: Pmax 585.0, Qmin -37.2, Qmax 37.2 -> Qmin -293.0, Qmax 293.0
% INFO    : Gen at bus 2 - PEL	: Pmax 181.0, Qmin -37.2, Qmax 37.2 -> Qmin -91.0, Qmax 91.0
% INFO    : Gen at bus 7 - COW	: Pmax 218.0, Qmin -50.4, Qmax 60.0 -> Qmin -109.0, Qmax 109.0
% INFO    : Gen at bus 7 - COW	: Pmax 410.0, Qmin -50.4, Qmax 60.0 -> Qmin -205.0, Qmax 205.0
% INFO    : Gen at bus 7 - COW	: Pmax 131.0, Qmin -50.4, Qmax 60.0 -> Qmin -66.0, Qmax 66.0
% INFO    : Gen at bus 13 - COW	: Pmax 575.0, Qmin -126.0, Qmax 126.0 -> Qmin -288.0, Qmax 288.0
% INFO    : Gen at bus 13 - COW	: Pmax 1126.0, Qmin -126.0, Qmax 126.0 -> Qmin -563.0, Qmax 563.0
% INFO    : Gen at bus 13 - NG	: Pmax 543.0, Qmin -126.0, Qmax 126.0 -> Qmin -272.0, Qmax 272.0
% INFO    : Gen at bus 15 - NG	: Pmax 315.0, Qmin -94.8, Qmax 94.8 -> Qmin -158.0, Qmax 158.0
% INFO    : Gen at bus 15 - NG	: Pmax 335.0, Qmin -94.8, Qmax 94.8 -> Qmin -168.0, Qmax 168.0
% INFO    : Gen at bus 15 - COW	: Pmax 456.0, Qmin -94.8, Qmax 80.0 -> Qmin -228.0, Qmax 228.0
% INFO    : Gen at bus 16 - NG	: Pmax 574.0, Qmin -50.0, Qmax 80.0 -> Qmin -287.0, Qmax 287.0
% INFO    : Gen at bus 18 - NG	: Pmax 316.0, Qmin -50.0, Qmax 200.0 -> Qmin -158.0, Qmax 200.0
% INFO    : Gen at bus 22 - NG	: Pmax 115.0, Qmin -10.0, Qmax 16.0 -> Qmin -58.0, Qmax 58.0
% INFO    : Gen at bus 22 - NG	: Pmax 85.0, Qmin -10.0, Qmax 16.0 -> Qmin -43.0, Qmax 43.0
% INFO    : Gen at bus 22 - NG	: Pmax 135.0, Qmin -10.0, Qmax 16.0 -> Qmin -68.0, Qmax 68.0
% INFO    : Gen at bus 22 - PEL	: Pmax 109.0, Qmin -10.0, Qmax 16.0 -> Qmin -55.0, Qmax 55.0
% INFO    : Gen at bus 22 - NG	: Pmax 80.0, Qmin -10.0, Qmax 16.0 -> Qmin -40.0, Qmax 40.0
% INFO    : Gen at bus 22 - NG	: Pmax 224.0, Qmin -10.0, Qmax 16.0 -> Qmin -112.0, Qmax 112.0
% INFO    : Gen at bus 23 - NG	: Pmax 370.0, Qmin -50.0, Qmax 80.0 -> Qmin -185.0, Qmax 185.0
% INFO    : Gen at bus 23 - NG	: Pmax 244.0, Qmin -50.0, Qmax 80.0 -> Qmin -122.0, Qmax 122.0
% INFO    : Gen at bus 23 - NG	: Pmax 353.0, Qmin -25.0, Qmax 150.0 -> Qmin -177.0, Qmax 177.0
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: PEL - 400.6849 130.0 0.0 -> 0 6.64775067853 0
% INFO    : Updated Generator Cost: PEL - 400.6849 130.0 0.0 -> 0 6.2198125368 0
% INFO    : Updated Generator Cost: PEL - 212.3076 16.0811 0.014142 -> 0 7.3580061635 0
% INFO    : Updated Generator Cost: PEL - 212.3076 16.0811 0.014142 -> 0 7.34933403902 0
% INFO    : Updated Generator Cost: NG - 400.6849 130.0 0.0 -> 0 1.10553208554 0
% INFO    : Updated Generator Cost: PEL - 400.6849 130.0 0.0 -> 0 6.61023801304 0
% INFO    : Updated Generator Cost: COW - 212.3076 16.0811 0.014142 -> 0 0.973206958281 0
% INFO    : Updated Generator Cost: PEL - 212.3076 16.0811 0.014142 -> 0 7.11928051959 0
% INFO    : Updated Generator Cost: COW - 781.521 43.6615 0.052672 -> 0 0.876699859385 0
% INFO    : Updated Generator Cost: COW - 781.521 43.6615 0.052672 -> 0 0.718776232894 0
% INFO    : Updated Generator Cost: COW - 781.521 43.6615 0.052672 -> 0 0.719415792127 0
% INFO    : Updated Generator Cost: COW - 832.7575 48.5804 0.00717 -> 0 0.656781292032 0
% INFO    : Updated Generator Cost: COW - 832.7575 48.5804 0.00717 -> 0 0.622835741096 0
% INFO    : Updated Generator Cost: NG - 832.7575 48.5804 0.00717 -> 0 1.10407651675 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : Updated Generator Cost: PEL - 86.3852 56.564 0.328412 -> 0 6.54345853408 0
% INFO    : Updated Generator Cost: NG - 86.3852 56.564 0.328412 -> 0 1.0480222293 0
% INFO    : Updated Generator Cost: NG - 86.3852 56.564 0.328412 -> 0 0.734774483894 0
% INFO    : Updated Generator Cost: PEL - 86.3852 56.564 0.328412 -> 0 7.20986620641 0
% INFO    : Updated Generator Cost: NG - 86.3852 56.564 0.328412 -> 0 0.989379046736 0
% INFO    : Updated Generator Cost: COW - 382.2391 12.3883 0.008342 -> 0 1.02057824917 0
% INFO    : Updated Generator Cost: NG - 382.2391 12.3883 0.008342 -> 0 0.993748547288 0
% INFO    : Updated Generator Cost: NG - 395.3749 4.4231 0.000213 -> 0 1.055880214 0
% INFO    : Updated Generator Cost: NG - 395.3749 4.4231 0.000213 -> 0 1.30406229176 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 1.45568800583 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 0.950415456282 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 1.18580287278 0
% INFO    : Updated Generator Cost: PEL - 0.001 0.001 0.0 -> 0 7.44927314346 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 1.05480453244 0
% INFO    : Updated Generator Cost: NG - 0.001 0.001 0.0 -> 0 1.14034653261 0
% INFO    : Updated Generator Cost: NG - 382.2391 12.3883 0.008342 -> 0 1.0649034894 0
% INFO    : Updated Generator Cost: NG - 382.2391 12.3883 0.008342 -> 0 0.769840407205 0
% INFO    : Updated Generator Cost: NG - 665.1094 11.8495 0.004895 -> 0 1.1384113881 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.04723, theta=-6.75543 -> V=1.04533, theta=-19.50391
% INFO    : Bus 2	: V=1.04721, theta=-6.83108 -> V=1.05, theta=-18.24931
% INFO    : Bus 3	: V=1.01378, theta=-6.18747 -> V=0.95254, theta=-24.34752
% INFO    : Bus 4	: V=1.01625, theta=-9.57433 -> V=0.96636, theta=-26.68111
% INFO    : Bus 5	: V=1.03543, theta=-9.73755 -> V=0.98661, theta=-26.88244
% INFO    : Bus 6	: V=1.03241, theta=-12.31055 -> V=0.95, theta=-32.919
% INFO    : Bus 7	: V=1.036, theta=-9.87656 -> V=1.05, theta=-39.77161
% INFO    : Bus 8	: V=1.00896, theta=-12.55316 -> V=0.95954, theta=-41.16298
% INFO    : Bus 9	: V=1.02393, theta=-7.81824 -> V=0.95988, theta=-25.30534
% INFO    : Bus 10	: V=1.05, theta=-9.67832 -> V=0.97648, theta=-28.11591
% INFO    : Bus 11	: V=1.02263, theta=-2.61309 -> V=0.97066, theta=-12.66484
% INFO    : Bus 12	: V=1.01727, theta=-1.87607 -> V=0.96791, theta=-11.53703
% INFO    : Bus 13	: V=1.03348, theta=0.0 -> V=1.03864, theta=0.0
% INFO    : Bus 14	: V=1.03987, theta=1.01244 -> V=1.00725, theta=-11.28215
% INFO    : Bus 15	: V=1.04106, theta=9.32436 -> V=1.05, theta=1.25743
% INFO    : Bus 16	: V=1.04428, theta=8.54258 -> V=1.00896, theta=-1.34361
% INFO    : Bus 17	: V=1.04756, theta=12.89163 -> V=1.02148, theta=-0.16522
% INFO    : Bus 18	: V=1.05, theta=14.24704 -> V=1.02401, theta=-0.6694
% INFO    : Bus 19	: V=1.03895, theta=7.49316 -> V=1.01367, theta=-5.60067
% INFO    : Bus 20	: V=1.04397, theta=8.4523 -> V=1.03397, theta=-5.43289
% INFO    : Bus 21	: V=1.05, theta=15.02296 -> V=1.03604, theta=1.11523
% INFO    : Bus 22	: V=1.05, theta=20.69119 -> V=1.05, theta=8.18104
% INFO    : Bus 23	: V=1.05, theta=9.68377 -> V=1.05, theta=-3.95355
% INFO    : Bus 24	: V=1.00585, theta=3.66828 -> V=0.97065, theta=-7.55027
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=73.0, Qg=1.0 -> Pg=73.0, Qg=7.356
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 1	: Pg=73.0, Qg=1.0 -> Pg=122.0, Qg=18.833
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 1	: Pg=72.0, Qg=1.0 -> Pg=7.6, Qg=22.325
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 1	: Pg=72.0, Qg=1.0 -> Pg=47.477, Qg=17.718
% INFO    : Gen at bus 1	: Vg=1.04723 -> Vg=1.04533
% INFO    : Gen at bus 2	: Pg=157.0, Qg=31.0 -> Pg=29.01, Qg=25.952
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 2	: Pg=157.0, Qg=31.0 -> Pg=8.0, Qg=3.574
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 2	: Pg=156.0, Qg=31.0 -> Pg=585.0, Qg=40.75
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 2	: Pg=156.0, Qg=31.0 -> Pg=7.6, Qg=4.001
% INFO    : Gen at bus 2	: Vg=1.04721 -> Vg=1.05
% INFO    : Gen at bus 7	: Pg=126.0, Qg=42.0 -> Pg=12.5, Qg=37.254
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.05
% INFO    : Gen at bus 7	: Pg=126.0, Qg=42.0 -> Pg=289.926, Qg=107.883
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.05
% INFO    : Gen at bus 7	: Pg=126.0, Qg=42.0 -> Pg=12.501, Qg=14.698
% INFO    : Gen at bus 7	: Vg=1.036 -> Vg=1.05
% INFO    : Gen at bus 13	: Pg=410.0, Qg=105.0 -> Pg=354.82, Qg=53.735
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.03864
% INFO    : Gen at bus 13	: Pg=410.0, Qg=105.0 -> Pg=1126.0, Qg=188.821
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.03864
% INFO    : Gen at bus 13	: Pg=410.0, Qg=105.0 -> Pg=34.5, Qg=48.105
% INFO    : Gen at bus 13	: Vg=1.03348 -> Vg=1.03864
% INFO    : Gen at bus 14	: Pg=0.0, Qg=209.0 -> Pg=0.0, Qg=201.862
% INFO    : Gen at bus 14	: Vg=1.03987 -> Vg=1.00725
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=1.2, Qg=39.699
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=143.0, Qg=39.699
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=315.0, Qg=90.171
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=1.2, Qg=39.699
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=132.0, Qg=79.0 -> Pg=335.0, Qg=98.848
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 15	: Pg=184.0, Qg=79.0 -> Pg=456.0, Qg=153.026
% INFO    : Gen at bus 15	: Vg=1.04106 -> Vg=1.05
% INFO    : Gen at bus 16	: Pg=521.0, Qg=-31.0 -> Pg=574.0, Qg=-287.0
% INFO    : Gen at bus 16	: Vg=1.04428 -> Vg=1.00896
% INFO    : Gen at bus 18	: Pg=302.0, Qg=32.0 -> Pg=316.0, Qg=28.787
% INFO    : Gen at bus 18	: Vg=1.05 -> Vg=1.02401
% INFO    : Gen at bus 21	: Pg=203.0, Qg=-118.0 -> Pg=50.0, Qg=1.396
% INFO    : Gen at bus 21	: Vg=1.05 -> Vg=1.03604
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=5.0, Qg=1.026
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=85.0, Qg=0.564
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=5.0, Qg=1.41
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=5.0, Qg=0.923
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=80.0, Qg=0.488
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 22	: Pg=68.0, Qg=-9.0 -> Pg=168.845, Qg=3.823
% INFO    : Gen at bus 22	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 23	: Pg=237.0, Qg=15.0 -> Pg=27.15, Qg=84.459
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 23	: Pg=237.0, Qg=15.0 -> Pg=244.0, Qg=41.129
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.05
% INFO    : Gen at bus 23	: Pg=323.0, Qg=15.0 -> Pg=70.0, Qg=78.472
% INFO    : Gen at bus 23	: Vg=1.05 -> Vg=1.05
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
