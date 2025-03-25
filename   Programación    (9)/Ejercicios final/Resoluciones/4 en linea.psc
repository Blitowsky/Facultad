Algoritmo sin_titulo
	
	Definir tablero, entrada, fichaJugadorB, fichaJugadorR como caracter
	Definir alto, ancho, columna Como Entero
	
	alto = 6
	ancho = 7
	fichaJugadorB = "B"
	fichaJugadorR = "R"
	
	Dimension tablero(alto, ancho)
	
	inicializarMatriz(tablero,alto,ancho)
	
	mostrarMatriz(tablero,alto,ancho)
	
	Escribir "Ingrese la columna en la que caerá la ficha"
	
	Leer columna
	///validar
	
	bajarFichas(tablero,fichaJugadorB,columna,alto)
	
	
	mostrarMatriz(tablero,alto,ancho)

	
	
FinAlgoritmo


SubAlgoritmo bajarFichas(tablero,fichaJugador, columna, alto)
	
	Definir i Como Entero
	
	para i= 0 Hasta alto- 1
		
		si tablero(0,columna) = "L"
			
			
			si tablero(alto-1,columna) = "L" 
				
				tablero(alto-1,columna) = fichaJugador
				
			SiNo
				
				si tablero(i,columna) <> "L" 
					
					tablero(i-1, columna) = fichaJugador					
					
				FinSi 
				
			FinSi
			
			
			
		SiNo
			
			Escribir "La columna está completa, no puede ingresar mas fichas en ella"
			
		FinSi
		
		
		
	FinPara
	
	
FinSubAlgoritmo


SubAlgoritmo inicializarMatriz(tablero,alto,ancho)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta alto -1 Hacer
		
		para j = 0 Hasta ancho -1 Hacer
			
			tablero(i,j) = "L"
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo




SubAlgoritmo mostrarMatriz(tablero,alto,ancho)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta alto -1 Hacer
		
		para j = 0 Hasta ancho -1 Hacer
			
			Escribir Sin Saltar tablero(i,j) " "
			
		FinPara
		
		Escribir " "
		
	FinPara
	
FinSubAlgoritmo
	