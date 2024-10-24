Algoritmo E01
	
	Definir ingresomenu, accion, ingreso Como entero
	
	
	
	accion = menu
	
	
	Escribir accion
	
	
	
FinAlgoritmo


Funcion accion = menu
	
	Definir accion Como Entero
	
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
	
	
FinFuncion

SubProceso resultado = calculadora (accion)
	
	
FinSubProceso
	