Algoritmo E02
	
	///Entrada: 
	//Un listado de 10 n�meros consecutivos, obligatoriamente enteros y positivos
	
	///Salida:
	//El programa le dice al usuario la cantidad de n�meros impares o avisa si no se ingres� ninguno; 
	//muestra la suma de los m�ltiplos de 7 o avisa si no los hay y muestra el prom�dio de los m�ltiplos 
	//de 3 que fueron ingresados
	
	Definir impar, siete, num,  i Como Entero
	Definir promedio, ingreso Como Real
	
	num = 1
	siete = 0
	impar = 0
	promedio = 0
	i = 0
	
	Para i Desde 1 Hasta 10
		
		Escribir "Ingrese el n�mero " i " de 10" 
		Leer ingreso
		
		Mientras ingreso < 0 
			
			Escribir "El n�mero " num " de 10 es menor a 0, ingr�selo nuevamente"
			Leer ingreso
			
		FinMientras
		
		Mientras ingreso <> trunc(ingreso)
			
			Escribir "El n�mero " num " de 10 no es entero, ingr�selo nuevamente"
			Leer ingreso
			
		FinMientras
		
		si (ingreso mod 2) <> 0 Entonces
			
			impar = impar + 1
			
		FinSi
		
		si (ingreso mod 7) == 0 Entonces
			
			siete = siete + ingreso
			
		FinSi
		
		si (ingreso mod 3) == 0 Entonces
			
			promedio = promedio + ingreso
			
		FinSi
		
	FinPara
	
	promedio = promedio / 10
	
	si impar == 0 Entonces
		
		Escribir "No se han ingresado n�meros impares"
		
	SiNo
		
		Escribir "Se han ingresado " impar " n�meros impares"
		
	FinSi

	si siete == 0 Entonces
		
		Escribir "No ha ingresado m�ltiplos de siete"
		
	SiNo
		
		Escribir "La suma de los m�ltiplos de siete fue: " siete
		
	FinSi
	
	si promedio == 0 Entonces
		
		Escribir "No ha ingresado m�ltiplos de tres"
		
	SiNo
		
		Escribir "El promedio de los m�ltilos de tres ingresados es: " promedio
		
	FinSi
	
FinAlgoritmo
