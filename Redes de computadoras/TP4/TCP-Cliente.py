import os
import socket
import threading
import sys

TCP_PORT = 60001
BUFFER_SIZE = 1024

def recibir_del_servidor(sock):
    while True:
        try:
            data = sock.recv(BUFFER_SIZE)
            if not data: 
                print("\nEl servidor ha cerrado la conexión.")
                os._exit(0) 
            print(f"\nServidor dice: {data.decode('utf-8')}")
            print("Tu mensaje: ", end='', flush=True)
        except:
            break

SERVER_IP = input("IP del Servidor: ")
client_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    client_sock.connect((SERVER_IP, TCP_PORT))
    print(f"--- Conectado al servidor {SERVER_IP} ---")
except Exception as e:
    print(f"No se pudo conectar: {e}")
    sys.exit(1)

threading.Thread(target=recibir_del_servidor, args=(client_sock,), daemon=True).start()

print("Escribe 'exit' para desconectarte.")
print("Tu mensaje: ", end='', flush=True)

while True:
    msg = input()
    if msg.lower() == 'exit':
        break
    try:
        client_sock.sendall(msg.encode('utf-8'))
        print("Tu mensaje: ", end='', flush=True)
    except:
        print("Error enviando mensaje. Probablemente el servidor se cayó.")
        break

client_sock.close()
print("Desconectado.")