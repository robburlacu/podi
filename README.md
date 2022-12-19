# PODi
Powerflow Optimization with Discrete Decisions:


Supplemental codes to 'Solving AC OPF with Discrete Decisions to Global Optimality' (INFORMS Journal on Computing)
Authors: Kevin-Martin Aigner, Robert Burlacu, Frauke Liers, Alexander Martin

Requirements:
- several python packages: sympy, math, numpy, time, datetime, contextlib, multiprocessing, copy, shutil, sys, logging, abc, pandas, argparse, networkx, matplotlib
- Gurobi API for Python (gurobipy) and a working Gurobi installation
- GAMS API for Python (gams) and a working GAMS installation with CONOPT

How to run (from main folder 'ac_opf' or 'miqcp'):
python -m podi testcases/file_name_matpower_instance.m


Example:
python -m podi testcases/nesta_case3_lmbd__api.m 

option file: 'podi.opt'

Folder structure:
ac_opf: Code for solving the AC OPF with discrete decisions to global optimality
minlp_gams_files: Gams files for all MINLPs (rectangular and MIQCP relaxations)
miqcp: Code for solving the MIQCP relaxations of the AC OPF with discrete decisions to global optimality
