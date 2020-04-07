# Code reference: https://ruslanspivak.com/lsbasi-part7/

import sys
from lexer import *
from parser import *
from interpreter import *

def main():
    try:
        for text in sys.stdin:
                lexer = Lexer(text)
                parser = Parser(lexer)
                interpreter = Interpreter(parser)
                result = interpreter.interpret()
                print(result)                
    except OSError as err:
        print("OS error: {0}".format(err))
    except EOFError:
        print("EOF error.")
        raise

if __name__ == '__main__':
    main()
