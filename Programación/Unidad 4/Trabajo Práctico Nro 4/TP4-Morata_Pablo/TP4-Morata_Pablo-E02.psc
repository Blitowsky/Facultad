Algoritmo Ejercicio_2
	
	
	///Entrada:
	//capital invertido, interes anual y cuantos años va a durar la inversión
	///Procesamiento:
	//Sumar al capital incial el porcentaje anual y sumarlo al monto con el que
	//operará en la siguiente iteración
	///Salida: 
	//Cuantas van a ser las ganancias de la inversión año a año
	Definir capital, interes, parcial Como Real
	Definir años, control Como Entero
	
	
	Escribir "Ingrese el capital a invertir: "
	Leer capital
	
	Escribir "Ingrese el interes anual: "
	Leer interes
	
	Escribir "Ingrese los años que va a invertir el capital: "
	Leer años
	
	parcial = capital
	control = 0
	
	Repetir
		
		parcial = parcial + (parcial * interes/100)
		control = control + 1
		Escribir "El monto que tendrá el año ", control, " Será de : $", parcial
		
	Mientras Que control < años
	
	
FinAlgoritmo
