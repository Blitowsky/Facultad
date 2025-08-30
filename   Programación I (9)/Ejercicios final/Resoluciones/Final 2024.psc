Algoritmo sin_titulo
	
	Definir almacen, ingreso Como Caracter
	Definir largo, ancho, tama�o, lugares Como Entero
	
	largo = 5
	ancho = 5
	
	
	Dimension almacen(largo,ancho), lugares(5)
	
	
	crear_almacen(almacen, largo, ancho)
	mostrar_almacen(almacen, largo, ancho)
	
	
	Escribir "Ingrese el tama�o del container"
	
	leer ingreso
	
	tama�o = generador_containers(ingreso)
	crear_lugares(lugares, largo)
	
	llenar_almacen(almacen, tama�o, largo, ancho, lugares)
	
	mostrar_almacen(almacen, largo, ancho)

	
FinAlgoritmo

SubAlgoritmo llenar_almacen(almacen, tama�o, largo, ancho, lugares)
	
	Definir i, j Como Entero
	i = 2
	
	para j = 0 Hasta  ancho - 1
		Segun tama�o Hacer
			
			4:almacen(i,j) = "A"
				
			3:almacen(i,j) = "B"
				
			2:almacen(i,j) = "C"
				
				
		FinSegun
		
		si almacen(i,j) = "x"
			
			
			
		Finsi
		
	FinPara
	
	
	si tama�o <= lugares(i) Entonces
		
		lugares(i) = lugares(i) - tama�o
		
		
		
		
		
	FinSi
	

	
FinSubAlgoritmo

Funcion tama�o = generador_containers(ingreso)
	
	Definir tama�o Como Entero
	
	Segun Mayusculas(ingreso) Hacer
		
		"A": tama�o = 4
			
		"B": tama�o = 3
			
		"C": tama�o = 2
		
		
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
