Algoritmo Ejercicio_4
	
	///Entrada: 
	//Límite superior e inferior del intervalo
	//Números cualesquiera hasta que se ingrese el 0
	///Salida:
	//La suma de los números ingresados que estén dentro del intervalo 
	//cuantos números están fuera del intervalo
	//Si alguno de los números ingresados coinciden con los extremos del intervalo
	
	
	Definir liminf, limsup, fuera Como Entero
	Definir ingreso, suma Como Real
	Definir igual Como Logico
	
	Escribir "Ingrese el límite INFERIOR del intervalo"
	Leer liminf
	
	Escribir "Ingrese el límite SUPERIOR del intervalo"
	Leer limsup
	
	igual = Verdadero
	fuera = 0
	suma = 0
	
	Mientras liminf > limsup Hacer
		
		Escribir "Ingrese un límite superior con un valor mayor al límite inferior"
		
		Escribir "Ingrese nuevamente el límite INFERIOR del intervalo"
		Leer liminf
		
		Escribir "Ingrese nuevamente el límite SUPERIOR del intervalo"
		Leer limsup
	
	FinMientras
	
	Escribir "Ingrese un número"
	Escribir "Para finalizar, ingrese 0"
	
	Repetir
		
		Leer ingreso
		
		si ingreso < limsup y ingreso > liminf y ingreso <> 0 Entonces
			suma = suma + ingreso
		FinSi
		
		si ingreso > limsup o ingreso < liminf y ingreso <> 0 Entonces
			fuera = fuera + 1
		FinSi
		
		si ingreso == liminf o ingreso == limsup y ingreso <> 0 Entonces
			igual = Verdadero
		FinSi
		
	Mientras Que ingreso <> 0
	
	Escribir "La suma de los números ingresados, que están dentro del intervalo es: " suma
	Escribir "De los números ingresados, " fuera, " están fuera del intervalo"
	si igual == verdadero
		Escribir "Se han ingresado números idénticos a los límites del intervalo"
	FinSi
	
FinAlgoritmo
