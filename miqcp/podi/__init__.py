"""

PODi - Power Flow Optimization with Discrete Decisions

"""



######################################
# PROGRAM INFOS                      #
######################################


__version__ = '1.0'
__author__ = 'Kevin-Martin Aigner, Robert Burlacu, Frauke Liers, Alexander Martin'



######################################
# IMPORTS                            #
######################################


import logging
import sys



######################################
# CLASSES                            #
######################################


class ExitStatus:
    
    """ Program exit codes """
    
    SUCCESS = 0
    ERROR = 1
    PLUGIN_ERROR = 7
    ERROR_CTRL_C = 130
    ERROR_TIMEOUT = 2
    ERROR_TOO_MANY_REDIRECTS = 6


class Logging:

    """ Logging Levels """

    EXCEPTION = 150
    INFO = 100
    DEV = 50
    DEBUG = 10


    @classmethod
    def log_exception(cls, message):
        logging.log(cls.EXCEPTION, EXCEPTION_PREFIX + message)

    @classmethod
    def log_info(cls, message):
        logging.log(cls.INFO, message)

    @classmethod
    def log_dev(cls, message):
        logging.log(cls.DEV, message)

    @classmethod
    def log_debug(cls, message):
        logging.log(cls.DEBUG, message)

    @classmethod
    def log_dev_local(cls, message):
        cls._log_local(cls.DEV, message)

    @classmethod
    def log_debug_local(cls, message):
        cls._log_local(cls.DEBUG, message)

    @classmethod
    def _log_local(cls, level, message):
        old_level = logging.getLogger().level
        logging.getLogger().setLevel(level)
        logging.log(level, message)
        logging.getLogger().setLevel(old_level)



######################################
# LOGGING                            #
######################################


FORMAT = '%(message)s'

EXCEPTION_PREFIX = "EXCEPTION: "

logging.addLevelName(Logging.INFO, 'INFO')
logging.basicConfig(format=FORMAT, stream=sys.stdout, level=Logging.INFO)

log_exception = Logging.log_exception
log_info = Logging.log_info
log_debug = Logging.log_debug
log_debug_local = Logging.log_debug_local
