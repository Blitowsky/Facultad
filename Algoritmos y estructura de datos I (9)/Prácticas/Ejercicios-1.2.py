from algo1 import *

cantidadNumeros = 3
vector = Array(cantidadNumeros,0.0)

for i in range(0,cantidadNumeros):
    vector[i] = input_real("Ingrese el número en la posición " + str(i+1) + ": ")



def encontrarMayor(vector):

    mayor = vector[0]

    for i in range(0, cantidadNumeros):
        if vector[i] > mayor: mayor = vector[i]


    return mayor

def encontrarMenor(vector):

    menor = vector[0]

    for i in range(0, cantidadNumeros):
        print(vector[i])
        if vector[i] < menor: menor = vector[i]

        
    return menor

menor = encontrarMenor(vector)
mayor = encontrarMayor(vector)

print("El número mayor ingresado es: ", mayor)
print("El número menor ingresado es: ", menor)
print("El promedio entre ambos es: ", (mayor + menor) / 2)
