#!/usr/bin/env python

"""

The main entry point. 
Call by `podi' or `python -m podi'.
Windows: 'py -m podi'.
Spyder: 'run -m podi'.

"""

import sys


def main():
    try:
        from .framework import main
        sys.exit(main())
    except KeyboardInterrupt:
        from . import ExitStatus
        sys.exit(ExitStatus.ERROR_CTRL_C)


if __name__ == '__main__':
    main()
