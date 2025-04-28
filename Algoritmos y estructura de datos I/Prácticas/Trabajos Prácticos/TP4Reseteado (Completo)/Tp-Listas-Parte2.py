from linkedlist import *

Empleados = LinkedList

class empleado():
    def __init__(self,nombre,edad,nroLegajo):
        self.nombre = nombre
        self.edad = edad
        self.nroLegajo = nroLegajo

def addEmpleado(lista,nombre,edad,nroLegajo):
    addLiFo(lista,empleado(nombre, edad, nroLegajo))

def mostarEmpleados(lista):
    currentNode = lista.head

    while(currentNode != None):

        print("----")
        print("Nombre:", currentNode.value.nombre,"edad:", currentNode.value.edad,"nroLegajo:", currentNode.value.nroLegajo)

        currentNode = currentNode.nextNode

A = LinkedList

addEmpleado(A,"Eduardo Ángel", 34, 2)
addEmpleado(A,"Juan Carlos", 23, 5)
addEmpleado(A,"Luis Esteban", 32, 7)
addEmpleado(A,"Juan Carlos", 23, 5)
addEmpleado(A,"Pedro Augusto", 40, 9)
addEmpleado(A,"Luis Esteban", 32, 7)
addEmpleado(A,"Pedro César", 45, 8)
addEmpleado(A,"Eduardo Ángel", 34, 2)
addEmpleado(A,"Luis Esteban", 32, 7)

def legajosRepetidos(lista):
    currentNode = lista.head

    while(currentNode != None):
        currentNode1 = currentNode.nextNode
        while(currentNode1 != None):

            if currentNode1.value.nroLegajo == currentNode.value.nroLegajo:
                delete(lista, currentNode1.value)

            currentNode1 = currentNode1.nextNode
        currentNode = currentNode.nextNode

def agregarPorLegajo(lista,nroLegajo):
    currentNode = lista.head

    i = 0
    while(currentNode.nextNode != None):

        if currentNode.value.nroLegajo == nroLegajo:
             break  
          
        currentNode = currentNode.nextNode
        i = i + 1

    insert(lista,empleado("Ernesto Andrés", 55, 6),i)

def intercambiarElementosContinuosPorLegajo(lista,legajoBuscado):
    
    currentNode = lista.head
    index = 0
    nodo1Value = None
    nodo2Value= None

    i = 0
    while(currentNode.nextNode != None):
        if currentNode.value.nroLegajo == legajoBuscado and i != 0:
             
            insert(lista,currentNode.nextNode.value,i)
            currentNode.nextNode.value = None
            delete(lista,None)
            return 0

        currentNode = currentNode.nextNode
        i = i + 1


    # insert(lista,nodo1Value,index+1)
    # insert(lista,nodo2Value,index)


print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 3) |a| -----------------------------")
print("")
legajosRepetidos(A)
mostarEmpleados(A)

print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 3) |b| -----------------------------")
print("")
agregarPorLegajo(A,7)
mostarEmpleados(A)

print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 3) |c| -----------------------------")
print("")
intercambiarElementosContinuosPorLegajo(A,8)
intercambiarElementosContinuosPorLegajo(A,9)
mostarEmpleados(A)