from algo1 import *
from linkedlist import *
from set import *
import math


A = " 24, 45, 3, 67, 89, 345, 54, 22, 3, 678"
B = " 46, 34, 64, 59, 12, 15, 234, 567, 12, 33"

def StringToList(String):
    count = 0
    for i in range(0,len(String)):
        if String[i] == " ":
            count = count + 1

    lista = LinkedList()
    index = 0
    numero = ""

    for i in range(0,len(String)):

        if String[i] != " " and String[i] != ",":
            numero = numero + String[i]

        if String[i] == "," or i == len(String)-1:
            add(lista,numero)
            index = index + 1
            numero = ""

    return lista

def intercalarListas(lista1, lista2):
    lista = LinkedList
    
    if length(lista1) > length(lista2): mayor = length(lista1)
    else: mayor = length(lista2)

    for i in range(mayor,-1, -1):
        if nodeByIndex(lista1,i) != None: add(lista,access(lista1,i))
        if nodeByIndex(lista2,i) != None: add(lista,access(lista2,i))
         
    return lista

def eliminarPares(listaDondeBuscar, listaDondeComparar):

    for i in range(0,length(listaDondeComparar)):

        if nodeByIndex(listaDondeBuscar,i) != None: 
            if int(access(listaDondeComparar,i)) % 2 == 0:
                    
                delete(listaDondeBuscar,access(listaDondeComparar,i)) 

def limit(lista,int1,int2):

    currentNode = lista.head
    while(currentNode.nextNode != None):

        if int(currentNode.value) <= int2 and int(currentNode.value) >= int1:

            delete(lista,currentNode.value)

        currentNode = currentNode.nextNode
    
def noRepeats(lista):

    currentNode = lista.head
    while(currentNode.nextNode != None):

        currentNode1 = currentNode.nextNode
        while(currentNode1.nextNode != None):

            if currentNode1.value == currentNode.value:
                delete(lista,access(lista,search(lista,currentNode1.value)))

            currentNode1 = currentNode1.nextNode
        currentNode = currentNode.nextNode


LinkedA = StringToList(A)

LinkedB = StringToList(B)

LinkedC = intercalarListas(LinkedA,LinkedB)

print("A) ", end="")
printLinkedList(LinkedA)

print("B) ", end="")
printLinkedList(LinkedB)

print("C) ", end="")
printLinkedList(LinkedC)

eliminarPares(LinkedC, LinkedA)

print("D) ", end="")

linkedD = LinkedC
eliminarPares(linkedD,LinkedC)
printLinkedList(linkedD)
linkedE = LinkedA

limit(linkedE,50,100)
noRepeats(linkedE)

print("E) ", end="")
printLinkedList(linkedE)


