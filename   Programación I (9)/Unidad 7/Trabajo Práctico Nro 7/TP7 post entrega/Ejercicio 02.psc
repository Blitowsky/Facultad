Algoritmo sin_titulo

	Definir tamaño, array, busqueda Como Entero
	
	tamaño = pedirtamaño
	
	Dimension array(tamaño)
	
	generar_array(array, tamaño)
	
	busqueda = buscar_número(array) 
	
	ubicar_posicion(array, tamaño, busqueda)
	
	
	
	
FinAlgoritmo

Funcion tamaño = pedirtamaño
	
	Definir tamaño Como Entero
	
	Escribir "Ingrese el tamaño de su arreglo"
	leer tamaño
	
	
FinFuncion

SubAlgoritmo generar_array(array, tamaño)
	
	Definir i Como Entero
	
	para i = 0 hasta tamaño - 1 Hacer
		
		Escribir "Ingrese la posición número " i + 1 " de su arreglo"
		
		leer array(i)
		
		
	FinPara
	
	
FinSubAlgoritmo

Funcion  busqueda = buscar_número(array)
	
	Definir  busqueda Como Entero
	
	Escribir "Ingrese un número a ubicar en su arreglo"
	leer busqueda
	
FinFuncion

SubAlgoritmo ubicar_posicion(array, tamaño, busqueda)
	
	Definir i Como Entero
	Definir seencuentra Como Logico
	seencuentra = Falso
	
	para i = 0 hasta tamaño - 1 Hacer
		
		si busqueda = array(i) Entonces
			
			si seencuentra = falso Entonces
				Escribir Sin Saltar "su número se encuentra en la posición número " i + 1
				seencuentra = Verdadero
				
			SiNo
				
				Escribir Sin Saltar ", " i + 1
			FinSi
			
			
		FinSi

		
		
	FinPara
	Escribir ""

	
	si seencuentra = Falso Entonces
		
		Escribir "El número " busqueda " no se encuentra en su array"
		
	FinSi

FinSubAlgoritmo



	