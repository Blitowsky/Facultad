Algoritmo sin_titulo
	
	Definir almacen, ingreso Como Caracter
	Definir largo, ancho, tamaño, lugares Como Entero
	
	largo = 5
	ancho = 5
	
	
	Dimension almacen(largo,ancho), lugares(5)
	
	
	crear_almacen(almacen, largo, ancho)
	mostrar_almacen(almacen, largo, ancho)
	
	
	Escribir "Ingrese el tamaño del container"
	
	leer ingreso
	
	tamaño = generador_containers(ingreso)
	crear_lugares(lugares, largo)
	
	llenar_almacen(almacen, tamaño, largo, ancho, lugares)
	
	mostrar_almacen(almacen, largo, ancho)

	
FinAlgoritmo

SubAlgoritmo llenar_almacen(almacen, tamaño, largo, ancho, lugares)
	
	Definir i, j Como Entero
	i = 2
	
	para j = 0 Hasta  ancho - 1
		Segun tamaño Hacer
			
			4:almacen(i,j) = "A"
				
			3:almacen(i,j) = "B"
				
			2:almacen(i,j) = "C"
				
				
		FinSegun
		
		si almacen(i,j) = "x"
			
			
			
		Finsi
		
	FinPara
	
	
	si tamaño <= lugares(i) Entonces
		
		lugares(i) = lugares(i) - tamaño
		
		
		
		
		
	FinSi
	

	
FinSubAlgoritmo

Funcion tamaño = generador_containers(ingreso)
	
	Definir tamaño Como Entero
	
	Segun Mayusculas(ingreso) Hacer
		
		"A": tamaño = 4
			
		"B": tamaño = 3
			
		"C": tamaño = 2
		
		
	FinSegun
	
	
	
	
FinFuncion

SubAlgoritmo crear_lugares(lugares, largo)
	
	Definir i Como Entero
	
	para i = 0 Hasta largo - 1 Hacer
		
		lugares(i) = largo
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo crear_almacen(almacen, largo, ancho)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta largo - 1 Hacer
		
		para j = 0 Hasta  ancho- 1
			
			almacen(i,j) = "x"
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrar_almacen(almacen, largo, ancho)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta largo - 1 Hacer
		
		para j = 0 Hasta  ancho - 1
			
			Escribir Sin Saltar " " almacen(i,j)
			
		FinPara
		Escribir ""
		
	FinPara
	
FinSubAlgoritmo
