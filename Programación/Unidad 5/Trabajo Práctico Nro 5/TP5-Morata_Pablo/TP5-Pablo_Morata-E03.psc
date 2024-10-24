Algoritmo E03
	
	///Entrada: 
	//El usuario ingresa los operandos y la operación a realizarles, basándose
	//en los números de referencia mostrados en pantalla.
	
	///Salida: 
	//El programa muestra el menú de referencias, corrobora que los operando sean 
	//válidos y luego realiza la operación indicada, o en su defecto, pide nuevamente
	//los operandos.

	Definir ope1, ope2, resultado, ingreso Como Real
	Definir check Como Caracter
	Definir salir, operador Como Logico
	
	operador = Falso
	salir = Falso
	ope2 = 0
	ope1 = 0
	
	Repetir
		
		
		Escribir " -----------------------------"
		Escribir "             MENÚ"
		Escribir "  1. Ingresar Operandos"
		Escribir "  2. Sumar"
		Escribir "  3. Restar"
		Escribir "  4. Multiplicar"
		Escribir "  5. Dividir"
		Escribir "  6. Salir"
		Escribir " -----------------------------"
		Escribir "  Elija opción: "
		
		
		Leer ingreso
		
		
		///Función del bloque 1:
		//Evita que se ingresen valores ajenos a los colocados en el menú
		
		Mientras ingreso <= 0 o ingreso >= 7 Hacer
			
			Escribir "Ha ingresado una opción NO DISPONIBLE en el menú, ingrese una opción disponible para continuar"
			Leer ingreso
			
		FinMientras
		
		///Fin bloque 1
		
		///Función del bloque  2:
		//Ejecutar la opción 1 y 6 del menú
		
		Segun ingreso Hacer // las opciones 1 y 6 las coloco a parte debido a que las otras dependen de lo que introduzcamos en estas
			
			1: 				
				Escribir "Ingrese el primer operando"
				Leer ope1
				
				Escribir "Ingrese el segundo operando"
				Leer ope2
				
				operador = Verdadero
				
			6:
				Escribir "¿Está seguro que desea salir del programa (S/N)?"
				Leer check
				
				si Mayusculas(check) == "S" Entonces
					
					salir = Verdadero
					
				FinSi
			
		FinSegun
		///Fin del bloque 2
		
		
		
		///Función del bloque 3 :
		//Realizar las operaciones requeridas si y solo si los operandos son correctos y el usuario no desea salir 
		
		si salir == falso Entonces
			
			///Función del bloque 4:
			//Corroborar que los operandos sean correctos
			
			si operador = Falso Entonces
				
				Escribir "Antes de realizar cualquier operación, debe ingresar los operandos..."
				
				Escribir "Ingrese el primer operando"
				Leer ope1
				
				Escribir "Ingrese el segundo operando"
				Leer ope2
				
				operador = Verdadero
				
			///Fin del bloque 4
				
			SiNo
				
				///Función del bloque 5: 
				//Realizar la operación requerida por el usuario
				
				Segun ingreso Hacer
					
					2:						
						resultado = ope1 + ope2
						Escribir "El resultado de " ope1 " + " ope2 " es igual a: " resultado
						operador = Falso
						
					3:						
						resultado = ope1 - ope2
						Escribir "El resultado de " ope1 " - " ope2 " es igual a: " resultado
						operador = Falso
						
					4:						
						resultado = ope1 * ope2
						Escribir "El resultado de " ope1 " x " ope2 " es igual a: " resultado
						operador = Falso
						
					5:						
						si ope2 == 0 Entonces
							
							Repetir
								
								Escribir "-ERROR-"
								Escribir "No se puede dividir por 0"
								Escribir "Ingrese el denominador nuevamente"
								Leer ope2
								
							Mientras Que ope2 == 0
							
						finsi
							
							resultado = ope1 / ope2
							Escribir "El resultado de " ope1 " / " ope2 " es igual a: " resultado
							operador = Falso
							
				FinSegun
				///Fin del bloque 5
				
			FinSi
		FinSi
		///Fin del bloque 3
		
	Mientras Que salir == Falso
	
FinAlgoritmo
