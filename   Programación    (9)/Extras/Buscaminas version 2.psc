Algoritmo Buscaminas
	
	Definir orden, vector_ref Como Entero
	Definir campo como caracter
	orden = 10
	
	
	Dimension campo(orden, orden), vector_ref(orden)
	
	
	iniciar_campo(campo, orden)
	iniciar_vector(vector_ref, orden)
	poner_minas(campo, orden)
	mostrar_campo(campo, orden)
//
//	campo(9,9) = "0"
//	campo(8,9) = "M"
//	campo(8,8) = "M"
//	campo(9,8) = "M"

	poner_numeros(campo, orden)
	Escribir ""
	Escribir "---------------------------------------------------"
	Escribir ""
	mostrar_campo(campo, orden)
	Escribir ""
	Escribir "---------------------------------------------------"
	Escribir ""
	mostrar_campo_juego(campo, orden, vector_ref)

	
FinAlgoritmo


SubAlgoritmo iniciar_campo(campo, orden)
	
	Definir  i, j Como Entero
	
	para i = 0 Hasta orden - 1 Hacer
		
		para j = 0 Hasta orden - 1 Hacer
			
			campo(i,j) = " "
			
		FinPara
		
		
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo iniciar_vector(vector_ref, orden)
	
	Definir i Como Entero
	
	para i = 0 Hasta orden -1 Hacer
		
		vector_ref(i) = i + 1
		
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo mostrar_campo_juego(campo, orden, vector_ref)
	
	Definir  i, j Como Entero
	
	Escribir Sin Saltar "      "
	
	para i = 0 Hasta orden -1 Hacer
		
		si i < 8 Entonces
			
			Escribir Sin Saltar vector_ref(i) "  "
			
		SiNo
			
			Escribir Sin Saltar vector_ref(i) " "
			
		FinSi
		
	FinPara
	Escribir ""
	Escribir Sin Saltar "     "
	
	para i = 0 Hasta orden -1 Hacer
		
		Escribir  Sin Saltar "-- "
		
	FinPara
	Escribir ""
	
	para i = 0 Hasta orden - 1 Hacer
		
		si i < 9 Entonces
			
			Escribir Sin Saltar i  + 1 "_ | "
		SiNo
			
			Escribir Sin Saltar i  + 1 "_| "
			
		FinSi
		
		para j = 0 Hasta orden - 1 Hacer
			
			Escribir Sin Saltar " O "
			
		FinPara
		
		Escribir "|"
		
	FinPara
	
	
FinSubAlgoritmo


SubAlgoritmo mostrar_campo(campo, orden)
	
	Definir  i, j Como Entero
	
	para i = 0 Hasta orden - 1 Hacer
		
		si i < 9 Entonces
			
			Escribir Sin Saltar i  + 1 "_ | "
		SiNo
			
			Escribir Sin Saltar i  + 1 "_| "
			
		FinSi
		
		para j = 0 Hasta orden - 1 Hacer
			
			Escribir Sin Saltar campo(i,j) "  "
			
		FinPara
		
		Escribir "|"
		
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo poner_minas(campo, orden)
	
	Definir fila, columna, i Como Entero
	
	
	para i = 0 Hasta orden * 3 Hacer
		
		fila = Aleatorio(0,orden - 1)
		columna = Aleatorio(0,orden - 1)
		
		mientras campo(fila,columna) = "M" Hacer
			
			fila = Aleatorio(0,orden - 1)
			columna = Aleatorio(0,orden - 1)
			
			
		FinMientras
		
		campo(fila,columna) = "M"
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo poner_numeros(campo, orden)
	
	Definir i,j,k,l,contador, ftemp, ctemp Como Entero
	
	contador = 0
	
	para i = 0 Hasta orden - 1
		
		para j = 0 Hasta orden - 1 Hacer
			
			si campo(i,j) <> "M" Entonces
				
///	--------------------------------------------------------------------------------------------------			
				
				
				si i = 0 o j = 0 o i = orden - 1 o j = orden - 1 Entonces
					
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
						
						si i = orden - 1 y j = orden - 1 Entonces
							
							para k = 0 Hasta 1
								
								para l = 0 Hasta 1 Hacer
									
									ftemp = (i - 1) + k
									ctemp = j - 1 + l
									
									si campo(ftemp, ctemp) = "M"
										
										contador = contador + 1
										
									FinSi
									
								FinPara
								
							FinPara
							
							
						SiNo
							
							si i = 0 y j <> orden - 1 Entonces
								
								para k = 0 Hasta 1
									
									para l = 0 Hasta 2 Hacer
										
										ftemp = i + k
										ctemp = j - 1 + l
										
										si campo(ftemp, ctemp) = "M"
											
											contador = contador + 1
										FinSi
										
									FinPara
									
								FinPara
								
							FinSi
							
							si j = 0 y i <> orden - 1 Entonces
								
								para k = 0 Hasta 2
									
									para l = 0 Hasta 1 Hacer
										
										ftemp = i - 1 + k
										ctemp = j + l
										
										si campo(ftemp, ctemp) = "M"
											
											contador = contador + 1
										FinSi
										
									FinPara
									
								FinPara
								
							FinSi
							
							si j = orden - 1 y i <> 0 Entonces
								
								para k = 0 Hasta 2
									
									para l = 0 Hasta 1 Hacer
										
										ftemp = i - 1 + k
										ctemp = j - 1 + l
										
										si campo(ftemp, ctemp) = "M"
											
											contador = contador + 1
										FinSi
										
									FinPara
									
								FinPara
								
							FinSi
							
							si i = orden - 1 y j <> 0 y j <> orden - 1 Entonces
								
								para k = 0 Hasta 1
									
									para l = 0 Hasta 2 Hacer
										
										ftemp = i - 1 + k
										ctemp = j - 1 + l
										
										si campo(ftemp, ctemp) = "M"
											
											contador = contador + 1
											
										FinSi
										
									FinPara
									
								FinPara
								
							FinSi
							
							si j = 0 y i = orden - 1 Entonces
								
								para k = 0 Hasta 1
									
									para l = 0 Hasta 1 Hacer
										
										ftemp = i - k
										ctemp = j + l
										
										si campo(ftemp, ctemp) = "M"
											
											contador = contador + 1
										FinSi
										
									FinPara
									
								FinPara
								
							FinSi
							
							si i = 0 y j = orden - 1 Entonces
								
								para k = 0 Hasta 1
									
									para l = 0 Hasta 1 Hacer
										
										ftemp = i + k
										ctemp = j - l
										
										si campo(ftemp, ctemp) = "M"
											
											contador = contador + 1
										FinSi
										
									FinPara
									
								FinPara
								
							FinSi
							
						FinSi
						
					FinSi
					
				SiNo
					
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





	