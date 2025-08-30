Algoritmo sin_titulo
	
	definir matriz, i, j, alto, ancho Como Entero
	alto = 5
	ancho = 5
	
	Dimension matriz(alto,ancho)
	iniciarMatriz(matriz, alto, ancho)
	mostrarMatriz(matriz, alto, ancho)
	
	para i = 1 Hasta  2
		mostrarMatrizModificada(matriz,alto,ancho,i)
	FinPara
	
	Escribir ""
FinAlgoritmo

SubAlgoritmo iniciarMatriz(matriz, alto, ancho)
	
	Definir i,j,contador Como Entero
	contador = 1
	
	para i = 0 Hasta alto -1
		para j = 0 hasta ancho -1
			
			matriz(i,j) = contador
			contador = contador +1
			
		FinPara
	FinPara

FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz, alto, ancho)
	Definir i,j Como entero
	
	para i = 0 Hasta alto-1
		para j = 0 hasta ancho -1
			
			escribir Sin Saltar " " matriz(i,j) " "
			
		FinPara
		
		Escribir ""

	FinPara

	
FinSubAlgoritmo
SubAlgoritmo mostrarMatrizModificada(matriz, alto, ancho, direccion)
	
	Definir i,j,t, signo ,inicioIndice,finalIndice Como Entero
	

	inicioIndice = 0
	finalIndice = (alto+ancho) -2
	signo = 1
	
	si direccion = 2 Entonces
		
		signo = -1
		inicioIndice = -ancho+1
		finalIndice = alto-1
		
	FinSi
	
 
	para t = inicioIndice Hasta finalIndice
		
		para i =  0 Hasta alto -1
			para j = 0 hasta ancho -1
				
				si i + signo*j = t  Entonces
					
					escribir Sin Saltar "  " matriz(i,j) " "
					
				SiNo
					
					escribir Sin Saltar "  -  "
					
				FinSi
			
			FinPara
			Escribir " "
		FinPara
		Escribir " "
	FinPara
	
	
FinSubAlgoritmo
	
	