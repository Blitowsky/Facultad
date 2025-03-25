Algoritmo Ejercicio_1
///Entrada
	//numero del que quiere obtener la tabla
///Salida
	//Tabla del número ingresado
	
	definir num,result, tab, multiplicador Como Entero
	
	escribir "defina hasta que numero quiere multiplicar"
	Leer multiplicador
	
	
	Mientras multiplicador < 0 Hacer
		escribir "no puede colocar numeros negativos"
		Leer multiplicador
	FinMientras
	
	Escribir "Por favor, ingrese el número del que quiere obtener la tabla"
	Leer num
	tab = 0
	
	Mientras tab <= multiplicador Hacer
		result = num * tab

		tab = tab+1
	FinMientras
	
	Escribir  Num, " x ", tab ": ", result
	
FinAlgoritmo
