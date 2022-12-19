%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%      NICTA Energy System Test Case Archive (NESTA) - v0.7.0      %%%%%
%%%%            Optimal Power Flow - Active Power Increase            %%%%%
%%%%                         05 - June - 2017                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = nesta_case6_c__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 179.26	 10.00	 0.0	 0.0	 1	    1.03825	    0.00000	 230.0	 1	    1.10000	    0.90000;
	2	 2	 107.56	 5.00	 0.0	 0.0	 1	    1.10000	   -5.00390	 230.0	 1	    1.10000	    0.90000;
	3	 1	 197.19	 11.00	 0.0	 0.0	 1	    1.07469	   -7.54075	 230.0	 1	    1.10000	    0.90000;
	4	 1	 0.00	 0.00	 0.0	 0.0	 1	    1.03282	   -6.83376	 230.0	 1	    1.10000	    0.90000;
	5	 1	 107.56	 9.00	 0.0	 0.0	 1	    0.96511	  -19.30922	 230.0	 1	    1.10000	    0.90000;
	6	 1	 179.26	 15.00	 0.0	 0.0	 1	    0.96536	  -17.12316	 230.0	 1	    1.10000	    0.90000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 366.0	 40.958	 183.0	 -183.0	 1.03825	 100.0	 1	 366	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % COW
	2	 421.895	 102.957	 427.0	 -427.0	 1.1	 100.0	 1	 854	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	   0.724820	   0.000000; % COW
	2	 0.0	 0.0	 3	   0.000000	   1.300286	   0.000000; % NG
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 4	 0.02	 0.185	 0.009	 170.0	 100.0	 100.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 6	 0.031	 0.259	 0.01	 122.0	 100.0	 100.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 3	 0.006	 0.025	 0.0	 281.0	 100.0	 100.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 5	 0.071	 0.32	 0.015	 97.0	 97.0	 97.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 6	 0.024	 0.204	 0.01	 154.0	 100.0	 100.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 4	 0.075	 0.067	 0.0	 135.0	 100.0	 100.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5	 6	 0.025	 0.15	 0.017	 208.0	 100.0	 100.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./nesta_case6_c.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 1	: Pd=25.0, Qd=10.0 -> Pd=179.26, Qd=10.00
% INFO    : Bus 2	: Pd=15.0, Qd=5.0 -> Pd=107.56, Qd=5.00
% INFO    : Bus 3	: Pd=27.5, Qd=11.0 -> Pd=197.19, Qd=11.00
% INFO    : Bus 4	: Pd=0.0, Qd=0.0 -> Pd=0.00, Qd=0.00
% INFO    : Bus 5	: Pd=15.0, Qd=9.0 -> Pd=107.56, Qd=9.00
% INFO    : Bus 6	: Pd=25.0, Qd=15.0 -> Pd=179.26, Qd=15.00
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=109.555, Qg=26.076 -> Pg=362.0, Qg=54.0
% INFO    : Gen at bus 2	: Pg=0.0, Qg=25.419 -> Pg=426.0, Qg=87.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 2	: Qg 87.0, Qmin -27.0, Qmax 27.0 -> Qmin -104.4, Qmax 104.4
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : COW    1   -    45.94
% INFO    : NG     1   -    54.06
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - COW	: Pg=362.0, Pmax=949.0 -> Pmax=366   samples: 3
% INFO    : Gen at bus 2 - NG	: Pg=426.0, Pmax=53.0 -> Pmax=854   samples: 46
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 1 - COW	: Pmax 366.0, Qmin -100.0, Qmax 100.0 -> Qmin -183.0, Qmax 183.0
% INFO    : Gen at bus 2 - NG	: Pmax 854.0, Qmin -104.4, Qmax 104.4 -> Qmin -427.0, Qmax 427.0
% INFO    : 
% INFO    : === Generator Active Cost Stat Model Notes ===
% INFO    : Updated Generator Cost: COW - 0.0 0.211822 0.0 -> 0 0.724819795938 0
% INFO    : Updated Generator Cost: NG - 0.0 0.241315 0.0 -> 0 1.30028584921 0
% INFO    : 
% INFO    : === Voltage Setpoint Replacement Notes ===
% INFO    : Bus 1	: V=1.1, theta=0.0 -> V=1.03825, theta=0.0
% INFO    : Bus 2	: V=1.06319, theta=-6.04206 -> V=1.1, theta=-5.0039
% INFO    : Bus 3	: V=1.05965, theta=-5.81219 -> V=1.07469, theta=-7.54075
% INFO    : Bus 4	: V=1.08467, theta=-4.16443 -> V=1.03282, theta=-6.83376
% INFO    : Bus 5	: V=1.05541, theta=-5.71987 -> V=0.96511, theta=-19.30922
% INFO    : Bus 6	: V=1.06571, theta=-4.52694 -> V=0.96536, theta=-17.12316
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=362.0, Qg=54.0 -> Pg=366.0, Qg=40.958
% INFO    : Gen at bus 1	: Vg=1.1 -> Vg=1.03825
% INFO    : Gen at bus 2	: Pg=426.0, Qg=87.0 -> Pg=421.895, Qg=102.957
% INFO    : Gen at bus 2	: Vg=1.06319 -> Vg=1.1
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
