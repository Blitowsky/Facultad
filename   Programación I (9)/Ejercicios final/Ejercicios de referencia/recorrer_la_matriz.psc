Algoritmo recorrer_la_matriz
	
	dimension matriz(6,6)
	definir matriz Como enteros
	escribir "Indices de la matriz: "
	subIndices(matriz)
	inicialixarMatriz(matriz)
	escribir "Recorrer por filas: "
	mostrarMatriz(matriz)
	escribir "Recorrer por columnas: "
	//recorrerColumnas(matriz)
	escribir "De atrás hacia adelante: "
	//atrasHaciaAdelante(matriz)
	escribir "En diagonal ascendente: "
	enDiagonalSecundariaAscendente(matriz, 6, 6)
	escribir "En diagonal descendente: "
	enDiagonalSecundariaDescendente(matriz, 6, 6)
	escribir "Las diagonales paralelas a la principal son: "
	diagonalesParalelasADPrincipal(matriz, 6, 6)
	escribir "Las diagonales paralelas a la secundaria son: "
	diagonalesParalerasADSecundaria(matriz, 6, 6)
	
FinAlgoritmo

subproceso subIndices(matriz)
	definir i, j Como Entero
	
	para i=0 Hasta 5
		para j=0 hasta 5 Hacer
			escribir " [ ",i, ",",j " ] " sin saltar 
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

subproceso inicialixarMatriz(matriz)
	definir i, j, num Como Entero
	num=1
	para i=0 hasta 5 Hacer
		para j=0 hasta 5
			matriz(i,j)= num
			num= num+1
		FinPara
	FinPara
FinSubProceso

subproceso alinear(elemento Por Referencia)
	si longitud(ConvertirATexto(elemento)) = 1
		escribir" [  ",elemento, " ] " Sin Saltar
	sino 
		escribir " [ ",elemento, " ] " Sin Saltar
	FinSi
	
FinSubProceso



subproceso mostrarMatriz(matriz)
	definir i, j Como Entero
	
	para i=0 hasta 5 Hacer
		para j=0 hasta 5 Hacer
			alinear(matriz(i,j))
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

subproceso recorrerColumnas(matriz)
	definir i, j Como Entero
	
	para i=0 hasta 5
		para j=0 hasta 5 Hacer
			alinear(matriz(j,i))
		FinPara
		escribir " "
	FinPara
FinSubProceso

subproceso atrasHaciaAdelante(matriz)
	definir i, j Como Entero
	
	para i=5 hasta 0 Hacer
		para j=5 hasta 0 Hacer
			alinear(matriz(i,j))
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

//subproceso enDiagonalSecundariaAscendente(matriz, cantFilas, cantColumnas)
//	definir indice, columna, fila como entero 
//	para indice=0 hasta cantFilas + cantColumnas - 2
//		si indice < cantColumnas Entonces
//			fila=0
//			columna=indice
//		sino 
//			fila= indice - cantColumnas + 1 
//			columna= cantColumnas - 1
//		FinSi
//		mientras fila < cantFilas y columna >= 0
//			alinear(matriz(fila, columna))
//			fila= fila + 1
//			columna= columna - 1
//		FinMientras
//		escribir ""
//	FinPara
//FinSubProceso
//
//subproceso enDiagonalSecundariaDescendente(matriz, cantFilas, cantColumnas)
//	definir indice, fila, columna como entero 
//	para indice=0 Hasta cantFilas + cantColumnas - 2
//		si indice < cantFilas Entonces
//			fila= indice 
//			columna=0
//		sino 
//			fila= cantFilas - 1
//			columna= indice - cantFilas + 1 
//		FinSi
//		mientras fila >= 0 y columna < cantColumnas
//			alinear(matriz(fila, columna))
//			fila= fila - 1 
//			columna= columna + 1 
//		FinMientras
//		escribir ""
//	FinPara
//FinSubProceso


subproceso diagonalesParalelasADPrincipal(matriz, cantFilas, cantColumnas)
	definir indice, fila, columna Como Entero
	para indice=0 hasta cantFilas - 1
		fila=0
		columna=indice
		mientras fila < cantFilas y columna < cantColumnas
			alinear(matriz(fila, columna))
			fila= fila + 1
			columna= columna + 1  
		FinMientras
		escribir " "
	FinPara
	para indice=1 Hasta cantColumnas - 1 Hacer
		fila= indice 
		columna= 0 
		mientras fila < cantFilas y columna < cantColumnas
			alinear(matriz(fila, columna))
			fila= fila + 1
			columna= columna + 1 
		FinMientras
		escribir ""
	FinPara
FinSubProceso

subproceso diagonalesParalerasADSecundaria(matriz, cantFilas, cantColumnas)
	definir indice, fila, columna Como Entero
	para indice=0 hasta cantColumnas
		fila= 0 
		columna= cantColumnas - indice - 1
		mientras fila < cantFilas y columna >= 0
			alinear(matriz(fila, columna))
			fila= fila + 1
			columna= columna - 1 
		FinMientras
		escribir ""
	FinPara
	para indice=0 hasta cantFilas
		fila= indice 
		columna= cantColumnas - 1
		mientras fila < cantFilas y columna >= 0
			alinear(matriz(fila, columna))
			fila= fila + 1
			columna= columna - 1
		FinMientras
		escribir ""
	FinPara
FinSubProceso

subproceso recorrerDiagonalesSecundarias(matriz, indiceFinal, indiceI, indeceJ, cantFilas)
	definir indice, fila, columna Como Entero
	
	para indice=0 hasta indiceFinal
		fila= indiceI
		columna= indiceJ
		mientras fila < cantFilas y columna >= 0
			alinear(matriz(fila, columna))
			fila= fila + 1
			columna= columna - 1
		FinMientras
	FinPara
	
FinSubProceso

subproceso recorrerDiagonalesPrincipales(matriz, indiceFinal, indiceI, indiceJ, cantFilas, cantColumnas)
	definir indice, fila, columna Como Entero
	
	para indice= 0 hasta indiceFinal Hacer
		fila= indiceFila 
		columna= indiceColumna
		mientras fila < cantFilas y columna < cantColumnas
			fila = fila + 1
			columna= columna + 1
		FinMientras
	FinPara
	
FinSubProceso












