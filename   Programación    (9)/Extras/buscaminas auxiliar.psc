Algoritmo sin_titulo
	
	Definir i,j,k,l,ftemp,ctemp Como Entero
	Definir campo Como Caracter
	Dimension campo(20,20)
	
	si i = 0 y j = 0 Entonces
		
		para k = 0 Hasta 2
			
			para l = 0 Hasta 2 Hacer
				
				ftemp = i + k
				ctemp = j + l
				
				si campo(ftemp, ctemp) = "M"
					
					contador = contador + 1
					
				FinSi
				
			FinPara
			
		FinPara
		
	SiNo
		
		si i = 9 y j = 9 Entonces
			
			para k = 0 Hasta 1
				
				para l = 0 Hasta 1 Hacer
					
					ftemp = (i - 1) + k
					ctemp = (j - 1) + l
					
					si campo(ftemp, ctemp) = "M"
						
						contador = contador + 1
						
					FinSi
					
				FinPara
				
			FinPara
			
		SiNo
			
			si i = 0 Entonces
				
				
				si j = 9 Entonces
					
					para k = 0 Hasta 2
						
						para l = 0 Hasta 1 Hacer
							
							ftemp = i + k
							ctemp = j + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
					
				SiNo
					
					para k = 0 Hasta 2
						
						para l = 0 Hasta 2 Hacer
							
							ftemp = i + k
							ctemp = j + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
					
				FinSi
				
			SiNo
				
				si i = 9 Entonces
					
					para k = 0 Hasta 2
						
						para l = 0 Hasta 2 Hacer
							
							ftemp = i + k
							ctemp = j + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
					
				FinSi
				
			FinSi
			
			si j = 0 Entonces
				
				
				si i = 9 Entonces
					
					para k = 0 Hasta 2
						
						para l = 0 Hasta 2 Hacer
							
							ftemp = i + k
							ctemp = j + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
				SiNo
					
					para k = 0 Hasta 2
						
						para l = 0 Hasta 2 Hacer
							
							ftemp = i + k
							ctemp = j + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
					
				FinSi
				
				
			SiNo
				
				si j = 9 Entonces
					
					para k = 0 Hasta 2
						
						para l = 0 Hasta 2 Hacer
							
							ftemp = i + k
							ctemp = j + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
					
				FinSi
				
			FinSi
			
			
		FinSi
		
		
		
		
	FinSi
	
	
	
FinAlgoritmo



subAlgoritmo poner_numeros(campo)


Definir  i, j, k, l, ftemp, ctemp, contador Como Entero
contador = 0

para i = 0 Hasta 9 Hacer
	
	para j = 0 Hasta 9 Hacer
		
		si campo(i,j) <> "M" Entonces
			
			
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
				
				si i = 9 y j = 9 Entonces
					
					para k = 0 Hasta 1
						
						para l = 0 Hasta 1 Hacer
							
							ftemp = (i - 1) + k
							ctemp = (j - 1) + l
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
				SiNo
					
					si i = 0 Entonces
						
						
						si j = 9 Entonces
							
							para k = 0 Hasta 1
								
								para l = 0 Hasta 1 Hacer
									
									ftemp = i + k
									ctemp = (j - 1) + l
									
									si campo(ftemp, ctemp) = "M"
										
										contador = contador + 1
										
									FinSi
									
								FinPara
								
							FinPara
							
							
						SiNo
							
							para k = 0 Hasta 2
								
								para l = 0 Hasta 1 Hacer
									
									ftemp = i + k
									ctemp = j + l
									
									si campo(ftemp, ctemp) = "M"
										
										contador = contador + 1
										
									FinSi
									
								FinPara
								
							FinPara
							
							
						FinSi
						
					SiNo
						
						si i = 9 Entonces
							
							para k = 0 Hasta 1
								
								para l = 0 Hasta 2 Hacer
									
									ftemp = (i - 1) + k
									ctemp = j + l
									
									si campo(ftemp, ctemp) = "M"
										
										contador = contador + 1
										
									FinSi
									
								FinPara
								
							FinPara
							
							
						FinSi
						
					FinSi
					
					si j = 0 Entonces
						
						
						si i = 9 Entonces
							
							para k = 0 Hasta 1
								
								para l = 0 Hasta 2 Hacer
									
									ftemp = (i - 1) + k
									ctemp = j + l
									
									si campo(ftemp, ctemp) = "M"
										
										contador = contador + 1
										
									FinSi
									
								FinPara
								
							FinPara
							
							
						SiNo
							
							para k = 0 Hasta 2
								
								para l = 0 Hasta 2 Hacer
									
									ftemp = (i - 1) + k
									ctemp = (j) + l
									
									si campo(ftemp, ctemp) = "M"
										
										contador = contador + 1
										
									FinSi
									
								FinPara
								
							FinPara
							
							
						FinSi
						
						
					SiNo
						
						si j = 9 Entonces
							
							para k = 0 Hasta 2
								
								para l = 0 Hasta 1 Hacer
									
									ftemp = (i - 1) + k
									ctemp = (j - 1) + l
									
									si campo(ftemp, ctemp) = "M"
										
										contador = contador + 1
										
									FinSi
									
								FinPara
								
							FinPara
							
							
						FinSi
						
					FinSi
					
					
				FinSi
				
				
				
				
			FinSi
			
			
			si i = 0 o j = 0 Entonces
				
				
				
				si j = 0 Entonces
					
					para k = 0 Hasta 1
						
						para l = 0 Hasta 1 Hacer
							
							ftemp = (i) 
							ctemp = (j) 
							
							si campo(ftemp, ctemp) = "M"
								
								contador = contador + 1
								
							FinSi
							
						FinPara
						
					FinPara
					
					
					
				FinSi
				
			SiNo
				
				
				
				
			FinSi
			
			
			campo(i,j) = ConvertirATexto(contador)
			
		FinSi
		
	FinPara
	
	
FinPara


FinSubAlgoritmo


	SubAlgoritmo segundautilidad(campo)
		si i = 9 y j <> 0 Entonces
			
			para k = 0 Hasta 1
				
				para l = 0 Hasta 1 Hacer
					
					ftemp = i - 1 + k
					ctemp = j - 1 + l
					
					si campo(ftemp, ctemp) = "M"
						
						contador = contador + 1
						
					FinSi
					
				FinPara
				
			FinPara
	SiNo
		si i = 0 Entonces
			
			para k = 0 Hasta 1
				
				para l = 0 Hasta 2 Hacer
					
					ftemp = i + k
					ctemp = j + l
					
					si campo(ftemp, ctemp) = "M"
						
						contador = contador + 1
						
					FinSi
					
				FinPara
				
			FinPara
			
		FinSi
		
	FinSi

		
FinSubAlgoritmo


