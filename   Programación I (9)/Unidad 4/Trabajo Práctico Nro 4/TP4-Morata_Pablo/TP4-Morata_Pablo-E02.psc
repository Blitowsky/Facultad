Algoritmo Ejercicio_2
	
	
	///Entrada:
	//capital invertido, interes anual y cuantos a�os va a durar la inversi�n
	///Procesamiento:
	//Sumar al capital incial el porcentaje anual y sumarlo al monto con el que
	//operar� en la siguiente iteraci�n
	///Salida: 
	//Cuantas van a ser las ganancias de la inversi�n a�o a a�o
	Definir capital, interes, parcial Como Real
	Definir a�os, control Como Entero
	
	
	Escribir "Ingrese el capital a invertir: "
	Leer capital
	
	Escribir "Ingrese el interes anual: "
	Leer interes
	
	Escribir "Ingrese los a�os que va a invertir el capital: "
	Leer a�os
	
	parcial = capital
	control = 0
	
	Repetir
		
		parcial = parcial + (parcial * interes/100)
		control = control + 1
		Escribir "El monto que tendr� el a�o ", control, " Ser� de : $", parcial
		
	Mientras Que control < a�os
	
	
FinAlgoritmo
