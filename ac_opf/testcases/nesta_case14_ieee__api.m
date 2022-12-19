%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%            Optimal Power Flow - Active Power Increase            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case14_ieee__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 0.00	 0.00	 0.0	 0.0	 1	    1.06000	    0.00000	 0.0	 1	    1.06000	    0.94000;
	2	 2	 42.66	 12.70	 0.0	 0.0	 1	    0.99771	   -6.14162	 0.0	 1	    1.06000	    0.94000;
	3	 2	 185.17	 19.00	 0.0	 0.0	 1	    0.94000	  -23.39342	 0.0	 1	    1.06000	    0.94000;
	4	 1	 47.80	 -3.90	 0.0	 0.0	 1	    0.95428	  -17.18424	 0.0	 1	    1.06000	    0.94000;
	5	 1	 14.94	 1.60	 0.0	 0.0	 1	    0.96230	  -14.71282	 0.0	 1	    1.06000	    0.94000;
	6	 2	 22.02	 7.50	 0.0	 0.0	 1	    1.06000	  -26.40005	 0.0	 1	    1.06000	    0.94000;
	7	 1	 0.00	 0.00	 0.0	 0.0	 1	    1.01266	  -23.90246	 0.0	 1	    1.06000	    0.94000;
	8	 2	 0.00	 0.00	 0.0	 0.0	 1	    1.06000	  -23.90246	 0.0	 1	    1.06000	    0.94000;
	9	 1	 57.99	 16.60	 0.0	 19.0	 1	    1.00782	  -27.31838	 0.0	 1	    1.06000	    0.94000;
	10	 1	 17.69	 5.80	 0.0	 0.0	 1	    1.00627	  -27.84556	 0.0	 1	    1.06000	    0.94000;
	11	 1	 6.88	 1.80	 0.0	 0.0	 1	    1.02737	  -27.41287	 0.0	 1	    1.06000	    0.94000;
	12	 1	 11.99	 1.60	 0.0	 0.0	 1	    1.03364	  -28.25228	 0.0	 1	    1.06000	    0.94000;
	13	 1	 26.54	 5.80	 0.0	 0.0	 1	    1.02369	  -28.43676	 0.0	 1	    1.06000	    0.94000;
	14	 1	 29.29	 5.00	 0.0	 0.0	 1	    0.98448	  -30.15350	 0.0	 1	    1.06000	    0.94000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 332.506	 79.195	 271.0	 -271.0	 1.06	 100.0	 1	 542	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	2	 171.984	 -8.397	 95.0	 -95.0	 0.99771	 100.0	 1	 190	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	3	 0.0	 57.434	 72.0	 -72.0	 0.94	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	6	 0.0	 54.144	 56.4	 -56.4	 1.06	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	8	 0.0	 28.489	 30.0	 -30.0	 1.06	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   0.664260	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	   0.606188	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.01938	 0.05917	 0.0528	 472.0	 472.0	 472.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 5	 0.05403	 0.22304	 0.0492	 128.0	 128.0	 128.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 3	 0.04699	 0.19797	 0.0438	 145.0	 145.0	 145.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 4	 0.05811	 0.17632	 0.034	 158.0	 158.0	 158.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 5	 0.05695	 0.17388	 0.0346	 161.0	 161.0	 161.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 4	 0.06701	 0.17103	 0.0128	 160.0	 160.0	 160.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 5	 0.01335	 0.04211	 0.0	 664.0	 664.0	 664.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 7	 0.0	 0.20912	 0.0	 141.0	 141.0	 141.0	 0.978	 0.0	 1	 -30.0	 30.0;
	4	 9	 0.0	 0.55618	 0.0	 53.0	 53.0	 53.0	 0.969	 0.0	 1	 -30.0	 30.0;
	5	 6	 0.0	 0.25202	 0.0	 117.0	 117.0	 117.0	 0.932	 0.0	 1	 -30.0	 30.0;
	6	 11	 0.09498	 0.1989	 0.0	 134.0	 134.0	 134.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 12	 0.12291	 0.25581	 0.0	 104.0	 104.0	 104.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 13	 0.06615	 0.13027	 0.0	 201.0	 201.0	 201.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 8	 0.0	 0.17615	 0.0	 167.0	 167.0	 167.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 9	 0.0	 0.11001	 0.0	 267.0	 267.0	 267.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 10	 0.03181	 0.0845	 0.0	 325.0	 325.0	 325.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 14	 0.12711	 0.27038	 0.0	 99.0	 99.0	 99.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 11	 0.08205	 0.19207	 0.0	 141.0	 141.0	 141.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 13	 0.22092	 0.19988	 0.0	 99.0	 99.0	 99.0	 0.0	 0.0	 1	 -30.0	 30.0;
	13	 14	 0.17093	 0.34802	 0.0	 76.0	 76.0	 76.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./nesta_case14_ieee.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 2	: Pd=21.7, Qd=12.7 -> Pd=42.66, Qd=12.70
% INFO    : Bus 3	: Pd=94.2, Qd=19.0 -> Pd=185.17, Qd=19.00
% INFO    : Bus 4	: Pd=47.8, Qd=-3.9 -> Pd=47.80, Qd=-3.90
% INFO    : Bus 5	: Pd=7.6, Qd=1.6 -> Pd=14.94, Qd=1.60
% INFO    : Bus 6	: Pd=11.2, Qd=7.5 -> Pd=22.02, Qd=7.50
% INFO    : Bus 7	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 8	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 9	: Pd=29.5, Qd=16.6 -> Pd=57.99, Qd=16.60
% INFO    : Bus 10	: Pd=9.0, Qd=5.8 -> Pd=17.69, Qd=5.80
% INFO    : Bus 11	: Pd=3.5, Qd=1.8 -> Pd=6.88, Qd=1.80
% INFO    : Bus 12	: Pd=6.1, Qd=1.6 -> Pd=11.99, Qd=1.60
% INFO    : Bus 13	: Pd=13.5, Qd=5.8 -> Pd=26.54, Qd=5.80
% INFO    : Bus 14	: Pd=14.9, Qd=5.0 -> Pd=29.29, Qd=5.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=208.317, Qg=0.0 -> Pg=355.0, Qg=31.0
% INFO    : Gen at bus 2	: Pg=63.0, Qg=26.964 -> Pg=151.0, Qg=48.0
% INFO    : Gen at bus 3	: Pg=0.0, Qg=29.63 -> Pg=0.0, Qg=60.0
% INFO    : Gen at bus 6	: Pg=0.0, Qg=13.23 -> Pg=0.0, Qg=47.0
% INFO    : Gen at bus 8	: Pg=0.0, Qg=9.618 -> Pg=0.0, Qg=25.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 1	: Qg 31.0, Qmin 0.0, Qmax 10.0 -> Qmin -37.2, Qmax 37.2
% INFO    : Gen at bus 2	: Qg 48.0, Qmin -32.0, Qmax 32.0 -> Qmin -57.6, Qmax 57.6
% INFO    : Gen at bus 3	: Qg 60.0, Qmin 0.0, Qmax 40.0 -> Qmin -72.0, Qmax 72.0
% INFO    : Gen at bus 6	: Qg 47.0, Qmin -6.0, Qmax 24.0 -> Qmin -56.4, Qmax 56.4
% INFO    : Gen at bus 8	: Qg 25.0, Qmin -6.0, Qmax 24.0 -> Qmin -30.0, Qmax 30.0
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : SYNC   3   -     0.00
% INFO    : COW    1   -    70.16
% INFO    : NG     1   -    29.84
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - COW	: Pg=355.0, Pmax=362.0 -> Pmax=542   samples: 4
% INFO    : Gen at bus 2 - NG	: Pg=151.0, Pmax=63.0 -> Pmax=190   samples: 5
% INFO    : Gen at bus 3 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 6 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 8 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 1 - COW	: Pmax 542.0, Qmin -37.2, Qmax 37.2 -> Qmin -271.0, Qmax 271.0
% INFO    : Gen at bus 2 - NG	: Pmax 190.0, Qmin -57.6, Qmax 57.6 -> Qmin -95.0, Qmax 95.0
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: COW - 0.0 1.026133 0.0 -> 0 0.664259701438 0
% INFO    : Updated Generator Cost: NG - 0.0 0.480811 0.0 -> 0 0.606187717211 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.06, theta=0.0 -> V=1.06, theta=0.0
% INFO    : Bus 2	: V=1.04017, theta=-4.25303 -> V=0.99771, theta=-6.14162
% INFO    : Bus 3	: V=1.00788, theta=-12.18881 -> V=0.94, theta=-23.39342
% INFO    : Bus 4	: V=1.01043, theta=-9.7341 -> V=0.95428, theta=-17.18424
% INFO    : Bus 5	: V=1.01324, theta=-8.24923 -> V=0.9623, theta=-14.71282
% INFO    : Bus 6	: V=1.06, theta=-13.80994 -> V=1.06, theta=-26.40005
% INFO    : Bus 7	: V=1.04402, theta=-12.83516 -> V=1.01266, theta=-23.90246
% INFO    : Bus 8	: V=1.06, theta=-12.83516 -> V=1.06, theta=-23.90246
% INFO    : Bus 9	: V=1.04096, theta=-14.45372 -> V=1.00782, theta=-27.31838
% INFO    : Bus 10	: V=1.03679, theta=-14.63018 -> V=1.00627, theta=-27.84556
% INFO    : Bus 11	: V=1.04473, theta=-14.35082 -> V=1.02737, theta=-27.41287
% INFO    : Bus 12	: V=1.04467, theta=-14.67869 -> V=1.03364, theta=-28.25228
% INFO    : Bus 13	: V=1.03948, theta=-14.75038 -> V=1.02369, theta=-28.43676
% INFO    : Bus 14	: V=1.02209, theta=-15.60843 -> V=0.98448, theta=-30.1535
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=355.0, Qg=31.0 -> Pg=332.506, Qg=79.195
% INFO    : Gen at bus 1	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 2	: Pg=151.0, Qg=48.0 -> Pg=171.984, Qg=-8.397
% INFO    : Gen at bus 2	: Vg=1.04017 -> Vg=0.99771
% INFO    : Gen at bus 3	: Pg=0.0, Qg=60.0 -> Pg=0.0, Qg=57.434
% INFO    : Gen at bus 3	: Vg=1.00788 -> Vg=0.94
% INFO    : Gen at bus 6	: Pg=0.0, Qg=47.0 -> Pg=0.0, Qg=54.144
% INFO    : Gen at bus 6	: Vg=1.06 -> Vg=1.06
% INFO    : Gen at bus 8	: Pg=0.0, Qg=25.0 -> Pg=0.0, Qg=28.489
% INFO    : Gen at bus 8	: Vg=1.06 -> Vg=1.06
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
