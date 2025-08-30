# Implementacion de un binary heap
# Algoritmos y estructuras de datos I
# Ingenieria - Uncuyo
# harpomaxx@gmail.com
# jue oct 26 09:24:47 ART 2017

# Ejercitacion: Implementar las operaciones y las porciones de codigo faltantes

import linkedlist
from mystack import pop
from random import randint


class Bheap:
    """ Estructura Bheap, lo unico que tiene una referencia a un lista.
    """
    bheaplist=linkedlist.LinkedList()
    def __str__(self):
            """ Permite hacer un print a una estructura Bheap
            """
            str_list=""
            current=self.bheaplist.head.nextNode
            while current!=None:
                str_list= str_list+str(current.value)+" "
                current=current.nextNode
            return(str_list)



def delMax(BH):
    """ Recupera el mayor elemento del heap. Este siempre se encontrara al comienzo (posicion 1).
        Para manter la esctrucura del arbol binario se reemplaza el nodo raiz por el ultimo nodo.
        
        Luego mediante la funcion shiftDown se va recorriendo el arbol hasta encontrar la posicion 
        correcta de dicho nodo. De esta manara se garantiza la propiedad heap.
    """
    
    retval = pop(BH.bheaplist)
    node = BH.bheaplist.head  
    len = length(BH.bheaplist)
    for i in range(len-1):
        node = node.nextNode
        lastNode = node.nextNode
    node.nextNode = None
    linkedlist.addLiFo(BH.bheaplist,lastNode.value)

    shiftUp(BH,len-2) 

    return retval


def shiftUp(BH,i):
    """ Recorre el arbol desde los nodos hacia la raiz y va reemplazando el nodo i por su padre
        siempre y cuando i sea mayor. La operacion matematica i // 2 nos permite rapidamente encontrar al padre.
    """
    while i // 2 > 0:
      
        root = linkedlist.access(BH.bheaplist,i//2)
        son = linkedlist.access(BH.bheaplist,i)
        print(root, "%")

        if son < root:
            
            linkedlist.delete(BH.bheaplist,son)
            linkedlist.insert(BH.bheaplist,root,i)
            linkedlist.delete(BH.bheaplist,root)
            linkedlist.insert(BH.bheaplist,son,i//2)

        i = i // 2

def shiftDown(BH,i,currentsize=None):
    """ Recorre el arbol desde la raiz y  hacia los nodos (arriba hacia abajo) va reemplazando el nodo i por sus hijos
        siempre y cuando alguno de sus hijos sea mayor. 
    """
    if currentsize==None:
        currentsize=linkedlist.length(BH.bheaplist)-1
    while (i * 2) <= currentsize:
        mc = maxChild(BH,i,currentsize)

        
        i = mc

def maxChild(BH,i,currentsize):
    """ Determina dado un nodo i, cual de sus hijos es el mayor y devuelve la posicion 
    """
    if i * 2 + 1 > currentsize:
        return i * 2
    else:
        if linkedlist.access(BH.bheaplist,i*2) > linkedlist.access(BH.bheaplist,i*2+1):
            return i * 2 
        else:
            return i * 2 + 1
    
def insert(BH,k):
    """ Inserta un elemento en el heap. Si la lista esta vacia, se crea un elemento 0. Este ultimo no se utiliza,
        pero facilita las operaciones matematicas para acceder a los padres e hijos. 
    """
    pos=linkedlist.length(BH.bheaplist)
    if pos==0:
        linkedlist.addLiFo(H.bheaplist,0)
        pos=pos+1
    linkedlist.insert(BH.bheaplist,k,pos)
    currentsize=linkedlist.length(BH.bheaplist)-1
    shiftUp(BH,currentsize)

def heapify(BH,L):
    """ Dada una lista crea un heap con complejidad temporal O(n)
    
    """
    i = linkedlist.length(L)
    BH.bheaplist.head = L.head 
    linkedlist.addLiFo(BH.bheaplist,0)
    while (i > 0):
        shiftUp(BH,i)
        i = i - 1

def length(BH):
    return linkedlist.length(BH)-1

if __name__ == "__main__":
    H=Bheap()
    insert(H,8)
    insert(H,1)
    insert(H,5)
    insert(H,4)
    print(H)
    minimun=delMax(H)
    print(H)
    print("----")
    L=linkedlist.LinkedList()
    linkedlist.addLiFo(L,2)
    linkedlist.addLiFo(L,1)
    linkedlist.addLiFo(L,12)
    linkedlist.addLiFo(L,255)
    linkedlist.addLiFo(L,50)
    linkedlist.printLinkedList(H.bheaplist)
    heapify(H,L)
    print(H)
