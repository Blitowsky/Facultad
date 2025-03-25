from algo1 import *
import math

vector_1 = Array(5,0)
vector_2 = Array(5,0)
vector_resultado = Array(5,0)

for i in range(0, len(vector_1)):
    vector_1[i] = 3

for i in range(0, len(vector_2)):
    vector_2[i] = 1

if len(vector_1) != len(vector_2):

    print("Los tamaños no coinciden")

else:

    for i in range(0, len(vector_1)):
        vector_resultado[i] = vector_1[i] + vector_2[i]
        
    print (vector_resultado)
    norma = 0
    for i in range(0,len(vector_resultado)):
        norma = norma + vector_resultado[i] * vector_resultado[i]
    norma = math.sqrt(norma)
    print(round(norma,2))

