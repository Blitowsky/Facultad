
def out_of_range(index, start, end):

    if index < start or index >= end:
        return True
    else:
        return False
    
def access(array, position): # 3OE

    return array[position] # 3OE


def search(array, element): # 3OE

    encontrado = False # 1 OE
    for i in range(0,len(array)): # 1 OE + 5n OE + n(S1)

        if array[i] == element:  # S1 = 1OE + 1OE 

            return i # 2OE
                                

    
    if encontrado == False: # 1OE
        return None # 2OE
    
    #T(search) = 3OE + 1OE + 1OE + 5nOE + n(2OE) + 2OE + 3OE = 10 + 7n OE


       

def insert(array, element, index): #4OE

    if out_of_range(index, 0, len(array)): #7OE + 5OE
        return None #2OE
    
    else:

        for i in range(len(array)-1,index,-1): #4OE + 3n

            array[i] = array[i-1] # 4nOE
        
        array[index] = element # 2OE
          
    #T(insert) = 4OE + 12OE + max{2OE, 6OE + 7n} = 16OE + 6OE + 7n = 22OE + 7nOE

def delete(array,element): # 3

    encontrado = False # 1

    for i in range(0,len(array)): # 1 + 5n 
        if array[i] == element: # 2n
            encontrado = True # 1n
            index = i # 1n
           
    if encontrado: # 1
        for i in range(index,len(array)-2): # 1 + 1 + 4n 
            array[i] = array[i+1] # 4n 

        array[len(array)-1] = None # 5
        return index # 2
    else: 
        return None
    
    #T(delete) = 15 + 17n
                    
def length(array):
    
    contador = 0
    for i in range(0,len(array)):
        if array[i] != None:
            contador = contador + 1
        
    return contador