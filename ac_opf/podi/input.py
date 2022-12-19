######################################
# IMPORTS                            #
######################################


from abc import ABC, abstractmethod
from podi import log_info
import pandas
import argparse
import numpy
from io import StringIO
from podi.network import Network, Branch, Bus, Generator, \
    BRANCH_DATA_PARAMETERS, BUS_DATA_PARAMETERS, GENERATOR_DATA_PARAMETERS, GENERATOR_COST_QUADRATIC_DATA_PARAMETERS
from sympy.parsing.sympy_parser import parse_expr



######################################
# CONSTANTS                          #
######################################


STANDARD_PARAMETERS = {
    "minlp_solver": "AdaptiveRefinementSolver",
    "relative_gap": 0.0001,
    "time_limit": 1000,
    "mip_solver": "Gurobi",
    "nlp_solver": "CONOPT4"
}

DELIMITER_PARAMETERS_FILE = ":"

BRANCH_STRING_SPLIT = 'mpc.branch = '
BUS_STRING_SPLIT = 'mpc.bus = '
GENERATOR_STRING_SPLIT = 'mpc.gen = '
GENERATOR_COST_QUADRATIC_STRING_SPLIT = 'mpc.gencost = '



######################################
# CLASSES                            #
######################################


class Parameters(object):

    def __init__(self, parameters = None):
        self.set_parameters(STANDARD_PARAMETERS)
        if parameters is not None:
            self._parameters.update(parameters)


    def set_parameters(self, parameters):
        self._parameters = parameters

    
    def __setitem__(self, item, value):
        self._parameters[item] = value
    
    def __getitem__(self, item):
        return(self._parameters[item])


    def log_parameters(self):
        for parameter, value in self._parameters.items():
            log_info(parameter + ": " + str(value))



class CommandLineParser:

    @classmethod
    def parse(cls):
        argument_parser= argparse.ArgumentParser(description='Command line parser.')
        argument_parser.add_argument('network_filename')
        arguments = argument_parser.parse_args()
        return arguments.network_filename



class FileParser(ABC):

    def __init__(self, filename):
        self._filename = str(filename)#.replace('testcases/', '')
        #super().__init__()  #omit?


    @abstractmethod
    def parse(self):
        pass



class ParametersFileParser(FileParser):

    def parse(self):
        parameters_dict = None
        try:
            parameters_dict = pandas.read_csv(self._filename, header = None, skip_blank_lines = True,
                                          delimiter = DELIMITER_PARAMETERS_FILE).set_index(0).to_dict()[1]
        except:
            return None
        return Parameters(parameters_dict)



class NetworkFileParser(FileParser):

    def parse(self):
        # TO-DO try, except
        self._string_file = open(self._filename).read()

        branches_dicts = self.parse_network_elements(BRANCH_STRING_SPLIT, BRANCH_DATA_PARAMETERS)
        buses_dicts = self.parse_network_elements(BUS_STRING_SPLIT, BUS_DATA_PARAMETERS)
        generators_dicts = self.parse_network_elements(GENERATOR_STRING_SPLIT, GENERATOR_DATA_PARAMETERS)
        generator_costs_dicts = self.parse_network_elements(GENERATOR_COST_QUADRATIC_STRING_SPLIT,
                                                            GENERATOR_COST_QUADRATIC_DATA_PARAMETERS)

        network = Network(str(self._filename).split('/')[-1])

        for parameters_dict in buses_dicts:
            bus_id = int(parameters_dict[BUS_DATA_PARAMETERS[0]])
            bus = Bus(bus_id)
            bus.set_data(parameters_dict)
            network.add_bus(bus_id, bus)

        for parameters_dict in branches_dicts:
            from_bus_id = int(parameters_dict[BRANCH_DATA_PARAMETERS[0]])
            to_bus_id = int(parameters_dict[BRANCH_DATA_PARAMETERS[1]])
            
            if network.graph.has_edge(from_bus_id, to_bus_id) == True:
                branch = network.get_branch_data(from_bus_id, to_bus_id)
            else:
                branch = Branch(from_bus_id, to_bus_id)
            
            branch.set_data(parameters_dict)
            
            if network.graph.has_edge(from_bus_id, to_bus_id) == False:
                network.add_branch(from_bus_id, to_bus_id, branch)

        for parameters_dict in generators_dicts:
            bus_id = int(parameters_dict[GENERATOR_DATA_PARAMETERS[0]])
            bus = network.get_bus_data(bus_id)
            generator = Generator(1)  # 1 because the bus has only one generator
            generator.set_data(parameters_dict)
            index = generators_dicts.index(parameters_dict)  # only if polynomial cost function
            generator.set_polynomial_cost_coeffs(generator_costs_dicts[index]["coeff_p_2"],
                                                 generator_costs_dicts[index]["coeff_p_1"],
                                                 generator_costs_dicts[index]["coeff_p_0"])
            bus.add_generator(generator)

        network.set_base_MVA(self.parse_base_MVA())        
        return network


    def parse_network_elements(self, string_split, data_parameters):
        string_elements = self._string_file.split(string_split)[1].split(']')[0][1:].replace(";", "")
        csv_elements= pandas.read_csv(StringIO(string_elements), delim_whitespace=True, comment='%',
                                       header=None, dtype=numpy.float)

        elements_dicts = []
        for index, row in csv_elements.iterrows():
            elements_dicts.append(dict(zip(data_parameters, row[0:len(data_parameters)])))

        return elements_dicts


    def parse_base_MVA(self):
        return 100.0  

