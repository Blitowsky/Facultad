Algoritmo sin_titulo
	
	Definir altoPanel, anchoPanel, altoCluster, anchoCluster, cantClusters Como Entero
	Definir panel Como Caracter
	
	Escribir "Ingrese el alto del panel"
	
	altoPanel = validarEntrada
	
	Escribir "Ingrese el ancho del panel"
	
	anchoPanel = validarEntrada
	
	Dimension panel(altoPanel,anchoPanel)
	
	altoCluster = crearLadoCluster(altoPanel)
	anchoCluster = crearLadoCluster(anchoPanel)
	
	Escribir "Las dimensiones del panel son: " altoPanel " x " anchoPanel
	Escribir "Las dimensiones del cluster son: " altoCluster " x " anchoCluster
	
	cantClusters = altoPanel/altoCluster * anchoPanel/anchoCluster
	
	Escribir "La cantidad de clusters es: " cantClusters
	iniciarMatriz(panel,altoPanel, anchoPanel)
	
	
	configuracionCluster(panel, altoPanel, anchoPanel, altoCluster, anchoCluster)
	
	mostrarMatriz(panel,altoPanel, anchoPanel)
	
	
	
FinAlgoritmo


Funcion entrada = validarEntrada
	Definir entrada Como Entero
	Leer entrada 
	
	Mientras entrada % 2 <> 0 y entrada % 3 <> 0 Hacer
		
		Escribir "Ingrese un número divisible por 2 o 3"
		
		Escribir 2 % entrada
		Escribir 3 % entrada
		leer entrada
		
	FinMientras
	
	
FinFuncion

Funcion ladoCluster = crearLadoCluster(ladoPanel)
	Definir ladoCluster Como Entero
	
	si ladoPanel % 3 = 0 Entonces
		
		ladoCluster = ladoPanel / 3
		
	SiNo
		
		ladoCluster = ladoPanel / 2
		
	FinSi
	
	
FinFuncion

SubAlgoritmo configuracionCluster(panel, altoPanel, anchoPanel, altoCluster, anchoCluster)
	
	
	Definir i,j,contanch,contalt Como Entero
	
	contanch=0
	contalt=0
	para i = 0 Hasta altoPanel - 1
		
		para j = 0 hasta anchoPanel -1 Hacer
			
			si (i % altoCluster = 0) y i <> altoCluster Entonces
				contalt = 0
			FinSi
			
			si i=contanch*2 o ((i % anchoCluster = 0) y i <> anchoCluster) Entonces
				contanch = 0
			FinSi
			
			si contalt < altoCluster y contanch < anchoCluster Entonces
					
				panel(i,j) = "A"
				
			SiNo
//				si contalt >= altoCluster y contanch >= anchoCluster Entonces
					panel(i,j) = "S"
//				FinSi				
			FinSi
			contanch=contanch+1
		FinPara
		contalt=contalt+1
	FinPara				
	
FinSubAlgoritmo



SubAlgoritmo iniciarMatriz(panel, altoPanel, anchoPanel)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta altoPanel - 1
		
		para j = 0 hasta anchoPanel -1 Hacer
			
			panel(i,j) = "A"
			
		FinPara
		
	FinPara	
	
FinSubAlgoritmo


SubAlgoritmo mostrarMatriz(panel, altoPanel, anchoPanel)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta altoPanel - 1
		
		para j = 0 hasta anchoPanel -1 Hacer
			
			Escribir Sin Saltar panel(i,j) " "
			
		FinPara
		Escribir  ""
		
	FinPara	
	
FinSubAlgoritmo

	