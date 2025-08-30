Algoritmo Batalla_naval
	
	Definir tablero Como Caracter
	Dimension tablero(3,4)
	
	
	iniciar_tablero(tablero)
	mostrar_tablero(tablero)
	
	
	
FinAlgoritmo 

SubAlgoritmo colocar_barco_doble(tablero)
	
	Definir fila_primer, columna_primer, fila_segundo, columna_segundo Como Entero
	
	
	Escribir "Escriba la fila del primer sector del barco doble"
	Leer fila_primer
	
	Escribir "Escriba la columna del primer sector del barco doble"
	Leer columna_primer
	
	tablero(fila_primer, columna_primer) = "B"
	
	
	si fila_primer = 0 Entonces
		
		
		Escribir "Escriba la fila del segundo sector del barco doble"
		Leer fila_segundo
		
		Mientras fila_segundo < 0 o fila_segundo > 2 o fila_primer = fila_segundo
			
			si fila_segundo < 0 o fila_segundo > 2 Entonces
				
				Escribir "Ingrese una posición dentro del tablero"
				Leer fila_segundo
				
			SiNo
				
				si fila_primer = fila_segundo Entonces
					
					Escribir "Ingrese una posición dentro del tablero"
					Leer fila_segundo
					
				SiNo
					
					
					
				FinSi
				
			FinSi
			
		FinMientras
		
		
		Escribir "Escriba la fila del segundo sector del barco doble"
		leer columna_segundo
		
		Mientras columna_segundo < 0 o columna_segundo > 2 o columna_primer = columna_segundo
			
			si columna_segundo < 0 o columna_segundo > 2 Entonces
				
				Escribir "Ingrese una posición dentro del tablero"
				Leer columna_segundo
				
			SiNo
				
				si fila_primer = columna_segundo Entonces
					
					Escribir "Ingrese una posición dentro del tablero"
					Leer columna_segundo
					
				FinSi
				
				
				
			FinSi
			
			
			
			
		FinMientras
		
		
		Mientras columna_primer >= columna_segundo 
			
			Escribir "La posición ingresada queda fuera del tablero"
			leer columna_segundo
			
		FinMientras
		
		
	FinSi
	
	si fila_primer = 2 Entonces
		
		Escribir "Escriba la fila del segundo sector del barco doble"
		Leer fila_segundo
		
		Escribir "Escriba la fila del segundo sector del barco doble"
		leer columna_segundo
		
		
	SiNo
		
		Escribir "Escriba la fila del segundo sector del barco doble"
		Leer fila_segundo
		
		
		
		Escribir "Escriba la fila del segundo sector del barco doble"
		leer columna_segundo
		
	FinSi
	
	
	tablero(fila_segundo,columna_segundo)= "B"
	
	
	
	
FinSubAlgoritmo

SubAlgoritmo prueba(tablero)
	
	si columna = 0 Entonces
		
		
		
	FinSi
	
FinSubAlgoritmo

SubAlgoritmo iniciar_tablero(tablero)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta 2 Hacer
		
		para j = 0 Hasta 3 Hacer
			
			tablero(i,j) = "O"
			
		FinPara
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrar_tablero(tablero)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta 2 Hacer
		Escribir Sin Saltar "| "
		
		para j = 0 Hasta 3 Hacer
			
			Escribir Sin Saltar " " tablero(i,j) " "
			
		FinPara
		Escribir Sin Saltar " |"
		Escribir ""
	FinPara
	
FinSubAlgoritmo
