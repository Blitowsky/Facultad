import time, math

def entrega_billetes_2(monto):
    billete=100
    inc=0
    billete_actual=billete/(10**inc)
    while (monto>0):
        if monto >= billete_actual:
            monto=monto-billete_actual
        else:
            inc=inc+1
            billete_actual=billete/(10**inc)




for i in range(99999,1000000, 100000):
    start = time.time()

    entrega_billetes_2(i)

    end = time.time()

    print(end - start)