######################################
# IMPORTS                            #
######################################


import sys
from podi import __version__ as podi_version, \
    ExitStatus, \
    log_info, log_debug, log_debug_local
from podi.input import Parameters, CommandLineParser, ParametersFileParser, NetworkFileParser
from podi.ac_opf_minlp_builder import AcOpfMinlpBuilder
from podi.dc_opf_mip_builder import DcOpfMipBuilder
from podi.minlp_reformulation_builder import MinlpReformulationBuilder
from podi.mip_relaxation_builder import MipRelaxationBuilder
from podi.mip_solver import Mipsolver
from podi.relaxation_refiner import RelaxationRefiner
from podi.preprocessing import Preprocessor
from podi.gams_writer import GamsMinlpWriter, GamsNlpWriter, create_nlp_filename
from podi.nlp_solver import NlpSolver
from time import time
from math import inf, pi
from gurobipy import GRB
from podi.triangulation import NUMBER_INITIAL_SEGMENTS
import os
from datetime import datetime
import io
from contextlib import redirect_stdout
from multiprocessing import Process, Manager
from podi.curtailment_info import CurtailmentInfo
import csv




######################################
# CONSTANTS                          #
######################################


OPTION_FILENAME = "podi.opt"
#curtailment_nodes=[1]
#installed_power={1 : 10}
#produced_power={1 : 7}
#curtailment_options={1 : [0,0.3,0.6,1]}

curtailment_nodes=[]
installed_power={}
produced_power={}
curtailment_options={}

NUMBER_DIGITS = 2


######################################
# MAIN                               #
######################################


def main(args=sys.argv[1:]):

    network_filename = CommandLineParser.parse()
    #to do: überprüfung der eingelesenen daten auf wohldefiniertheit (z.b. voltage grenzen >=0)    
    exit_code = ExitStatus.SUCCESS

    


    '''Create log-file '''
    now = datetime.now()
    
    if len(str(now.month))==1:
        month = '0'+str(now.month)
    else:
        month = str(now.month)
  
    if len(str(now.day))==1:
        day = '0'+str(now.day)
    else:
        day = str(now.day)    
    
    directory_name = 'results/' + str(day) + '_' + str(month) + '_' + str(now.year)
    if not os.path.exists(directory_name):
        os.makedirs(directory_name)


    network_filepath = network_filename
    network_filename = str(network_filename).split('/')[-1]
    

    global log_file
    log_file = open( directory_name + '/' + str(network_filename).replace('.m','') + '_log.txt', 'w')
    global tight_mip_log_file
    tight_mip_log_file = open( directory_name + '/' + str(network_filename).replace('.m','') + '_tight_log.txt', 'w')

    ''' Start PODi '''

    global time_start
    time_start = time()

    log_info("PODi (Version " + str(podi_version) + ")\n")
    log_file.write("PODi (Version " + str(podi_version) + ")\n\n")

    

    ''' Set the parameters '''



    default_parameters = True
    
    parameters_file_parser = ParametersFileParser(OPTION_FILENAME)
    global parameters
    parameters = parameters_file_parser.parse()

    if parameters is not None:
        default_parameters = False


    if default_parameters is True:
        log_info("LOAD PARAMETERS: DEFAULT\n")
        log_file.write("LOAD PARAMETERS: DEFAULT\n")
    else:
        log_info("LOAD PARAMETERS: CUSTOM\n")
        log_file.write("LOAD PARAMETERS: CUSTOM\n\n")


        
        parameters.log_parameters()
        log_info("")  # new line
        
        for parameter, value in parameters._parameters.items():
            log_file.write(str(parameter) + ": " + str(value) + '\n')
        log_file.write('\n')
        

    ''' Load and preprocess the power network '''

    log_info("LOAD NETWORK: " + network_filename)
    log_file.write("LOAD NETWORK: " + network_filename + "\n")

    network_file_parser = NetworkFileParser(network_filepath)
    network = network_file_parser.parse()

    network.preprocess()


    network_bus_number = network.graph.number_of_nodes()
    if network_bus_number <= 10:
        parameters['factor_for_adaptive_tight_mip'] = 512
    elif network_bus_number <= 50:
        parameters['factor_for_adaptive_tight_mip'] = 128
    else:
        parameters['factor_for_adaptive_tight_mip'] = parameters['factor_for_adaptive_tight_mip'] #unchangend

    
    
    if parameters['modify_p_min'] == 1:
        modify_generator_bounds( network, parameters['p_min_percentage'] )
    
    ''' Generate Curtailment Parameters '''  
    if parameters['discrete_curtailment'] == 1:
        curtailment_info = CurtailmentInfo('filename', network, curtailment_nodes, installed_power, produced_power,curtailment_options)
        curtailment_info.print_infos()
    else:
        curtailment_info = []

    ''' Create the MINLP '''

    log_info("CREATE MINLP")
    log_file.write("CREATE MINLP\n")
    
    ac_opf_builder = AcOpfMinlpBuilder()
    global minlp
    minlp = ac_opf_builder.build(network, parameters, curtailment_info)

    gams_writer = GamsMinlpWriter()
    gams_writer.write( minlp , parameters)
    

        
    ''' Initialize and run the MINLP solver '''
    
    
    log_info('CREATE MINLP-REFORMULATION')
    log_file.write('CREATE MINLP-REFORMULATION\n')
    
    reformulation_start = time()
    minlp_reformulation_builder = MinlpReformulationBuilder()
    minlp_reformulation = minlp_reformulation_builder.build(minlp)
    reformulation_end = time()
    #print('Reformulation took', round(reformulation_end-reformulation_start,4),'s')
    
    #print(a)
    
    log_info('CREATE RELAXATION FOR PREPROCESSING')
    log_file.write('CREATE RELAXATION FOR PREPROCESSING\n')
    
    global mip_relaxation
    global tight_mip
    mip_relaxation_builder = MipRelaxationBuilder()

    mip_for_bound_tightening = mip_relaxation_builder.build(minlp_reformulation, parameters['max_error_for_bound_tightening'], parameters['number_segments_bound_tightening'], parameters['using_thermal_limit_for_bound_tightening'],parameters['using_socp_for_bound_tightening'], parameters['number_initial_outer_approximation_bound_tightening'],0, parameters['using_mckormick_for_bound_tightening'],0,parameters['univariate_approximation'])
                                                                
    global mip_solver
    mip_solver = Mipsolver(mip_for_bound_tightening, parameters)

    mip_for_bound_tightening_for_solver = mip_solver.build_mip_for_solver(mip_for_bound_tightening, parameters)
    
    
    log_info('PREPROCESSING')
    log_file.write('PREPROCESSING\n')
    preprocessor = Preprocessor()
    preprocessor.preprocessing(mip_for_bound_tightening, mip_for_bound_tightening_for_solver, parameters, log_file)
    
    log_info('CREATE RELAXATION FOR ADAPTIVE ALGORITHM')
    log_file.write('\nCREATE RELAXATION FOR ADAPTIVE ALGORITHM\n')   
    mip_relaxation = mip_relaxation_builder.build(minlp_reformulation, parameters['max_error_adaptive_mip'], parameters['number_segments_adaptive_mip'], parameters['using_thermal_limit_in_adaptive_mip'],parameters['using_socp_in_adaptive_mip'], parameters['number_initial_outer_approximation_in_adaptive_mip'], parameters['using_nonconvex_qp_in_adaptive_mip'], parameters['using_mckormick_in_adaptive_mip'], parameters['adaptive_domain_reduction_adaptive_mip'],parameters['univariate_approximation'])   



    log_info('CREATE TIGHT RELAXATION FOR DUAL BOUND')
    log_file.write('\nCREATE TIGHT RELAXATION FOR DUAL BOUND\n')

    tight_mip = mip_relaxation_builder.build(minlp_reformulation, parameters['max_error_for_tight_mip'], parameters['number_segments_tight_mip'],parameters['using_thermal_limit_in_tight_mip'], parameters['using_socp_in_tight_mip'], parameters['number_initial_outer_approximation_tight_mip'], parameters['using_nonconvex_qp_in_tight_mip'], parameters['using_mckormick_in_tight_mip'],0,parameters['univariate_approximation'])
    tight_mip_for_solver = mip_solver.build_mip_for_solver(tight_mip, parameters)

    
    gams_writer.write_tight_mip( tight_mip , parameters)




    def solve_tight_mip(tight_mip, tight_mip_for_solver, tight_obj_bound,tight_obj_primal, finish_flag):
        


        tight_mip_log_file.write('\nSTART AT TIME: ' +  str(round(time()-time_start,2)) + '\n')
        
        tight_mip_log_file.write('\nSTART AT TIME: ' +  str(round(time()-time_start,2)))
        trap = io.StringIO()
        if parameters['solve_only_tight_mip'] == 1 and parameters['parallelize_tight_mip'] == 0:
            trap = sys.stdout
        with redirect_stdout(trap):
            tight_mip_for_solver.Params.LogFile = tight_mip_log_file.name
            tight_mip_for_solver.Params.OutputFlag = 1

            time_limit_next_mip = min(parameters['time_limit_tight_mip'], (parameters['time_limit'] - round(time()-time_start,2)))
            if time_limit_next_mip <= 0.0:
                return
            tight_mip_for_solver.Params.TimeLimit = time_limit_next_mip
            
            error = parameters['max_error_for_tight_mip']
            number_segments = parameters['number_segments_tight_mip']
            
            tight_mip_for_solver.Params.MIPGap = 0.0001
            tight_mip_for_solver.update()
            trap = io.StringIO()
            if parameters['solve_only_tight_mip'] == 1 and parameters['parallelize_tight_mip'] == 0:
                trap = sys.stdout
            tight_mip_log_file.write('\nSTART AT TIME: ' +  str(round(time()-time_start,2)) + '\n')
            tight_mip_for_solver.optimize(my_gurobi_callback_for_tight_mip)
            tight_obj_bound.set(tight_mip_for_solver.ObjBound)
            
            infeasible = 'no'
            
            if mip_relaxation.objective.orientation == 'min':
                tight_obj_primal.set(tight_mip.upper_obj_bound)
                tight_mip.update_lower_obj_bound(tight_obj_bound.get())
                tight_mip.update_upper_obj_bound(tight_obj_primal.get())
                if tight_mip.lower_obj_bound >= 1e+90:
                    infeasible = 'yes'
            else:
                tight_mip.update_upper_obj_bound(tight_obj_bound.get())
                tight_obj_primal.set(tight_mip.lower_obj_bound)
                tight_mip.update_upper_obj_obund(tight_obj_primal.get())
                if tight_mip.upper_obj_bound <= -1e+90:
                    infeasible = 'yes'
            
        print('TIGHT-MIP FINISHED',  'TIME: ', round(time()-time_start,2))
        tight_mip_log_file.write('\nTIGHT-MIP FINISHED! ' + 'TIME: ' +  str(round(time()-time_start,2)))

    
        flag = 0
        tight_mip_runtime_factor = 1
        while flag == 0 and parameters['adaptive_tight_mip'] == 1 and infeasible == 'no':    #main algorithm is not finished
            log_info('\nREFINE TIGHT-MIP\n')
            #log_file.write('\nREFINE TIGHT-MIP\n')
            tight_mip_log_file.write('\nREFINE KILLING TIGHT-MIP\n')
            tight_mip_refiner = RelaxationRefiner()
            
            if parameters['refine_adaptive_tight_mip_with_error'] == 1:
                error = error*1.0/parameters['factor_for_adaptive_tight_mip']
            else:
                number_segments = number_segments * parameters['factor_for_adaptive_tight_mip']
            

            tight_mip = mip_relaxation_builder.build(minlp_reformulation, error, parameters['number_segments_tight_mip'],
                                                     parameters['using_thermal_limit_in_tight_mip'], parameters['using_socp_in_tight_mip'],
                                                     parameters['number_initial_outer_approximation_tight_mip'], parameters['using_nonconvex_qp_in_tight_mip'],
                                                     parameters['using_mckormick_in_tight_mip'],0,parameters['univariate_approximation'])

            infeasible = 'no'
            
            if mip_relaxation.objective.orientation == 'min':

                tight_mip.update_lower_obj_bound(max(tight_obj_bound.get(),mip_relaxation.lower_obj_bound))
      
                if tight_mip.lower_obj_bound >= 1e+90:
                    infeasible = 'yes'
            else:

                if tight_mip.upper_obj_bound <= -1e+90:
                    infeasible = 'yes'

    
            trap = io.StringIO()
            if parameters['solve_only_tight_mip'] == 1 and parameters['parallelize_tight_mip'] == 0:
                trap = sys.stdout
            with redirect_stdout(trap):
                tight_mip.upper_obj_bound = inf
                tight_mip_for_solver = mip_solver.build_mip_for_solver(tight_mip, parameters)
                tight_mip_for_solver.Params.LogFile = tight_mip_log_file.name
                tight_mip_for_solver.Params.OutputFlag = 1

            
                tight_mip_runtime_factor = tight_mip_runtime_factor * 4
                time_limit_next_mip = min(parameters['time_limit_tight_mip'] * tight_mip_runtime_factor, (parameters['time_limit'] - round(time()-time_start,2)))
                if time_limit_next_mip <= 0.0:
                    break
                tight_mip_for_solver.Params.TimeLimit = time_limit_next_mip
                tight_mip_for_solver.Params.MIPGap = 0.0001
                if parameters['using_nonconvex_qp_in_tight_mip'] == 1:
                    tight_mip_for_solver.Params.NonConvex = 2
                tight_mip_for_solver.update()
                tight_mip_for_solver.optimize(my_gurobi_callback_for_tight_mip)
                tight_obj_bound.set(tight_mip_for_solver.ObjBound)
                
            if mip_relaxation.objective.orientation == 'min':
                tight_obj_primal.set(tight_mip.upper_obj_bound)
                tight_mip.update_lower_obj_bound(tight_obj_bound.get())
                tight_mip.update_upper_obj_bound(tight_obj_primal.get())
                if tight_mip.lower_obj_bound >= 1e+90:
                    infeasible = 'yes'
            else:
                tight_mip.update_upper_obj_bound(tight_obj_bound.get())
                tight_obj_primal.set(tight_mip.lower_obj_bound)
                tight_mip.update_upper_obj_obund(tight_obj_primal.get())  
                if tight_mip.upper_obj_bound <= -1e+90:
                    infeasible = 'yes'
    
            print('TIGHT-MIP FINISHED',  'TIME: ', round(time()-time_start,2))
            tight_mip_log_file.write('\nTIGHT-MIP FINISHED! ' + 'TIME: ' +  str(round(time()-time_start,2)))   
            flag = finish_flag.get()
      
            
            objBound = tight_obj_bound.get()
            objPrimal = tight_obj_primal.get()
            if mip_relaxation.objective.orientation == 'min' and objBound > -inf:
                mip_relaxation.update_lower_obj_bound( objBound )
            if mip_relaxation.objective.orientation == 'max' and objBound < inf:
                mip_relaxation.update_upper_obj_bound( objBound )     
                    
            if mip_relaxation.objective.orientation == 'min' and objPrimal > -inf:
                if mip_relaxation.upper_obj_bound > objPrimal:
                    print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                    get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
                mip_relaxation.update_upper_obj_bound( objPrimal )
            if mip_relaxation.objective.orientation == 'max' and objPrimal < inf:
                if mip_relaxation.lower_obj_bound < objPrimal:
                    print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                    get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
                mip_relaxation.update_lower_obj_bound( objPrimal )  
    

        
    def adaptive_mip_algorithm(tight_obj_bound,tight_obj_primal,finish_flag):
        log_info('SOLVE INITIAL MIP-RELAXATION') 
        log_file.write('\nSOLVE INITIAL MIP-RELAXATION\n') 
        
        nlp_writer = GamsNlpWriter()
        nlp_writer.write_nlp_for_first_iteration(minlp, mip_relaxation, parameters)        

        global nlp_solver
        nlp_solver = NlpSolver()
        global time_nlp_start
        global time_nlp
        time_nlp_start = time()
        if parameters['try_intervall_middlepoint_for_nlp'] == 1 and parameters['try_nlp_with_binaries_on'] == 1 and parameters['fix_number_of_switched_transmissions']== 0:
            file_path_middle = create_nlp_middle_point_file_path(minlp, mip_relaxation)
            nlp_solver.solve_and_save_result(file_path_middle, mip_relaxation, time_start, parameters)
            mip_relaxation.increase_number_of_solved_nlps()

        if parameters['try_matpower_initial_value'] == 1 and parameters['try_nlp_with_binaries_on'] == 1 and parameters['fix_number_of_switched_transmissions']== 0:
            file_path_matpower = create_nlp_matpower_initial_file_path(minlp, mip_relaxation)
            nlp_solver.solve_and_save_result(file_path_matpower, mip_relaxation, time_start, parameters)
            mip_relaxation.increase_number_of_solved_nlps()
            
 
        if parameters['try_one_nlp_without_starting_value'] == 1 and parameters['try_nlp_with_binaries_on'] == 1 and parameters['fix_number_of_switched_transmissions']== 0:
            file_path_without = create_nlp_without_starting_value_file_path(minlp, mip_relaxation)
            nlp_solver.solve_and_save_result(file_path_without, mip_relaxation, time_start, parameters)
            mip_relaxation.increase_number_of_solved_nlps()        
        time_nlp = time() - time_nlp_start
        time_nlp_old = time_nlp
        
        if parameters['using_dc_solution'] == 1:
            build_and_solve_dc_approximation(network, parameters, curtailment_info)
  
        
        use_penalty = 0
        no_good_cuts = 0
        forbid_no_good_cuts = 0
        use_pool = parameters['use_solution_pool_in_adaptive_mip_for_local_search']
        
        if parameters['use_no_good_cuts_also_in_global_iteration'] == 1:
            no_good_cuts = parameters['no_good_cuts']
  


        objBound = tight_obj_bound.get()
        objPrimal = tight_obj_primal.get()
        if mip_relaxation.objective.orientation == 'min' and objBound > -inf:
            mip_relaxation.update_lower_obj_bound( objBound )
        if mip_relaxation.objective.orientation == 'max' and objBound < inf:
            mip_relaxation.update_upper_obj_bound( objBound )     
            
        if mip_relaxation.objective.orientation == 'min' and objPrimal > -inf:
            if mip_relaxation.upper_obj_bound > objPrimal:
                print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
            mip_relaxation.update_upper_obj_bound( objPrimal )
        if mip_relaxation.objective.orientation == 'max' and objPrimal < inf:
            if mip_relaxation.lower_obj_bound < objPrimal:
                print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
            mip_relaxation.update_lower_obj_bound( objPrimal )      

        
        mip_for_solver = mip_solver.build_mip_for_solver(mip_relaxation, parameters, use_penalty, use_pool, no_good_cuts)



        
        objBound = tight_obj_bound.get()
        objPrimal = tight_obj_primal.get()
        if mip_relaxation.objective.orientation == 'min' and objBound > -inf:
            mip_relaxation.update_lower_obj_bound( objBound )
        if mip_relaxation.objective.orientation == 'max' and objBound < inf:
            mip_relaxation.update_upper_obj_bound( objBound )     
            
        if mip_relaxation.objective.orientation == 'min' and objPrimal > -inf:
            if mip_relaxation.upper_obj_bound > objPrimal:
                print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
            mip_relaxation.update_upper_obj_bound( objPrimal )
        if mip_relaxation.objective.orientation == 'max' and objPrimal < inf:
            if mip_relaxation.lower_obj_bound < objPrimal:
                print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
            mip_relaxation.update_lower_obj_bound( objPrimal )      

        [gen, line, curtailed] = [0,0,0]
        solution_flag = 0
        if mip_relaxation.objective.orientation == 'min' and mip_relaxation.upper_obj_bound < inf:
            [gen, line, curtailed] = get_switching_solution(mip_relaxation, parameters, network, curtailment_info)
            solution_flag = 1
        if mip_relaxation.objective.orientation == 'max' and mip_relaxation.lower_obj_bound > -inf:         
            [gen, line, curtailed] = get_switching_solution(mip_relaxation, parameters, network, curtailment_info)
            solution_flag = 1
        
        if mip_relaxation.objective.orientation == 'min':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6, abs(mip_relaxation.upper_obj_bound))
        elif mip_relaxation.objective.orientation == 'max':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6, abs(mip_relaxation.lower_obj_bound))
        
        if solution_flag == 1:
            sol_file = open( str(network_filename).replace('.m','')+'_sol.txt', 'w')
            sol_file.write("upper Objective bound: " + str(mip_relaxation.lower_obj_bound) + "\n")
            sol_file.write("lower Objective bound: " + str(mip_relaxation.upper_obj_bound) + "\n")
            for outer_key in minlp.variables.keys():
                for inner_key in minlp.variables[outer_key].keys():
                    var = mip_relaxation.variables[outer_key][inner_key]
                    sol_file.write(str(var.id) + " " + str(var.solution_value) + "\n")
                    
            sol_file.close()   
    
        if mip_relaxation.objective.orientation == 'min':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6,abs(mip_relaxation.upper_obj_bound))
        elif mip_relaxation.objective.orientation == 'max':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6,abs(mip_relaxation.lower_obj_bound))
 

        csv_file = open( directory_name + '/' + str(network_filename).replace('.m','') + '.csv', 'w')
        field_names = ['Iteration', 'OBJ_UPPER', 'OBJ_LOWER', 'GAP(%)', 'MAX_ERROR_ABS', 'TIME_MIP', 'TIME_NLP', 'TIME', 'GENERATORS_OFF', 'LINES_OFF', 'CURTAILED_FEED_IN(%)']
        csv_writer = csv.DictWriter(csv_file, fieldnames=field_names)
        csv_writer.writeheader()

        csv_writer.writerow( {'Iteration' : 0, 'OBJ_UPPER' : mip_relaxation.upper_obj_bound, 'OBJ_LOWER' : mip_relaxation.lower_obj_bound, 'GAP(%)' : gap*100,'MAX_ERROR_ABS' : mip_relaxation.max_relaxation_error_abs,'TIME_MIP' : (0), 'TIME_NLP' : (time_nlp), 'TIME' : (time()-time_start), 'GENERATORS_OFF' : gen, 'LINES_OFF' : line, 'CURTAILED_FEED_IN(%)':curtailed })
        print('Iteration: ', 0, 'OBJ_UPPER: ', mip_relaxation.upper_obj_bound, 'OBJ_LOWER: ', mip_relaxation.lower_obj_bound, 'GAP(%): ', gap*100,'MAX_ERROR_ABS' , round(mip_relaxation.max_relaxation_error_abs,7),'TIME_MIP: ', round(0,2), 'TIME_NLP: ', round(time_nlp,2), 'TIME: ', round(time()-time_start,2) )
        log_file.write('Iteration: ' + str(0) + ' OBJ_UPPER: ' + str(mip_relaxation.upper_obj_bound) + ' OBJ_LOWER: ' + str(mip_relaxation.lower_obj_bound) + ' GAP(%): ' + str(gap*100) + ' MAX_ERROR_ABS' + str(round(mip_relaxation.max_relaxation_error_abs,7)) + 'TIME_MIP: ' + str(round(0,2)) + ' TIME_NLP: ' + str(round(time_nlp,2)) + ' TIME: ' + str(round(time()-time_start,2)) + '\n')        
        
        
        time_mip_start = time()
        mip_solver_message = mip_solver.solve_and_save_results(mip_for_solver, mip_relaxation, my_gurobi_callback_for_adaptive_mip, use_penalty, no_good_cuts, parameters['time_limit_one_iteration'])
        
        
        
        if mip_solver_message == 'stop_no_good_cuts':
            forbid_no_good_cuts = 1
            mip_for_solver = mip_solver.build_mip_for_solver(mip_relaxation, parameters, use_penalty, use_pool, 0)
            mip_solver_message = mip_solver.solve_and_save_results(mip_for_solver, mip_relaxation, my_gurobi_callback_for_adaptive_mip, use_penalty, 0)  
            

        if parameters['print_every_relaxation_solution'] == 1:
            print_switching_relaxation_solution(mip_relaxation, parameters, network, curtailment_info)        
        
        time_mip = time() - time_mip_start - time_nlp_old
        
        if parameters['use_solution_pool_in_adaptive_mip_for_local_search'] == 1:
            time_nlp_start = time()
            nlp_solver.write_and_solve_nlps_from_solution_pool(minlp, mip_relaxation, mip_for_solver, mip_solver, nlp_writer, time_start, parameters)
            time_nlp = time_nlp + time() - time_nlp_start       
        
        if parameters['use_every_inbumbent_for_local_search'] == 0 and parameters['use_solution_pool_in_adaptive_mip_for_local_search']==0:        
            nlp_writer.write_nlp_from_relaxation_solution(minlp, mip_relaxation, parameters)
            
            
            global file_path
            file_path = create_nlp_file_path(minlp, mip_relaxation)
            
            time_nlp_start = time()
            nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters) 
            time_nlp = time_nlp + time() -time_nlp_start
            mip_relaxation.increase_number_of_solved_nlps()
            
            if parameters['try_intervall_middlepoint_for_nlp'] == 1:
               file_path_middle_path = create_nlp_middle_point_file_path(minlp, mip_relaxation)
               time_nlp_start = time()
               nlp_solver.solve_and_save_result(file_path_middle_path, mip_relaxation, time_start, parameters)
               time_nlp = time_nlp + time() - time_nlp_start

        objBound = tight_obj_bound.get()
        objPrimal = tight_obj_primal.get()
        if mip_relaxation.objective.orientation == 'min' and objBound > -inf:
            mip_relaxation.update_lower_obj_bound( objBound )
        if mip_relaxation.objective.orientation == 'max' and objBound < inf:
            mip_relaxation.update_upper_obj_bound( objBound )     
            
        if mip_relaxation.objective.orientation == 'min' and objPrimal > -inf:
            if mip_relaxation.upper_obj_bound > objPrimal:
                print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
            mip_relaxation.update_upper_obj_bound( objPrimal )
        if mip_relaxation.objective.orientation == 'max' and objPrimal < inf:
            if mip_relaxation.lower_obj_bound < objPrimal:
                print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
            mip_relaxation.update_lower_obj_bound( objPrimal )      
        
        [gen, line, curtailed] = [0,0,0]
        solution_flag = 0
        if mip_relaxation.objective.orientation == 'min' and mip_relaxation.upper_obj_bound < inf:
            [gen, line, curtailed] = get_switching_solution(mip_relaxation, parameters, network, curtailment_info)
            solution_flag = 1
        if mip_relaxation.objective.orientation == 'max' and mip_relaxation.lower_obj_bound > -inf:         
            [gen, line, curtailed] = get_switching_solution(mip_relaxation, parameters, network, curtailment_info)
            solution_flag = 1
        
        if mip_relaxation.objective.orientation == 'min':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6, abs(mip_relaxation.upper_obj_bound))
        elif mip_relaxation.objective.orientation == 'max':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6, abs(mip_relaxation.lower_obj_bound))
        
        if solution_flag == 1:
            sol_file = open( str(network_filename).replace('.m','')+'_sol.txt', 'w')
            sol_file.write("upper Objective bound: " + str(mip_relaxation.lower_obj_bound) + "\n")
            sol_file.write("lower Objective bound: " + str(mip_relaxation.upper_obj_bound) + "\n")
            for outer_key in minlp.variables.keys():
                for inner_key in minlp.variables[outer_key].keys():
                    var = mip_relaxation.variables[outer_key][inner_key]
                    sol_file.write(str(var.id) + " " + str(var.solution_value) + "\n")
                    
            sol_file.close()   
    
        if mip_relaxation.objective.orientation == 'min':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6,abs(mip_relaxation.upper_obj_bound))
        elif mip_relaxation.objective.orientation == 'max':
            gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6,abs(mip_relaxation.lower_obj_bound))
 
        
        csv_writer.writerow( {'Iteration' : mip_relaxation.iteration_number, 'OBJ_UPPER' : mip_relaxation.upper_obj_bound, 'OBJ_LOWER' : mip_relaxation.lower_obj_bound, 'GAP(%)' : gap*100,'MAX_ERROR_ABS' : mip_relaxation.max_relaxation_error_abs,'TIME_MIP' : (time_mip), 'TIME_NLP' : (time_nlp), 'TIME' : (time()-time_start), 'GENERATORS_OFF' : gen, 'LINES_OFF' : line, 'CURTAILED_FEED_IN(%)':curtailed })
        print('Iteration: ', mip_relaxation.iteration_number, 'OBJ_UPPER: ', mip_relaxation.upper_obj_bound, 'OBJ_LOWER: ', mip_relaxation.lower_obj_bound, 'GAP(%): ', gap*100,'MAX_ERROR_ABS' , round(mip_relaxation.max_relaxation_error_abs,7),'TIME_MIP: ', round(time_mip,2), 'TIME_NLP: ', round(time_nlp,2), 'TIME: ', round(time()-time_start,2) )
        log_file.write('Iteration: ' + str(mip_relaxation.iteration_number) + ' OBJ_UPPER: ' + str(mip_relaxation.upper_obj_bound) + ' OBJ_LOWER: ' + str(mip_relaxation.lower_obj_bound) + ' GAP(%): ' + str(gap*100) + ' MAX_ERROR_ABS' + str(round(mip_relaxation.max_relaxation_error_abs,7)) + 'TIME_MIP: ' + str(round(time_mip,2)) + ' TIME_NLP: ' + str(round(time_nlp,2)) + ' TIME: ' + str(round(time()-time_start,2)) + '\n')

        while mip_solver.check_stopping_criteria(mip_relaxation, parameters, time_start, log_file) == False:
            objBound = tight_obj_bound.get()
            objPrimal = tight_obj_primal.get()
            if mip_relaxation.objective.orientation == 'min' and objBound > -inf:
                mip_relaxation.update_lower_obj_bound( objBound )
            if mip_relaxation.objective.orientation == 'max' and objBound < inf:
                mip_relaxation.update_upper_obj_bound( objBound )     
                
            if mip_relaxation.objective.orientation == 'min' and objPrimal > -inf:
                if mip_relaxation.upper_obj_bound > objPrimal:
                    print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                    get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
                mip_relaxation.update_upper_obj_bound( objPrimal )
            if mip_relaxation.objective.orientation == 'max' and objPrimal < inf:
                if mip_relaxation.lower_obj_bound < objPrimal:
                    print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                    get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
                mip_relaxation.update_lower_obj_bound( objPrimal )  
                
            if mip_relaxation.objective.orientation == 'min' and objPrimal > -inf:
                mip_relaxation.update_upper_obj_bound( objPrimal )
            if mip_relaxation.objective.orientation == 'max' and objPrimal < inf:
                mip_relaxation.update_lower_obj_bound( objPrimal ) 
    
    
            relaxation_refiner =  RelaxationRefiner()
            relaxation_refiner.refine_mip_relaxation(mip_relaxation, parameters, minlp)
                      
            

            if mip_relaxation.lower_obj_bound > -inf and mip_relaxation.upper_obj_bound < inf:
                nlp_solver.create_and_save_relaxation_values(mip_relaxation, time_start)
        
       
            if mip_relaxation.iteration_number%parameters['frequency_global_optimality'] == 0:    #optimality gap
                use_penalty = 0
                no_good_cuts = 0
            else:
                use_penalty = 1
                no_good_cuts = 1
            
            if parameters['use_no_good_cuts_also_in_global_iteration'] == 1:
                no_good_cuts = parameters['no_good_cuts']
            if parameters['use_var_change_also_in_global_iteration'] == 1:
                use_penalty = parameters['encourage_discrete_var_change']
            
            if parameters['encourage_discrete_var_change'] == 0:
                use_penalty = 0
            if parameters['no_good_cuts'] == 0 or forbid_no_good_cuts == 1:
                no_good_cuts = 0
                
            mip_for_solver = mip_solver.build_mip_for_solver(mip_relaxation, parameters, use_penalty, use_pool, no_good_cuts)
            
            if parameters['using_nonconvex_qp_in_adaptive_mip'] == 1:
                mip_for_solver.Params.NonConvex = 2
            

   
            time_mip = 0
            time_nlp = 0
            time_mip_start = time()
            mip_solver_message = mip_solver.solve_and_save_results(mip_for_solver, mip_relaxation, my_gurobi_callback_for_adaptive_mip, use_penalty, no_good_cuts, parameters['time_limit_one_iteration'])  
            if mip_solver_message == 'stop_no_good_cuts':
                forbid_no_good_cuts = 1
                mip_for_solver = mip_solver.build_mip_for_solver(mip_relaxation, parameters, use_penalty, use_pool, 0)

                if parameters['using_nonconvex_qp_in_adaptive_mip'] == 1:
                    mip_for_solver.Params.NonConvex = 2

                mip_solver_message = mip_solver.solve_and_save_results(mip_for_solver, mip_relaxation, my_gurobi_callback_for_adaptive_mip, use_penalty, 0)  
                    
            if parameters['print_every_relaxation_solution'] == 1:
                print_switching_relaxation_solution(mip_relaxation, parameters, network, curtailment_info)       
                
            time_mip = time() - time_mip_start - time_nlp
            
            if parameters['use_solution_pool_in_adaptive_mip_for_local_search'] == 1:
                time_nlp_start = time()
                nlp_solver.write_and_solve_nlps_from_solution_pool(minlp, mip_relaxation, mip_for_solver, mip_solver, nlp_writer, time_start, parameters)
                time_nlp = time_nlp + time() - time_nlp_start     
                
            if parameters['use_every_inbumbent_for_local_search'] == 0 and parameters['use_solution_pool_in_adaptive_mip_for_local_search'] == 0:  
                nlp_writer.write_nlp_from_relaxation_solution(minlp, mip_relaxation, parameters)
                time_nlp_start = time()
                nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)
                time_nlp = time_nlp + time() - time_nlp_start
                mip_relaxation.increase_number_of_solved_nlps()
                
                if parameters['try_intervall_middlepoint_for_nlp'] == 1 and mip_relaxation.changed_binary_decission == 'yes':
                    file_path_middle_point = create_nlp_middle_point_file_path(minlp, mip_relaxation)
                    time_nlp_start = time()
                    nlp_solver.solve_and_save_result(file_path_middle_point, mip_relaxation, time_start, parameters)
                    time_nlp = time_nlp + time() - time_nlp_start

            objBound = tight_obj_bound.get()
            objPrimal = tight_obj_primal.get()
            if mip_relaxation.objective.orientation == 'min' and objBound > -inf:
                mip_relaxation.update_lower_obj_bound( objBound )
            if mip_relaxation.objective.orientation == 'max' and objBound < inf:
                mip_relaxation.update_upper_obj_bound( objBound )     
                
            if mip_relaxation.objective.orientation == 'min' and objPrimal > -inf:
                if mip_relaxation.upper_obj_bound > objPrimal:
                    print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                    get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
                mip_relaxation.update_upper_obj_bound( objPrimal )
            if mip_relaxation.objective.orientation == 'max' and objPrimal < inf:
                if mip_relaxation.lower_obj_bound < objPrimal:
                    print('TIGHT-MIP FOUND BETTER SOLUTION with: ', objPrimal)
                    get_solution_from_sol_tight_file(mip_relaxation, nlp_solver)
                mip_relaxation.update_lower_obj_bound( objPrimal )  
            
            [gen, line, curtailed] = [0,0,0]
            solution_flag = 0
            if mip_relaxation.objective.orientation == 'min' and mip_relaxation.upper_obj_bound < inf:
                [gen, line, curtailed] = get_switching_solution(mip_relaxation, parameters, network, curtailment_info)
                solution_flag = 1
            if mip_relaxation.objective.orientation == 'max' and mip_relaxation.lower_obj_bound > -inf:         
                [gen, line, curtailed] = get_switching_solution(mip_relaxation, parameters, network, curtailment_info)
                solution_flag = 1
            
            if mip_relaxation.objective.orientation == 'min':
                gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6, abs(mip_relaxation.upper_obj_bound))
            elif mip_relaxation.objective.orientation == 'max':
                gap = abs(mip_relaxation.upper_obj_bound-mip_relaxation.lower_obj_bound)/max(1e-6, abs(mip_relaxation.lower_obj_bound))
            
            if solution_flag == 1:
                sol_file = open( str(network_filename).replace('.m','')+'_sol.txt', 'w')
                sol_file.write("upper Objective bound: " + str(mip_relaxation.lower_obj_bound) + "\n")
                sol_file.write("lower Objective bound: " + str(mip_relaxation.upper_obj_bound) + "\n")
                for outer_key in minlp.variables.keys():
                    for inner_key in minlp.variables[outer_key].keys():
                        var = mip_relaxation.variables[outer_key][inner_key]
                        sol_file.write(str(var.id) + " " + str(var.solution_value) + "\n")
                        
                sol_file.close()        

            csv_writer.writerow( {'Iteration' : mip_relaxation.iteration_number, 'OBJ_UPPER' : mip_relaxation.upper_obj_bound, 'OBJ_LOWER' : mip_relaxation.lower_obj_bound, 'GAP(%)' : gap*100,'MAX_ERROR_ABS' : mip_relaxation.max_relaxation_error_abs,'TIME_MIP' : (time_mip), 'TIME_NLP' : (time_nlp), 'TIME' : (time()-time_start), 'GENERATORS_OFF' : gen, 'LINES_OFF' : line, 'CURTAILED_FEED_IN(%)':curtailed })            
            print('Iteration: ', mip_relaxation.iteration_number, 'OBJ_UPPER: ', mip_relaxation.upper_obj_bound, 'OBJ_LOWER: ', mip_relaxation.lower_obj_bound, 'GAP(%): ', gap*100,'MAX_ERROR_ABS' , round(mip_relaxation.max_relaxation_error_abs,7) ,'TIME_MIP: ', round(time_mip,2), 'TIME_NLP: ', round(time_nlp,2), 'TIME: ', round(time()-time_start,2) )

            log_file.write('Iteration: ' + str(mip_relaxation.iteration_number) + ' OBJ_UPPER: ' + str(mip_relaxation.upper_obj_bound) + ' OBJ_LOWER: ' + str(mip_relaxation.lower_obj_bound) + ' GAP(%): ' + str(gap*100) + ' MAX_ERROR_ABS' + str(round(mip_relaxation.max_relaxation_error_abs,7)) + 'TIME_MIP: ' + str(round(time_mip,2)) + ' TIME_NLP: ' + str(round(time_nlp,2)) + ' TIME: ' + str(round(time()-time_start,2)) + '\n')
        
        csv_file.close()
        
        finish_flag.set(1) 


        
        print('SOLVED NLPs: ', mip_relaxation.number_of_solved_nlps )
        log_file.write('SOLVED NLPs: ' + str(mip_relaxation.number_of_solved_nlps)  + '\n')
 
        print_switching_solution(mip_relaxation, parameters, network, curtailment_info)
        
        finish_flag.set(1)        



    manager = Manager()
    global tight_obj_bound
    global tight_obj_primal
    global finish_flag
    if mip_relaxation.objective.orientation == 'min':
        tight_obj_bound = manager.Value('f', mip_relaxation.lower_obj_bound)
        tight_obj_primal = manager.Value('f', mip_relaxation.upper_obj_bound)
    else:
        tight_obj_bound = manager.Value('f', mip_relaxation.upper_obj_bound)
        tight_obj_primal = manager.Value('f', mip_relaxation.lower_obj_bound)
    
    finish_flag = manager.Value('i', 0)
    
    if parameters['parallelize_tight_mip'] == 1:
        
        proc1 = Process(target=adaptive_mip_algorithm, args=(tight_obj_bound,tight_obj_primal,finish_flag,))  
        proc2 = Process(target=solve_tight_mip, args=(tight_mip, tight_mip_for_solver,tight_obj_bound,tight_obj_primal,finish_flag,))            

        
        proc2.start()       
        proc1.start()

    
        proc2.join()        
        proc1.join()    
    
    

    else:
        if parameters['solve_only_tight_mip'] == 1:
            solve_tight_mip(tight_mip, tight_mip_for_solver, tight_obj_bound, tight_obj_primal, finish_flag)
        else:

            adaptive_mip_algorithm(tight_obj_bound, tight_obj_primal, finish_flag)

    
    
    log_file.close()
    tight_mip_log_file.close()  
    print('END')
    return exit_code



######################################
# FUNCTIONS                          #
######################################


def create_nlp_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( mip.id )

def create_nlp_middle_point_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( mip.id + '_middle_point' )

def create_nlp_matpower_initial_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( mip.id + '_matpower_initial' )

def create_nlp_without_starting_value_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( mip.id + '_without_initial_point' )    

def create_nlp_from_tight_mip_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( 'tight_' + mip.id )    
   
def create_nlp_from_tight_mip_middle_point_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( 'tight' + '_' + mip.id + '_middle_point' )
    
def create_nlp_from_tight_mip_matpower_initial_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( 'tight' + '_' + mip.id + '_matpower_initial' )

def create_nlp_from_tight_mip_without_starting_value_file_path(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( 'tight' + '_' + mip.id + '_without_initial_point' )
    
def create_nlp_file_path_dc_middle_point(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( mip.id + '_middle_point_1' )

def create_nlp_file_path_dc_matpower_value(minlp, mip):
    return  os.getcwd()+'/gams_files/' + create_nlp_filename( mip.id + '_matpower_initial_1' )    

def my_gurobi_callback_for_tight_mip(model, where):
    if where == GRB.Callback.MIP:
        objbnd = model.cbGet(GRB.Callback.MIP_OBJBND)
        global tight_obj_bound
        tight_obj_bound.set(objbnd)
        global finish_flag
        if finish_flag.get() == 1:
            log_info('KILLING TIGHT-MIP')
            tight_mip_log_file.write('\nKILLING TIGHT-MIP\n')
            model.terminate()

    if where == GRB.Callback.MIPSOL:
        if tight_mip.objective.orientation == 'min':
            primal_old = tight_mip.upper_obj_bound
        if tight_mip.objective.orientation == 'max':
            primal_old = tight_mip.lower_obj_bound    
   

        mip_solver.save_relaxation_solution_from_incumbent(model, tight_mip)
        
        if parameters['try_tight_mip_incumbent'] == 1 and parameters['use_every_inbumbent_for_local_search'] == 1:
            nlp_writer = GamsNlpWriter()
            nlp_solver = NlpSolver()
            file_path_tight = create_nlp_from_tight_mip_file_path(minlp, tight_mip)
            nlp_writer.write_nlp_from_tight_relaxation_solution(minlp, tight_mip, parameters)
            nlp_solver.solve_and_save_result(file_path_tight, tight_mip, time_start, parameters)
            tight_mip.increase_number_of_solved_nlps()
            
            if parameters['try_tight_mip_incumbent'] == 1 and parameters['try_intervall_middlepoint_for_nlp'] == 1 and (tight_mip.changed_binary_decission == 'yes' or tight_mip.iteration_number == 1):
                file_path_tight = create_nlp_from_tight_mip_middle_point_file_path(minlp, tight_mip)
                nlp_solver.solve_and_save_result(file_path_tight, tight_mip, time_start, parameters)
                tight_mip.increase_number_of_solved_nlps()

            if parameters['try_tight_mip_incumbent'] == 1 and parameters['try_matpower_initial_value'] == 1 and (tight_mip.changed_binary_decission == 'yes' or tight_mip.iteration_number == 1):
                file_path_tight = create_nlp_from_tight_mip_matpower_initial_file_path(minlp, tight_mip)
                nlp_solver.solve_and_save_result(file_path_tight, tight_mip, time_start, parameters)
                tight_mip.increase_number_of_solved_nlps()
                
 
            if parameters['try_tight_mip_incumbent'] == 1 and parameters['try_one_nlp_without_starting_value'] == 1 and (tight_mip.changed_binary_decission == 'yes' or tight_mip.iteration_number ==1):
                file_path_tight = create_nlp_from_tight_mip_without_starting_value_file_path(minlp, tight_mip)
                nlp_solver.solve_and_save_result(file_path_tight, tight_mip, time_start, parameters)
                tight_mip.increase_number_of_solved_nlps()
            tight_mip.increase_iteration_number()
            
            global tight_obj_primal
            
            solution_flag = 0
            if tight_mip.objective.orientation == 'min':
                primal_new = tight_mip.upper_obj_bound
                if primal_new < primal_old:
                    solution_flag = 1
            if tight_mip.objective.orientation == 'max':
                primal_new = tight_mip.lower_obj_bound    
                if primal_new > primal_old:
                    solution_flag = 1            
            
            
            if solution_flag == 1:
                sol_file = open( str(tight_mip.id).replace('.m','')+'_sol_tight.txt', 'w')
                sol_file.write("upper Objective bound: " + str(tight_mip.lower_obj_bound) + "\n")
                sol_file.write("lower Objective bound: " + str(tight_mip.upper_obj_bound) + "\n")
                for outer_key in minlp.variables.keys():
                    for inner_key in minlp.variables[outer_key].keys():
                        var = tight_mip.variables[outer_key][inner_key]
                        sol_file.write(str(var.id) + " " + str(var.solution_value) + "\n")
                        
                sol_file.close()   
            
            
            if tight_mip.objective.orientation == 'min':
                tight_obj_primal.set(tight_mip.upper_obj_bound)
            if tight_mip.objective.orientation == 'max':
                tight_obj_primal.set(tight_mip.lower_obj_bound)           
            
def my_gurobi_callback_for_adaptive_mip(model, where):   
    if where == GRB.Callback.MIPSOL:
        mip_solver.save_relaxation_solution_from_incumbent(model, mip_relaxation)

        keys_of_vars=[]
        if parameters['generator_switching'] == 1:
            keys_of_vars.append('generator_switch')
        if parameters['transmission_switching'] == 1:
            keys_of_vars.append('transmission_switch')
        if parameters['discrete_curtailment'] == 1:
            keys_of_vars.append('curtailment_binaries')
        mip_relaxation.remember_incumbents(keys_of_vars)
        
        if parameters['use_every_inbumbent_for_local_search'] == 1:
            nlp_writer = GamsNlpWriter()
            nlp_solver = NlpSolver()
            file_path = create_nlp_file_path(minlp, mip_relaxation)
            nlp_writer.write_nlp_from_relaxation_solution(minlp, mip_relaxation, parameters)
            time_nlp_start = time()
            nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)
            global time_nlp
            time_nlp = time_nlp + time() - time_nlp_start
            mip_relaxation.increase_number_of_solved_nlps()
            
            if parameters['try_intervall_middlepoint_for_nlp'] == 1 and mip_relaxation.changed_binary_decission == 'yes':
                file_path = create_nlp_middle_point_file_path(minlp, mip_relaxation)
                time_nlp_start = time()
                nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)
                time_nlp = time_nlp + time() - time_nlp_start
                mip_relaxation.increase_number_of_solved_nlps()

            if parameters['try_matpower_initial_value'] == 1 and mip_relaxation.changed_binary_decission == 'yes':
                file_path = create_nlp_matpower_initial_file_path(minlp, mip_relaxation)
                time_nlp_start = time()
                nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)
                time_nlp = time_nlp + time() - time_nlp_start
                mip_relaxation.increase_number_of_solved_nlps()
                
 
            if parameters['try_one_nlp_without_starting_value'] == 1 and mip_relaxation.changed_binary_decission == 'yes':
                file_path = create_nlp_without_starting_value_file_path(minlp, mip_relaxation)
                time_nlp_start = time()
                nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)
                time_nlp = time_nlp + time() - time_nlp_start
                mip_relaxation.increase_number_of_solved_nlps()
               

    if where == GRB.Callback.MIP:
        run_time = model.cbGet(GRB.Callback.RUNTIME)
        bestsol = model.cbGet(GRB.Callback.MIP_OBJBST)
        #log_info(str(time))
        #log_info(str(bestsol))
        if run_time > parameters['time_limit_one_iteration'] and bestsol < GRB.INFINITY and bestsol > -GRB.INFINITY:
            log_info('KILLING ADAPTIVE-MIP; over TIME_LIMIT_PER_ITERATION')
            log_file.write('\nKILLING ADAPTIVE-MIP; over TIME_LIMIT_PER_ITERATION\n')
            tight_mip_log_file.write('\nKILLING ADAPTIVE-MIP; over TIME_LIMIT_PER_ITERATION\n')
            model.terminate()


def build_and_solve_dc_approximation(network, parameters, curtailment_info):
    
    time_dc_start = time()
    
    nlp_writer = GamsNlpWriter()
    nlp_solver = NlpSolver()    
    
    dc_time_start = time()
    print('CREATE AND SOLVE DC APPROXIMATION')
    log_file.write('CREATE AND SOLVE DC APPROXIMATION\n')
    
    global dc_mip, dc_mip_solver
    dc_mip = DcOpfMipBuilder().build( network, parameters, curtailment_info, mip_relaxation)
    
    
    dc_mip_solver = Mipsolver(dc_mip, parameters)
    
    
    use_pool_for_dc = parameters['use_solution_pool_for_dc']
    
    dc_mip_for_solver = dc_mip_solver.build_mip_for_solver(dc_mip, parameters, 0, use_pool_for_dc, 0, 0)
    
    
    if parameters['dc_time_limit'] > 0:
        dc_mip_for_solver.Params.TimeLimit = parameters['dc_time_limit']
    if parameters['dc_gap'] >= 0:
        dc_mip_for_solver.Params.MIPGap = parameters['dc_gap']
    
    dc_mip_solver.solve_and_save_results(dc_mip_for_solver, dc_mip, my_gurobi_callback_for_dc_mip)
    print('DC APPROXIMATION TOOK',round(time()-dc_time_start,2), 's with objective:', dc_mip.lower_obj_bound)

    if parameters['use_solution_pool_for_dc'] == 1:
        time_nlp_start = time()
        nlp_solver.write_and_solve_nlps_from_dc_solution_pool(minlp, mip_relaxation, dc_mip, dc_mip_for_solver, mip_solver, nlp_writer, time_nlp_start, parameters)


    dc_exit_flag = 0
    dc_iteration = 0
    
    if parameters['no_good_cuts_for_dc'] != 1:
        dc_exit_flag = 1

    time_dc_iteration = time()-time_dc_start
    if time_dc_iteration > parameters['dc_time_limit']:
        dc_exit_flag = 1
       
    while dc_exit_flag == 0 and dc_iteration <  parameters['no_good_cuts_for_dc_iteration_number']:
        dc_iteration = dc_iteration + 1
        print('DC WITH NO_GOOD_CUT: ITERATION',dc_iteration, 'of', parameters['no_good_cuts_for_dc_iteration_number'])
        dc_mip_for_solver = dc_mip_solver.build_mip_for_solver(dc_mip, parameters, 0, use_pool_for_dc, parameters['no_good_cuts_for_dc'], 0)

                
        dc_mip_for_solver.Params.TimeLimit = max(parameters['dc_time_limit'] - (time()-time_dc_start),0.1)
        
        solver_flag = dc_mip_solver.solve_and_save_results(dc_mip_for_solver, dc_mip, my_gurobi_callback_for_dc_mip, 0, parameters['no_good_cuts_for_dc'], parameters['time_limit_one_iteration'])
        if solver_flag == str('stop_no_good_cuts'):
            dc_exit_flag = 1

        time_dc_iteration = time()-time_dc_start
        if time_dc_iteration > parameters['dc_time_limit']:
            dc_exit_flag = 1
                
        
        
    

def my_gurobi_callback_for_dc_mip(model, where):   
    if where == GRB.Callback.MIPSOL:

        dc_mip_solver.save_relaxation_solution_from_incumbent(model, dc_mip)
        
        keys_of_vars=[]
        if parameters['generator_switching'] == 1:
            keys_of_vars.append('generator_switch')
        if parameters['transmission_switching'] == 1:
            keys_of_vars.append('transmission_switch')
        if parameters['discrete_curtailment'] == 1:
            keys_of_vars.append('curtailment_binaries')
        dc_mip.remember_incumbents(keys_of_vars)
        

        nlp_writer = GamsNlpWriter()
        nlp_solver = NlpSolver()
        file_path = create_nlp_file_path(minlp, dc_mip)
        nlp_writer.write_nlp_from_dc_solution(minlp, mip_relaxation, dc_mip, parameters)
        time_nlp_start = time()
        nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)
        global time_nlp
        time_nlp = 0
        time_nlp = time_nlp + time() - time_nlp_start
        mip_relaxation.increase_number_of_solved_nlps()
        
        if parameters['try_intervall_middlepoint_for_nlp'] == 1 and dc_mip.changed_binary_decission == 'yes':
            file_path = create_nlp_file_path_dc_middle_point(minlp, dc_mip)
            time_nlp_start = time()
            nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)

            time_nlp = 0
            time_nlp = time_nlp + time() - time_nlp_start
            mip_relaxation.increase_number_of_solved_nlps()
        
        if parameters['try_matpower_initial_value'] == 1:
            file_path = create_nlp_file_path_dc_matpower_value(minlp, dc_mip)
            time_nlp_start = time()
            nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)

            time_nlp = 0
            time_nlp = time_nlp + time() - time_nlp_start
            mip_relaxation.increase_number_of_solved_nlps()
        
        if parameters['try_one_nlp_without_starting_value'] == 1 and dc_mip.changed_binary_decission == 'yes':
            file_path = create_nlp_without_starting_value_file_path(minlp, dc_mip)
            time_nlp_start = time()
            nlp_solver.solve_and_save_result(file_path, mip_relaxation, time_start, parameters)
            time_nlp = time_nlp + time() - time_nlp_start
            mip_relaxation.increase_number_of_solved_nlps()


def  modify_generator_bounds( network, percentage ):
    for node in network.graph.nodes:
        bus = network.get_bus_data(node)
        if bus.has_generators == True:
            for gen in bus.generators:
                gen.change_data('minimum_real_power_output', round(percentage*gen.data['maximum_real_power_output'], NUMBER_DIGITS))
    



def test_if_domain_reduction_is_possible(mip):
    for outer_key in mip.relaxation_infos.keys():
        for inner_key in mip.relaxation_infos[outer_key].keys():
            info = mip.relaxation_infos[outer_key][inner_key]
            if info.constr_type == 'quadratic':
                var = info.var
                if var.lower_bound < 0 and var.upper_bound > 0:
                    reduction = min(abs(var.lower_bound),abs(var.upper_bound))
                    print('DOMAIN REDUCTION POSSIBLE DUE TO SYMMETRY', info.id, 'with', reduction,'(',100*reduction/(var.upper_bound-var.lower_bound),'%)')
            if info.constr_type == 'bilinear':
                var1 = info.var[0]
                var2 = info.var[1]
                if (var1.lower_bound < 0 and var1.upper_bound > 0) or (var2.lower_bound < 0 and var2.upper_bound > 0):
                    reduction1=0
                    reduction2=0
                    reduction_rel1=0
                    reduction_rel2=0
                    if var1.lower_bound < 0 and var1.upper_bound > 0:
                        reduction1 = min(abs(var1.lower_bound),abs(var1.upper_bound))
                        reduction_rel1 = reduction1/(var1.upper_bound-var1.lower_bound)
                    if var2.lower_bound < 0 and var2.upper_bound > 0:
                        reduction2 = min(abs(var2.lower_bound),abs(var2.upper_bound))
                        reduction_rel2 = reduction2/(var2.upper_bound-var2.lower_bound)                        
                    print('DOMAIN REDUCTION POSSIBLE DUE TO SYMMETRY', info.id, 'with', max(reduction1,reduction2),'(',100*max(reduction_rel1,reduction_rel2),'%)')

            if info.constr_type == 'sin':
                var = info.var
                if var.lower_bound < 0 and var.upper_bound > 0:
                    reduction = min(abs(var.lower_bound),abs(var.upper_bound))
                    print('DOMAIN REDUCTION POSSIBLE DUE TO SYMMETRY', info.id, 'with', reduction,'(',100*reduction/(var.upper_bound-var.lower_bound),'%)')
                if abs(var.upper_bound - var.lower_bound) > pi:
                    reduction = abs(var.upper_bound-var.lower_bound-pi)
                    print('DOMAIN REDUCTION POSSIBLE DUE TO PERIODICY', info.id, 'with', reduction,'(',100*reduction/(var.upper_bound-var.lower_bound),'%)')                
            if info.constr_type == 'cos':
                var = info.var
                if var.lower_bound < 0 and var.upper_bound > 0:
                    reduction = min(abs(var.lower_bound),abs(var.upper_bound))
                    print('DOMAIN REDUCTION POSSIBLE DUE TO SYMMETRY', info.id, 'with', reduction,'(',100*reduction/(var.upper_bound-var.lower_bound),'%)')
                if abs(var.upper_bound - var.lower_bound) > pi:
                    reduction = abs(var.upper_bound-var.lower_bound-pi)
                    print('DOMAIN REDUCTION POSSIBLE DUE TO PERIODICY', info.id, 'with', reduction,'(',100*reduction/(var.upper_bound-var.lower_bound),'%)')                
            if info.constr_type == 'tan':
                var = info.var
                if var.lower_bound < 0 and var.upper_bound > 0:
                    reduction = min(abs(var.lower_bound),abs(var.upper_bound))
                    print('DOMAIN REDUCTION POSSIBLE DUE TO SYMMETRY', info.id, 'with', reduction,'(',100*reduction/(var.upper_bound-var.lower_bound),'%)')


def print_switching_solution(mip_relaxation, parameters, network, curtailment_info=''):
    try:
        if parameters['generator_switching'] == 1 or parameters['transmission_switching'] == 1:
            print('\nBinaries off:')
        counter = 0
        if parameters['generator_switching'] == 1:
            for inner_key in mip_relaxation.variables['generator_switch'].keys():
                var = mip_relaxation.variables['generator_switch'][inner_key]
                
                if var.solution_value == 0:
                    counter = counter + 1
                    log_info(str(var.id) + ' ' + str(var.solution_value))

            log_info('GENERATORS OFF: ' + str(counter))
        counter = 0
        if parameters['transmission_switching'] == 1:
            for inner_key in mip_relaxation.variables['transmission_switch'].keys():
                var = mip_relaxation.variables['transmission_switch'][inner_key]
                if var.solution_value == 0:
                    counter = counter + 1
                    log_info(str(var.id) + ' ' + str(var.solution_value))

            log_info('TRANSMISSIONS OFF: ' + str(counter))
        if (parameters['generator_switching'] == 1 or parameters['transmission_switching'] == 1) and counter == 0:
            #print('no Binary off')
            log_info('no Binary off')
        
        if parameters['discrete_curtailment'] == 1:

            log_info('\nFeed-In from Renewables:')
            for key in mip_relaxation.variables['curtailed_feed_in'].keys():

                
                feed_in = mip_relaxation.variables['curtailed_feed_in'][key].solution_value
                node_info = curtailment_info.get_curtailment_node_info(key)
                if abs(feed_in - node_info.produced_power) < 1e-6:
                    curtailment = 1
                else:
                    curtailment = feed_in / node_info.installed_power * network.base_MVA

                
                log_info(str(key) + ' ' + str(feed_in) + ' (Curtailment: ' + str(round(curtailment,4)) + ' )') 
    except:
        pass

def get_switching_solution(mip_relaxation, parameters, network, curtailment_info=''):
    gen = 0
    line = 0
    curtailed = 0
    feed_in_sum = 0
    produced_sum = 0
    
    try:
        if parameters['generator_switching'] == 1 or parameters['transmission_switching'] == 1:
            pass
            #print('\nBinaries off:')
        counter = 0
        if parameters['generator_switching'] == 1:
            for inner_key in mip_relaxation.variables['generator_switch'].keys():
                var = mip_relaxation.variables['generator_switch'][inner_key]
                
                if var.solution_value == 0:
                    counter = counter + 1

            gen = counter
        counter = 0
        if parameters['transmission_switching'] == 1:
            for inner_key in mip_relaxation.variables['transmission_switch'].keys():
                var = mip_relaxation.variables['transmission_switch'][inner_key]
                if var.solution_value == 0:
                    counter = counter + 1

            line = counter
        if (parameters['generator_switching'] == 1 or parameters['transmission_switching'] == 1) and counter == 0:

            pass
        
        if parameters['discrete_curtailment'] == 1:

            for key in mip_relaxation.variables['curtailed_feed_in'].keys():
                
                feed_in = mip_relaxation.variables['curtailed_feed_in'][key].solution_value
                node_info = curtailment_info.get_curtailment_node_info(key)
                if abs(feed_in - node_info.produced_power) < 1e-6:
                    curtailment = 1
                else:
                    curtailment = feed_in / node_info.installed_power * network.base_MVA
                feed_in_sum = feed_in_sum + feed_in
                produced_sum = produced_sum + node_info.produced_power

            curtailed = (produced_sum - feed_in_sum * network.base_MVA)/produced_sum * 100
    except:
        pass

    return [gen, line, curtailed]

    

def print_switching_relaxation_solution(mip_relaxation, parameters, network, curtailment_info=''):
    print('')
    try:
        if parameters['generator_switching'] == 1 or parameters['transmission_switching'] == 1:
            print('\nBinaries off:')
        counter = 0
        if parameters['generator_switching'] == 1:
            for inner_key in mip_relaxation.variables['generator_switch'].keys():
                var = mip_relaxation.variables['generator_switch'][inner_key]
                
                if var.relaxation_value == 0:
                    counter = counter + 1
                    log_info(str(var.id) + ' ' + str(round(var.relaxation_value)))

            log_info('GENERATORS OFF: ' + str(counter))
        counter = 0
        if parameters['transmission_switching'] == 1:
            for inner_key in mip_relaxation.variables['transmission_switch'].keys():
                var = mip_relaxation.variables['transmission_switch'][inner_key]
                if var.relaxation_value == 0:
                    counter = counter + 1
                    log_info(str(var.id) + ' ' + str(round(var.relaxation_value)))

            log_info('TRANSMISSIONS OFF: ' + str(counter))
        if (parameters['generator_switching'] == 1 or parameters['transmission_switching'] == 1) and counter == 0:

            log_info('no Binary off')
        
        if parameters['discrete_curtailment'] == 1:

            log_info('\nFeed-In from Renewables:')
            for key in mip_relaxation.variables['curtailed_feed_in'].keys():
                feed_in = mip_relaxation.variables['curtailed_feed_in'][key].relaxation_value
                node_info = curtailment_info.get_curtailment_node_info(key)
                if abs(feed_in - node_info.produced_power) < 1e-6:
                    curtailment = 1
                else:
                    curtailment = feed_in / node_info.installed_power * network.base_MVA
                
                log_info(str(key) + ' ' + str(feed_in) + ' (Curtailment: ' + str(round(curtailment,4)) + ' )')     
    except:
        pass
    print('')


def get_solution_from_sol_tight_file(mip, nlp_solver):
    RELAXATION_SUFFIX = 'relaxation'
    SUBSTITUTION_SUFFIX = 'substitution'
    SUBSTITUTION_VARIABLES_SUFFIX = SUBSTITUTION_SUFFIX    #add no '_'  
    sol_file = open( str(mip.id).replace('.m','')+'_sol_tight.txt', 'r')
    text = sol_file.read()
    sol_file.close()
    for outer_key in mip.variables.keys():
        if len(str(outer_key).split(SUBSTITUTION_VARIABLES_SUFFIX)) == 1 and len(str(outer_key).split(RELAXATION_SUFFIX)) == 1 and len(str(outer_key).split('cuts')) == 1:    #vars are not in nlp solution
            for inner_key in mip.variables[outer_key].keys():
                var = mip.variables[outer_key][inner_key]
                var.set_solution_value( float( text.split(var.id+' ')[1].split('\n')[0] ) )
    nlp_solver.create_and_save_relaxation_values(mip)
    
    

