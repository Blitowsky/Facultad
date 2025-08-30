Algoritmo sin_titulo
	
	Definir largo,alto, fila, i, columna Como Entero
	Definir barco,container Como caracter
	Definir colocado Como Logico
	colocado = Falso
	
	largo = 5
	alto = 5
	columna = 0
	Dimension barco(alto, largo)
	
	fila = redon(alto / 2) - 1
	
	iniciarMatriz(barco, alto, largo)
	
	mostrarMatriz(barco, alto, largo)
	

	Escribir "Ingrese el tamaño del container (L/R/S)"
	
	
	Leer container

	mostrarMatriz(barco, alto, largo)
	
	Escribir contarEspaciosLibres(barco,fila,largo) 
	Escribir asignacionLargo(container)
	
	Escribir "Ingrese el tamaño del container (L/R/S)"
	
	
	Leer container
	

	
	para j = 0 Hasta largo - 1 Hacer
		
		Escribir barco(fila,j) = "O"
		
		si barco(fila,j) = "O" y !colocado 
			
			
			colocado = Verdadero
			
		FinSi
		
	FinPara
	

	
FinAlgoritmo



Funcion libres = contarEspaciosLibres(barco, fila, largo)
	Definir libres,i Como Entero
	libres = 0
	
	para i = 0 Hasta largo-1
		
		si barco(fila,i) = "O"
			
			libres = libres + 1
			
		FinSi
		
	FinPara
	
FinFuncion


Funcion largoContainer = asignacionLargo(tipoContenedor)
	
	Definir largoContainer Como Entero
	
	Segun tipoContenedor Hacer
		
		"L": largoContainer = 3
		"R": largoContainer = 2
		"S": largoContainer = 1
		
	FinSegun
	
FinFuncion


SubAlgoritmo colocarContainers(barco,tipoContenedor, filaInicial, columnaInicial, largo)
	
	Definir i, j Como Entero
	
	
	para j = columnaInicial Hasta asignacionLargo(tipoContenedor) 
		
		
		barco(filaInicial,j) = tipoContenedor
		
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo iniciarMatriz(matriz, alto, largo)
	
	Definir i, j Como Entero
	para i = 0 Hasta alto - 1
		Para j= 0 Hasta  largo - 1
			
			matriz(i,j) = "O"
			
		FinPara
		
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz, alto, largo)
	
	Definir i, j Como Entero
	para i = 0 Hasta alto - 1
		Para j= 0 Hasta  largo - 1
			
			Escribir Sin Saltar matriz(i,j) " "
			
		FinPara
		Escribir " "
	FinPara
FinSubAlgoritmo

