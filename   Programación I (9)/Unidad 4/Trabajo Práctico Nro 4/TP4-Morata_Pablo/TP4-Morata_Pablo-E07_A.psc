Algoritmo Ejercicio_7_A
	
	///Entrada:
	//El usuario ingresará "n" para la operación Sumatoria desde n=1 a n=n
	//de n/2
	
	///Salida:
	//El programa devolverá el resultado de la sumatoria
	
	
	Definir n,control Como Entero
	Definir resultado Como Real
	control = 1
	resultado = 0
	
	Escribir "Ingrese n para la operación: Sumatoria desde n=0 a n=n de n/2"
	Leer n
	
	Repetir
		resultado = resultado + control / 2
		control = control + 1
	Mientras Que control <= n
	
	Escribir resultado
	
FinAlgoritmo
