import socket
import threading
import sys
import os

TCP_PORT = 60001
HOST = '0.0.0.0'
BUFFER_SIZE = 1024

cliente_actual = None
lock_cliente = threading.Lock() 

def manejar_cliente(conn, addr):
    global cliente_actual
    print(f"\n--- Cliente conectado desde {addr[0]}:{addr[1]} ---")
    print("Servidor listo para enviar mensajes. Escribe 'exit' para intentar cerrar (solo si no hay cliente).")
    print("Tu mensaje al cliente: ", end='', flush=True)
    
    while True:
        try:
            data = conn.recv(BUFFER_SIZE)
            if not data: 
                break
            print(f"\nCliente dice: {data.decode('utf-8')}")
            print("Tu mensaje al cliente: ", end='', flush=True)
        except:
            break
    
    print(f"\n--- Cliente {addr[0]} se ha desconectado ---")
    with lock_cliente:
        cliente_actual = None
    conn.close()
    print("Esperando nueva conexión...")

def esperar_conexiones(server_sock):
    global cliente_actual
    while True:
        try:
            conn, addr = server_sock.accept()
            with lock_cliente:
                if cliente_actual is not None:
                    conn.close()
                    continue
                cliente_actual = conn
            
            t = threading.Thread(target=manejar_cliente, args=(conn, addr), daemon=True)
            t.start()
        except:
            break

server_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
try:
    server_sock.bind((HOST, TCP_PORT))
    server_sock.listen(1)
except Exception as e:
    print(f"Error al iniciar servidor: {e}")
    sys.exit(1)

print(f"Servidor TCP escuchando en {TCP_PORT}. Esperando primer cliente...")

threading.Thread(target=esperar_conexiones, args=(server_sock,), daemon=True).start()

while True:
    msg = input() 

    if msg.lower() == 'exit':
        with lock_cliente:
            if cliente_actual is not None:
                print(">>> NO ES POSIBLE CERRAR EL SERVIDOR SI HAY UN CLIENTE CONECTADO <<<")
                print("Tu mensaje al cliente: ", end='', flush=True)
                continue
            else:
                print("No hay clientes conectados. Cerrando servidor...")
                server_sock.close()
                sys.exit(0)

    with lock_cliente:
        if cliente_actual:
            try:
                cliente_actual.sendall(msg.encode('utf-8'))
                print("Tu mensaje al cliente: ", end='', flush=True)
            except:
                print("Error enviando al cliente.")
        else:
            print(">>> No hay nadie escuchando. Espera a que se conecte un cliente. <<<")