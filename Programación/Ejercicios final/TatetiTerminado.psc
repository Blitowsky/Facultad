Algoritmo Tateti
	
	Definir alto, ancho, i, turno, jugadorGanador Como Entero
	Definir tablero, fichaJugador Como Caracter
	Definir ganador Como Logico
	
	turno = 1
	ganador = Falso
	
	Dimension tablero(3,3)
	
	iniciarMatriz(tablero)
	
	Mientras  !ganador
		
		para i = 1 Hasta 2 Hacer
			
			si !ganador
				
				si i = 1 Entonces
					
					fichaJugador = "O"
					
				SiNo
					
					fichaJugador = "X"
					
				FinSi
				mostrarMatriz(tablero)
				pedirPosicion(alto, ancho, i, fichaJugador)
				colocarFichas(tablero, alto, ancho,i, fichaJugador)
				
				ganador = evaluarGanador(tablero, fichaJugador, turno)
				
				
				si ganador Entonces
					
					jugadorGanador = i
					
				FinSi
				
			FinSi
			
		FinPara
		
		turno = turno + 1	
		
	FinMientras
	
	Escribir "El jugador ganador es el número: " jugadorGanador
	mostrarMatriz(tablero)
	
FinAlgoritmo

Funcion valor = entreParametros(parametro,inicio,final)
	Definir valor Como Entero
	Mientras parametro < inicio o parametro > final Hacer
		
		Escribir "Ingrese un número entre " inicio " y " final
		Leer parametro
		
	FinMientras
	valor = parametro
	
	
FinFuncion

Funcion ganador = evaluarGanador(tablero, fichaJugador, turno)
	Definir ganador Como Logico
	
	si turno >= 3 Entonces
		
		ganador = hayGanadorLineal(tablero, fichaJugador, "h")
		
		si !ganador
			
			ganador = hayGanadorLineal(tablero, fichaJugador, "v")
			
			si !ganador Entonces
				
				si tablero(2,2) <> " "
					
					ganador = hayGanadorDiagonal(tablero, fichaJugador)
					
					
				FinSi
				
			FinSi
			
		FinSi
		
	FinSi
	
FinFuncion

SubAlgoritmo pedirPosicion(alto Por Referencia, ancho Por Referencia, nroJugador, fichaJugador)
	
	Escribir "Jugador número " nroJugador ": " fichaJugador
	Escribir  "ingrese la altura para colocar su ficha"
	Leer alto
	alto = entreParametros(alto,1,3)
	alto = alto -1
	Escribir  "ingrese el ancho para colocar su ficha"
	leer ancho
	ancho = entreParametros(ancho,1,3)
	ancho = ancho -1
	
FinSubAlgoritmo


SubAlgoritmo colocarFichas(tablero, alto, ancho,nroJugador, fichaJugador)
	
	mientras tablero(alto, ancho)  = " "
		
		escribir "La casilla ya está ocupada, ingrese otra posición"
		pedirPosicion(alto, ancho, nroJugador, fichaJugador)
		
	FinMientras
	
	tablero(alto, ancho) = fichaJugador

	
FinSubAlgoritmo

Funcion ganador = hayGanadorDiagonal(tablero, fichaJugador) ///hacer escalable
	
	Definir ganador Como Logico
	
	si tablero(1,1) = fichaJugador
		
		si (tablero(0,0) = fichaJugador y tablero(2,2) = fichaJugador) o (tablero(0,2) = fichaJugador y tablero(2,0) = fichaJugador)
			
			ganador = Verdadero
			
		FinSi
		
	FinSi
	
FinFuncion

Funcion ganador = hayGanadorLineal(tablero, fichaJugador, linea) ///hacer escalable
	
	Definir i,j, sumaTres Como Entero
	Definir ganador Como Logico
	ganador = falso
	sumaTres = 0
	
	para i = 0 Hasta 2
		
		para j = 0 Hasta 2	
			
			si linea = "v"
				
				si tablero(i,j) = fichaJugador
					
					sumaTres = sumaTres + 1
					
				FinSi
				
			SiNo
				
				si tablero(j,i) = fichaJugador
					
					sumaTres = sumaTres + 1
					
				FinSi
				
			FinSi
			
			si sumaTres = 3
				
				ganador = Verdadero
				Escribir "aca"
				
			FinSi
			
		FinPara
		
		sumaTres = 0
		
	FinPara
	
FinFuncion

SubAlgoritmo iniciarMatriz(tablero)///hacer escalable
	Definir i,j Como Entero
	
	para i = 0 Hasta 2
		
		para j = 0 Hasta 2			
			tablero(i,j) = "-"
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(tablero)///hacer escalable
	
	Definir i,j Como Entero
	
	Escribir "   1 2 3"
	para i = 0 Hasta 2
		Escribir Sin Saltar i + 1 ": "
		para j = 0 Hasta 2
			
			Escribir Sin Saltar tablero(i,j) " "
			
		FinPara
		
		Escribir  " "
	FinPara
	
FinSubAlgoritmo
	