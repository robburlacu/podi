######################################
# IMPORTS                            #
######################################


from podi.models import MIP_ID_PREFIX, VARIABLE_ID_PREFIX
from podi.mip_relaxation_builder import RELAXATION_SUFFIX
from podi.triangulation import DIGIT_NUMBER
from math import inf
from math import ceil, floor
import os
from shutil import copyfile



######################################
# CONSTANTS                          #
######################################


NLP_ID_PREFIX = 'nlp_'
WRITE_EVERY_NLP = 0



######################################
# CLASSES                            #
######################################
    

class GamsMinlpWriter(object):
    
    def write(self, minlp, parameters):
        file = open( 'gams_files/' + str(minlp.id) + '.gms' , 'w' )
        file.write( '$title "' + str(minlp.id) + '"\n')
        self.write_variable_definition(file, minlp)
        self.write_constraints(file, minlp)
        self.write_model_definition(file, minlp)
        self.write_model_options(file, minlp, parameters)
        file.close()
        
        self.write_matpower_initial_value(minlp, parameters)
   
     
        
    def write_matpower_initial_value(self, minlp, parameters):
        file = open( 'gams_files/' + str(minlp.id) + '_matpower_initial_value' + '.gms' , 'w' )
        file.write( '$title "' + str(minlp.id) + '"\n')
        self.write_variable_definition_with_matpower_initial_value(file, minlp)
        self.write_constraints(file, minlp)
        self.write_model_definition_with_matpower_initial_value(file, minlp)
        self.write_model_options_with_matpower_initial_value(file, minlp, parameters)
        file.close()
        
 
    def write_tight_mip(self, minlp, parameters):
        file = open( 'gams_files/' + str(minlp.id) + '_tight_minlp' + '.gms' , 'w' )
        file.write( '$title "' + str(minlp.id) + '"\n')
        self.write_variable_definition_tight_mip(file, minlp)
        self.write_constraints(file, minlp)
        self.write_model_definition(file, minlp)
        self.write_model_options(file, minlp, parameters)
        file.close()
       
        
    def write_variable_definition(self, file, minlp):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if abs(var.initial_lower_bound - var.initial_upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.initial_lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n') 
                    elif var.variable_type == 'binary':
                        file.write( 'Binary Variable ' + str(var.sympy_symbol) + ' ;\n' )
    
    
  
    def write_variable_definition_tight_mip(self, file, minlp):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                if len(str(outer_key).split('relaxation')) > 1:
                    for relaxation_key in minlp.variables[outer_key][inner_key].keys():
                        #print(outer_key, inner_key, relaxation_key)
                        if relaxation_key == 'error':
                            var = minlp.variables[outer_key][inner_key][relaxation_key]
                            write_var_in_file(var,file)
                        else:
                            for relaxation_inner_key in minlp.variables[outer_key][inner_key][relaxation_key].keys():      
                                var = minlp.variables[outer_key][inner_key][relaxation_key][relaxation_inner_key]
                                write_var_in_file(var,file)
                else:
                    var = minlp.variables[outer_key][inner_key]                    
                    write_var_in_file(var,file)
        
        
    
    
    def write_constraints(self, file, minlp):
        file.write( '\n*===== SECTION: CONSTRAINTS\n' )
        file.write( 'Equation ' + str(minlp.objective.id) + ' ;\n' )
        file.write( str(minlp.objective.id) + '..\n')
        gams_expression = create_gams_expression_from_sympy(minlp.objective.expression)
        file.write( '\t' + 'objval =e= ' + str(gams_expression) + '\n' )
        
        for outer_key in minlp.constraints.keys():
            if outer_key != 'number_switched_transmissions':
                
                for inner_key in minlp.constraints[outer_key].keys():
                    if len(str(outer_key).split('relaxation')) > 1:
                        if len(str(inner_key[-1]).split('sum'))  > 1:
                            constr = minlp.constraints[outer_key][inner_key]#[relaxation_key]
                            file.write( 'Equation ' + str(constr.id) + ' ;\n' )
                            file.write( str(constr.id) + '..\n')
                            gams_expr = create_gams_expression_from_sympy( constr.expression )
                            file.write( '\t' + str(gams_expr) + '\n')  
                            
                        else:
                            
                            for relaxation_key in minlp.constraints[outer_key][inner_key].keys():
                                #print(outer_key,inner_key,relaxation_key)
                                constr = minlp.constraints[outer_key][inner_key][relaxation_key]
                                file.write( 'Equation ' + str(constr.id) + ' ;\n' )
                                file.write( str(constr.id) + '..\n')
                                gams_expr = create_gams_expression_from_sympy( constr.expression )
                                file.write( '\t' + str(gams_expr) + '\n')          
                                                
                    else:
                        constr = minlp.constraints[outer_key][inner_key]
                        file.write( 'Equation ' + str(constr.id) + ' ;\n' )
                        file.write( str(constr.id) + '..\n')
                        #print(constr.id)
                        #print(constr.expression)
                        gams_expr = create_gams_expression_from_sympy( constr.expression )
                        file.write( '\t' + str(gams_expr) + '\n')          
                    
                
                
    def write_model_definition(self, file, minlp):
        file.write( '\n*===== SECTION: MODEL DEFINITION\n' )
        file.write( 'Model minlp /all/ ;\n' ) 
        
        
        
    def write_model_options(self, file, minlp, parameters):
        file.write( '\n*===== SECTION: MODEL OPTIONS AND SOLVE\n')
        file.write( 'option optcr = 0.0001 ;\n')
        file.write( 'option ResLim = ' +  str(parameters['time_limit']) + ' ;\n')
        file.write( 'option MINLP = couenne ;\n')
        if minlp.objective.orientation == 'min':
            file.write( 'Solve minlp min objval using MINLP ;\n')     
        elif minlp.objective.orientation == 'max':
            file.write( 'Solve minlp max objval using MINLP ;\n')
            
    
    def write_variable_definition_with_matpower_initial_value(self, file, minlp):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if abs(var.initial_lower_bound - var.initial_upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.initial_lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n') 
                        #print(var, var.id, var.sympy_symbol, var.given_initial_value)
                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str(round(float(var.given_initial_value),DIGIT_NUMBER)) + ' ;\n') 
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.given_initial_value) ) + ' / ;\n')



    def write_model_definition_with_matpower_initial_value(self, file, minlp):
        file.write( '\n*===== SECTION: MODEL DEFINITION\n' )
        file.write( 'Model nlp /all/ ;\n' ) 
        
        
        
    def write_model_options_with_matpower_initial_value(self, file, minlp, parameters):
        file.write( '\n*===== SECTION: MODEL OPTIONS AND SOLVE\n')
        file.write( 'option optcr = ' + str(parameters['relative_opt_gap']) + ' ;\n')
        file.write( 'option ResLim = ' +  str(parameters['time_limit']) + ' ;\n')
        file.write( 'option NLP =  conopt3 ;\n')
        if minlp.objective.orientation == 'min':
            file.write( 'Solve nlp min objval using NLP ;\n')     
        elif minlp.objective.orientation == 'max':
            file.write( 'Solve nlp max objval using NLP ;\n')
        file.write( '\nScalar ss;\nss = nlp.solvestat ;\n')
        file.write( 'Scalar ms;\nms = nlp.modelstat ;\n')



class GamsNlpWriter(object):

    def write_nlp_for_first_iteration(self, minlp, mip, parameters):
        filename = create_nlp_filename( mip.id )
        
        file_path = 'gams_files/' + filename
        if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
            new_file_name = str(filename).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
            copyfile('gams_files/' + filename,'gams_files/' + new_file_name)
        
        
        
        if parameters['try_intervall_middlepoint_for_nlp'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename2 = create_nlp_filename( mip.id + '_middle_point' )
            
            file_path = 'gams_files/' + filename2
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name2 = str(filename2).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename2,'gams_files/' + new_file_name2)
            
            file2 = open( 'gams_files/' + filename2, 'w' )
            file2.write( '$title "' + filename2.replace('.gms','') + '"\n')
            self.write_variable_definition_middle_point_first_iteration(file2, minlp, mip)
            self.write_constraints(file2, minlp, mip)
            self.write_model_definition(file2, minlp, mip)
            self.write_model_options(file2, minlp, mip)
            file2.close()
   

        if parameters['try_one_nlp_without_starting_value'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename3 = create_nlp_filename( mip.id + '_without_initial_point' )
            
            file_path = 'gams_files/' + filename3
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name3 = str(filename3).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename3,'gams_files/' + new_file_name3)
            
            file3 = open( 'gams_files/' + filename3, 'w' )
            file3.write( '$title "' + filename3.replace('.gms','') + '"\n')
            self.write_variable_definition_without_starting_value_first_iteration(file3, minlp, mip)
            self.write_constraints(file3, minlp, mip)
            self.write_model_definition(file3, minlp, mip)
            self.write_model_options(file3, minlp, mip)
            file3.close()
     
 
        if parameters['try_matpower_initial_value'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename4 = create_nlp_filename( mip.id + '_matpower_initial' )
            
            file_path = 'gams_files/' + filename4
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name4 = str(filename4).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename4,'gams_files/' + new_file_name4)

            file4 = open( 'gams_files/' + filename4, 'w' )
            file4.write( '$title "' + filename4.replace('.gms','') + '"\n')
            self.write_variable_definition_matpower_initial_value_first_iteration(file4, minlp, mip)
            self.write_constraints(file4, minlp, mip)
            self.write_model_definition(file4, minlp, mip)
            self.write_model_options(file4, minlp, mip)
            file4.close()        
        
        
        
        
    
    def write_nlp_from_relaxation_solution(self, minlp, mip, parameters):
        
        filename = create_nlp_filename( mip.id )
        
        file_path = 'gams_files/' + filename
        if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
            new_file_name = str(filename).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
            copyfile('gams_files/' + filename,'gams_files/' + new_file_name)
        
        file = open( 'gams_files/' + filename, 'w' )
        file.write( '$title "' + filename.replace('.gms','') + '"\n')
        self.write_variable_definition(file, minlp, mip)
        self.write_constraints(file, minlp, mip)
        self.write_model_definition(file, minlp, mip)
        self.write_model_options(file, minlp, mip)
        file.close()
        
        filename2 = create_nlp_filename( mip.id + '_middle_point' )
        if parameters['try_intervall_middlepoint_for_nlp'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename2 = create_nlp_filename( mip.id + '_middle_point' )
            
            file_path = 'gams_files/' + filename2
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name2 = str(filename2).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename2,'gams_files/' + new_file_name2)     
        
            file2 = open( 'gams_files/' + filename2, 'w' )
            file2.write( '$title "' + filename2.replace('.gms','') + '"\n')
            self.write_variable_definition_middle_point(file2, minlp, mip)
            self.write_constraints(file2, minlp, mip)
            self.write_model_definition(file2, minlp, mip)
            self.write_model_options(file2, minlp, mip)
            file2.close()
   

        if parameters['try_one_nlp_without_starting_value'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename3 = create_nlp_filename( mip.id + '_without_initial_point' )
            
            file_path = 'gams_files/' + filename3
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name3 = str(filename3).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename3,'gams_files/' + new_file_name3)
            
            file3 = open( 'gams_files/' + filename3, 'w' )
            file3.write( '$title "' + filename3.replace('.gms','') + '"\n')
            self.write_variable_definition_without_starting_value(file3, minlp, mip)
            self.write_constraints(file3, minlp, mip)
            self.write_model_definition(file3, minlp, mip)
            self.write_model_options(file3, minlp, mip)
            file3.close()
     
 
        if parameters['try_matpower_initial_value'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename4 = create_nlp_filename( mip.id + '_matpower_initial' )
            
            file_path = 'gams_files/' + filename4
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name4 = str(filename4).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename4,'gams_files/' + new_file_name4)
            
            file4 = open( 'gams_files/' + filename4, 'w' )
            file4.write( '$title "' + filename4.replace('.gms','') + '"\n')
            self.write_variable_definition_matpower_initial_value(file4, minlp, mip)
            self.write_constraints(file4, minlp, mip)
            self.write_model_definition(file4, minlp, mip)
            self.write_model_options(file4, minlp, mip)
            file4.close()
            
       
    def write_variable_definition(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(var.relaxation_value,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.relaxation_value) ) + ' / ;\n')
        


    def write_variable_definition_middle_point(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if outer_key in mip.variables.keys():
                    if inner_key in mip.variables[outer_key].keys():
                        dc_var = mip.variables[outer_key][inner_key]
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round((var.lower_bound+var.upper_bound)*0.5,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(dc_var.relaxation_value) ) + ' / ;\n')


    def write_variable_definition_without_starting_value(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if outer_key in mip.variables.keys():
                    if inner_key in mip.variables[outer_key].keys():
                        dc_var = mip.variables[outer_key][inner_key]
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(dc_var.relaxation_value) ) + ' / ;\n')


    def write_variable_definition_matpower_initial_value(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if outer_key in mip.variables.keys():
                    if inner_key in mip.variables[outer_key].keys():
                        dc_var = mip.variables[outer_key][inner_key]
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(var.given_initial_value,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(dc_var.relaxation_value) ) + ' / ;\n')




    def write_variable_definition_middle_point_first_iteration(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round((var.lower_bound+var.upper_bound)*0.5,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.given_initial_value) ) + ' / ;\n')


    def write_variable_definition_without_starting_value_first_iteration(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.given_initial_value) ) + ' / ;\n')


    def write_variable_definition_matpower_initial_value_first_iteration(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(var.given_initial_value,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.given_initial_value) ) + ' / ;\n')



    
    
    def write_constraints(self, file, minlp, mip):
        file.write( '\n*===== SECTION: CONSTRAINTS\n' )
        file.write( 'Equation ' + str(minlp.objective.id) + ' ;\n' )
        file.write( str(minlp.objective.id) + '..\n')
        gams_expression = create_gams_expression_from_sympy(minlp.objective.expression)
        file.write( '\t' + 'objval =e= ' + str(gams_expression) + '\n' )

        '''        
        if mip.lower_obj_bound > -inf:
            name = 'objective_lower_bound'
            file.write( 'Equation ' + name + ' ;\n' )
            file.write( name + '..\n')
            file.write( '\t' + 'objval =g= ' + str(ceil(-mip.lower_obj_bound*10**DIGIT_NUMBER)/(-10**DIGIT_NUMBER)) + '\n' )

        if mip.upper_obj_bound < inf:
            name = 'objective_upper_bound'
            file.write( 'Equation ' + name + ' ;\n' )
            file.write( name + '..\n')
            file.write( '\t' + 'objval =l= ' + str(ceil(mip.upper_obj_bound*10**DIGIT_NUMBER)/(10**DIGIT_NUMBER)) + '\n' )
        '''
        
        for outer_key in minlp.constraints.keys():
            if outer_key != 'number_switched_transmissions':
                for inner_key in minlp.constraints[outer_key].keys():
                    constr = minlp.constraints[outer_key][inner_key]
                    file.write( 'Equation ' + str(constr.id) + ' ;\n' )
                    file.write( str(constr.id) + '..\n')
                    gams_expr = create_gams_expression_from_sympy( constr.expression )
                    file.write( '\t' + str(gams_expr) + '\n')          
                    
                
                
    def write_model_definition(self, file, minlp, mip):
        file.write( '\n*===== SECTION: MODEL DEFINITION\n' )
        file.write( 'Model nlp /all/ ;\n' ) 
        
        
        
    def write_model_options(self, file, minlp, mip):
        file.write( '\n*===== SECTION: MODEL OPTIONS AND SOLVE\n')
        file.write( 'option NLP = conopt3 ;\n')
        if minlp.objective.orientation == 'min':
            file.write( 'Solve nlp min objval using NLP ;\n')     
        elif minlp.objective.orientation == 'max':
            file.write( 'Solve nlp max objval using NLP ;\n')
        file.write( '\nScalar ss;\nss = nlp.solvestat ;\n')
        file.write( 'Scalar ms;\nms = nlp.modelstat ;\n')
        

    def write_nlp_from_tight_relaxation_solution(self, minlp, mip, parameters):
        
        filename = create_nlp_filename( 'tight' + '_' + mip.id )
        
        file_path_local = 'gams_files/' + filename
        if  os.path.exists(file_path_local) and WRITE_EVERY_NLP==1:
            new_file_name = str(filename).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
            copyfile('gams_files/' + filename,'gams_files/' + new_file_name)
        
        file = open( 'gams_files/' + filename, 'w' )
        file.write( '$title "' + filename.replace('.gms','') + '"\n')
        self.write_variable_definition(file, minlp, mip)
        self.write_constraints(file, minlp, mip)
        self.write_model_definition(file, minlp, mip)
        self.write_model_options(file, minlp, mip)
        file.close()
        
        filename2 = create_nlp_filename( 'tight' + '_' + mip.id + '_middle_point' )
        if parameters['try_intervall_middlepoint_for_nlp'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename2 = create_nlp_filename( 'tight_' + mip.id + '_middle_point' )
            file2 = open( 'gams_files/' + filename2, 'w' )
            file2.write( '$title "' + filename2.replace('.gms','') + '"\n')
            self.write_variable_definition_middle_point(file2, minlp, mip)
            self.write_constraints(file2, minlp, mip)
            self.write_model_definition(file2, minlp, mip)
            self.write_model_options(file2, minlp, mip)
            file2.close()
   

        if parameters['try_one_nlp_without_starting_value'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename3 = create_nlp_filename( 'tight' + '_' + mip.id + '_without_initial_point' )
            file3 = open( 'gams_files/' + filename3, 'w' )
            file3.write( '$title "' + filename2.replace('.gms','') + '"\n')
            self.write_variable_definition_without_starting_value(file3, minlp, mip)
            self.write_constraints(file3, minlp, mip)
            self.write_model_definition(file3, minlp, mip)
            self.write_model_options(file3, minlp, mip)
            file3.close()
     
 
        if parameters['try_matpower_initial_value'] == 1 and (mip.changed_binary_decission == 'yes' or mip.iteration_number == 1):
            filename4 = create_nlp_filename( 'tight' + '_' + mip.id + '_matpower_initial' )
            file4 = open( 'gams_files/' + filename4, 'w' )
            file4.write( '$title "' + filename2.replace('.gms','') + '"\n')
            self.write_variable_definition_matpower_initial_value(file4, minlp, mip)
            self.write_constraints(file4, minlp, mip)
            self.write_model_definition(file4, minlp, mip)
            self.write_model_options(file4, minlp, mip)
            file4.close()
    


    def write_nlp_from_dc_solution(self, minlp, mip, dc_mip, parameters):
        
        filename = create_nlp_filename( dc_mip.id )
        
        file_path = 'gams_files/' + filename
        if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
            new_file_name = str(filename).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
            copyfile('gams_files/' + filename,'gams_files/' + new_file_name)
        
        file = open( 'gams_files/' + filename, 'w' )
        file.write( '$title "' + filename.replace('.gms','') + '"\n')
        self.write_variable_definition_dc(file, minlp, dc_mip)
        self.write_constraints(file, minlp, dc_mip)
        self.write_model_definition(file, minlp, dc_mip)
        self.write_model_options(file, minlp, dc_mip)
        file.close()
        
        
        filename2 = create_nlp_filename( dc_mip.id + '_middle_point_1' )
        if parameters['try_intervall_middlepoint_for_nlp'] == 1 :
            filename2 = create_nlp_filename( dc_mip.id + '_middle_point_1' )
            
            file_path = 'gams_files/' + filename2
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name2 = str(filename2).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename2,'gams_files/' + new_file_name2)     
        
            file2 = open( 'gams_files/' + filename2, 'w' )
            file2.write( '$title "' + filename2.replace('.gms','') + '"\n')
            self.write_variable_definition_dc_middle_point(file2, minlp, dc_mip)
            self.write_constraints(file2, minlp, dc_mip)
            self.write_model_definition(file2, minlp, dc_mip)
            self.write_model_options(file2, minlp, dc_mip)
            file2.close()        
        

        if parameters['try_matpower_initial_value'] == 1:
            filename4 = create_nlp_filename( dc_mip.id + '_matpower_initial_1' )
            
            file_path = 'gams_files/' + filename4
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name4 = str(filename4).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename4,'gams_files/' + new_file_name4)
            
            file4 = open( 'gams_files/' + filename4, 'w' )
            file4.write( '$title "' + filename4.replace('.gms','') + '"\n')
            self.write_variable_definition_dc_matpower_initial_value(file4, minlp, dc_mip)
            self.write_constraints(file4, minlp, dc_mip)
            self.write_model_definition(file4, minlp, dc_mip)
            self.write_model_options(file4, minlp, dc_mip)
            file4.close()

        
        
        
        filename2 = create_nlp_filename( dc_mip.id + '_middle_point' )
        if parameters['try_intervall_middlepoint_for_nlp'] == 1 and (dc_mip.changed_binary_decission == 'yes' or dc_mip.iteration_number == 1):
            filename2 = create_nlp_filename( dc_mip.id + '_middle_point' )
            
            file_path = 'gams_files/' + filename2
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name2 = str(filename2).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename2,'gams_files/' + new_file_name2)     
        
            file2 = open( 'gams_files/' + filename2, 'w' )
            file2.write( '$title "' + filename2.replace('.gms','') + '"\n')
            self.write_variable_definition_middle_point(file2, minlp, dc_mip)
            self.write_constraints(file2, minlp, dc_mip)
            self.write_model_definition(file2, minlp, dc_mip)
            self.write_model_options(file2, minlp, dc_mip)
            file2.close()


   

        if parameters['try_one_nlp_without_starting_value'] == 1 and (dc_mip.changed_binary_decission == 'yes' or dc_mip.iteration_number == 1):
            filename3 = create_nlp_filename( dc_mip.id + '_without_initial_point' )
            
            file_path = 'gams_files/' + filename3
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name3 = str(filename3).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename3,'gams_files/' + new_file_name3)
            
            file3 = open( 'gams_files/' + filename3, 'w' )
            file3.write( '$title "' + filename3.replace('.gms','') + '"\n')
            self.write_variable_definition_without_starting_value(file3, minlp, dc_mip)
            self.write_constraints(file3, minlp, dc_mip)
            self.write_model_definition(file3, minlp, dc_mip)
            self.write_model_options(file3, minlp, dc_mip)
            file3.close()
     
 
        if parameters['try_matpower_initial_value'] == 1 and (dc_mip.changed_binary_decission == 'yes' or dc_mip.iteration_number == 1):
            filename4 = create_nlp_filename( dc_mip.id + '_matpower_initial' )
            
            file_path = 'gams_files/' + filename4
            if  os.path.exists(file_path) and WRITE_EVERY_NLP==1:
                new_file_name4 = str(filename4).split('.gms')[0] + '_' + str(mip.number_of_solved_nlps+1) + '.gms'
                copyfile('gams_files/' + filename4,'gams_files/' + new_file_name4)
            
            file4 = open( 'gams_files/' + filename4, 'w' )
            file4.write( '$title "' + filename4.replace('.gms','') + '"\n')
            self.write_variable_definition_matpower_initial_value(file4, minlp, dc_mip)
            self.write_constraints(file4, minlp, dc_mip)
            self.write_model_definition(file4, minlp, dc_mip)
            self.write_model_options(file4, minlp, dc_mip)
            file4.close()


    def write_variable_definition_dc(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                
                if outer_key in mip.variables.keys():
                    if inner_key in mip.variables[outer_key].keys():
                        dc_var = mip.variables[outer_key][inner_key]
                    
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        
                        if 'transmission_switch' in minlp.variables.keys():
                            if outer_key == 'voltage_product_imaginary':
                                if abs(mip.variables['transmission_switch'][inner_key].relaxation_value) < 1e-6:    #is 0
                                      file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(0,DIGIT_NUMBER) ) + '  ;\n')
                                
                            
                        if outer_key not in mip.variables.keys():
                            if 'transmission_switch' in minlp.variables.keys():
                                if outer_key == 'switched_voltage_square' or outer_key == 'voltage_product_real':
                                    mod_inner_key = inner_key
                                    if inner_key[0] >= inner_key[1]:
                                        if len(inner_key) == 2:
                                            mod_inner_key = (inner_key[1],inner_key[0])
                                        if len(inner_key) == 3:
                                            mod_inner_key = (inner_key[1],inner_key[0],inner_key[2])
                                    if abs(mip.variables['transmission_switch'][mod_inner_key].relaxation_value) < 1e-6:    #is 0
                                          file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(0,DIGIT_NUMBER) ) + '  ;\n')

                        else:
                            #log_info(outer_key)
                            file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(dc_var.relaxation_value,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(dc_var.relaxation_value) ) + ' / ;\n')



    def write_variable_definition_dc_middle_point(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                
                if outer_key in mip.variables.keys():
                    if inner_key in mip.variables[outer_key].keys():
                        dc_var = mip.variables[outer_key][inner_key]
                    
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        
                        #var_in_dc =1
                        if 'transmission_switch' in minlp.variables.keys():
                            if outer_key == 'voltage_product_imaginary':
                                if abs(mip.variables['transmission_switch'][inner_key].relaxation_value) < 1e-6:    #is 0
                                      file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(0,DIGIT_NUMBER) ) + '  ;\n')
                                
                            
                        if outer_key not in mip.variables.keys():
                            if 'transmission_switch' in minlp.variables.keys():
                                if outer_key == 'switched_voltage_square' or outer_key == 'voltage_product_real':
                                    mod_inner_key = inner_key
                                    if inner_key[0] >= inner_key[1]:
                                        if len(inner_key) == 2:
                                            mod_inner_key = (inner_key[1],inner_key[0])
                                        if len(inner_key) == 3:
                                            mod_inner_key = (inner_key[1],inner_key[0],inner_key[2])
                                    if abs(mip.variables['transmission_switch'][mod_inner_key].relaxation_value) < 1e-6:    #is 0
    
                                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(0,DIGIT_NUMBER) ) + '  ;\n')
                                    else:
                                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round((var.lower_bound+var.upper_bound)*0.5,DIGIT_NUMBER) ) + '  ;\n')

                            else:
                                file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round((var.lower_bound+var.upper_bound)*0.5,DIGIT_NUMBER) ) + '  ;\n')
                        
                        
                        else:
                            #log_info(outer_key)
                            file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(dc_var.relaxation_value,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(dc_var.relaxation_value) ) + ' / ;\n')



    def write_variable_definition_dc_matpower_initial_value(self, file, minlp, mip):
        file.write( '\n*===== SECTION: VARIABLE DEFINITION\n' )
        file.write( 'Free Variable objval ;\n' )
        for outer_key in minlp.variables.keys():
            for inner_key in minlp.variables[outer_key].keys():
                var = minlp.variables[outer_key][inner_key]
                
                if outer_key in mip.variables.keys():
                    if inner_key in mip.variables[outer_key].keys():
                        dc_var = mip.variables[outer_key][inner_key]
                    
                if abs(var.lower_bound - var.upper_bound) < 1e-6:
                    file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(var.lower_bound ,DIGIT_NUMBER) ) + ' / ;\n')
                else:
                    if var.variable_type == 'continuous':
                        file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
                        file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.initial_lower_bound,DIGIT_NUMBER)) + ' ;\n' )    #lower_bound
                        file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.initial_upper_bound,DIGIT_NUMBER)) + ' ;\n')    #upper_bound
                        
                        #var_in_dc =1
                        #var_in_dc =1
                        if 'transmission_switch' in minlp.variables.keys():
                            if outer_key == 'voltage_product_imaginary':
                                if abs(mip.variables['transmission_switch'][inner_key].relaxation_value) < 1e-6:    #is 0
                                      file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(0,DIGIT_NUMBER) ) + '  ;\n')
                                
                            
                        if outer_key not in mip.variables.keys():
                            if 'transmission_switch' in minlp.variables.keys():
                                if outer_key == 'switched_voltage_square' or outer_key == 'voltage_product_real':
                                    mod_inner_key = inner_key
                                    if inner_key[0] >= inner_key[1]:
                                        if len(inner_key) == 2:
                                            mod_inner_key = (inner_key[1],inner_key[0])
                                        if len(inner_key) == 3:
                                            mod_inner_key = (inner_key[1],inner_key[0],inner_key[2])
                                    if abs(mip.variables['transmission_switch'][mod_inner_key].relaxation_value) < 1e-6:    #is 0
                                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(0,DIGIT_NUMBER) ) + '  ;\n')
                                    else:
                                        file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(var.given_initial_value,DIGIT_NUMBER) ) + '  ;\n')

                            else:
                                file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(var.given_initial_value,DIGIT_NUMBER) ) + '  ;\n')

                        else:
                            #log_info(outer_key)
                            file.write( '\t' + str(var.sympy_symbol) + '.l = ' + str( round(dc_var.relaxation_value,DIGIT_NUMBER) ) + '  ;\n')    #initial value
                    
                    elif var.variable_type == 'binary':
                        file.write( 'Scalar ' + str(var.sympy_symbol) + ' / ' + str( round(dc_var.relaxation_value) ) + ' / ;\n')



    
######################################
# FUNCTIONS                          #
######################################


def create_nlp_filename( mip_id):
    filename = NLP_ID_PREFIX + str(mip_id) + '.gms'
    filename = filename.replace( MIP_ID_PREFIX, '')
    filename = filename.replace( '_' + RELAXATION_SUFFIX, '')
    return filename
    

def create_gams_expression_from_sympy( expression ):
    expression = str(expression)
    expression = expression.replace( 'Eq', '' )
    expression = expression.replace( ', ' , ') =e= (' )
    expression = expression.replace( '<=' , '=l=' )
    expression = expression.replace( '>=' , '=g=' )
            
    
    #Replace ** with power( , )
    power_parts = expression.split('**')
    for i in range(0, len(power_parts)):
        if i < len(power_parts)-1:
            if power_parts[i][-1] == ')':
                if len(power_parts[i]) > 1 and power_parts[i][-2] == ')':
                    index = power_parts[i].rfind('(')
                    index = power_parts[i][0:index].rfind('(')
                    power_parts[i] = power_parts[i][0:index] + 'power(' + power_parts[i][index:len(power_parts[i])]
                else:
                    index = power_parts[i].rfind('(')
                    if index > 2 and (power_parts[i][index-3:index] == 'tan' or power_parts[i][index-3:index] == 'cos' or power_parts[i][index-3:index] == 'sin'):   
                        power_parts[i] = power_parts[i][0:index-3] + 'power(' + power_parts[i][index-3:len(power_parts[i])]                   
                    else:
                        power_parts[i] = power_parts[i][0:index] + 'power(' + power_parts[i][index:len(power_parts[i])]
            else: 
                 index = power_parts[i].rfind(VARIABLE_ID_PREFIX)
                 while power_parts[i][index-1] == '_':
                     index = power_parts[i][0:index].rfind(VARIABLE_ID_PREFIX)
                 power_parts[i] = power_parts[i][0:index] + 'power(' + power_parts[i][index:len(power_parts[i])]
        if i > 0:
            if power_parts[i][0] == '(':
                index = power_parts[i].find(')')
                power_parts[i] = power_parts[i][0:index+1] + ')' + power_parts[i][index+1:len(power_parts[i])]
            else:
                index = power_parts[i].find(' ')
                if index == -1:
                    power_parts[i] = power_parts[i][0:len(power_parts[i])] + ')'
                else:
                    power_parts[i] = power_parts[i][0:index] + ')' + power_parts[i][index:len(power_parts[i])]
    
    expression = power_parts[0]
    for i in range(1 , len(power_parts)):
        expression = expression + ',' + power_parts[i]
    
    
    #Replace tan with cos/sin
    tan_parts = expression.split( 'tan(' )
    if len(tan_parts) > 1:
        expression = tan_parts[0]
        for i in range(1,len(tan_parts)):
            part = tan_parts[i]
            [argument, rest] = part.split( ')', 1 )
            expression = expression + '(sin(' + argument + ')/cos(' + argument + '))'
            expression = expression + rest
   
    return expression


def write_var_in_file(var,file):
    if abs(var.lower_bound - var.upper_bound) < 1e-6:
        if var.variable_type == 'continuous':
            file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
            file.write( '\t' + str(var.sympy_symbol) + '.fx = ' + str(round(var.lower_bound,DIGIT_NUMBER)) + ' ;\n' )
        elif var.variable_type == 'binary':
            file.write( 'Binary Variable ' + str(var.sympy_symbol) + ' ;\n' )
            file.write( '\t' + str(var.sympy_symbol) + '.fx = ' + str(round(var.lower_bound,DIGIT_NUMBER)) + ' ;\n' )
    else:
        if var.variable_type == 'continuous':
            file.write( 'Free Variable ' + str(var.sympy_symbol) + ' ;\n' )
            file.write( '\t' + str(var.sympy_symbol) + '.lo = ' + str(round(var.lower_bound,DIGIT_NUMBER)) + ' ;\n' )
            file.write( '\t' + str(var.sympy_symbol) + '.up = ' + str(round(var.upper_bound,DIGIT_NUMBER)) + ' ;\n') 
        elif var.variable_type == 'binary':
            file.write( 'Binary Variable ' + str(var.sympy_symbol) + ' ;\n' )
