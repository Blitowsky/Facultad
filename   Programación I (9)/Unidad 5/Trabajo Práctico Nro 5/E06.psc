Algoritmo E06
	
	///Entrada:
	//El usuario debe ingresar el resultado de la operaci�n mostrada por pantalla
	//en caso de ser correcto, este mismo ser� el 2do operando de la siguiente operaci�n
	///Salida:
	//El programa muestra la operaci�n a resolver por el usuario y corrobora que la respuesta
	//entregada por este sea correcta para pasar a la siguiente operaci�n
	
	Definir ope1, ope2, operacion, i, j Como Entero
	Definir resultado Como Real
	
	ope1 = azar(10)
	
	Para i Desde 1 Hasta 10 Hacer
		
		operacion = Aleatorio(0,3)
		
		Segun operacion Hacer
			
			0: 
			1:
			2:
			3:
				
		FinSegun
		
		ope2 = azar(10)
		
		Mientras  ope2 == 0 Hacer
			
			ope2 = azar(10)
			
		FinMientras
		
	FinPara
	
	
	
FinAlgoritmo
