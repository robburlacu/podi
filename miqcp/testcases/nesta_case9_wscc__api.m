%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%            Optimal Power Flow - Active Power Increase            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case9_wscc__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% area data
%	area	refbus
mpc.areas = [
	1	 5;
];

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 0.00	 0.00	 0.0	 0.0	 1	    1.10000	   -0.00000	 345.0	 1	    1.10000	    0.90000;
	2	 2	 0.00	 0.00	 0.0	 0.0	 1	    1.10000	    6.02622	 345.0	 1	    1.10000	    0.90000;
	3	 2	 0.00	 0.00	 0.0	 0.0	 1	    1.09445	   11.13806	 345.0	 1	    1.10000	    0.90000;
	4	 1	 0.00	 0.00	 0.0	 0.0	 1	    1.06211	   -6.64592	 345.0	 1	    1.10000	    0.90000;
	5	 1	 215.73	 30.00	 0.0	 0.0	 1	    1.03031	  -10.06998	 345.0	 1	    1.10000	    0.90000;
	6	 1	 0.00	 0.00	 0.0	 0.0	 1	    1.08228	    2.69845	 345.0	 1	    1.10000	    0.90000;
	7	 1	 239.70	 35.00	 0.0	 0.0	 1	    1.05751	   -4.68988	 345.0	 1	    1.10000	    0.90000;
	8	 1	 0.00	 0.00	 0.0	 0.0	 1	    1.07752	   -1.36018	 345.0	 1	    1.10000	    0.90000;
	9	 1	 299.63	 50.00	 0.0	 0.0	 1	    1.01438	  -13.58822	 345.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 234.745	 85.992	 300.0	 -300.0	 1.1	 100.0	 1	 247	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 243.805	 55.308	 300.0	 -300.0	 1.1	 100.0	 1	 339	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	3	 296.665	 44.606	 300.0	 -300.0	 1.09445	 100.0	 1	 452	 5.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 1500.0	 0.0	 3	   0.000000	   1.072537	   0.000000; % NG
	2	 2000.0	 0.0	 3	   0.000000	   0.959852	   0.000000; % NG
	2	 3000.0	 0.0	 3	   0.000000	   0.574506	   0.000000; % COW
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 4	 0.0	 0.0576	 0.0	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 5	 0.017	 0.092	 0.158	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5	 6	 0.039	 0.17	 0.358	 150.0	 150.0	 150.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 6	 0.0	 0.0586	 0.0	 300.0	 300.0	 300.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 7	 0.0119	 0.1008	 0.209	 150.0	 150.0	 150.0	 0.0	 0.0	 1	 -30.0	 30.0;
	7	 8	 0.0085	 0.072	 0.149	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 2	 0.0	 0.0625	 0.0	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 9	 0.032	 0.161	 0.306	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -30.0	 30.0;
	9	 4	 0.01	 0.085	 0.176	 250.0	 250.0	 250.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./nesta_case9_wscc.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 2	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 3	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 4	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 5	: Pd=90.0, Qd=30.0 -> Pd=215.73, Qd=30.00
% INFO    : Bus 6	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 7	: Pd=100.0, Qd=35.0 -> Pd=239.70, Qd=35.00
% INFO    : Bus 8	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 9	: Pd=125.0, Qd=50.0 -> Pd=299.63, Qd=50.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=89.799, Qg=12.966 -> Pg=237.0, Qg=81.0
% INFO    : Gen at bus 2	: Pg=134.321, Qg=0.032 -> Pg=244.0, Qg=57.0
% INFO    : Gen at bus 3	: Pg=94.187, Qg=-22.634 -> Pg=296.0, Qg=50.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : COW    1   -    38.10
% INFO    : NG     2   -    61.90
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - NG	: Pg=237.0, Pmax=250.0 -> Pmax=247   samples: 6
% INFO    : Gen at bus 2 - NG	: Pg=244.0, Pmax=300.0 -> Pmax=339   samples: 7
% INFO    : Gen at bus 3 - COW	: Pg=296.0, Pmax=270.0 -> Pmax=452   samples: 2
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : Gen at bus 1	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 2	: Pmin=10.0 -> Pmin=5.0 
% INFO    : Gen at bus 3	: Pmin=10.0 -> Pmin=5.0 
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: NG - 150.0 5.0 0.11 -> 0 1.07253713335 0
% INFO    : Updated Generator Cost: NG - 600.0 1.2 0.085 -> 0 0.959851972298 0
% INFO    : Updated Generator Cost: COW - 335.0 1.0 0.1225 -> 0 0.574506422824 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.1, theta=0.0 -> V=1.1, theta=-0.0
% INFO    : Bus 2	: V=1.09735, theta=4.89364 -> V=1.1, theta=6.02622
% INFO    : Bus 3	: V=1.08662, theta=3.24954 -> V=1.09445, theta=11.13806
% INFO    : Bus 4	: V=1.09422, theta=-2.46292 -> V=1.06211, theta=-6.64592
% INFO    : Bus 5	: V=1.08445, theta=-3.98198 -> V=1.03031, theta=-10.06998
% INFO    : Bus 6	: V=1.1, theta=0.60289 -> V=1.08228, theta=2.69845
% INFO    : Bus 7	: V=1.08949, theta=-1.19627 -> V=1.05751, theta=-4.68988
% INFO    : Bus 8	: V=1.1, theta=0.90563 -> V=1.07752, theta=-1.36018
% INFO    : Bus 9	: V=1.07176, theta=-4.61524 -> V=1.01438, theta=-13.58822
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=237.0, Qg=81.0 -> Pg=234.745, Qg=85.992
% INFO    : Gen at bus 1	: Vg=1.1 -> Vg=1.1
% INFO    : Gen at bus 2	: Pg=244.0, Qg=57.0 -> Pg=243.805, Qg=55.308
% INFO    : Gen at bus 2	: Vg=1.09735 -> Vg=1.1
% INFO    : Gen at bus 3	: Pg=296.0, Qg=50.0 -> Pg=296.665, Qg=44.606
% INFO    : Gen at bus 3	: Vg=1.08662 -> Vg=1.09445
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
