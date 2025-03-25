from algo1 import *

n= 5
m = 5

matriz_1 = Array(n, Array(m,0))
matriz_2 = Array(n, Array(m,0))
matriz_resultado = Array(n, Array(m,0))

for i in range(0,n):
    for j in range(0,m):
        matriz_1[i][j] = 1
        
        
for i in range(0,n):
    for j in range(0,m):
        matriz_2[i][j] = 2
        

for i in range(0,n):
    for j in range(0,m):
        matriz_resultado[i][j] = matriz_1[i][j] - matriz_2[i][j] 
        print(matriz_resultado[i][j], end=" ")
    print("\n")


