Algoritmo E05
	///Entrada:
	// El usuario ingresa la altura de la escalera
	///Salida: 
	// El programa entrega una escalera de números consecutivos, siendo el último la altura ingresada por el usuario,
	// la cantidad total de filas será igual a la altura indicada por el usuario
	Definir i, j Como Entero
	Definir altura, sumador, escalera Como Real
	escalera <- 0
	sumador <- 0
	Escribir 'Ingrese la altura de la escalera'
	Leer altura
	Mientras altura<=0 Hacer
		Escribir 'Ingrese una altura positiva'
		Leer altura
	FinMientras
	Mientras altura<>trunc(altura) Hacer
		Escribir 'Ingrese altura sin decimales'
		Leer altura
	FinMientras
	Para i<-1 Hasta altura Hacer
//		Si i<10 Entonces
		escalera <- escalera+i*10^(altura-1)
		altura <- altura-1
//			sumador <- escalera/10^(altura)
//		SiNo
//			escalera <- escalera+i*10^(altura)
//			altura <- altura-1
//			sumador <- escalera/10^(altura)
//		FinSi
		Escribir escalera
	FinPara
FinAlgoritmo
