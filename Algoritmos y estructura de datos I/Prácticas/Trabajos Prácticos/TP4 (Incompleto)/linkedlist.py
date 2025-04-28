class LinkedList:
    head = None

class Node:
    value = None
    nextNode = None

A = LinkedList() #lista vacía

#Orden de complejidad: O(n)
def nodeByIndex(L, index):
    current_node = L.head
    count = 0
    while(current_node != None):
        if index == count:
            return current_node
        else:
            current_node = current_node.nextNode 
            count = count + 1

    return None

#Orden de complejidad: O(n)
def printLinkedList(L):

    current_node = L.head

    print("{", end="")
    while(current_node != None):
        print(" ",current_node.value, end="")
        current_node = current_node.nextNode     
    print("}")

#Orden de complejidad: O(1)
def add(list, element):
    
    if list.head != None:
        node = Node()
        node.value = element
        node.nextNode = list.head
        list.head = node
    else:
        node = Node()
        node.value = element
        list.head = node
        
#Orden de complejidad: O(n)

def search(list, element):
    exist = False
    counter = 0
    current_node = list.head
    while current_node != None:
        if current_node.value == element:
            exist = True
            return counter
        counter = counter + 1
        current_node = current_node.nextNode
    if exist == False:
        return None
#Orden de complejidad: O(1) 
   
def insert(L, element, index):

    if index < 0 or index > length(L):
        return None
    elif index == 0:
        add(L,element)
        return index
    else:
        node = Node()
        node.value = element
        node.nextNode = nodeByIndex(L, index)
        nodeByIndex(L,index-1).nextNode = node

        return index

#Orden de complejidad: O(1)   
def delete(L,element):
    if search(L,element) == None:
        return None
    else:

        index_node = search(L,element)

        if nodeByIndex(L,index_node-1) != None :

            if index_node > 0: nodeByIndex(L,index_node-1).value
            if index_node < 0: nodeByIndex(L,index_node+1).value

            nodeByIndex(L,index_node-1).nextNode = nodeByIndex(L,index_node+1)

            return index_node
        elif index_node == 0:
            L.head = nodeByIndex(L,index_node+1)
            return index_node
        else:
            return None

#Orden de complejidad: O(n)
def length(L):
    current_node = L.head
    count = 0
    while(current_node != None):
        count = count + 1
        current_node = current_node.nextNode 
    return count

#Orden de complejidad: O(1)
def access(L,position):
    if nodeByIndex(L,position) != None:
        return nodeByIndex(L,position).value
    else:
        return None
    
#Orden de complejidad: O(1)
def update(L,element,position):
    if nodeByIndex(L,position) != None:
        nodeByIndex(L,position).value = element
        return position
    else:
        return None


