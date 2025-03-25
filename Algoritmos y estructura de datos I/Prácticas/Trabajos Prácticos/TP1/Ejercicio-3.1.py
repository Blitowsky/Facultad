from algo1 import *
import random

matriz = Array(5,Array(5,0))
vector = Array(5,0)
vector_resultado = Array(5,0)

for i in range(0, len(vector)):
    vector[i] = 1

for i in range(0,5):
    for j in range(0,5):
        matriz[i][j] = random.randint(0,9)
        print (matriz[i][j], end="   ")
    
    print("\n")

if len(vector) != len(matriz):
    print("tamaños incorrectos")

else:
    resultado = 0
    contador = 0
    for i in range(0,5):
        resultado = 0
        for j in range(0,5):
            print(vector[i]," | ", matriz[j][i])
            resultado = resultado + vector[i]*matriz[j][i]
        print("\n")
        print(resultado)
        vector_resultado[i] = resultado

print(vector_resultado)