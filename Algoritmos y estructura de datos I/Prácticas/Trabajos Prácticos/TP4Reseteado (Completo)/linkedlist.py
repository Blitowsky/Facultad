class LinkedList:
    head=None

class Node:
    value=None
    nextNode=None


def addLiFo(L,value):
    
    newNode = Node()
    newNode.value = value
    if L.head == None:
        L.head = newNode
    else:
        newNode.nextNode = L.head
        L.head = newNode

def addFiFo(L,value):

    newNode = Node()
    newNode.value = value

    if L.head == None:
        L.head = newNode
    else:
        currentNode = L.head
        for i in range(0,length(L)-1):
            currentNode = currentNode.nextNode
        currentNode.nextNode = newNode

def search(L,value):

    currentNode = L.head
    if currentNode == None:
        return None
    else:
        i = 0
        while(currentNode != None):
            if currentNode.value == value:
                return i
            i = i + 1
            currentNode = currentNode.nextNode
        return None
    
def insert(L,value,index):

    #Mirá pibe, te comento, por haber agregado lengths a tu código estás metiendo otro orden n de complejidad
    # lo que implica que tu orden total del insert es O(n²) así que es medio poronga el asunto. Si despues,
    # cuando hayas dormido algo, te pinta arreglarlo, hacelo, forro


    if index < 0:
        return None
    elif index == 0: 
        addLiFo(L,value) 
        return index
    elif index == length(L):
        addFiFo(L,value)
        return index

    i = 0
    currentNode = L.head
    while(currentNode != None):

        if i+1 == index:
            newNode = Node()
            newNode.value = value
            newNode.nextNode = currentNode.nextNode
            currentNode.nextNode = newNode
            return index
        currentNode = currentNode.nextNode
        i = i +1
    return None

def delete(L,value):

    currenNode = L.head
    if L.head == None: return None
    i = 0
    while(currenNode.nextNode != None):
        if currenNode.value == value:
            L.head = currenNode.nextNode
            return i
        elif currenNode.nextNode.value == value:
            if currenNode.nextNode.nextNode != None: 
                currenNode.nextNode = currenNode.nextNode.nextNode
                return i
            else: 
                currenNode.nextNode = None
                return i
            
        currenNode = currenNode.nextNode
        i = i +1
    return None

def access(L,position):

    if L.head == None: return None
    currentNode = L.head
    i = 0

    while(currentNode != None):

        if i == position: return currentNode.value

        currentNode = currentNode.nextNode
        i = i + 1

    return None

def update(L,value,position):

    if L.head == None: return None

    currentNode = L.head
    i = 0

    while(currentNode != None):

        if i == position:
            currentNode.value = value
            return i

        i = i +1 
        currentNode = currentNode.nextNode
    return None
def length(L):

    currentNode = L.head

    if currentNode == None:
        return 0
    elif currentNode.nextNode == None:
        return 1
    else:
        count = 1
        while(currentNode.nextNode != None):
            count = count + 1
            currentNode = currentNode.nextNode
        return count

def printLinkedList(L):

    current_node = L.head

    print("{", end="")
    while(current_node != None):
        print("",current_node.value, end="")
        current_node = current_node.nextNode     
    print(" }")

