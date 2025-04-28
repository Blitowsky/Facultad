from linkedlist import *

P = LinkedList

def enqueue(Q,element):
    add(Q,element)

def dequeue(Q):
    max = length(Q)
    if max == 0: return None
    elif max == 1:
        element = Q.head.value
        delete(Q,element)
        return element
    else:
        element = nodeByIndex(Q,max-1).value
        nodeByIndex(Q,max-2).nextNode = None
        return element
add(P,1)
add(P,2)
add(P,3)
add(P,4)



printLinkedList(P)
print(dequeue(P))
printLinkedList(P)