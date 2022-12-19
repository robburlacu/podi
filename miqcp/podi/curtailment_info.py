######################################
# IMPORTS                            #
######################################


from podi.models import clean_string
from math import sqrt


######################################
# CONSTANTS                          #
######################################


CURTAILMENT_INFO_ID_PREFIX = 'curtailment_info_'
CURTAILMENT_NODES_MODULO = 2   #1: every bus has feed-in with curtailment, 2: every second, 3: every third
CURTAILMENT_OPTIONS = [0,0.3,0.6,1]#[0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
PERCENTAGE_OF_DEMAND_FOR_INSTALLED_POWER = 2.5
PERCENTAGE_OF_DEMAND_FOR_PRODUCED_POWER = 2.0
WEIGHTING_PARAMETER_FOR_CURTAILMENT = 0.33 #0: only generator cost, 1: only curtailment cost

COS_PHI = 0.9
POWER_RATIO = sqrt( (1-COS_PHI*COS_PHI)/(COS_PHI*COS_PHI) )   #POWER_RATIO = REACTIVE_POWER/ACTIVE_POWER
NUMBER_OF_DIGITS = 2



######################################
# CLASSES                            #
######################################


class CurtailmentInfo(object):
    
    def __init__(self, id, network, curtailment_nodes=[], installed_power={}, produced_power={}, curtailment_options={}, power_ratio={}):
        self.id = create_curtailment_info_id(id)
        
        if curtailment_nodes == []:
            self.create_curtailment_nodes(network)           
        else:
            self.curtailment_nodes = curtailment_nodes
            
        self.number_of_nodes = len(self.curtailment_nodes)
        
        curtailment_bus_infos = {}
        for node in self.curtailment_nodes:
            curtailment_bus_infos.update( { node : CurtailmentNodeInfo(id, node, network, self.number_of_nodes, installed_power, produced_power, curtailment_options, power_ratio)} )
        self.curtailment_bus_infos = curtailment_bus_infos
          
        
    def create_curtailment_nodes(self, network):
        curtailment_nodes = []
        for node in network.graph.nodes:
            if node % CURTAILMENT_NODES_MODULO == 1 or CURTAILMENT_NODES_MODULO==1:
                curtailment_nodes.append(node)
        self.curtailment_nodes = curtailment_nodes


    def get_curtailment_node_info(self, node):
        return self.curtailment_bus_infos[node]


    def print_infos(self):
        print('id:', self.id)
        print('nodes:', self.curtailment_nodes)
        print('number_of_nodes:', self.number_of_nodes)
        #print('bus_infos', self.curtailment_bus_infos)
        for node in self.curtailment_nodes:
            info = self.get_curtailment_node_info(node)
            print('bus_' + str(node) + '_id:', info.id)
            print('bus_' + str(node) + '_installed_power:', info.installed_power)
            print('bus_' + str(node) + '_produced_power:', info.produced_power)
            print('bus_' + str(node) + '_curtailment_options:', info.curtailment_options)
            print('bus_' + str(node) + '_curtailment_options_absolute:', info.curtailment_options_absolute)
            print('bus_' + str(node) + '_power_ratio:', info.power_ratio)
            print('')
  
    
    
class CurtailmentNodeInfo(object):
    
    def __init__(self, id, node, network, number_of_nodes, installed_power={}, produced_power={}, curtailment_options={}, power_ratio={}):
        self.id = create_curtailment_node_info_id(id, node)
        
        if installed_power == {}:
            self.generate_installed_power(network, number_of_nodes)
        else:
            self.installed_power = round(installed_power[node], NUMBER_OF_DIGITS)                                    

        if produced_power == {}:
            self.generate_produced_power(network, number_of_nodes)
        else:
            self.produced_power = round(produced_power[node], NUMBER_OF_DIGITS)

        if curtailment_options == {}:
            self.curtailment_options = CURTAILMENT_OPTIONS
        else:
            self.curtailment_options = curtailment_options[node]
        
        if power_ratio == {}:
            self.power_ratio = round(POWER_RATIO, NUMBER_OF_DIGITS)
        else:
            self.power_ratio = round(power_ratio[node], NUMBER_OF_DIGITS)
        
        self.compute_absolute_curtaiment_options()

    def generate_installed_power(self, network, number_of_nodes):
        self.installed_power = round(PERCENTAGE_OF_DEMAND_FOR_INSTALLED_POWER*(network.compute_total_real_power_demand())/number_of_nodes, NUMBER_OF_DIGITS)
 

    def generate_produced_power(self, network, number_of_nodes):
        self.produced_power = round(PERCENTAGE_OF_DEMAND_FOR_PRODUCED_POWER*(network.compute_total_real_power_demand())/number_of_nodes, NUMBER_OF_DIGITS)
 
    
    def compute_absolute_curtaiment_options(self):
        curtailment_options_absolute = []
        for option in self.curtailment_options:
            value = round(option*self.installed_power, NUMBER_OF_DIGITS)
            if value < self.produced_power:
                curtailment_options_absolute.append( value )
        curtailment_options_absolute.append( self.produced_power )
        self.curtailment_options_absolute = curtailment_options_absolute
                
    
######################################
# FUNCTIONS                          #
######################################


def create_curtailment_info_id(id):
    string = CURTAILMENT_INFO_ID_PREFIX + str(id)
    return clean_string(string)

def create_curtailment_node_info_id(id, node):
    string = CURTAILMENT_INFO_ID_PREFIX + str(id) + '_' + str(node)
    return clean_string(string)

