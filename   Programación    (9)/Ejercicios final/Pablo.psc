Algoritmo sin_titulo
	
	
	Definir tablero Como Caracter
	Definir pirata, tesoro, movimientos, s,t, pasos Como Entero
	Definir ahogado,eureka, perdiste, puente, arreglo Como Logico
	
	ahogado = Falso
	eureka = Falso
	puente = Falso
	perdiste = Falso
	s = 0
	t = 0
	
	movimientos = 0
	
	Dimension tablero(8,8), pirata(2), tesoro(2)
	iniciarMatriz(tablero)
	iniciarVector(pirata)
	iniciarVector(tesoro)
	
	tesoro(0) = Aleatorio(1,6)
	tesoro(1) = Aleatorio(1,6)
	pirata(0) = Aleatorio(1,6)
	mientras Aleatorio(1,6) = tesoro(0)
		
		pirata(0) = Aleatorio(2,6)
		
	FinMientras
	
	pirata(1) = Aleatorio(1,6)
	
	mientras Aleatorio(1,6) = tesoro(1)
		
		pirata(1) = Aleatorio(1,6)
		
	FinMientras
	
	tablero(tesoro(0),tesoro(1)) = "T"	
	tablero(pirata(0),pirata(1)) = "P"
	Repetir
		
		
		
		Escribir  " "
		Escribir "Se encuentra en el movimiento número: " movimientos
		
		
		mostrarMatriz(tablero)
		elegirOpcion(s,t)
		Escribir "Ingrese la cantidad de pasos que debe dar el Pirata"
		leer pasos
		
		Mientras pasos > 3 o pasos < 0 Hacer
			
			Escribir "La cantidad de pasos debe estar entre 0 y 3"
			leer pasos
			
		FinMientras
		si pasos <> 0
			
			moverPirata(pirata,tablero,tesoro,s * pasos,t * pasos, ahogado, eureka, puente)
			
		FinSi
		
		si tesoro(0) = pirata(0) y tesoro(1) = pirata(1)  
			
			eureka = Verdadero
			
		FinSi
		
		si movimientos = 20 Entonces
			
			perdiste = Verdadero
			Escribir "Ingresó la cantidad máxima de movimientos"
			Escribir "¡¡ Ha perdido !!"
			
		FinSi
		
		movimientos = movimientos +1
		
	Mientras Que !ahogado y !eureka y !perdiste 
	
	///sería conveniente usar solamente una variable int para estas tres banderas y que según el número que tenga señale 
	///si está ahogado, encontró el tesoro o perdió por cantidad de intentos?
	
	
	si ahogado
		
		Escribir "Ahogado"
		
	FinSi
	si eureka Entonces
		
		Escribir "Encontró el tesoro!!!!"
		
	FinSi
	
	
FinAlgoritmo

SubAlgoritmo elegirOpcion(s Por Referencia, t Por Referencia)
	
	Definir direccion, sentidoDiagonal Como Entero
	Definir textoDireccion Como Caracter
	
	
	direccion = azar(5)
	sentidoDiagonal = azar(4)
	
	Segun direccion
		
		0: 
			s = -1
			t = 0
			textoDireccion = "Norte"
			
		1: 
			s = 1
			t = 0
			textoDireccion = "Sur"
		2: 
			t = 1
			s = 0
			textoDireccion = "Este"
			
		3: 
			t = -1
			s = 0
			textoDireccion = "Oeste"
		4:
			Segun sentidoDiagonal
				
				0: 
					s = -1 
					t = -1
					textoDireccion = "Noroeste"
				1:
					s = -1 
					t = 1
					textoDireccion = "Noreste"
				2:
					s = 1 
					t = -1
					textoDireccion = "Suroeste"
				3:
					s = 1 
					t = 1
					textoDireccion = "Sureste"
				
			FinSegun
		
	FinSegun
	Escribir "La dirección sorteada es: " textoDireccion
	
	
	
	
FinSubAlgoritmo


SubAlgoritmo moverPirata(pirata,tablero, tesoro,s,t, ahogado Por Referencia, eureka Por Referencia, puente Por Referencia)
	
	Definir i,j, xp, yp como entero
	Definir colocar Como Logico
	colocar = Falso
	puente = Falso
	xp = pirata(0)
	yp = pirata(1)
	
	
	para i = xp Hasta xp + s
		
		
		para j = yp Hasta  yp + t
			
			
			si(i = 0 y j = 7) o (i = 7 y j = 0)Entonces
				
				puente = Verdadero
				Escribir "Ha ingresado a un puente"
				si i = 0 Entonces
					
					tablero(7,0) = "P"
					pirata(0) = 7
					pirata(1) = 0
					
					tablero(xp,yp) = "O"
					tablero(0,7) = "O"
					
				SiNo
					
					tablero(0,7) = "P"
					pirata(0) = 0
					pirata(1) = 7
					tablero(xp,yp) = "O"
					tablero(7,0) = "O"
					
				FinSi
				ahogado = Falso
				
			SiNo
				
				si (i <= 0 o j <= 0 o i >= 7 o j >= 7) y !puente
					
					ahogado = Verdadero
					Escribir  i " , " j
					
				sino
					
					si i = tesoro(0) y j = tesoro(1)
						
						eureka = Verdadero
						
					SiNo
						
						colocar = Verdadero
					FinSi
					
				FinSi
				
			FinSi	
			
		FinPara		
		
	FinPara
	
	si colocar y !ahogado y !puente
		
		tablero(xp + s,yp + t) = "P"
		pirata(0) = xp + s
		pirata(1) = yp + t
		tablero(xp,yp) = "O"
		
	FinSi
	
	
FinSubAlgoritmo


SubAlgoritmo iniciarMatriz(matriz)
	
	Definir i,j Como Entero
	
	Para  i = 0 Hasta 7
		
		Para  j = 0 Hasta  7
			
			matriz(i,j) = "O"
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarVector(vector)
	
	Definir i Como Entero
	
	para i = 0 Hasta 1
		
		vector(i) = 0
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz)
	
	Definir i,j Como Entero
	
	Para  i = 0 Hasta 7
		
		Para  j = 0 Hasta  7
			
			Escribir Sin Saltar matriz(i,j) " "
			
		FinPara
		
		Escribir " "
	FinPara
	
FinSubAlgoritmo
