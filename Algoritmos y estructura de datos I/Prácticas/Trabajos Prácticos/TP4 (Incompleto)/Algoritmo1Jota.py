from linkedlist import *
from algo1 import *
from myarray import length

class LinkedList:
    head = None
    
class Node: 
    value = None
    nextNode = None

#-----------------------------------------------------------------------------------------------------

array1 = [24, 45, 3, 67, 89, 345, 54, 22, 3, 678]
array2 = [46, 34, 64, 59, 12, 15, 234, 567, 12, 33]

#-----------------------------------------------------------------------------------------------------

def fillList(array):
    list = LinkedList()
    for i in range(0, length(array)):
        add(list, array[i])
    return list

#-----------------------------------------------------------------------------------------------------

listA = fillList(array1)
listB = fillList(array2)

#-----------------------------------------------------------------------------------------------------

def mergeLists(ListA, ListB):
    
    listC = LinkedList()
    
    current_node_a = listA.head
    current_node_b = listB.head
    
    for i in range(0,  length(listB)):
        add(listC, current_node_a.value)
        current_node_a = current_node_a.nextNode
        current_node_b = current_node_b.nextNode
    
    return listC
    
#-----------------------------------------------------------------------------------------------------
    
def deleteEven(list):
    current = list.head
    while current != None:
        if current.value % 2 == 0:
            delete(list,current.value)
        current = current.nextNode
            
def noRepeatsAndAppend(listA, listB):
    current_comparator = listA.head
    current = current_comparator.nextNode
    counter = 0
    while current_comparator.nextNode != None:
        while current != None:
            if current.value == current_comparator.value:
                counter += 1
                for i in range(0, counter + 1):
                    delete(listA, current.value)
            current = current.nextNode
        counter = 0
        current_comparator = current_comparator.nextNode
        current = current_comparator.nextNode
    
    current = listB.head
    while current != None:
        if current.value >= 50 and current.value <= 100:
            insert(listA, current.value,   length(listA))
        current = current.nextNode
        
#-----------------------------------------------------------------------------------------------------
