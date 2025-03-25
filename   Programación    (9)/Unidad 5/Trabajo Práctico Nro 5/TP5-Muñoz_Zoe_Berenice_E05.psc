//entrada: numero que indicara la altura de la escalera
//salida: escalera de el tamañao indicado, que empieza en 1 y van descendiendo sus escalones de acuerdo a lo indicadoen la entrada

Algoritmo  eje5
	Definir altura, i, j Como Entero
	Escribir "Ingrese la altura de la escalera:"
	Leer altura
	Para i <- 1 Hasta altura Hacer
		Para j <- 1 Hasta i Hacer
			Escribir Sin Saltar j
		Fin Para
		Escribir ""
	Fin Para
Fin Algoritmo
