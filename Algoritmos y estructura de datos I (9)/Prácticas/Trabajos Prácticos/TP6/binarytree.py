import linkedlist
from myqueue import *
from mystack import *


class BinaryTree:
    root=None

class BinaryTreeNode:
    key=None
    value=None
    leftnode=None
    rightnode=None
    parent=None


def searchT(T,value):

    nodo = T.root

    def fun_search(nodo,value):

        if nodo == None:
            return
        if nodo.value == value:
            return nodo.key
        
        searchIzquierda = fun_search(nodo.leftnode, value)

        if searchIzquierda != None:
            return searchIzquierda

        searchDerecha = fun_search(nodo.rightnode, value)
        if searchDerecha != None:
            return searchDerecha
        
    return fun_search(nodo,value)

def insert(T,value,key):

    def insert_node(value,key):

        new_node = BinaryTreeNode()
        new_node.value = value
        new_node.key = key
        return new_node
    
    def scanner(nodo,value, key):


        if nodo.key > key:
            if nodo.leftnode == None:
                new = insert_node(value,key)
                nodo.leftnode = new
                new.parent = nodo
                return True
            else: return scanner(nodo.leftnode,value,key)

        if nodo.key < key:
            if nodo.rightnode == None:
                new = insert_node(value,key)
                nodo.rightnode = new
                new.parent = nodo
                return True
            else: return scanner(nodo.rightnode,value,key)

    nodo = T.root

    if nodo == None:
        T.root = insert_node(value,key)
        return key

    if scanner(nodo,value,key): return key
    else: return 


def delete_node(B,nodo):

        if nodo == None:
            return None

        if nodo.leftnode == None and nodo.rightnode == None:
            key = nodo.key
            if nodo.parent.rightnode != None :
                if nodo.parent.rightnode.key == key:
                    nodo.parent.rightnode = None
                else:
                    nodo.parent.leftnode = None
            else:
                nodo.parent.leftnode = None
   
            return key

        elif nodo.parent == None:

            if nodo.rightnode == None:
                B.root = nodo.leftnode
                B.root.parent = None
                return nodo.key
            elif nodo.leftnode == None:
                B.root = nodo.rightnode
                B.root.parent = None
                return nodo.key
            else:
                minor = left_scanner(nodo.rightnode)
                minor.leftnode = nodo.leftnode
                nodo.leftnode = None
                B.root = nodo.rightnode
                B.root.parent = None
                return nodo.key
        else:

            if nodo.leftnode == None:

                if nodo.parent.leftnode.key == nodo.key:
                    nodo.parent.leftnode = nodo.rightnode
                    nodo.rightnode.parent = nodo.parent.rightnode
                else:
                    nodo.parent.rightnode = nodo.rightnode
                    nodo.rightnode.parent = nodo.parent
                
                return nodo.key
            
            elif nodo.rightnode == None:

                if nodo.parent.leftnode.key == nodo.key:
                    nodo.parent.leftnode = nodo.leftnode
                    nodo.leftnode.parent = nodo.parent.leftnode
                else:
                    nodo.parent.rightnode = nodo.rightnode
                    nodo.rightnode.parent = nodo.parent
                
                return nodo.key
            else:
                minor = left_scanner(nodo.rightnode)
                minor.leftnode = nodo.leftnode

                if nodo.parent.leftnode.key == nodo.key:
                    nodo.parent.leftnode = nodo.rightnode
                    nodo.rightnode.parent = nodo.parent
                else:
                    nodo.parent.rightnode = nodo.rightnode
                    nodo.leftnode.parent = nodo.parent
                    
                nodo.leftnode = None

                return nodo.key
            
def left_scanner(nodo):

        if nodo.leftnode == None: 
            return nodo
        
        return left_scanner(nodo.leftnode)

def full_scanner_value(nodo,value):

        if nodo == None:
            return
    
        elif nodo.value == value:
            return nodo
        
        searchIzquierda = full_scanner_value(nodo.leftnode,value)

        if searchIzquierda != None:
            return searchIzquierda

        searchDerecha = full_scanner_value(nodo.rightnode,value)

        if searchDerecha != None:
            return searchDerecha

def full_scanner_key(nodo,key):

        if nodo == None:
            return
    
        elif nodo.key == key:
            return nodo
        
        searchIzquierda = full_scanner_key(nodo.leftnode,key)

        if searchIzquierda != None:
            return searchIzquierda

        searchDerecha = full_scanner_key(nodo.rightnode,key)

        if searchDerecha != None:
            return searchDerecha
                

def delete(B,value):
    
    nodo = full_scanner_value(B.root, value)

    return delete_node(B, nodo)

def deleteKey(B,key):   
    
    nodo = full_scanner_key(B.root, key)

    return delete_node(B, nodo)

def access(B,key):

    nodo = full_scanner_key(B.root, key)
    if nodo != None:

       return nodo.value
    else:
        return
    
def update(B,value,key):
    nodo = full_scanner_key(B.root, key)
    if nodo != None:
        nodo.value = value 
        return key
    else:
        return

def print_tree(node, prefix="", is_left=True):

    if node.parent != None:
        parent = node.parent.value
    else: parent = None

    if node is not None:
        result = ""
        if node.rightnode: # + "  K:" +  str(node.key) + "  P:" + str(parent) 
            result += print_tree(node.rightnode, prefix + ("│   " if is_left else "    "), False)
        result += prefix + ("└── " if is_left else "┌── ") + "V:"+ str(node.value) + "\n"
        if node.leftnode:
            result += print_tree(node.leftnode, prefix + ("     " if is_left else "│   "), True)
        return result
    return ""

def traverseInOrder(B):

    L = LinkedList()

    def in_order(nodo):
        if nodo is None:
            return

        in_order(nodo.rightnode)

        linkedlist.addLiFo(L,nodo.value)

        in_order(nodo.leftnode)

    in_order(B.root)
    return L

def traverseInPostOrder(B):
    L = LinkedList()

    def post_order(nodo):
        if nodo is None:
            return
        
        post_order(nodo.rightnode)

        post_order(nodo.leftnode)


        linkedlist.addLiFo(L,nodo.value)

    post_order(B.root)

    return L

def traverseInPreOrder(B):
    L = LinkedList()

    def post_order(nodo):
        if nodo is None:
            return

        
        linkedlist.addLiFo(L,nodo.value)

        post_order(nodo.rightnode)

        post_order(nodo.leftnode)



    post_order(B.root)
    
    return L

def traverseBreadFirst(B):
    L = LinkedList()
    P = LinkedList()

    addFiFo(P,B.root)

    def breadth_first(nodo):

        addFiFo(L,nodo.value)

        if nodo.leftnode != None:
            push(P,nodo.leftnode)
        if nodo.rightnode != None:
            push(P,nodo.rightnode)

        if P.head == None:
            return
        return breadth_first(pop(P))

    breadth_first(pop(P))
    return L


