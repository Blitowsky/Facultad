from linkedlist import *


A = LinkedList()


add(A,"B")
add(A,"A")
add(A,"C")
add(A,"D")

n = 0

printLinkedList(A)


auxNode = nodeByIndex(A,n)
deleteByIndex(A,n)
auxNode.nextNode = nodeByIndex(A,n-1)
A.head = auxNode

printLinkedList(A)

n = 1
auxNode = nodeByIndex(A,n)


deleteByIndex(A,n)

printLinkedList(A)
