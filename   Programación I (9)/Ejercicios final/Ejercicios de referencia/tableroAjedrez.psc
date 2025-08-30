Algoritmo rellenar_una_matriz
	dimension matriz(5,5)
	definir matriz Como Caracter
	
	inicializarMatriz(matriz)
	mostrarMatriz(matriz)
	
FinAlgoritmo

SubProceso inicializarMatriz(matriz)
	definir i, j, patron como enteros 
	patron=0
	para i=0 hasta 4 Hacer
		para j=0 hasta 4 Hacer
			si patron= 0
				si j mod 2 = 0
					matriz(i,j)= "B"
				sino 
					matriz(i,j)= "N"
				FinSi
			sino 
				si j mod 2 = 0
					matriz(i,j)= "N"
				sino 
					matriz(i,j)= "B"
				FinSi
			FinSi
		FinPara
		
		si patron=0
			patron=1
		sino 
			patron=0
		FinSi
		
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz)
	definir i, j Como Entero
	
	para i=0 hasta 4 Hacer
		para j=0 hasta 4 Hacer
			Escribir " [ ", matriz(i,j), " ] " Sin Saltar
		FinPara
		escribir " "
	FinPara
FinSubProceso

