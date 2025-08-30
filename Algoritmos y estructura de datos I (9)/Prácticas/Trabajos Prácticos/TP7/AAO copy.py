from linkedlist import *
from mystack import pop
from random import randint

def QuickSort(L):
    
    def fun_quicksort(L, start, end):
        if end - start < 1:
            return

        pivote_index = randint(start, end)
        pivote_value = access(L, pivote_index)

        current_index = start
        while current_index <= end:
            current_value = access(L, current_index)
            if current_index < pivote_index and current_value > pivote_value:
                delete(L, current_value)
                insert(L, current_value, pivote_index)
                pivote_index -= 1
            elif current_index > pivote_index and current_value < pivote_value:
                delete(L, current_value)
                insert(L, current_value, pivote_index)
                pivote_index += 1
                current_index += 1  
            else:
                current_index += 1

        fun_quicksort(L, start, pivote_index - 1)
        fun_quicksort(L, pivote_index + 1, end)
    
    fun_quicksort(L, 0, length(L) - 1)

def MergeSort(L):

    def merge(left, right):
        merged = LinkedList()
        node1 = left.head
        node2 = right.head

        while node1 is not None and node2 is not None:
            if node1.value <= node2.value:
                addFiFo(merged, node1.value)
                node1 = node1.nextNode
            else:
                addFiFo(merged, node2.value)
                node2 = node2.nextNode

        while node1 is not None:
            addFiFo(merged, node1.value)
            node1 = node1.nextNode

        while node2 is not None:
            addFiFo(merged, node2.value)
            node2 = node2.nextNode

        return merged
            

    def divide(L):

        len = length(L)

        half = len // 2

        print(len)
        if len <= 1:
            return L
        
        left = LinkedList()
        right = LinkedList()
        
        for i in range(half):
            addFiFo(left,access(L,i))


        for i in range(half, len):
            addFiFo(right,access(L,i))


        printLinkedList(left)
        printLinkedList(right)

        return merge(divide(left),divide(right))

    return divide(L)

def heapSort(L):
    len = length(L)

    def heapify(L,node, index):

        currentNode = node
        p = index
        if 2*p+1 >= len:
            return
        left = access(L,2*p+1)

        if (2*p+2 >= len) == False:
            right = access(L,2*p+2)

        if currentNode.value < left:
            shiftUp(L,currentNode.value,left,p,2*p+1)
            
        elif currentNode.value < right:
            shiftUp(L,currentNode.value,right,p,2*p+2)

        else:
            return 
    
    def shiftUp(L, node1Value, node2Value,index1,index2):

        delete(L,node1Value)
        delete(L,node2Value)
        insert(L, node1Value,index1)
        insert(L, node2Value,index2)


    def switcher(L):

        addFiFo(L,L.head.value)
        L.head = L.head.nextNode
        return

    def getNode(L, index):
        if L.head == None:
            return None

        node = L.head
        for i in range(index):
            if node == None:
                return None
            node = node.nextNode
        return node

    def heap(L, end):

        if end == 0:
            return 
        
        heapify(L,L.head,0)
        
        switcher(L)
        
        heap(L,end-1)
    
    heap(L, length(L)-1)



Q = LinkedList()
addLiFo(Q, 1)
addLiFo(Q, 4)
addLiFo(Q, 2)
addLiFo(Q, 3)

printLinkedList(Q)
heapSort(Q)        
printLinkedList(Q)
    
# def prueba():

#     A = LinkedList()
#     addLiFo(A, 4)
#     addLiFo(A, 3)
#     addLiFo(A, 2)
#     addLiFo(A, 1)

#     Q = LinkedList()
#     addLiFo(Q, 1)
#     addLiFo(Q, 4)
#     addLiFo(Q, 2)
#     addLiFo(Q, 3)

#     B = LinkedList()
#     addLiFo(B, 5)
#     addLiFo(B, 5)
#     addLiFo(B, 5)
#     addLiFo(B, 5)

#     C = LinkedList()
#     addLiFo(C, 1)
#     addLiFo(C, 2)
#     addLiFo(C, 3)
#     addLiFo(C, 4)

#     D = LinkedList()
#     addLiFo(D, 42)

#     F = LinkedList()
    
#     print("A) ", end="")
#     printLinkedList(A)
#     printLinkedList(MergeSort(A))

#     print("Q) ", end="")
#     printLinkedList(Q)
#     printLinkedList(MergeSort(Q))

#     print("B) ", end="")
#     printLinkedList(B)
#     printLinkedList(MergeSort(B))


#     print("C) ", end="")
#     printLinkedList(C)
#     printLinkedList(MergeSort(C))

# prueba()