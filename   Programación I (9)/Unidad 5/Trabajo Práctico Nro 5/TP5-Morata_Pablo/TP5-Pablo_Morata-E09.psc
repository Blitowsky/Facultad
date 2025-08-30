Algoritmo E9
	
	///Entrada: 
	//El usuario ingresa cuatro números comprendidos entre 1 y 20
	///Salida:
	// El programa entrega un histograma de los numeros pedidos
	
	Definir num1, num2, num3, num4, i Como Entero
	
	Escribir "Escriba 4 números comprendidos entre 1 y 20:"
	
    Para i <- 1 Hasta 4
		
		Segun i Hacer
			1:
				Escribir "Ingrese el número ", i, ":"
				leer num1
			2:
				Escribir "Ingrese el número ", i, ":"
				leer num2
			3:
				Escribir "Ingrese el número ", i, ":"
				leer num3
			4:
				Escribir "Ingrese el número ", i, ":"
				leer num4
		FinSegun
		
	FinPara
	
	
	Mientras (num1 < 1 o num1 > 20) o (num2 < 1 o num2 > 20) o (num3 < 1 o num3 > 20) o (num4 < 1 o num4 > 20) Hacer
		
		Escribir "Por favor, ingrese 4 números comprendidos entre 1 y 20 :)"
		Leer num1, num2, num3, num4
		
	FinMientras
	
	Escribir "Ahora le mostraremos su histograma"
	Escribir "Numero " num1 " :" Sin Saltar
	
	Para i<- 1 hasta num1
		
		Escribir "*" Sin Saltar
		
	FinPara
	
	Escribir ""
	
	Escribir "Numero " num2 " :" Sin Saltar
	
	Para i<- 1 Hasta  num2 Hacer
		
		Escribir "*" Sin Saltar
		
	FinPara
	
	
	Escribir ""
	Escribir "Numero " num3 " :" Sin Saltar
	
	Para i <- 1 Hasta num3 Hacer
		
		Escribir "*" Sin Saltar
		
	FinPara
	
	Escribir ""
	Escribir "Numero " num4 " :" Sin Saltar
	
	
	Para i <- 1 Hasta num4 Hacer
		
		Escribir "*" Sin Saltar
		
	FinPara
	
	Escribir ""
	
FinAlgoritmo
