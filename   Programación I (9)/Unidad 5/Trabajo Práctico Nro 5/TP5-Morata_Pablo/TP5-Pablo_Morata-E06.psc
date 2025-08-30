Algoritmo E06
	
	///Entrada:
	//El usuario debe ingresar el resultado de la operaci�n mostrada por pantalla
	//en caso de ser correcto, este mismo ser� el 2do operando de la siguiente operaci�n
	///Salida:
	//El programa muestra la operaci�n a resolver por el usuario y corrobora que la respuesta
	//entregada por este sea correcta para pasar a la siguiente operaci�n
	
	Definir resultado, operaciones, i Como Entero
	
	Definir  a, b , n Como Real
	
	Para  i <- 1 Hasta 7 Hacer
		
		a <- Aleatorio(1,100)
		b <- Aleatorio(1,100)
		
		operaciones <- Aleatorio(1,4)
		
		Escribir "Operaciones " i
		Escribir "Numero 1 : " a
		Escribir "Numero 2 : " b
		
		Segun operaciones Hacer
				1:
					resultado <- a + b
				2:
					resultado <- a - b
				3:
					resultado <- a*b
				4:
					resultado <- trunc (a / b)
			FinSegun
			
			Segun operaciones Hacer
				1 :
					Escribir "Operacion suma, ingrese la respuesta"
					Leer n 
					
					si n = resultado Entonces
						
						Escribir "correcto"
						
					SiNo
						
						Si n <> resultado Entonces
							
							Escribir "Incorrecto"
							
						FinSi
					FinSi
					
				2:
					Escribir "Operacion Resta, Ingrese la Respuesta"
					Leer n
					
					Si n = resultado Entonces
						
						Escribir "Correcto"
						
					SiNo
						
						Si n <> resultado Entonces
							
							Escribir "Incorrecto" 
							
						FinSi
					FinSi
				3:
					Escribir "Operacion multiplicar, Ingrese la respuesta"
					Leer n
					
					Si n = resultado Entonces
						
						Escribir "Correcto"
						
					SiNo 
						Si n <> resultado Entonces
							
						FinSi
						Escribir "Incorrecto"
					FinSi
				4:
					Escribir "Operacion Division, Ingrese el Resultado"
					Leer n 
					Si n = resultado Entonces
						Escribir "Correcto"
					SiNo
						si n <> resultado Entonces
							Escribir "Incorrecto"
						FinSi
					FinSi
			FinSegun
	FinPara
FinAlgoritmo
