Algoritmo Ejercicio_3
	///Entrada 
	//El usuario ingresa un n�mero entero mayor a 1
	///Salida
	//El programa entrega como respuesta si el n�mero del usuario es primo o no
	
	Definir num Como Entero
	//Definir  como cadena
	Definir control,resto como real
	Definir restototal Como Logico
	
	
	Leer num
	restototal = Falso
	resto = 0
	control = 2
	Mientras num <= 1 Hacer
		Escribir "Por favor, ingrese nuevamente un n�mero entero mayor a 2 inclusive"
		leer num
	FinMientras
	
	Repetir
		
		
		resto = num mod control
		
		si resto == 0 Entonces
			restototal = Verdadero
		FinSi
		
		
		control = control + 1
		
		
	Hasta Que resto == 0 o control == num
	
	si restototal == Verdadero y num <> 2 Entonces
		Escribir "El n�mero ", num, " no es primo o es divisible por un n�mero primo mayor a 997"
		
	SiNo
		Escribir "El n�mero ", num, " es primo"
	
	FinSi

	
	
	
	
	
FinAlgoritmo
