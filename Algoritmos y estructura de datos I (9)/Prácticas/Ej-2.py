#Escriba un programa que permita ingresar 3 valores reales y 
# realice la siguiente operación:
# -Comparar los valores y mostrarlos ordenados de menor a mayor.
# -calcular y mostrar el promedio de los 2 valores extremos.
from algo1 import *
def promedio_valores(n1 , n2 , n3 ): 
    valor_minimo = n1
    valor_max = n1
    
    if n1 == n2 or n2 == n3 or n1 == n3 : 
        print("Ingrese numeros diferentes entre ellos")
        return

    if valor_max < n2:
        valor_max = n2
    if valor_max < n3:
        valor_max = n3
    if valor_minimo > n3:
        valor_minimo = n3
    if valor_minimo > n2 :
        valor_minimo = n2

    print(valor_minimo, valor_max)
    suma = valor_minimo + valor_max
    promedio = suma / 2
    print("El promedio es: ", promedio)
a=input_int("ingrese un valor ")
    
b=input_int("ingrese un valor ")
c=input_int("ingrese un valor ")
promedio_valores(a, b, c)