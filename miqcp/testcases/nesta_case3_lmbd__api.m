%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%            Optimal Power Flow - Active Power Increase            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case3_lmbd__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 147.08	 40.00	 0.0	 0.0	 1	    1.10000	   -0.00000	 240.0	 1	    1.10000	    0.90000;
	2	 2	 147.08	 40.00	 0.0	 0.0	 1	    1.03337	  -13.87570	 240.0	 1	    1.10000	    0.90000;
	3	 2	 127.03	 50.00	 0.0	 0.0	 1	    1.01821	  -30.00000	 240.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 271.212	 33.944	 1000.0	 -1000.0	 1.1	 100.0	 1	 694	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	2	 155.844	 -9.637	 1000.0	 -1000.0	 1.03337	 100.0	 1	 195	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	3	 0.0	 15.161	 1000.0	 -1000.0	 1.01821	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   0.743777	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	   1.063360	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 3	 0.065	 0.62	 0.45	 9000.0	 0.0	 0.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 2	 0.025	 0.75	 0.7	 50.0	 0.0	 0.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 2	 0.042	 0.9	 0.3	 9000.0	 0.0	 0.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./nesta_case3_lmbd.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=110.0, Qd=40.0 -> Pd=147.08, Qd=40.00
% INFO    : Bus 2	: Pd=110.0, Qd=40.0 -> Pd=147.08, Qd=40.00
% INFO    : Bus 3	: Pd=95.0, Qd=50.0 -> Pd=127.03, Qd=50.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=148.067, Qg=54.697 -> Pg=265.0, Qg=41.0
% INFO    : Gen at bus 2	: Pg=170.006, Qg=-8.791 -> Pg=163.0, Qg=-10.0
% INFO    : Gen at bus 3	: Pg=0.0, Qg=-4.843 -> Pg=0.0, Qg=15.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : SYNC   1   -     0.00
% INFO    : COW    1   -    61.92
% INFO    : NG     1   -    38.08
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - COW	: Pg=265.0, Pmax=2000.0 -> Pmax=694   samples: 4
% INFO    : Gen at bus 2 - NG	: Pg=163.0, Pmax=2000.0 -> Pmax=195   samples: 4
% INFO    : Gen at bus 3 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: COW - 0.0 5.0 0.11 -> 0 0.743777214062 0
% INFO    : Updated Generator Cost: NG - 0.0 1.2 0.085 -> 0 1.06335953768 0
% INFO    : Updated Generator Cost: SYNC - 0.0 0.0 0.0 -> 0 0.0 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.1, theta=-0.0 -> V=1.1, theta=-0.0
% INFO    : Bus 2	: V=0.92617, theta=7.25883 -> V=1.03337, theta=-13.8757
% INFO    : Bus 3	: V=0.9, theta=-17.2671 -> V=1.01821, theta=-30.0
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=265.0, Qg=41.0 -> Pg=271.212, Qg=33.944
% INFO    : Gen at bus 1	: Vg=1.1 -> Vg=1.1
% INFO    : Gen at bus 2	: Pg=163.0, Qg=-10.0 -> Pg=155.844, Qg=-9.637
% INFO    : Gen at bus 2	: Vg=0.92617 -> Vg=1.03337
% INFO    : Gen at bus 3	: Pg=0.0, Qg=15.0 -> Pg=0.0, Qg=15.161
% INFO    : Gen at bus 3	: Vg=0.9 -> Vg=1.01821
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
