from algo1 import *

n= 3
m = 3

matriz_1 = Array(n, Array(m,0))

for i in range(0,n):
    for j in range(0,m):
        if i > j: 
            matriz_1[i][j] = 0
        else: 
            matriz_1[i][j] = 2
        
        print(matriz_1[i][j], end="   ")
    print("\n")

triangular = True
for i in range(0,n):
    for j in range(0,m):
        if i > j & matriz_1[i][j] != 0:
            triangular = False

determinante = 1
if triangular:
    for i in range(0,n):
        for j in range(0,m):
            if i == j:
                determinante = determinante * matriz_1[i][j]

print(determinante)
