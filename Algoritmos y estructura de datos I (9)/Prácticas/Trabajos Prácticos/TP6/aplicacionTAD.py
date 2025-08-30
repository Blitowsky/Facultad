
from binaryTree import *

def isBlanced(B):

    def check(node):
        if node is None:
            return 0 
        
        left_hight= check(node.leftnode)

        if left_hight == -1:
            return -1
    
        right_hight= check(node.rightnode)

        if right_hight == -1:
            return -1
    
        if abs(right_hight - left_hight) > 1:
            return -1
    
        return max(right_hight, left_hight) + 1

    result= check(B.root)

    if result == -1:
        return False 
    else:
        return True
    
def isSubtree(B1, B2):

    def son_identicos(node_bt1, node_bt2):

        if node_bt1 is None and node_bt2 is None:
            return True
       
        if node_bt1 is None or node_bt2 is None:
            return False
        
        if node_bt1.value != node_bt2.value:
            return False
        
        return (son_identicos(node_bt1.left, node_bt2.left) and son_identicos(node_bt1.right, node_bt2.right))
    
    def es_subarbol(node_bt1, root_bt2):

        if node_bt1 is None:
            return False
        
        if node_bt1.value==root_bt2.value:
            return son_identicos(node_bt1, root_bt2)
        
        return(es_subarbol(node_bt1.left, root_bt2) or es_subarbol(node_bt1.right, root_bt2))
        
    return es_subarbol(B1.root, B2.root)   

def checkBST(B):

    def es_bst(node, min_key, max_key):
        if node is None:
            return True

        if (min_key is not None and node.key <= min_key) or (max_key is not None and node.key >= max_key):
            return False

        return (es_bst(node.leftnode, min_key, node.key) and
                es_bst(node.rightnode, node.key, max_key))

    return es_bst(B.root, None, None)
