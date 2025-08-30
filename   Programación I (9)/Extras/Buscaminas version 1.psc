Algoritmo Buscaminas
	
	Definir campo como caracter
	
	Dimension campo(10, 10)
	
	
	iniciar_campo(campo)
	poner_minas(campo)
	mostrar_campo(campo)
//
//	campo(9,9) = "0"
//	campo(8,9) = "M"
//	campo(8,8) = "M"
//	campo(9,8) = "M"

	poner_numeros(campo)
	Escribir ""
	Escribir "---------------------------------------------------"
	Escribir ""
	mostrar_campo(campo)

	
FinAlgoritmo


SubAlgoritmo iniciar_campo(campo)
	
	Definir  i, j Como Entero
	
	para i = 0 Hasta 9 Hacer
		
		para j = 0 Hasta 9 Hacer
			
			campo(i,j) = " "
			
		FinPara
		
		
	FinPara
	
	
FinSubAlgoritmo


SubAlgoritmo mostrar_campo(campo)
	
	Definir  i, j Como Entero
	
	para i = 0 Hasta 9 Hacer
		
		si i < 9 Entonces
			
			Escribir Sin Saltar i  + 1 "_ | "
		SiNo
			
			Escribir Sin Saltar i  + 1 "_| "
			
		FinSi
		
		para j = 0 Hasta 9 Hacer
			
			Escribir Sin Saltar campo(i,j) "  "
			
		FinPara
		
		Escribir "|"
		
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo poner_minas(campo)
	
	Definir fila, columna, i Como Entero
	
	
	para i = 0 Hasta 30 Hacer
		
		fila = Aleatorio(0,9)
		columna = Aleatorio(0,9)
		
		mientras campo(fila,columna) = "M" Hacer
			
			fila = Aleatorio(0,9)
			columna = Aleatorio(0,9)
			
			
		FinMientras
		
		campo(fila,columna) = "M"
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo poner_numeros(campo)
	
	Definir i,j,k,l,contador, ftemp, ctemp Como Entero
	
	contador = 0
	
	para i = 0 Hasta 9
		
		para j = 0 Hasta 9 Hacer
			
			si campo(i,j) <> "M" Entonces
				
///	--------------------------------------------------------------------------------------------------			
				
				
				
				si i = 0 y j = 0 Entonces
					
					para k = 0 Hasta 1
						
						para l = 0 Hasta 1 Hacer
							
							ftemp = i + k
							ctemp = j + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
							FinSi
							
						FinPara
						
					FinPara
					
				SiNo
					

					
				FinSi
				
				si i = 9 y j = 9 Entonces
					
					para k = 0 Hasta 1
						
						para l = 0 Hasta 1 Hacer
							
							ftemp = (i - 1) + k
							ctemp = j - 1 + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
							FinSi
							
						FinPara
						
					FinPara
					
				FinSi
				
				si i <> 0 y i <> 9 y j <> 0 y j <> 9 Entonces
					
					para k = 0 Hasta 2
						
						para l = 0 Hasta 2 Hacer
							
							ftemp = (i - 1) + k
							ctemp = j - 1 + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
							FinSi
							
						FinPara
						
					FinPara
					
				FinSi
				
				
				campo(i,j) = ConvertirATexto(contador)
				contador = 0
				
				
///	--------------------------------------------------------------------------------------------------				
				
			FinSi
			
		FinPara
		
	FinPara
	
	
FinSubAlgoritmo


	