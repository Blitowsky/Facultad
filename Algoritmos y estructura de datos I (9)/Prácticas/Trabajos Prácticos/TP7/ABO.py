
from linkedlist import *

def bubbleSort(L):
    len = length(L)

    if len < 1:
        return
    
    def switcher(L,value):

        index = search(L,value)

        if index == len:
            print("el nodo es el último de la lista")       
            return
        
        currentnode = L.head
        
        for i in range(0,index):
            currentnode = currentnode.nextNode

        aux = currentnode.nextNode

        delete(L,aux.value)
        insert(L,aux.value,index)
        return True

    currentNode = L.head

    for i in range(len +1 , 0, -1):

        count = 0
        while(currentNode.nextNode != None and count != i) :  
            if currentNode.value > currentNode.nextNode.value:
                switcher(L,currentNode.value)
                currentNode = L.head
            else:
                count = count +1
                currentNode = currentNode.nextNode

        
def selectionSort(L):
    len = length(L)

    if len < 1:
        print("la lista posee solo un elemento")
        return
    
    currentNode = L.head

    for i in range(len-1):

        auxNode = currentNode
        menor = auxNode.value
        
        while auxNode != None:

            if auxNode.value < menor:
                
                menor = auxNode.value

            auxNode = auxNode.nextNode

        if menor == currentNode.value:
            currentNode = currentNode.nextNode
        
        print(menor)
        delete(L,menor)
        insert(L,menor,i)
        
def insertionSort(L):

    len = length(L)
    if len < 1:
        print("la lista posee solo un elemento")
        return
    
    currentNode = L.head

    while(currentNode != None):
        
        auxNode = L.head
        print("")
        index = 0
        while(auxNode != currentNode):
            
            if auxNode.value >= currentNode.value:
                delete(L,currentNode.value)
                insert(L,currentNode.value,index)
                break
            index = index +1
            auxNode = auxNode.nextNode
                
        currentNode = currentNode.nextNode



        

def prueba():

    A = LinkedList()
    addLiFo(A, 4)
    addLiFo(A, 3)
    addLiFo(A, 2)
    addLiFo(A, 1)

    Q = LinkedList()
    addLiFo(Q, 1)
    addLiFo(Q, 4)
    addLiFo(Q, 2)
    addLiFo(Q, 3)

    B = LinkedList()
    addLiFo(B, 5)
    addLiFo(B, 5)
    addLiFo(B, 5)
    addLiFo(B, 5)

    C = LinkedList()
    addLiFo(C, 1)
    addLiFo(C, 2)
    addLiFo(C, 3)
    addLiFo(C, 4)

    D = LinkedList()
    addLiFo(D, 42)

    F = LinkedList()
    
    print("A) ", end="")
    printLinkedList(A)
    insertionSort(A)
    printLinkedList(A)

    print("Q) ", end="")
    printLinkedList(Q)
    insertionSort(Q)
    printLinkedList(Q)

    print("B) ", end="")
    printLinkedList(B)
    insertionSort(B)
    printLinkedList(B)

    print("C) ", end="")
    printLinkedList(C)
    insertionSort(C)
    printLinkedList(C)

prueba()