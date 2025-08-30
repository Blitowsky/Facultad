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

    def heapify(L, n, i):
        largest = i
        left = 2 * i + 1
        right = 2 * i + 2

        if left < n and access(L, left) > access(L, largest):
            largest = left

        if right < n and access(L, right) > access(L, largest):
            largest = right

        if largest != i:
            val_i = access(L, i)
            val_largest = access(L, largest)
            delete(L, val_i)
            insert(L, val_largest, i)
            delete(L, val_largest)
            insert(L, val_i, largest)
            heapify(L, n, largest)

    def buildHeap(L, n):
        for i in range(n // 2 - 1, -1, -1):
            heapify(L, n, i)

    def heap(L, n):
        buildHeap(L, n)
        for end in range(n - 1, 0, -1):
            val0 = access(L, 0)
            val_end = access(L, end)
            delete(L, val0)
            insert(L, val_end, 0)
            delete(L, val_end)
            insert(L, val0, end)
            heapify(L, end, 0)

    heap(L, length(L))

def swap(L, i, j):
    node_i = L.head
    for _ in range(i):
        node_i = node_i.nextNode
    node_j = L.head
    for _ in range(j):
        node_j = node_j.nextNode
    node_i.value, node_j.value = node_j.value, node_i.value
