Algoritmo E05
	
	///Entrada:
	//El usuario ingresa la altura de la escalera
	
	///Salida: 
	//El programa entrega una escalera de números consecutivos, siendo el último la altura ingresada por el usuario,
	//la cantidad total de filas será igual a la altura indicada por el usuario
	
	Definir altura, i, j Como Entero
	
	Escribir "Ingrese la altura de la escalera"
	Leer altura
	
	Mientras altura <= 0 Hacer
		
		Escribir "Ingrese una altura positiva"
		Leer altura
		
	FinMientras
	
	Mientras altura <> trunc(altura) Hacer
		
		Escribir "Ingrese altura sin decimales"
		Leer altura		
		
	FinMientras
	
	

	Para i <- 1 Hasta altura Hacer
		Para j <- 1 Hasta i Hacer
			Escribir Sin Saltar j
		Fin Para
		Escribir ""
	Fin Para
	
FinAlgoritmo