from linkedlist import *
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
                # No avanzamos current_index porque el elemento en current_index es nuevo tras el insert
            elif current_index > pivote_index and current_value < pivote_value:
                delete(L, current_value)
                insert(L, current_value, pivote_index)
                pivote_index += 1
                current_index += 1  # Avanzamos porque el insert no afecta los elementos antes del pivote
            else:
                current_index += 1

        fun_quicksort(L, start, pivote_index - 1)
        fun_quicksort(L, pivote_index + 1, end)
    
    fun_quicksort(L, 0, length(L) - 1)

def MergeSort(L):
    


        
    
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
#     MergeSort(A)
#     printLinkedList(A)

#     print("Q) ", end="")
#     printLinkedList(Q)
#     MergeSort(Q)
#     printLinkedList(Q)

#     print("B) ", end="")
#     printLinkedList(B)
#     MergeSort(B)
#     printLinkedList(B)

#     print("C) ", end="")
#     printLinkedList(C)
#     MergeSort(C)
#     printLinkedList(C)