Algoritmo TP6_Morata_Pablo_E01
	
	///Entrada:
	//El usuario debe ingresar un número y luego una opción de análisis al mismo
	//estas son 3: si el número es primo, si es capicúa o si todos sus dígitos son pares o no
	
	///Salida:
	//El programa entregará la ingormación del número según la opción elegida por el usuario
	
	
	Definir num, menú como entero
	Definir capicua, final, esprimo, digitosimpares Como Logico
	
	final = Falso
	
	Repetir
		
		Escribir "Ingrese el número a analizar, en caso de querer salir, ingrese 0"
		Leer num
		
		Si num <> 0 Entonces
			
			menu = llamarmenu
			
			Escribir ""
			escribir "Número ingresado: ", num
			Segun menu Hacer
				
				1:
					capicua = capi(num)
					
					si capicua == Falso Entonces
						
						Escribir "Su número no es capicúa"
						
					SiNo
						Escribir "Su número es capicúa"
					FinSi
					Escribir ""
				2:
					esprimo = primo(num)
					
					si esprimo == Falso Entonces
						
						Escribir "Su número no es primo"
					SiNo
						Escribir "Su número es primo"
						
					FinSi
					Escribir ""
					
				3:
					digitosimpares = verdigitos(num)
					
					si digitosimpares = Verdadero Entonces
						
						Escribir "Los dígitos de su número no son impares"
					SiNo
						Escribir "Los dígitos de su número son impares"
						
					FinSi
					Escribir ""
			FinSegun
			
		FinSi
		
		
		si num == 0 Entonces
			
			final = Verdadero
			
		FinSi
		
	Mientras Que final == Falso
	
	Escribir "Programa finalizado"
	
FinAlgoritmo


Funcion menu = llamarmenu
	
	Definir accion, menu Como Entero
	
	
	Escribir " -----------------------------"
	Escribir "        MENÚ DE ANÁLISIS"
	Escribir "  1. Capicúa"
	Escribir "  2. Primo"
	Escribir "  3. Dígitos impares"
	Escribir " -----------------------------"
	Escribir "  Elija opción: "
	
	Leer accion

	Mientras accion < 1 o accion > 3 Hacer
		
		Escribir "Ingrese un número dentro del menú"
		Leer accion
		
	FinMientras

	menu = accion	
	
FinFuncion


Funcion capicua = capi(num)
	
	Definir digitoSig, inverso, numaux como Entero
	Definir capicua como logico
	inverso = 0
	numaux = num
	capicua = Falso
	
	
	
	
	Repetir
		
		digitoSig = numaux MOD 10
		inverso = (inverso * 10) + digitoSig
		
		numaux = trunc(numaux / 10)
		
	Mientras Que numaux > 0
	
	si inverso == num Entonces
		
		capicua = Verdadero
		
	FinSi
	
	
	
FinFuncion

Funcion esprimo = primo(num)
	
	Definir control,resto como real
	Definir restototal,esprimo Como Logico
	
	restototal = Falso
	resto = 0
	control = 2
	Mientras num <= 1 Hacer
		Escribir "Debe ingresar un número entero mayor a 2 inclusive"
		leer num
	FinMientras
	
	Repetir
		
		
		resto = num mod control
		
		si resto == 0 Entonces
			restototal = Verdadero
		FinSi
		
		
		control = control + 1
		
		
	Hasta Que resto == 0 o control == num
	
	si restototal == Verdadero y num <> 2 Entonces
		
		esprimo = Falso
		
	SiNo
		esprimo = Verdadero
	FinSi

FinFuncion


Funcion digitosimpares = verdigitos(num)
	
	Definir control,resto como real
	Definir restototal,digitosimpares Como Logico
	
	restototal = Falso
	resto = 0
	control = 2
	Mientras num <= 1 Hacer
		Escribir "Debe ingresar un número entero mayor a 2 inclusive"
		leer num
	FinMientras
	
	Repetir
		
		
		resto = num mod 2
		
		si resto == 1 Entonces
			restototal = Verdadero
		FinSi
		
		
		control = control + 1
		
		
	Hasta Que resto == 0 o control == num
	
	si restototal == Verdadero Entonces
		
		digitosimpares = Falso
		
	SiNo
		digitosimpares = Verdadero
	FinSi
	
	
FinFuncion
