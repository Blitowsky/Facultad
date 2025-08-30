Algoritmo Ejercicio_8_TP7
	
	
	Definir opc_menu, matriz, orden Como Entero
	Definir hay_datos Como Logico
	hay_datos = Falso
	
	Repetir
		
		opc_menu = menu_validacion
		
		si opc_menu = 1 Entonces
			orden = 0
			
			eleccion_orden(orden, hay_datos)
			
			si hay_datos == Falso Entonces
				
				Dimension matriz(orden,orden)
				
			FinSi
			
			hay_datos = Verdadero
			
		FinSi
		
		generar_matriz(orden, matriz)
		
		eleccion_menu1(opc_menu, orden, matriz, hay_datos)
		
		
	Mientras Que opc_menu <> 7
	
	
	
	
	
FinAlgoritmo
//-----------------------------------------------------------------------//
Funcion opc_menu = menu_validacion
	
	Definir opc_menu Como Entero
	
	Escribir "----------------------------------------------"
	Escribir "                 OPCIONES"
	Escribir "----------------------------------------------"
	Escribir "  1_ Ingresar tamaño de la matriz"
	Escribir "  2_ Mostrar matriz por pantalla"
	Escribir "  3_ Mostrar contanido de una ubicación"
	Escribir "  4_ Mostrar valores de la diagonal principal"
	Escribir "  5_ Mostar valores de la diagonal secundaria"
	Escribir "  6_ Mostrar contorno de la matriz"
	Escribir "  7_ Salir"
	Escribir "----------------------------------------------"
	Escribir " ¿Qué opción desea elegir?"
	
	Leer opc_menu
	
	Mientras opc_menu > 7 o opc_menu < 1 Hacer
		
		Escribir "!!!ERROR¡¡¡" 
		Escribir "Ingrese una opcion que si aparezca en el menú "
		
		leer opc_menu
		
	FinMientras
	
FinFuncion
//-----------------------------------------------------------------------//
SubAlgoritmo generar_matriz(orden, matriz)
	Definir i, j Como Entero
	
	para i desde 0 hasta orden - 1 Hacer
		
		para j desde 0 Hasta orden - 1 Hacer
			
			matriz(i, j) = Aleatorio(0 , 9)
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo
//-----------------------------------------------------------------------//
SubAlgoritmo eleccion_orden(orden Por Referencia, hay_datos Por Referencia)
	

	Escribir "Ingrese el tamaño de su matriz"
	leer orden
	
FinSubAlgoritmo

SubAlgoritmo eleccion_menu1(opc_menu, orden Por Referencia, matriz, hay_datos)
	

	
	si hay_datos = Verdadero Entonces
		
		Segun opc_menu Hacer
			
			2: 
				Escribir "La matriz generada es: "
				mostrar_matriz(matriz, orden)
				
				
			3:
				
				
			4:
				
				
			5:
				
				
			6:
				
				
			7:
				
				
				
		FinSegun
		
	SiNo
		
		Escribir "Primero debe ingresar el orden de la matriz"
		leer orden
		
	FinSi
	
	
	
FinSubAlgoritmo
//-----------------------------------------------------------------------//
SubAlgoritmo mostrar_matriz(matriz, orden)
	Definir i, j Como Entero
	
	
	para i desde 0 hasta orden - 1 Hacer
		
		para j desde 0 Hasta orden - 1 Hacer
			
			Escribir Sin Saltar matriz(i, j) " "
			
		FinPara
		Escribir ""
	FinPara
	

	
FinSubAlgoritmo
	