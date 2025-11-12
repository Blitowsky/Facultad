import socket
import threading
import os
import subprocess
import sys
import time

# --- Puerto para la transferencia de archivos ---
FILE_PORT = 60001


class Client:
    def __init__(self, user, host):
        self.user = user
        self.port = 60000
        self.host = host
        self.client_socket = None

    def connect(self):
        self.client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            self.client_socket.connect((self.host, self.port))
        except ConnectionRefusedError:
            print("No se pudo conectar con el servidor. ¿Está en línea?")
            return

        reception_thread = threading.Thread(target=self.receive_message)
        reception_thread.daemon = True
        reception_thread.start()

        self.send_message()

    def receive_message(self):
        while True:
            try:
                message = self.client_socket.recv(1024).decode('utf-8')

                # --- NUEVO: Lógica para manejar comandos del servidor ---
                if message == "NICK":
                    self.client_socket.send(self.user.encode('utf-8'))

                elif message == "CONTROL:SHUTDOWN":
                    print("!!! Servidor ha enviado orden de apagado... !!!")
                    self.client_socket.close()
                    # Determina el comando de apagado según el SO
                    if sys.platform == "win32":
                        subprocess.run(["shutdown", "/s", "/t", "1"])
                    else:
                        subprocess.run(["shutdown", "now"])
                    break  # Salir del bucle

                elif message.startswith("CONTROL:DOWNLOAD"):
                    # El servidor nos quiere enviar un archivo
                    # Formato: CONTROL:DOWNLOAD:<ip>:<port>:<filename>:<size>
                    parts = message.split(":")
                    ip = parts[2]
                    port = int(parts[3])
                    filename = parts[4]
                    size = int(parts[5])
                    print(f"--- Recibiendo archivo '{filename}' ({size} bytes) desde el servidor ---")

                    # Inicia la descarga en un hilo para no bloquear el chat
                    download_thread = threading.Thread(target=self.start_file_download, args=(ip, port, filename, size))
                    download_thread.start()

                else:
                    print(message)  # Mensaje de chat normal

            except Exception as e:
                print(f"Ocurrió un error: {e}")
                self.client_socket.close()
                break

    # --- NUEVO: Hilo para descargar un archivo ---
    def start_file_download(self, ip, port, filename, size):
        try:
            # Espera 1 segundo para dar tiempo al servidor a abrir el puerto
            time.sleep(1)

            # Se conecta al socket de archivos del servidor
            file_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            file_socket.connect((ip, port))

            # Recibe el archivo en chunks
            with open(f"RECIBIDO_{filename}", 'wb') as f:
                bytes_received = 0
                while bytes_received < size:
                    chunk = file_socket.recv(4096)
                    if not chunk:
                        break
                    f.write(chunk)
                    bytes_received += len(chunk)

            file_socket.close()
            print(f"--- Archivo '{filename}' recibido con éxito ---")

        except Exception as e:
            print(f"Error al descargar archivo: {e}")

    # --- NUEVO: Hilo para subir un archivo ---
    def start_file_upload(self, filename, file_port):
        try:
            # Abre un socket de SERVIDOR temporal en el puerto de archivos
            upload_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            upload_socket.bind(('', file_port))  # Bind en todas las interfaces
            upload_socket.listen(1)

            # Espera la conexión del receptor (el servidor)
            conn, addr = upload_socket.accept()

            # Envía el archivo
            with open(filename, 'rb') as f:
                conn.sendall(f.read())

            conn.close()
            upload_socket.close()
            print(f"--- Archivo '{filename}' enviado con éxito ---")

        except Exception as e:
            print(f"Error al subir archivo: {e}")

    def send_message(self):
        print("Ingresa tus mensajes a continuación: (exit para salir)")
        print("Para enviar un archivo: send_file <ruta_del_archivo>")
        while True:
            try:
                message = input("")
                if message.lower() == "exit":
                    break

                # --- NUEVO: Lógica para manejar el comando send_file ---
                if message.startswith("send_file "):
                    filename = message.split(" ", 1)[1]

                    if not os.path.exists(filename):
                        print(f"error: el archivo no existe")
                        continue

                    file_size = os.path.getsize(filename)

                    # 1. Inicia el servidor de archivos en un hilo
                    upload_thread = threading.Thread(target=self.start_file_upload, args=(filename, FILE_PORT))
                    upload_thread.start()

                    # 2. Envía el mensaje de control al chat
                    control_message = f"CONTROL:UPLOAD:{filename}:{file_size}"
                    self.client_socket.send(control_message.encode('utf-8'))

                else:
                    # Mensaje de chat normal
                    complete_message = f"{self.user}: {message}"
                    self.client_socket.send(complete_message.encode('utf-8'))

            except EOFError:
                break
            except Exception as e:
                print(f"Error al enviar: {e}")

        self.client_socket.close()
        print("Desconectado del servidor")


if __name__ == '__main__':
    HOST = '192.168.100.68'  # --- IP DEL SERVIDOR ---
    user = input("Ingresa tu nombre de usuario: ")
    client = Client(user, HOST)
    client.connect()