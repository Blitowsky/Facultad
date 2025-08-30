Algoritmo Ejercicio_4
	
	///Entrada: 
	//L�mite superior e inferior del intervalo
	//N�meros cualesquiera hasta que se ingrese el 0
	///Salida:
	//La suma de los n�meros ingresados que est�n dentro del intervalo 
	//cuantos n�meros est�n fuera del intervalo
	//Si alguno de los n�meros ingresados coinciden con los extremos del intervalo
	
	
	Definir liminf, limsup, fuera Como Entero
	Definir ingreso, suma Como Real
	Definir igual Como Logico
	
	Escribir "Ingrese el l�mite INFERIOR del intervalo"
	Leer liminf
	
	Escribir "Ingrese el l�mite SUPERIOR del intervalo"
	Leer limsup
	
	igual = Verdadero
	fuera = 0
	suma = 0
	
	Mientras liminf > limsup Hacer
		
		Escribir "Ingrese un l�mite superior con un valor mayor al l�mite inferior"
		
		Escribir "Ingrese nuevamente el l�mite INFERIOR del intervalo"
		Leer liminf
		
		Escribir "Ingrese nuevamente el l�mite SUPERIOR del intervalo"
		Leer limsup
	
	FinMientras
	
	Escribir "Ingrese un n�mero"
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
	
	Escribir "La suma de los n�meros ingresados, que est�n dentro del intervalo es: " suma
	Escribir "De los n�meros ingresados, " fuera, " est�n fuera del intervalo"
	si igual == verdadero
		Escribir "Se han ingresado n�meros id�nticos a los l�mites del intervalo"
	FinSi
	
FinAlgoritmo
