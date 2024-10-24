Algoritmo TriángulosAlternados

	///Ejercicio 6: Escriba un programa que imprima 10 triángulos, alternando triángulos que tienen 6 renglones de asteriscos con otros que tienen 7 renglones de x.
	//Datos de entrada: 10 triángulos que se intercalen entre los que tienen asteriscos y los que tienen equis.
	//Datos de salida: 10 triángulos impresos en pantalla.
	
	Definir triangulo1, triangulo2, k Como Entero
	triangulo1 = 6
	triangulo2 = 7
	Para k = 1 Hasta 10 
		Escribir "Triangulo número ", k,"."
		Si k Mod 2<>0 
			triangulos6(triangulo1)
		SiNo
			triangulos7(triangulo2)
		FinSi
	FinPara
	
FinAlgoritmo

// Función para escribir el triángulo con asteriscos
Funcion triangulos6(triangulo1)
	
	Definir i, j Como Enteros
	Para i = 1 Hasta  triangulo1 
		Para j = 1 hasta i 
			Escribir Sin Saltar "*"
		FinPara
		Escribir ""
	FinPara
	
FinFuncion

// Función para escribir el triángulo con equis mayúscula
Funcion triangulos7(triangulo2)
	
	Definir i, j Como Entero
	Para i = 1 Hasta  triangulo2
		para j = 1 hasta i
			Escribir Sin Saltar "X"
		FinPara
		Escribir ""
	FinPara
	
FinFuncion
	