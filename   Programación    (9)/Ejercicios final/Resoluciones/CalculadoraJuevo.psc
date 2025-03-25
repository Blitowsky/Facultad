Algoritmo sin_titulo
	
	
	Definir display,jugador,entrada,ultimaJugada,teclado,posibilidades Como Entero
	Definir jugador1 Como Logico
	jugador1 = Verdadero
	display = 0
	jugador = 1
	

	Dimension teclado(3,3), ultimaJugada(2), posibilidades(4)
	iniciarMatriz(teclado)
	iniciarVector(ultimaJugada,2)
	iniciarVector(posibilidades,4)
	
	Escribir "Turno del jugador número " jugador
	mostrarMatriz(teclado)
	
	leer entrada
	filaYColumnaPermitida(teclado,ultimaJugada,entrada)
	
	
	Repetir
		
		si jugador1
			
			jugador1 = Falso
			jugador = 1
			
		SiNo
			
			jugador1 = Verdadero
			jugador = 2
			
		FinSi
		Escribir display
		Escribir "Turno del jugador número " jugador
		mostrarMatriz(teclado)
		
		leer entrada
		filaYColumnaPermitida(teclado,ultimaJugada,entrada)
		censurarNumeros(teclado,ultimaJugada, posibilidades, entrada)
		mostrarVector(posibilidades,4)
		
		display = display + entrada
		
		
		
		
	Mientras Que  display < 31
	
	
	
	si jugador1
		
		Escribir "Ganó el jugador 1"
		
	SiNo
		
		Escribir "Ganó el jugador 2"
		
	FinSi
FinAlgoritmo

Funcion valida = entradaValida(entrada,posibilidades,teclado,ultimaJugada)
	
	
	Mientras entrada < 1 o entrada > 9 o valorPermitido(posibilidades,entrada)
		
		Escribir "El número ingresado no se encuentra disponible"
		Escribir "Los números disponibles son :"
		mostrarVector(posibilidades,4)
		
		Leer entrada
		filaYColumnaPermitida(teclado,ultimaJugada,entrada)
		
	FinMientras
	
FinFuncion

Funcion permitido = valorPermitido(posibilidades, entrada)
	
	Definir i,j Como Entero
	Definir permitido Como Logico
	
	para i = 0 Hasta 2
		
		si posibilidades(i) = entrada
			
			permitido = Verdadero
			
		SiNo
			
			permitido = Falso
			
		FinSi
		
	FinPara
	
FinFuncion

SubAlgoritmo censurarNumeros(teclado,ultimaJugada, posibilidades, entrada)
	
	Definir i,j, puntero Como Entero
	
	puntero = 0
	
	para i = 0 Hasta 2
		
		para j = 0 Hasta 2
			
			si teclado(i,j) <> entrada
				
				si (ultimaJugada(0) = i o ultimaJugada(1) = j)
					Escribir puntero
					Escribir teclado(i,j)
					posibilidades(puntero) = teclado(i,j)
					puntero = puntero +1
					
				FinSi
				
			FinSi
			
		FinPara
		
	FinPara
	
	
	
FinSubAlgoritmo


SubAlgoritmo filaYColumnaPermitida(teclado,ultimaJugada,entrada)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta 2
		
		para j = 0 Hasta 2
			
			si teclado(i,j) = entrada
				
				ultimaJugada(0) = i
				ultimaJugada(1) = j
				
			FinSi
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarMatriz(matriz)
	
	Definir i,j, numero Como Entero
	numero = 9
	
	para i = 0 Hasta 2
		
		para j = 2 Hasta 0
			
			matriz(i,j) = numero
			numero = numero -1
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarVector(vector,n)
	
	Definir i Como Entero
	
	para i = 0 Hasta n -1
		
		
		vector(i) = 0
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarVector(vector,n)
	
	Definir i Como Entero
	
	para i = 0 Hasta n -1
		
		
		Escribir Sin Saltar "(" vector(i) ", "
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz)
	
	
	Definir i,j Como Entero
	
	para i = 0 Hasta 2
		
		para j = 0 Hasta 2
			
			Escribir Sin Saltar matriz(i,j) " "
			
		FinPara
		Escribir " "
	FinPara
	
FinSubAlgoritmo

