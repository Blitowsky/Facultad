Algoritmo Ejercicio_6
	///Entrada: 
	// El usuario debe ingresar dos n�meros enteros a dividir
	///Salida:
	// El programa entregar� el resultado de la divisi�n por restas
	// sucesivas y el resto  de la operaci�n
	
	Definir numerador, denominador, cociente, resto, resta Como Entero
	
	resto = 0
	cociente = 0
	
	Escribir 'Ingrese el numerador de la operaci�n'
	Leer numerador
	resta = numerador
	
	Mientras numerador<1 Hacer
		
		Escribir 'Ingrese un numerador mayor a 1'
		Leer numerador
		
	FinMientras
	
	
	Escribir 'Ingrese el denominador de la operaci�n'
	Leer denominador
	
	Mientras denominador<1 Hacer
		
		Escribir 'Ingrese un denominador mayor a 1'
		Leer denominador
		
	FinMientras
	
	Repetir
		
		resta = resta-denominador
		cociente = cociente + 1 
		
		Si resta < 0 Entonces
			cociente = cociente -1
			resto = denominador - resta * (0-1)
			
		FinSi
	Mientras Que resta >= 0

	
	Escribir "La operaci�n: ", numerador, " / ", denominador 

	Escribir "Da como resultado: ", cociente " y resto: ", resto
	
	
	
FinAlgoritmo
