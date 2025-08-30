from linkedlist import *


P = LinkedList

def enqueue(Q,element):
    addLiFo(Q,element)

def dequeue(Q):
    currentNode = Q.head
    if Q.head == None:
        return None
    elif Q.head.nextNode == None:
        valor = Q.head.value
        Q.head = None
        return valor
    elif currentNode.nextNode == None:
        valor = currentNode.nextNode
        currentNode.nextNode = None
        return valor

    i = 0
    valor = None

    while(currentNode != None):
        
        if currentNode.nextNode.nextNode == None:
            valor = currentNode.nextNode.value
            currentNode.nextNode = None
            return valor

        currentNode = currentNode.nextNode
        i = i + 1 

