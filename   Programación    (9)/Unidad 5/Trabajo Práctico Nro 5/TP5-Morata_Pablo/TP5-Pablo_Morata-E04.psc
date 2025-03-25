Algoritmo E04
	
	///Entrada:
	//El usuario ingresa la cantidad de vendedores contratados y las ganancias semanales de cada uno
	
	///Salida:
	//El programa entregará el monto total semanal de cada vendedor y el monto total de todos los vendedores, en caracter de comisiones
	
	
	Definir  i, j  Como Entero
	Definir ganancia, porcentaje, dinero, total, ventas, vendedor Como Real
	
	i = 0
	j = 0
	total = 0
	
	Escribir "Cuantos vendedores tiene contratados?"
	Leer vendedor
	
	Mientras vendedor <= 0 Hacer
		
		Escribir "Ingrese un número de vendedores positivo"
		Leer vendedor
		
	FinMientras
	
	Mientras vendedor <> trunc(vendedor) Hacer
		
		Escribir "Ingrese un número de vendedores entero"
		Leer vendedor
		
	FinMientras
	
	para i Desde 1 Hasta vendedor Hacer
		
		ganancia = 0
		
		Escribir "Cuantas ventas logró el vendedor N°" i "?"
		Leer ventas
		
		Mientras ventas <= 0 Hacer
			
			Escribir "Ingrese un número de ventas positivo"
			Leer ventas
			
		FinMientras
		
		Mientras ventas <> trunc(ventas) Hacer
			
			Escribir "Ingrese un número de ventas entero"
			Leer ventas
			
		FinMientras
		
		
		para j desde 1 hasta ventas Hacer
			
			Escribir "cuales fueron las ganancias del vendedor número: " i " en la venta número: " j
			leer dinero
			
			Mientras dinero < 0 Hacer
				
				Escribir "Este programa no considera pérdidas, ingrese ganancias positivas"
				Leer dinero	
				
			FinMientras
			
			ganancia = ganancia + dinero * 0.1
			total = total + ganancia
			
		FinPara
		
		Escribir "Las ganancias que obtuvo el vendedor " i " en caracter de comisiones fue de: $" ganancia
		
	FinPara
	
	Escribir "El monto total a pagar será de: $" total
	
FinAlgoritmo
