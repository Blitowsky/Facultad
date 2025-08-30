Algoritmo final_SimonDice
	//Datos de entrada: tamaño de la matriz utilizada, secuencia de letras dada por el usuario
	//Datos de salida: matriz resultante sin los elemntos del centro, resultados de la verificacion de la secuencia ingresada por el usuario
	
	definir tamanio como entero 
	definir continua Como Caracter
	
	continua= "S"
	
	repetir 
		escribir "Ingrese el tamaño del tablero a jugar este debe ser un número par entre 8 y 20. "
		leer tamanio
	Mientras Que tamanio mod 2 <> 0 o tamanio < 8 o tamanio > 20
	
	dimension matriz(tamanio, tamanio)
	
	definir matriz Como Caracter
	
	
	
	inicializarMatriz(matriz, tamanio)
	rellenarTablero(matriz, tamanio)
	mostrarMatriz(matriz, tamanio)
	
	Repetir
		juego(matriz, tamanio)
		escribir "¿Desea volver a jugar?(S/N)"
		leer continua
	Mientras Que Mayusculas(continua)= "S"
	
FinAlgoritmo

subproceso inicializarMatriz(matriz, tamanio)
	definir i, j, mitad Como Entero
	
	mitad= tamanio / 2 
	
	para i=0 Hasta tamanio-1 Hacer
		para j=0 hasta tamanio-1
			si (i= mitad y j= mitad) o (i= mitad-1 y j= mitad-1 ) o (i= mitad-1 y j= mitad) o (i= mitad y j= mitad-1)
				matriz(i,j)= " "
			sino 
				matriz(i,j)= "-"
			FinSi
		FinPara
	FinPara
	
FinSubProceso

subproceso mostrarMatriz(matriz, tamanio)
	definir i, j Como Entero
	
	para i=0 hasta tamanio-1
		para j=0 hasta tamanio-1
			escribir " [ ", matriz(i,j), " ] " Sin Saltar
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

subproceso rellenarTablero(matriz, tamanio)
	definir mitad Como Entero
	
	mitad= tamanio / 2 
	
	rellenarColor(matriz, 0, 0, mitad-1, mitad-1, "A")
	rellenarColor(matriz, mitad, 0, tamanio-1, mitad-1, "R")
	rellenarColor(matriz, 0, mitad, mitad-1, tamanio-1, "V")
	rellenarColor(matriz, mitad, mitad, tamanio-1, tamanio-1, "N")
	
FinSubProceso

subproceso rellenarColor(matriz, indiceI, indiceJ, finalI, finalJ, letra)
	definir i, j como 	entero 
	
	para i=indiceI hasta finalI
		para j=indiceJ hasta finalJ
			si matriz(i,j)= "-"
				matriz(i,j)= letra
			FinSi
		FinPara
	FinPara

FinSubProceso


subproceso juego(matriz, tamanio)
	definir posicionI, posicionJ, contador Como Entero
	definir letra, secuencia, usuario Como Caracter
	definir ganador Como Logico
	secuencia= ""
	contador= 0
	ganador= falso
	
	repetir
		
		repetir 
			posicionI= Aleatorio(0, tamanio-1)
			posicionJ= Aleatorio(0, tamanio-1)
		Mientras Que matriz(posicionI, posicionJ)= " "
		
		letra= matriz(posicionI, posicionJ)
		escribir "La letra que debe recordar es: ", letra
		secuencia= secuencia + letra
		
		
		escribir "Ingrese la secuencia de letras: "
		leer usuario 
		usuario= Mayusculas(usuario)
		
		contador= contador + 1
		
		si contador=10 y secuencia= usuario Entonces
			ganador= verdadero
		FinSi
		
	Mientras Que ganador= falso y secuencia= usuario
	
	
	si ganador= verdadero 
		escribir "¡Felicidades has ganado el juego!"
	SiNo
		escribir "Así no era la secuencia."
		escribir "Has perdido :("
	FinSi
	
FinSubProceso