Algoritmo Ejercicio_5
	///Entrada: 
	//Le pide al usuario números consecutivos 
	///Salida:
	//Le informa la relación del último número, (menor, mayor o igual), con el anterior número ingresado previamente 
	
	Definir sumafin Como Entero
	Definir final Como Logico
	Definir ingreso, compara Como Real
	
	Escribir "Escriba el primer número"
	Leer ingreso
	
	sumafin = 0
	compara = ingreso
	final = Falso
	
	
	Repetir
		
		Escribir "Ingrese el siguiente número a comparar"
		Leer ingreso
		
		si ingreso > compara Entonces
			
			Escribir "El número ", ingreso, " es mayor que ", compara
			sumafin = 0
		FinSi
		
		si ingreso < compara Entonces
			
			Escribir "El número ", ingreso, " es menor que ", compara
			sumafin = 0
			
		FinSi
		
		Si ingreso == compara Entonces
			
			
			Escribir "El número ", ingreso, " es igual que ", compara
			sumafin = sumafin + 1
			
		FinSi
		
		
		si sumafin == 2 Entonces
			
			final = Verdadero
			
		FinSi
		
		compara = ingreso
		
	Mientras Que final <> Verdadero

	
FinAlgoritmo
