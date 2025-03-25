Algoritmo E02
	
	///Entrada: 
	//Un listado de 10 números consecutivos, obligatoriamente enteros y positivos
	
	///Salida:
	//El programa le dice al usuario la cantidad de números impares o avisa si no se ingresò ninguno; 
	//muestra la suma de los múltiplos de 7 o avisa si no los hay y muestra el promèdio de los múltiplos 
	//de 3 que fueron ingresados
	
	Definir impar, siete, num,  i Como Entero
	Definir promedio, ingreso Como Real
	
	num = 1
	siete = 0
	impar = 0
	promedio = 0
	i = 0
	
	Para i Desde 1 Hasta 10
		
		Escribir "Ingrese el número " i " de 10" 
		Leer ingreso
		
		Mientras ingreso < 0 
			
			Escribir "El nùmero " num " de 10 es menor a 0, ingréselo nuevamente"
			Leer ingreso
			
		FinMientras
		
		Mientras ingreso <> trunc(ingreso)
			
			Escribir "El nùmero " num " de 10 no es entero, ingréselo nuevamente"
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
		
		Escribir "No se han ingresado números impares"
		
	SiNo
		
		Escribir "Se han ingresado " impar " números impares"
		
	FinSi

	si siete == 0 Entonces
		
		Escribir "No ha ingresado múltiplos de siete"
		
	SiNo
		
		Escribir "La suma de los múltiplos de siete fue: " siete
		
	FinSi
	
	si promedio == 0 Entonces
		
		Escribir "No ha ingresado múltiplos de tres"
		
	SiNo
		
		Escribir "El promedio de los múltilos de tres ingresados es: " promedio
		
	FinSi
	
FinAlgoritmo
