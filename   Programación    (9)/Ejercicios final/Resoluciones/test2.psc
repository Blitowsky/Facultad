Algoritmo sin_titulo
	
	definir matriz, i, j Como Entero
	Dimension matriz(3,3)
	iniciarMatriz(matriz)
	mostrarMatriz(matriz)
	
	para j = 0 Hasta 2
		
//		para i = 0 Hasta 2
			
//			mostrarDiagonal(matriz, 0, i ,2, 2, 2)	
			mostrarMatrizModificada(matriz,j)

			Escribir ""
			
//		FinPara
	FinPara
	
	
FinAlgoritmo

SubAlgoritmo iniciarMatriz(matriz)
	
	Definir i,j,contador Como Entero
	contador = 1
	
	para i = 0 Hasta 2
		para j = 0 hasta 2
			
			matriz(i,j) = contador
			contador = contador +1
			
		FinPara
	FinPara

FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz)
	Definir i,j Como entero
	
	para i = 0 Hasta 2
		para j = 0 hasta 2
			
			escribir Sin Saltar " " matriz(i,j) " "
			
		FinPara
		
		Escribir ""

	FinPara

	
FinSubAlgoritmo
SubAlgoritmo mostrarMatrizModificada(matriz,f)
	
	Definir i,j,t, inicioH, finalH, inicioV, finalV, contador Como Entero
	
	inicioH = 0
	finalH = 2
	inicioV = 0
	finalV = 2
	contador = -2

	para t = 0 Hasta 0
		para i = inicioV Hasta finalV
			para j = inicioH hasta finalH
				
				si i+contador  = j Entonces
					
					escribir Sin Saltar "  " matriz(i,j) " "
					
				SiNo
					
					escribir Sin Saltar "  - "
					
				FinSi
				
				contador = contador +1
			FinPara
			Escribir " "
		FinPara
	FinPara
	
	
FinSubAlgoritmo
	
	SubAlgoritmo mostrarDiagonal(matriz, inicioH, inicioV, finalH, finalV, direccion)
		Definir i, j Como Entero
		
		// Validación de dirección: 
		// 1 para ?? (de arriba a abajo) 
		// 2 para ?? (de abajo a arriba)
		
		Para i <- inicioV Hasta finalV Hacer
			Para j <- inicioH Hasta finalH Hacer
				
				// ?? Dirección descendente (superior a inferior)
				Si direccion = 1 Entonces
					
					Si i = inicioV + (j - inicioH) Entonces
						
						Escribir Sin Saltar matriz(i,j) " "
						
						
					FinSi
					
					// ?? Dirección ascendente (inferior a superior)
				Sino 
					
					Si direccion = 2 Entonces
						
						Si i = finalV - (j - inicioH) Entonces
							
							Escribir SinSaltar matriz(i,j) " "
							
						FinSi
					FinSi
				FinSi					
			FinPara
				Escribir "" // Salto de línea
		FinPara
FinSubAlgoritmo


// Subalgoritmo auxiliar para dar formato a los números y mantener alinea

