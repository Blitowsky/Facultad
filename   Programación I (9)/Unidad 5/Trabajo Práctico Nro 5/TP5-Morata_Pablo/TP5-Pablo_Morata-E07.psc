Algoritmo E07
	
	///Entrada:
	//El usuario ingresa n, un n�mero que ser� el lado de un tri�ngulo rect�ngulo 
	///Salida:
	//El programa escribe un triangulo rect�ngulo de lado n pero invertido
	
	Definir a , b, i Como Entero
	
	Escribir "Ingrese el tama�o del triangulo invertido que desee"
	leer a
	
	Para i <- a hasta 1  con paso -1 Hacer
		
		para b <- 0 hasta (i - a - 1) Hacer
			
			Escribir ""Sin Saltar
			
		FinPara
		
		Para  b <- 1 Hasta  i Hacer
			
			Escribir "*" Sin Saltar
			
		FinPara
		
		Escribir ""
		
	FinPara
FinAlgoritmo
