Algoritmo TP6_E09
	
	
///Entrada:
//los comandos para operar el menú, numeradores y denominadores de fracciones
///Salida: 
//Los resultados de operar con las mismas y el menú

	definir Num, Den, Num1, Den1, Num2, Den2, Eleccion, MaxComDiv Como Entero
	definir Salida Como Logico
	definir Lineas Como Caracter
	
	Salida = falso
	Elección = 0
	lineas = "----------"
	Num = 0
	Num1 = 0
	Num2 = 0
	Den = 0
	Den1 = 0
	Den2 = 0
	MaxComDiv = 0
	
	Repetir
		
		MENU(Eleccion, lineas)
		EJECUCION(Eleccion, Salida, Num, Den, Num1, Den1, Num2, Den2, MaxComDiv)
		
	Hasta Que Salida = verdadero 	
	
FinAlgoritmo


SubProceso SUMADEFRAC(Num Por Referencia ,Num1, Num2, Den Por Referencia, Den1, Den2)
	
	Den = Den1 * Den2
	Num = (num1*den2) + (num2*den1)
	
FinSubProceso

SubProceso RESTADEFRAC(Num Por Referencia ,Num1, Num2, Den Por Referencia, Den1, Den2)
	
	Den = Den1 * Den2
	Num = (num1*den2) - (num2*den1)
	
FinSubProceso

SubProceso MULTIDEFRAC(Num Por Referencia ,Num1, Num2, Den Por Referencia, Den1, Den2)
	
	Den = Den1 * Den2
	Num = Num1 * Num2
	
FinSubProceso

SubProceso DIVIDEFRAC(Num Por Referencia ,Num1, Num2, Den Por Referencia, Den1, Den2)
	
	Den = Den1 * Num2
	Num = Num1 * Den2
	
FinSubProceso

Funcion Max <- MCD ( Num, Den )
	
	definir Max, Carry, Lim Como Entero
	
	Carry = 1
	
	si num > Den
		
		lim = Num
		
	SiNo
		
		lim = Den
		
	FinSi
	
	repetir
		
		si (num % carry == 0) & (den % carry == 0)
			
			Max = carry
			
		FinSi
		
		carry = carry + 1
		
	Hasta Que carry = lim
	
Fin Funcion

//El menú :o
SubProceso MENU(Eleccion Por Referencia, lineas)
	
	Escribir lineas
	Escribir "MENU"
	Escribir "1) Escribir una fracción"
	Escribir "2) Sacar el Maximo Común Divisor"
	Escribir "3) Simplificar la fracción"
	Escribir "4) Sumar fracciones"
	Escribir "5) Restar fracciones"
	Escribir "6) Multiplicar fracciones"
	Escribir "7) Dividir fracciones"
	Escribir "0) SALIR"
	Escribir lineas
	leer Eleccion
	
FinSubProceso

SubProceso EJECUCION(Eleccion, salida Por Referencia, Num, Den, Num1, Den1, Num2, Den2, MaxComDiv)
	
	segun Eleccion Hacer
		1:
			escribir "Ingrese el numerador y luego el denominador"
			GETFRACTION(Num, Den)
			
			si den = 1
				
				Escribir "Como su denominador es 1, su numero es: " Num
				
			SiNo
				
				Escribir "Su fracción es: " Num "/" Den
				
			FinSi
		2:
			escribir "Ingrese el numerador y luego el denominador para sacar el MCD"
			
			GETFRACTION(Num, Den)
			MaxComDiv <- MCD(Num, Den)
			
			escribir "el MCD es: " MaxComDiv
			
		3:
			escribir "Ingrese el numerador y luego el denominador para simplificar la fracción"
			
			GETFRACTION(Num, Den)
			MaxComDiv <- MCD(Num, Den)
			
			escribir "La fracción simplificada es: " (num/MaxComDiv) "/" (den/MaxComDiv)
			
		4:
			escribir "Escriba 2 fracciones para sumarlas"
			
			GETFRACTIONZ(Num, Den, num1, num2, den1, den2)
			SUMADEFRAC(Num ,Num1, Num2, Den, Den1, Den2)
			MaxComDiv <- MCD(Num, Den)
			
			escribir "la suma de las fracciones es: " (num/MaxComDiv) "/" (den/MaxComDiv)
			
		5:
			escribir "Escriba 2 fracciones para restarlas"
			
			GETFRACTIONZ(Num, Den, num1, num2, den1, den2)
			RESTADEFRAC(Num ,Num1, Num2, Den, Den1, Den2)
			MaxComDiv <- MCD(Num, Den)
			
			escribir "la resta de las fracciones es: " (num/MaxComDiv) "/" (den/MaxComDiv)
			
		6:
			escribir "Escriba 2 fracciones para multiplicarlas"
			
			GETFRACTIONZ(Num, Den, num1, num2, den1, den2)
			MULTIDEFRAC(Num ,Num1, Num2, Den, Den1, Den2)
			MaxComDiv <- MCD(Num, Den)
			
			escribir "la Multiplicación de las fracciones es: " (num/MaxComDiv) "/" (den/MaxComDiv)
			
		7:
			escribir "Escriba 2 fracciones para dividirlas"
			
			GETFRACTIONZ(Num, Den, num1, num2, den1, den2)
			DIVIDEFRAC(Num ,Num1, Num2, Den, Den1, Den2)
			MaxComDiv <- MCD(Num, Den)
			
			escribir "la division de las fracciones es: " (num/MaxComDiv) "/" (den/MaxComDiv)
			
		0:
			
			salida = Verdadero
			
	FinSegun
	
FinSubProceso

SubProceso GETFRACTION(Num por referencia, Den Por Referencia)
	
	Leer Num, Den
	
FinSubProceso

SubProceso GETFRACTIONZ(Num por referencia, Den Por Referencia, num1 Por Referencia, num2 Por Referencia, den1 Por Referencia, den2 Por Referencia)
	
	Escribir "Ingrese el numerador y luego el denominador de su primera fracción"
	
	GETFRACTION(Num, Den)
	Num1 = Num
	Den1 = Den
	
	Escribir "Ingrese el numerador y luego el denominador de su segunda fracción"
	
	GETFRACTION(Num, Den)
	Num2 = Num
	Den2 = Den
	
FinSubProceso


