Algoritmo TP6_E01
	
	Definir reset Como Caracter
	Definir menu, ope1, ope2, resultado Como Entero
	Definir operandos, salir Como Logico
	
	operandos = Falso
	salir = Falso
	ope1 = 0
	ope2 = 0
	

	Mientras salir == Falso Hacer
		Repetir
			
			menu = llamarmenu
			
			si menu == 6 Entonces
				salir = checksalir(menu)
			FinSi
			
		Mientras Que menu == 6 y salir == Falso
		
		si salir == Falso Entonces
			
			Segun menu Hacer
				
				1: operandos = pediroperandos(ope1, ope2)
					menu = llamarmenu
			FinSegun
			
			Mientras operandos == Falso Hacer
				
				Escribir "No ha ingresado operandos"
				operandos = pediroperandos(ope1, ope2)
				
			FinMientras
			
			resultado = operacion(menu, ope1, ope2)
			
			Escribir Sin Saltar resultado
			Escribir ""
			Escribir "Presione cualquier tecla para continuar"
			leer reset
			
			operandos = Falso
			
			
			
		FinSi
	FinMientras
	
	
	
	
FinAlgoritmo



Funcion menu = llamarmenu
	
	Definir accion, menu Como Entero
	
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
	
	
	Leer accion
	
	Mientras accion <= 0 o accion >= 7 Hacer
		
		Escribir "Ha ingresado una opción NO DISPONIBLE en el menú, ingrese una opción disponible para continuar"
		Leer accion
		
	FinMientras
	
	menu = accion	
	
FinFuncion

SubAlgoritmo  operandos = pediroperandos(ope1 Por Referencia, ope2 Por Referencia)	
	Definir operador, operandos Como Logico
	operador = falso
	
	Escribir "Ingrese el primer operando"
	Leer ope1
	
	Escribir "Ingrese el segundo operando"
	Leer ope2
	
	operador = Verdadero

	operandos = operador
	
FinSubAlgoritmo


Funcion salir = checksalir (menu)
	Definir salir Como Logico
	
	Definir check Como Caracter

	Escribir "¿Está seguro que desea salir del programa (S/N)?"
	Leer check
	
	si Mayusculas(check) == "S" Entonces
		
		salir = Verdadero
	SiNo
		
	FinSi

	
	
FinFuncion

Funcion resultado = operacion(menu, ope1, ope2)
	Definir resultado Como Real
	
	Segun menu Hacer
		
		2:						
			resultado = ope1 + ope2
			Escribir "La operación " ope1 " + " ope2 " es igual a: "
			
		3:						
			resultado = ope1 - ope2
			Escribir "La operación " ope1 " - " ope2 " es igual a: "
		4:						
			resultado = ope1 * ope2
			Escribir "La operación " ope1 " x " ope2 " es igual a: "
			
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
			
			
	FinSegun

FinFuncion
	