from linkedlist import *
from mystack import *
from myqueue import *

class PriorityQueue:
    head=None
class PriorityNode:
    value=None
    nextNode=None
    priority=None

def enqueue_priority(Q,value,priority:int):
    newNode = PriorityNode()
    newNode.value = value
    newNode.priority = priority

    
    if Q.head == None:
        Q.head = newNode
        return 0
    elif Q.head.priority < priority:
        newNode.nextNode = Q.head
        Q.head = newNode
        return 0
    
    i = 0
    currentNode = Q.head

    while(currentNode != None):
        if currentNode.priority <= priority:
            while(currentNode!= None):
                
                if currentNode.nextNode == None:
                    currentNode.nextNode = newNode
                    return i
                elif currentNode.nextNode.priority != priority:
                    newNode.nextNode = currentNode.nextNode
                    currentNode.nextNode = newNode
                    return i
                i = i +1
                currentNode = currentNode.nextNode

        elif currentNode.nextNode == None:
            currentNode.nextNode = newNode
            return i
        i = i +1
        currentNode = currentNode.nextNode
    return None

def printLinkedListPriority(Q):
    current_node = Q.head
    
    print("{")
    while(current_node != None):
        print(" Value:",current_node.value, "| Priority", current_node.priority)
        current_node = current_node.nextNode     
    print("}")

def dequeue_priority(Q):
    if Q.head == None: return None
    else: 
        valor = Q.head.value

        if Q.head.nextNode == None:
            Q.head = None
        else:
            Q.head = Q.head.nextNode

        return valor

