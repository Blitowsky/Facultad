Algoritmo E08
	
	///Entrada:
	//El usuario debe ingresar el tamaño del lado de cuadrado
	///Salida: 
	//El programa entrega un cuadrado formado por asteriscos del tamaño ingresado por el usuario
	
	Definir lado , j, i Como Entero
	
	Escribir "Ingrese el tamaño del cuadrado"
	leer lado 
	
	Para  i <- 1 Hasta lado Hacer
		
		Escribir "*" Sin Saltar
		
	FinPara
	
	Escribir ""
	
	Para i <- 2 Hasta lado - 1 Hacer
		
		Escribir "*   *";
		
	FinPara
	
	Si lado > 1 Entonces
		
		Para i <- 1 Hasta  lado Hacer
			
			Escribir "*" Sin Saltar
			
		FinPara
		
	FinSi
	
	Escribir ""
	
FinAlgoritmo
