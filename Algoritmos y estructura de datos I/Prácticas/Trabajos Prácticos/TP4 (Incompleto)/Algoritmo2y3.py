from linkedlist import *

A = LinkedList

class Employee():
    def __init__(self,nombre,edad,nroLegajo):   
        self.nombre = nombre
        self.edad = edad
        self.nroLegajo = nroLegajo

def addEmployee(lista,nombre, edad, nroLegajo):
    add(lista,Employee(nombre,edad,nroLegajo))

def nodeByNroLegajo(L, NroLegajo):
    current_node = L.head
    count = 0
    while(current_node != None):
        if NroLegajo == count:
            return current_node
        else:
            current_node = current_node.nextNode 
            count = count + 1

    return None

def printEmployeeList(L):

    current_node = L.head

    while(current_node != None):
        print("Name:", current_node.value.nombre, " Age: ",current_node.value.edad, " NroLegajo: ",current_node.value.nroLegajo)
        current_node = current_node.nextNode     


def noRepeatsByNroLegajo(L):
    currentNode = L.head
    while(currentNode.nextNode != None):

        currentNode1 = currentNode.nextNode
        while(currentNode1.nextNode != None):

            if currentNode1.value.nroLegajo == currentNode.value.nroLegajo:
                delete(L,access(L,search(L,currentNode1.value)))

            currentNode1 = currentNode1.nextNode
        currentNode = currentNode.nextNode

def insertByNroLegajo(L,element,NroLegajo):

    if NroLegajo < 0:
        return None
    else:
        addEmployee(L,"Ernesto Andrés", 55, 6)



addEmployee(A,"Eduardo Ángel", 34, 2)
addEmployee(A,"Juan Carlos", 23, 5)
addEmployee(A,"Luis Esteban", 32, 7)
addEmployee(A,"Juan Carlos", 23, 5)
addEmployee(A,"Pedro Augusto", 40, 9)
addEmployee(A,"Luis Esteban", 32, 7)
addEmployee(A,"Pedro César", 45, 8)
addEmployee(A,"Eduardo Ángel", 34, 2)
addEmployee(A,"Luis Esteban", 32, 7)


noRepeatsByNroLegajo(A)
printEmployeeList(A)