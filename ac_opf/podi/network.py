######################################
# IMPORTS                            #
######################################


from abc import ABC, abstractmethod
import networkx
from podi import ExitStatus, log_exception
from math import floor



######################################
# CONSTANTS                          #
######################################


BRANCH_DATA_PARAMETERS = ["from_bus", "to_bus", "resistance", "reactance", "susceptance", "rateA", "rateB", "rateC",
                          "ratio", "angle", "initial_status", "min_angle_diff", "max_angle_diff"]

BUS_DATA_PARAMETERS = ["bus_number", "bus_type", "real_power_demand", "reactive_power_demand", "shunt_conductance",
                       "shunt_susceptance", "area_number", "voltage_magnitude", "voltage_angle", "base_voltage",
                       "loss_zone", "maximum_voltage_magnitude", "minimum_voltage_magnitude"]

GENERATOR_DATA_PARAMETERS = ["bus_number", "real_power_output", "reactive_power_output",
                             "maximum_reactive_power_output", "minimum_reactive_power_output",
                             "voltage_magnitude_setpoint", "total_MVA_base", "status ",
                             "maximum_real_power_output", "minimum_real_power_output", "Pc1", "Pc2",
                             "minimum_reactive_power_at_Pc1", "maximum_reactive_power_at_Pc1",
                             "minimum_reactive_power_at_Pc2", "maximum_reactive_power_at_Pc2",
                             "ramp_rate_load", "ramp_rate_10_min_reserves", "ramp_rate_30_min_reserves",
                             "ramp_rate_reactive_power", "area_participation_factor"]

GENERATOR_COST_QUADRATIC_DATA_PARAMETERS = ["model", "startup_cost", "shutdown_cost", "number_coefficients",
                                            "coeff_p_2", "coeff_p_1", "coeff_p_0"]

NETWORK_ID_PREFIX = "network_"   

BRANCH_ID_PREFIX = "branch_"
BUS_ID_PREFIX = "bus_"
GENERATOR_ID_PREFIX = "generator_"

COST_FUNCTION_PIECEWISE_LINEAR = "piecewise_linear"
COST_FUNCTION_POLYNOMIAL = "polynomial"



######################################
# CLASSES                            #
######################################


class Network(object):

    def __init__(self, id, base_MVA = 100.0):
        self.id = create_network_id(id)
        self.graph = networkx.Graph()
        self.base_MVA = base_MVA


    def add_bus(self, bus_id, bus):
        self.graph.add_node(bus_id, data = bus)


    def get_bus_data(self, bus_id):
        try:
            return self.graph.nodes[bus_id]["data"]
        except KeyError:
            log_exception("Bus " + str(self.id) + " is not contained in the network!")
            exit(ExitStatus.ERROR)


    def add_branch(self, from_bus_id, to_bus_id, branch):
        self.graph.add_edge(from_bus_id, to_bus_id, data = branch)


    def get_branch_data(self, from_bus_id, to_bus_id):
        try:
            return self.graph.edges[from_bus_id, to_bus_id]["data"]
        except KeyError:
            log_exception("Branch " + str(self.id) + " is not contained in the network!")
            exit(ExitStatus.ERROR)


    def set_base_MVA(self, base_MVA):
        self.base_MVA = base_MVA


    def preprocess(self):
        pass
    
    
    def compute_total_real_power_demand(self):
        total_demand = 0
        for node in self.graph.nodes:
            total_demand = total_demand + self.get_bus_data(node).data['real_power_demand']
        return total_demand


class NetworkElement(ABC):

    def __init__(self, *id):
        self.data = dict()
        self.set_id(*id)


    def set_data(self, data):
        for parameter, value in data.items():
            if parameter not in self.data.keys():
                self.data[parameter] = value
            else:
                number = floor( len(self.data.keys())/len(data.items()) ) + 1
                new_title = str(parameter) + '_' + str(number) 
                self.data[new_title] = value
                


    def __getitem__(self, item):
        return self.data[item]


    @abstractmethod
    def set_id(self, *id):
        pass



class Branch(NetworkElement):

    def __init__(self, *id):
        super().__init__(*id)


    def set_id(self, *id):
        self.id = create_branch_id(*id)


    def __getitem__(self, item):
        if item not in BRANCH_DATA_PARAMETERS:
            return getattr(self, item)
        else:
            return super().__getitem__(item)


class Bus(NetworkElement):

    def __init__(self, *id):
        super().__init__(*id)
        self.set_has_generators(False)
        self.generators = []


    def set_has_generators(self, has_generators):
        self.has_generators = has_generators


    def add_generator(self, generator):  #generator_id=1 if bus has only one generator!
        if self.has_generators == False:
            self.set_has_generators(True)
        self.generators.append(generator)


    def get_generator(self, generator_id=1):  #generator_id=1 if bus has only one generator!
        try:
            for generator in self.generators:
                if generator["id"] == create_generator_id(generator_id):
                    return generator
        except IndexError:
            log_exception("Generator " + str(create_generator_id(generator_id)) + " is not contained in Bus "
                          + str(self.id) + "!")
            exit(ExitStatus.ERROR)


    def __getitem__(self, item):
        if item not in BUS_DATA_PARAMETERS:
            return getattr(self, item)
        else:
            return super().__getitem__(item)


    def set_id(self, *id):
        self.id = create_bus_id(*id)



class Generator(NetworkElement):

    def __init__(self, *id, cost_function = COST_FUNCTION_POLYNOMIAL):
        super().__init__(*id)
        self.cost_function = cost_function
        self.set_polynomial_cost_coeffs(0, 0, 0)


    def set_id(self, *id):
        self.id = create_generator_id(*id)


    def set_polynomial_cost_coeffs(self, coeff_p_2, coeff_p_1, coeff_p_0):
        self.coeff_p_2 = coeff_p_2
        self.coeff_p_1 = coeff_p_1
        self.coeff_p_0 = coeff_p_0

    
    def change_data(self, key, value):
        self.data[key] = value


    def __getitem__(self, item):
        if item not in GENERATOR_DATA_PARAMETERS:
            return getattr(self, item)
        else:
            return super().__getitem__(item)



######################################
# FUNCTIONS                          #
######################################


def create_network_id(*id):
    return NETWORK_ID_PREFIX + str(*id)


def create_branch_id(*id):
    return BRANCH_ID_PREFIX + str(id[0]) + "_" + str(id[1])


def create_bus_id(*id):
    return BUS_ID_PREFIX + str(*id)


def create_generator_id(*id):
    return GENERATOR_ID_PREFIX + str(*id)
