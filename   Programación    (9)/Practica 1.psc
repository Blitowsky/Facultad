Algoritmo sin_titulo
	
	
	Definir piramide, pisoMaximo, piso Como Entero
	
	pisoMaximo = 4
	piso = 3
	
	Dimension piramide(pisoMaximo + (pisoMaximo-1),pisoMaximo + (pisoMaximo-1))
	
	inicializarMatriz(piramide, pisoMaximo)
	mostrarPiramide(piramide, pisoMaximo)
	checkRegla1(piramide, piso, pisoMaximo)
	
	
FinAlgoritmo


SubAlgoritmo   checkRegla1(piramide, piso, pisoMaximo)
	
	definir t,sumaPiso, sumaArriba, indice1, indice2, sumaParcial,ladoSuperior , ladoInferior Como Entero
	indice1 = pisoMaximo + (pisoMaximo - piso) -1
	indice2 = pisoMaximo - (pisoMaximo - piso) -1
	
	
	para t = 1 Hasta 4
		
		
		ladoSuperior = sumatoriaDeLadoUnico(indice1, indice2, t, piramide,piso + 1, pisoMaximo-1)
		ladoInferior = sumatoriaDeLadoUnico(indice1, indice2, t, piramide, piso , pisoMaximo-1)
		
		Escribir Sin Saltar"El lado de " ladoEnTexto(t) " del piso " piso " " 
		Escribir Sin Saltar deBooleanoATexto(ladoInferior >= 2*ladoSuperior) 
		Escribir Sin Saltar " cumple con la regla 1"
		Escribir ""
		Escribir "lado i "  ladoInferior
		Escribir "lado S " ladoSuperior
		
	FinPara
	
	
	
	
FinSubAlgoritmo


Funcion  sumaLado = sumatoriaDeLadoUnico(indice1, indice2, lado, piramide, piso, pisoMaximo)
	
	Definir sumaAbajo,sumaArriba,sumaDerecha,sumaIzquierda,sumaLado, i, j Como Entero
	sumaArriba = 0
	sumaAbajo = 0
	sumaDerecha = 0
	sumaIzquierda = 0
	
	para i = (pisoMaximo - (pisoMaximo-piso))-1 Hasta (pisoMaximo + (pisoMaximo-piso))-1
			
			para j = (pisoMaximo - (pisoMaximo-piso))-1 Hasta (pisoMaximo + (pisoMaximo-piso))-1
				
				Segun lado
					
					1:
						sumaArriba = sumaArriba + piramide(indice1,j)
						sumaLado = sumaArriba
						
						
					2:
						sumaAbajo = sumaAbajo + piramide(indice2,j)
						sumaLado = sumaAbajo
						
					3:
						sumaDerecha = sumaDerecha + piramide(i,indice2)
						sumaLado = sumaDerecha
						
					4:
						sumaIzquierda = sumaIzquierda + piramide(i,indice1)
						sumaLado = sumaIzquierda
						
						
				FinSegun
				
			FinPara
			
		FinPara
	
	
FinFuncion




Funcion ladoTexto = ladoEnTexto(num)
	
	Definir ladoTexto Como Caracter
	
	Segun num
		
		1: ladoTexto = "arriba"
		2: ladoTexto = "abajo"
		3: ladoTexto = "derecha"
		4: ladoTexto = "izquierda"
	FinSegun
	
FinFuncion

Funcion sioNo = deBooleanoATexto(bool)
	
	Definir sioNo Como Caracter
	
	si bool
		
		sioNo = "si"
		
	SiNo
		
		sioNo = "no"
		
	FinSi
	
FinFuncion

///----------------------------------------------------------------------------------------------------\\\
SubAlgoritmo inicializarMatriz(matriz, pisoMaximo)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta pisoMaximo + (pisoMaximo-2)
		
		para j = 0 Hasta  pisoMaximo + (pisoMaximo-2)
			
			matriz(i,j) = Aleatorio(0,9)
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarPiramide(matriz, pisoMaximo)
	Definir i,j Como Entero

	
	para i = 0 Hasta pisoMaximo + (pisoMaximo-2)
		
		para j = 0 Hasta  pisoMaximo + (pisoMaximo-2)
			
			si matriz(i,j) > 99
				
				Escribir Sin Saltar " "
				
				
			SiNo
				
				si matriz(i,j) > 9
					
					Escribir Sin Saltar "  "
				SiNo
					
					Escribir Sin Saltar "   "
					
				FinSi
				
			FinSi
			Escribir sin saltar matriz(i,j) "  "
			
		FinPara
		
		Escribir ""
		Escribir ""
		
	FinPara
	
FinSubAlgoritmo