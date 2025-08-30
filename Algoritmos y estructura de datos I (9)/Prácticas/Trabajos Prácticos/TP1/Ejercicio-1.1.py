from algo1 import *
import random

tamañoVector = input_int("Ingrese el tamaño del vector: ")
vector = Array(tamañoVector, 0)

for i in range(0,tamañoVector):

    vector[i] = random.randint(-10,10)


inidiceMayor = 0

for i in range(0,tamañoVector):

    print(i," : ",vector[i])

    if vector[inidiceMayor] < abs(vector[i]):
        inidiceMayor = i



print("El indice del elemento mayor es: ", inidiceMayor)
