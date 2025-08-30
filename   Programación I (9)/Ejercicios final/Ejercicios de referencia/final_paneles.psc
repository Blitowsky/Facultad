Algoritmo final_paneles
	
	definir filas, columnas, filasCluster, columnasCluster Como Entero
	
	
	escribir "Ingrese el tamaño del largo del panel: "
	filas= ingresoDatos
	escribir "Ingrese el tamaño del ancho del panel: "
	columnas= ingresoDatos
	
	dimension matriz(filas, columnas)
	definir matriz Como Caracter
	
	inicializarMatriz(matriz, filas, columnas)
	mostrarMatriz(matriz, filas, columnas)
	
	filasCluster= cluster(filas)
	columnasCluster= cluster(columnas)
	
	escribir filasCluster
	escribir columnasCluster
	
	secuenciaDeEficiencia(matriz, filas, columnas, filasCluster, columnasCluster)
	mostrarMatriz(matriz, filas, columnas)
	
	
FinAlgoritmo



SubAlgoritmo  secuenciaDeEficiencia(matriz, filas, columnas, filasCluster, columnasCluster)
	
	definir cantCluster, i, j, inicioI, inicioJ, finalI, finalJ Como Entero
	definir letra Como Caracter
	letra= "A"

	cantCluster= (filas * columnas) / (filasCluster * columnasCluster)
	
	para i=0 hasta filas-1 con paso filasCluster
		
        para j=0 hasta columnas-1 con paso columnasCluster
			
            inicioI = i
            inicioJ = j
            finalI = i + filasCluster - 1
            finalJ = j + columnasCluster - 1
			
            rellenarPanel(matriz, inicioI, inicioJ, finalI, finalJ, letra)
			
            si letra = "A" Entonces
                letra = "S"
            Sino
                letra = "A"
            FinSi
			
        FinPara
		
		si columnasCluster mod 2 = 0
			si letra = "A" Entonces
				letra = "S"
			Sino
				letra = "A"
			FinSi
		FinSi
		
    FinPara
	
	escribir "Cantidad de cluster: ", cantCluster

finSubAlgoritmo


SubAlgoritmo rellenarPanel(matriz, inicioI, inicioJ, finalI, finalJ, letra)
	definir i, j Como Entero
	
	para i= inicioI hasta finalI 
		para j= inicioJ hasta finalJ
			matriz(i,j)= letra
		FinPara
	FinPara
	
finSubAlgoritmo



///--------------------------------------------------------------------///
funcion num <- ingresoDatos 
	definir num Como Entero
	
	repetir 
		leer num 
		si num mod 2 <> 0 y num mod 3 <> 0
			escribir "El tamaño debe ser divisible por 2 o por 3. "
		FinSi
	Mientras Que num mod 2 <> 0 y num mod 3 <> 0
	
FinFuncion

subproceso inicializarMatriz(matriz, filas, columnas)
	definir i, j Como Entero
	
	para i=0 hasta filas-1 Hacer
		para j=0 hasta columnas-1
			matriz(i,j)= "-"
		FinPara
	FinPara
	
FinSubProceso

subproceso mostrarMatriz(matriz, filas, columnas)
	definir i, j Como Entero
	
	para i=0 hasta filas-1
		para j=0 hasta columnas-1
			escribir " [ ", matriz(i,j), " ] " Sin Saltar
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

funcion elemento <- cluster(tamanio)
	definir elemento Como Entero
	
	si tamanio mod 2= 0 y tamanio mod 3= 0 
		elemento= tamanio / 3
	sino 
		si tamanio mod 3 = 0
			elemento= tamanio / 3
		sino 
			elemento= tamanio / 2
		FinSi
	FinSi
	
FinFuncion










