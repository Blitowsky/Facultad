
from algo1 import *

a = input_int("Ingrese el primer número: ")
b = input_int("Ingrese el segundo número: ")



def decrecer(a,b):
    n = a+b
    numero = n

    if n >= 50: paso = 5
    else: paso = 2

    for i in range(0,n,paso):

        print(numero)
        numero = numero - paso
    
decrecer(a,b)