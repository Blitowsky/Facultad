Algoritmo TP6_Morata_Pablo_E01
	
	///Entrada:
	//El usuario debe ingresar un n�mero y luego una opci�n de an�lisis al mismo
	//estas son 3: si el n�mero es primo, si es capic�a o si todos sus d�gitos son pares o no
	
	///Salida:
	//El programa entregar� la ingormaci�n del n�mero seg�n la opci�n elegida por el usuario
	
	
	Definir num, men� como entero
	Definir capicua, final, esprimo, digitosimpares Como Logico
	
	final = Falso
	
	Repetir
		
		Escribir "Ingrese el n�mero a analizar, en caso de querer salir, ingrese 0"
		Leer num
		
		Si num <> 0 Entonces
			
			menu = llamarmenu
			
			Escribir ""
			escribir "N�mero ingresado: ", num
			Segun menu Hacer
				
				1:
					capicua = capi(num)
					
					si capicua == Falso Entonces
						
						Escribir "Su n�mero no es capic�a"
						
					SiNo
						Escribir "Su n�mero es capic�a"
					FinSi
					Escribir ""
				2:
					esprimo = primo(num)
					
					si esprimo == Falso Entonces
						
						Escribir "Su n�mero no es primo"
					SiNo
						Escribir "Su n�mero es primo"
						
					FinSi
					Escribir ""
					
				3:
					digitosimpares = verdigitos(num)
					
					si digitosimpares = Verdadero Entonces
						
						Escribir "Los d�gitos de su n�mero no son impares"
					SiNo
						Escribir "Los d�gitos de su n�mero son impares"
						
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
	Escribir "        MEN� DE AN�LISIS"
	Escribir "  1. Capic�a"
	Escribir "  2. Primo"
	Escribir "  3. D�gitos impares"
	Escribir " -----------------------------"
	Escribir "  Elija opci�n: "
	
	Leer accion

	Mientras accion < 1 o accion > 3 Hacer
		
		Escribir "Ingrese un n�mero dentro del men�"
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
		Escribir "Debe ingresar un n�mero entero mayor a 2 inclusive"
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
		Escribir "Debe ingresar un n�mero entero mayor a 2 inclusive"
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
