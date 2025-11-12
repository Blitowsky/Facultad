import socket
import threading
import sys
import os

# Configuración de IP y puerto
UDP_PORT = 60000
DEST_IP = '192.168.200.255' 
BUFFER_SIZE = 1024


def recibir_mensajes(sock, mi_ip):
    while True:
        try:
            data, addr = sock.recvfrom(BUFFER_SIZE)
       
            mensaje_crudo = data.decode('utf-8')

            try:
                usuario_remoto, contenido = mensaje_crudo.split(':', 1)

                if contenido == "nuevo":
                    print(f"\nEl usuario {usuario_remoto} ({addr[0]}) se ha unido a la conversación")
                elif contenido == "exit":
                    print(f"\nEl usuario {usuario_remoto} ({addr[0]}) ha abandonado la conversación")
                else:
                    print(f"\n{usuario_remoto} ({addr[0]}) dice: {contenido}")
                
                print("Tu mensaje: ", end='', flush=True)

            except ValueError:
                pass

        except OSError:
            break
        except Exception as e:
            print(f"\nError inesperado recibiendo: {e}")
            break


sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

try:
    sock.bind(('0.0.0.0', UDP_PORT))
except Exception as e:
    print(f"Error: No se pudo escuchar en el puerto {UDP_PORT}. {e}")
    print("Asegúrate de que no haya otra instancia del chat corriendo.")
    sys.exit(1)

try:
    s_temp = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s_temp.connect(("8.8.8.8", 80))
    MI_IP = s_temp.getsockname()[0]
    s_temp.close()
except:
    MI_IP = '127.0.0.1' 

username = input("Ingresa tu nombre de usuario: ")

hilo_recv = threading.Thread(target=recibir_mensajes, args=(sock, MI_IP), daemon=True)
hilo_recv.start()

sock.sendto(f"{username}:nuevo".encode('utf-8'), (DEST_IP, UDP_PORT))

print(f" Chat UDP iniciado en puerto {UDP_PORT} ")
print(f" Tu IP es {MI_IP}. Broadcast a {DEST_IP}")
print(" Escribe 'exit' para salir")
print("Tu mensaje: ", end='', flush=True)

while True:
    msg = input() 

    if msg.lower() == 'exit':
        sock.sendto(f"{username}:exit".encode('utf-8'), (DEST_IP, UDP_PORT))
        print("Cerrando chat...")
        break
    
    mensaje_final = f"{username}:{msg}"
    sock.sendto(mensaje_final.encode('utf-8'), (DEST_IP, UDP_PORT))
    
    print("Tu mensaje: ", end='', flush=True)

sock.close()