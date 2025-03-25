from algo1 import *
import random

vector_prueba = Array(5,0.0)
otro_vector_prueba = Array(5,0.0)




def create_set(array):

    array_auxiliar = Array(len(array),0.0)
    indice = 0
    for i in range(0,len(array)):
        repetido = False
        for j in range(0,len(array)):
           
            if array[i] == array_auxiliar[j]:
                repetido = True
            
        if repetido == False:
            array_auxiliar[indice]= array[i]
            indice= indice+1

    array_final = Array(indice,0.0)

    #Coloca los ítems no repetidos en un arreglo y lo retorna al programa que llamó la función
    for i in range(0,indice):
        array_final[i] = array_auxiliar[i]
    return array_final

def unir_vectores(set_1, set_2):

    if check_repetidos(set_1) or check_repetidos(set_2): return

    nuevo_vector = Array(len(set_1) + len(set_2), 0.0)

    for i in range(0,len(set_1)):
        nuevo_vector[i] = set_1[i]

    for i in range(0,len(set_2)):
        nuevo_vector[i+len(set_1)] = set_2[i]

    return nuevo_vector


def interseccion(set_1, set_2):

    if check_repetidos(set_1) or check_repetidos(set_2): return

    if len(set_1) > len(set_2):
        vector_menor = set_2
        vector_mayor = set_1
    else:
        vector_menor = set_1
        vector_mayor = set_2

        
    vector_auxiliar = Array(len(vector_menor), 0.0)
    index = 0
    for i in range(0,len(vector_menor)):
        for j in range(0, len(vector_mayor)):
            if set_1[i] == vector_mayor[j]:
                vector_auxiliar[index] = vector_menor[i]
                index = index + 1

    vector_interseccion = Array(index,0.0)

    for i in range(0, index):
        vector_interseccion[i] = vector_auxiliar[i]

    return vector_interseccion

def diferencia(set_1, set_2):
   
    if check_repetidos(set_1) or check_repetidos(set_2): return
    vector_auxiliar = Array(len(set_1) + len(set_2), 0.0) 
    index = 0

    for i in range(len(set_1)):
        pertenece = False
        for j in range(len(set_2)):
            if set_1[i] == set_2[j]:  
                pertenece = True
                break
        if not pertenece:
            vector_auxiliar[index] = set_1[i]
            index += 1

   
    for i in range(len(set_2)):
        pertenece = False
        for j in range(len(set_1)):
            if set_2[i] == set_1[j]: 
                pertenece = True
                break
        if not pertenece:
            vector_auxiliar[index] = set_2[i]
            index += 1

    vector_diferencia = Array(index, 0.0)
    for i in range(index):
        vector_diferencia[i] = vector_auxiliar[i]

    return vector_diferencia



def check_repetidos(array):  
    array_auxiliar = Array(len(array),0.0)
    indice = 0
    for i in range(0,len(array)):
        repetido = False
        for j in range(0,len(array)):
           
           
            if array[i] == array_auxiliar[j]:
                repetido = True
                print("El set ingresado es inválido, posee elementos repeditos")
                #Al saber que presenta por lo menos un item repetido, discrepa con la definición de
                #set y no continúa revisando otras repeticiones
                return False
            
        if repetido == False:
            array_auxiliar[indice]= array[i]
            indice= indice+1
    
    return True 

while (check_repetidos(otro_vector_prueba) == False ):
    for i in range(0,5):
        otro_vector_prueba[i] = 1.0 * random.randint(0,20)
while (check_repetidos(vector_prueba) == False):
    for i in range(0,5):
        vector_prueba[i] = 1.0 * random.randint(0,20)

repetido = check_repetidos(vector_prueba)
print(repetido)
vector_prueba = create_set(vector_prueba)
print(vector_prueba, " :1")
print(otro_vector_prueba, " :2")
#vector = unir_vectores(vector_prueba, otro_vector_prueba)

vector = diferencia(vector_prueba, otro_vector_prueba)
print(vector)
