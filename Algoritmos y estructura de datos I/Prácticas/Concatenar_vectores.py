from algo1 import *
import random
import math

tamaño_vector_1 = random.randint(2,3)
vector_1 = Array(tamaño_vector_1, 0)

tamaño_vector_2 = random.randint(2,3)
vector_2 = Array(tamaño_vector_2, 0)

for i in range(0,tamaño_vector_1):

    vector_1[i] = random.randint(0,3)
    print("A ",i, " : ",vector_1[i])
    
for i in range(0,tamaño_vector_2):

    vector_2[i] = random.randint(0,3)
    print("B ",i, " : ",vector_2[i])

def unir_vectores(set_1, set_2):

    if len(set_1) == len(set_2):
        misma_dimension = True

    nuevo_vector = Array(len(set_1) + len(set_2), 0)

    for i in range(0,len(set_1)):
        nuevo_vector[i] = set_1[i]

    for i in range(0,len(set_2)):
        nuevo_vector[i+len(set_1)] = set_2[i]

    return nuevo_vector

nuevo_vector = unir_vectores(vector_1, vector_2)

for i in range(0, len(vector_1)+len(vector_2)):
    print("C ",i, " : ",nuevo_vector[i])

def calcular_norma_cuadratica(vector):
    norma = 0
    for i in range(0,len(vector)):
        norma = norma + vector[i] * vector[i]

    return math.sqrt(norma)

print("La norma del vector es: ", calcular_norma_cuadratica(nuevo_vector) )