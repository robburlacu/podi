######################################
# IMPORTS                            #
######################################


from podi.models import clean_string



######################################
# CONSTANTS                          #
######################################


CURTAILMENT_INFO_ID_PREFIX = 'curtailment_info_'



######################################
# CLASSES                            #
######################################



class CurtailmentInfo(object):
    
    def __init__(self, *id):
        self.id = create_curtailment_info_id(*id)
        self.variables = {}    #Dictionary for Variables
        self.objective = {}    
        self.constraints = {}    #Dictionary for Constraints
        
    
    def add_variable(self, variable):
        self.variables.update(variable)
        
        
    def set_objective(self, objective):
        self.objective = objective
        
    
    def add_constraint(self, constraint):
        self.constraints.update(constraint)
    
    
    
######################################
# FUNCTIONS                          #
######################################


def create_curtailment_info_id(*id):
    string = CURTAILMENT_INFO_ID_PREFIX + str(*id)
    return clean_string(string)