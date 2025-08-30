Algoritmo sin_titulo
	Definir opcionContainer,barco Como Caracter
	Definir switch, filaLibre, prueba Como Logico
	Definir signo,i,j,t,fila, filaInicial  Como entero
	Dimension barco(5,5)
	iniciarMatriz(barco)

	switch = Falso
	signo = -1
	filaInicial = 2
	fila = filaInicial
	filaLibre = Verdadero
	prueba = falso
	
	
	
	para i = 1 Hasta 2
		para j = 1 Hasta 2
			
			
			
			Repetir
				
				Escribir fila " " i
				leer opcionContainer
				
				si opcionContainer = "q"
					prueba = Verdadero
					fila = filaInicial + i*signo
					switchSigno(switch,signo)
					
				FinSi
				
				
			Mientras Que !prueba
			prueba = Falso
			
//			Repetir ///probar con un booleano gen�rico
//				mostrarMatriz(barco)
//				Escribir "Ingrese el tama�o del container a colocar (L -> 4 | R -> 3 | S -> 2)"
//				
//				Leer opcionContainer
//				
//				
//				si calcularEspaciosLibres(barco, fila) >= calcularTama�oContainer(opcionContainer) +1
//					
//					dondePonerContainer(barco, fila, opcionContainer)
//					Escribir fila
//					
//				SiNo
//					
//					filaLibre = Falso
//					
//				FinSi
//				
//			Mientras Que filaLibre
//			filaLibre = Verdadero
//			
//			fila = filaInicial + i*signo
//			switchSigno(switch,signo)
//			
//			///Estructura que va a ir cambiando entre las filas del barco
//			
			
			
		FinPara
		
	FinPara
	
FinAlgoritmo

SubAlgoritmo dondePonerContainer(barco, fila, tipoContainer)
	Definir j como entero
	Definir colocado Como Logico
	colocado = Falso
	
	para j = 0 Hasta 4
		
		si barco(fila,j) = "O" y !colocado
			
			colocarContainer(barco,fila,j,tipoContainer)
			colocado = Verdadero
			
		FinSi
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo colocarContainer(barco,fila,columna, tipoContainer)
	Definir t�oContainer,j Como Entero
	
	t�oContainer = calcularTama�oContainer(tipoContainer)
	
	para j = columna Hasta t�oContainer + columna
		
		barco(fila,j) = tipoContainer
		Escribir fila
		
	FinPara
	
FinSubAlgoritmo

Funcion t�oContainer = calcularTama�oContainer(tipoContainer)
	
	Definir t�oContainer Como Entero
	
	Segun tipoContainer
		
		"L": t�oContainer = 3
		"R": t�oContainer = 2
		"S": t�oContainer = 1	
		
	FinSegun
	
FinFuncion

Funcion libre = calcularEspaciosLibres(barco, fila)
	
	Definir j, libre Como Entero
	libre = 0
	
	
	para j = 0 Hasta 4
		
		si barco(fila,j) ="O"
			
			libre = libre +1
		FinSi
		
	FinPara
	
FinFuncion

SubAlgoritmo switchSigno(switch Por Referencia,signo Por Referencia)	
	si switch
		signo = -1
		switch = Falso	
	sino
		signo = 1
		switch = Verdadero	
	FinSi	
FinSubAlgoritmo

SubAlgoritmo iniciarMatriz(barco)
	
	Definir i,j Como Entero
	
	Para i = 0 Hasta 4
		
		para j = 0 Hasta  4
			
			barco(i,j) = "O"
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo


SubAlgoritmo mostrarMatriz(barco)
	
	Definir i,j Como Entero
	
	Para i = 0 Hasta 4
		
		para j = 0 Hasta  4
			
			Escribir Sin Saltar barco(i,j) " "
			
		FinPara
		Escribir " "
		
	FinPara
	
FinSubAlgoritmo