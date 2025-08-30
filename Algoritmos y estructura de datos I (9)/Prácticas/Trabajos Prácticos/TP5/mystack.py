from linkedlist import *

P = LinkedList


def push(S,element):
    addLiFo(S,element)

def pop(S):

    if S.head == None: return None
    element = S.head.value
    S.head = S.head.nextNode
    return element
