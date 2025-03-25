Algoritmo TP6_E04
	
	///Entrada:
	//El usuario ingresa una fechas consecutivamente hasta ingresar d=0
	///Salida:
	//El programa pide las fechas y muestra la fecha anterior
	Definir dd, mm, aaaa, contador Como Entero
	Definir salir Como Logico
	Definir fechaantes, fechactual Como Caracter
	salir = Falso
	fechaantes = ""
	contador = 1
	mm = 0
	aaaa = 0
	
	Repetir
		Escribir "Para finalizar, ingrese (0)"
		Escribir "Ingrese el día:"
		Leer dd
		
		si dd == 0 Entonces
			salir = Verdadero
		SiNo
			Mientras 1>dd o dd>31 y salir == Falso Hacer
				
				Escribir "Ingrese un día válido, entre 1 y 31"
				leer dd
				
			FinMientras
			
			Escribir "Ingrese el mes:"
			leer mm
			
			Mientras 1>mm o mm>31 Hacer
				
				Escribir "Ingrese un mes válido, entre 1 y 12"
				leer mm
				
			FinMientras
			
			Escribir "Ingrese el año:"
			Leer aaaa
			
		FinSi
		
		
		
		Escribir ""
		Escribir  "La fecha ingresada anteriormente fue: " fechaantes
		fechaantes = convertiratxt(dd,mm,aaaa)
		fechactual = fechavieja(fechaantes)
		si contador > 1 Entonces
			
			Escribir "La fecha número " contador " es: " fechactual
			
		SiNo
			Escribir "La primer fecha ingresada es: " fechaantes
		FinSi
		Escribir ""
		contador = contador + 1
		
	Mientras Que salir == Falso
	
	
FinAlgoritmo


Funcion fechaantes = convertiratxt(dd,mm,aaaa)
	
	Definir fechaantes Como Caracter
	
	fechaantes= ConvertirATexto(dd) + "/" + ConvertirATexto(mm) + "/" + ConvertirATexto(aaaa)
	
FinFuncion

Funcion fechaanterior = fechavieja(fechatexto)
	
	Definir fechaanterior Como Caracter
	fechaanterior = fechatexto
	
FinFuncion
