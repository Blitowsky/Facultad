Algoritmo sin_titulo
	
	definir matriz Como Entero
	Dimension matriz(10,10)
	iniciarMatriz(matriz)
	mostrarMatriz(matriz)
	mostrarDiagonal(matriz, 3, 1, 9, 9, 2)	
	
FinAlgoritmo

SubAlgoritmo iniciarMatriz(matriz)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta 9
		para j = 0 hasta 9
			
			matriz(i,j) = i*j
			
		FinPara
	FinPara

FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz)
	Definir i,j Como entero
	
	para i = 1 Hasta 9
		para j = 1 hasta 9
			
			si matriz(i,j) > 9
				
				escribir Sin Saltar " " matriz(i,j) " "
				
			SiNo
				
				escribir Sin Saltar "  " matriz(i,j) " "
				
			FinSi
			
		FinPara
		
		Escribir ""

	FinPara

	
FinSubAlgoritmo
SubAlgoritmo mostrarMatrizModificada(matriz)
	
	Definir i,j,t, inicioH, finalH, inicioV, finalV Como Entero
	
	inicioH = 4
	finalH = 9
	inicioV = 9
	finalV = 1

	para t = 0 Hasta 0
		
		para i = inicioV Hasta finalV
			para j = inicioH hasta finalH
				
				si i = inicioV + (j - inicioH) Entonces
					
					si matriz(i,j) > 9
						
						escribir Sin Saltar " " matriz(i,j) " "
						
					SiNo
						
						escribir Sin Saltar "  " matriz(i,j) " "
						
					FinSi
					
				SiNo
					
					Escribir Sin Saltar " -- "
					
				FinSi
				
				
				
				
			FinPara
			Escribir ""
		FinPara
		Escribir ""

		
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
						
						Escribir Sin Saltar FormatoNumero(matriz(i,j))
						
					Sino
						
						Escribir Sin Saltar " -- "
						
					FinSi
					
					// ?? Dirección ascendente (inferior a superior)
				Sino 
					
					Si direccion = 2 Entonces
						
						Si i = finalV - (j - inicioH) Entonces
							Escribir SinSaltar FormatoNumero(matriz(i,j))
						Sino
							Escribir SinSaltar " -- "
						FinSi
					FinSi
				FinSi					
			FinPara
				Escribir "" // Salto de línea
		FinPara
FinSubAlgoritmo

Funcion texto <- FormatoNumero(numero)
	Definir texto Como Caracter
    Si numero > 9 Entonces
        texto =  " " + ConvertirATexto(numero) + " "
    Sino
        texto =  "  " + ConvertirATexto(numero) + " "
    FinSi
FinFuncion

// Subalgoritmo auxiliar para dar formato a los números y mantener alinea

