
from linkedlist import *

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
            addLiFo(lista,numero)
            index = index + 1
            numero = ""

    return lista

print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 1) |a| -----------------------------")
print("")

list1 = StringToList(A)
list2 = StringToList(B)

printLinkedList(list1)
printLinkedList(list2)
print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 1) |b| -----------------------------")
print("")

def intercalator(listA, listB):

    newlist = LinkedList()
    if length(listA) > length(listB):
        max = length(listA)
    else:
        max = length(listB)

    for i in range(0,max):
        if max <= length(listA): addFiFo(newlist,access(listA,i))
        if max <= length(listB): addFiFo(newlist,access(listB,i))
    return newlist

list3 = intercalator(list1,list2)

printLinkedList(list3)

print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 1) |c| -----------------------------")
print("")


def deletePairElementsFrom(listA,comparatorList):
    
    currentNode = comparatorList.head

    while(currentNode != None):
        if int(currentNode.value) % 2 == 0:
            delete(listA,currentNode.value)
        currentNode = currentNode.nextNode

deletePairElementsFrom(list3,list1)

printLinkedList(list3)

print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 1) |d| -----------------------------")
print("")

def generateWhitNoPair(list):
    currentNode = list.head
    newList = LinkedList()

    while(currentNode.nextNode != None):
        if int(currentNode.value) % 2 != 0:
            addFiFo(newList,currentNode.value)
        currentNode = currentNode.nextNode
    return newList

list4 = generateWhitNoPair(list3)
printLinkedList(list4)

print("-----------------------------------------------------------------------")
print("-------------------------Ejercicio 1) |e| -----------------------------")
print("")

def listBetween(listadd,listfrom,first,last):

    currentNode = listadd.head
    while(currentNode.nextNode != None):
        currentNode1 = currentNode.nextNode
        while(currentNode1.nextNode != None):
            if currentNode1.value == currentNode.value:
                delete(listadd,currentNode1.value)
            currentNode1 = currentNode1.nextNode
        currentNode = currentNode.nextNode

        


    currentNode = listfrom.head

    while(currentNode.nextNode != None):
        if int(currentNode.value) >= first and int(currentNode.value) <= last:
            addLiFo(listadd,currentNode.value) 
        currentNode = currentNode.nextNode

listBetween(list1,list2,50,100)
printLinkedList(list1)

