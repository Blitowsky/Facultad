Algoritmo Morata_Pablo
	
	///Alumno: Morata Pablo Nicol�s
	
	///Entrada:
	//El usuario debe ingresar la altura del tri�ngulo rect�ngulo 
	///Salida:
	//El programa entregar� un tri�ngulo rect�ngulo con la altura ingresada por el usuario
	//este estar� formado por n�meros impares consecutivos, una vez se impriman 3 tri�ngulos, el programa
	//se cerrar� autom�ticamente 
	
	
	
	
	
	Definir altura, contador, j Como Entero
	Definir auxiliar, salir, repeticion Como Caracter
	Definir salircheck Como Logico
	
	contador = 1
	salircheck = Falso


	Repetir
		
		Escribir "Ingrese la altura del tri�ngulo"
		Leer altura
		
		
		Mientras altura < 1
			
			Escribir "Ha ingresado una altura incorrecta, ingrese nuevamente una altura MAYOR a 0"
			leer altura
			
			
		FinMientras
		
		Escribir "El tri�ngulo resultante es:"
		Escribir ""
		
		repeticion = ""
		
		Para j = 1 Hasta altura
			
			auxiliar = ConvertirATexto((2*j - 1))
			repeticion = auxiliar + repeticion
			Escribir repeticion
			
		FinPara
		
		Escribir ""
		
		si contador < 3 Entonces
			
			Escribir "Fue su intento n�mero: " contador
			Escribir "Si desea finalizar el programa, ingrese n," 
			Escribir "en caso contrario, pulse cualquier tecla"
			leer salir
			
		FinSi
		
		
		si Mayusculas(salir) == "N"	Entonces
			
			salircheck = Verdadero
			
		FinSi
		
		contador = contador + 1 
		
		
	Mientras Que contador < 4 y salircheck == Falso
	Escribir "El programa ha finalizado, muchas gracias por utilizar este programa"
	Escribir ""
	Escribir "que la fuerza los acompa�e"
	
	
FinAlgoritmo
