

Trama_prueba = "7E0012920013A200403A3BF8000001010013000003F3"

def FrameReader(lines):

    end = lines.find("7E")

    contador_total = 0
    contador_escape = 0
    contador_largo_incorrecto = 0
    contador_false_checksum = 0
    scape = False

    while(end != -1):

        if not scape: 
            start = end
            index = start
        else:
            index = end    
            
        end = lines.find("7E", index+1)

        if lines[end-2:end] != "7D":
            contador_total+=1
            scape = False

            if FrameLenght (lines[start:end]) and lines[start-2:start] != "7D":
                contador_largo_incorrecto +=1
            else:
                if not CheckSumCheck(lines[start:end]):
                    contador_false_checksum +=1
        else:
            contador_escape+=1


            scape = True    

    return contador_total, contador_escape, contador_largo_incorrecto,contador_false_checksum

def FrameLenght(string):

    lenght = len(string[6:-2])

    lenght_bytes = string[2:6]
    lenght_int = int(lenght_bytes, 16)
    if string.find("7D") != -1:
        lenght -= 2

    if lenght != lenght_int*2 or len(string)<9:
        return True
    else:
        return False


def CheckSumCheck(string):

    if string.find("7D7E") != -1:
        string = string.replace("7D7E", "7E")  

    string_check_sum = string[-2:]
    check_sum = bytes.fromhex(string_check_sum)
    real_sum = 0xFF - (sum(bytes.fromhex(string[6:-2])) & 0xFF)

    if real_sum == sum(check_sum):

        return True
    else:
        #print(string)
        return False

# #print(FrameLenght(Trama_prueba))
    

try:
    with open("Trama.log") as frame_log:
        lines = frame_log.read()
    contador_total, contador_escape, contador_largo_incorrecto,contador_false_checksum = FrameReader(lines)
    print("Tramas totales detectadas:", contador_total)
    print("Tramas con longitud correcta: " , contador_total - contador_largo_incorrecto)
    print("Tramas con longitud incorrecta: ", contador_largo_incorrecto)
    print("Tramas con longitud correcta y checksum correcto: ", contador_total - contador_largo_incorrecto - contador_false_checksum)
    print("Tramas con longitud correcta y checksum incorrecto: ",contador_false_checksum)
    print("Tramas con secuencia de escape: ", contador_escape)

except:
    print("ERROR (1): " \
    "El archivo de trama no se encuentra en la misma carpeta")




