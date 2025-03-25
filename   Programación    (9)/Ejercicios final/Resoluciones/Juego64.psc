Algoritmo sin_titulo
	
	Definir n, tablero, movimiento, i Como Entero
	
	n = 4
	
	Dimension tablero(n,n)
	iniciarMatriz(tablero,n)
	colocarFichasIniciales(tablero,n)
	
	mostrarMatriz(tablero, n)

	Escribir ""
	direcciónDesplazamiento(tablero,n)

	mostrarMatriz(tablero, n)

FinAlgoritmo

SubAlgoritmo direcciónDesplazamiento(tablero,longLado)
	
	Definir i,j, inicioV,inicioH,finV,finH como entero
	Definir realizado Como Logico
	
	realizado = Falso
	inicioV = 0
	inicioH = 0
	finV = longLado -1
	finH = longLado -2
	
	
	
	para i = inicioV hasta finV
		
		para j = inicioH Hasta finH
			
			si tablero(i,j) <> 0 y !realizado
				
				moverFicha(tablero,i,j,direccion)
				realizado = Verdadero
				
			FinSi
			
		FinPara
		realizado = Falso
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo moverFicha(matriz,i,j, direccion)
	
	
	
	
FinSubAlgoritmo

SubAlgoritmo colocarFichasIniciales(tablero,longitudLado)
	
	Definir X1, Y1, X2, Y2 Como Entero	
	
	Repetir
		
		X1 = Aleatorio(0,longitudLado - 1)
		Y1 = Aleatorio(0,longitudLado - 1)	
		X2 = noRepetido(X1, longitudLado)
		Y2 = noRepetido(Y1, longitudLado)
		
		
	Mientras Que tablero(X1,Y1) <> 0 y tablero(X2,Y2) <> 0
	tablero(X1,Y1) = 2
	tablero(X2,Y2) = 2
	
FinSubAlgoritmo

Funcion num = noRepetido(numEvaluado, longitudLado)
	
	
	Definir num Como Entero
	
	Repetir
		
		num = Aleatorio(0,longitudLado - 1)
		
	Mientras Que num = numEvaluado
	
FinFuncion

SubAlgoritmo iniciarMatriz(matriz, longitudLado)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta longitudLado -1
		
		para j = 0 Hasta longitudLado -1
			
			matriz(i,j) = 0
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz, longitudLado)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta longitudLado -1
		
		para j = 0 Hasta longitudLado -1
			
			Escribir Sin Saltar matriz(i,j) " "
			
		FinPara
		
		Escribir  " "
	FinPara
	
FinSubAlgoritmo

	