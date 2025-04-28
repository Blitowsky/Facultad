from linkedlist import *

class PriorityQueue:
    head=None

class PriorityNode:
    value=None
    nextNode=None
    priority=None

def enqueue_priority(Q,element,priority):

    


def printLinkedList(L):

    current_node = L.head

    print("-------------------")
    while(current_node.nextNode != None):
        print(" V:",current_node.value," P:", current_node.priority)
        current_node = current_node.nextNode     
    print("-------------------")

Q = PriorityQueue

print(enqueue_priority(Q,"a",5))
print(enqueue_priority(Q,"b",2))
print(enqueue_priority(Q,"c",0))

# printLinkedList(Q)
print(Q.head.value)
print(Q.head.nextNode.value)
#print(Q.head.nextNode.nextNode.value)
