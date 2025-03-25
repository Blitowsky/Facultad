Algoritmo sin_titulo
	
	
	Definir secuencia, fragmento Como Caracter
	Definir i como entero
	
	
	Dimension secuencia(10,10)
	
	fragmento = "TCT"
	
	iniciarMatriz(secuencia)
	mostrarMatriz(secuencia)
	Escribir compararFragmento(secuencia,fragmento)
	
	
	
FinAlgoritmo

Funcion proteina = queProteinaEs(numeroAleatorio)
	
	Definir proteina Como Caracter
	
	Segun numeroAleatorio
		
		0: proteina = "A"
		1: proteina = "T"
		2: proteina = "C"
		3: proteina = "G"
			
	FinSegun
	
	
FinFuncion

Funcion igualdadEncontrada = compararFragmento(matriz,fragmento)
	
	Definir i,j,t, contador, cantCoincidencias Como Entero
	Definir igualdadEncontrada Como Logico
	igualdadEncontrada = Verdadero
	contador = 0
	cantCoincidencias = 0
	
	para i = 0 hasta 9- Longitud(fragmento)-1
		para j = 0 Hasta 9 
			
			si matriz(i,j) = Subcadena(fragmento,0,0)
				
				para t = 0 Hasta Longitud(fragmento)-1
					
					si matriz(i+t,j) <> Subcadena(fragmento,t,t)
						
						contador = 0
						
					SiNo
						contador = contador +1
						Escribir i+t "," j
						
						si contador = Longitud(fragmento)-1
							
							
							
						FinSi
						
					FinSi
				FinPara
				
				si contador = Longitud(fragmento) Entonces
					
					Escribir "Coincidió"
					contador = 0
					cantCoincidencias = cantCoincidencias +1
					
				FinSi
				
			FinSi
			
		FinPara
		
	FinPara
	
	Escribir "Cantidad de coincidencias registradas: " cantCoincidencias 

	
FinFuncion

SubAlgoritmo recorrerDiagonales(matriz)
	
	Definir i,j,t, signo ,inicioIndice,finalIndice Como Entero
	
	
	inicioIndice = 0
	finalIndice = 18
	signo = 1
	
	si direccion = 2 Entonces
		
		signo = -1
		inicioIndice = -8
		finalIndice = 8
		
	FinSi
	
	
	para t = inicioIndice Hasta finalIndice
		
		para i =  0 Hasta 9
			para j = 0 hasta 9		
				
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

SubAlgoritmo iniciarMatriz(matriz)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta 9
		
		para j = 0 Hasta 9 Hacer
			
			matriz(i,j) = queProteinaEs(azar(3))
			
		FinPara
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz)
	Definir i,j Como Entero
	
	para i = 0 Hasta 9
		
		
		para j = 0 Hasta 9 Hacer
			
			Escribir Sin Saltar matriz(i,j) " "
			
		FinPara
		Escribir ""
	FinPara
	
	
FinSubAlgoritmo
	