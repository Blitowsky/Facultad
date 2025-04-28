from myarray import *
from algo1 import *
import random
import array


prueba = Array(5,0)

for i in range(0,len(prueba)):
    prueba[i] = random.randint(0,5)

prueba[0] = 100

print(length(prueba))



