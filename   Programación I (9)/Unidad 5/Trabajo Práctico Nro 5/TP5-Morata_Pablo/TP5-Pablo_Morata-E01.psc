Algoritmo E01
	
	///Entrada: 
	//El usuario ingresa la cantidad de familias a evaluar y luego la cantidad de hijos que tiene cada familia
	
	///Salida: 
	//El programa entrega el pormedio de la edad de los hijos de cada familia y el promedio de la edad de los
	//hijos de todas las familias.
	
	Definir family, hijos, controlF, controlH, edad, edadparcial, edadtotal Como Entero
	Definir promParcial, promedio Como Real
	
	Escribir "Ingrese el nùmero de familias a evaluar"
	Leer family
	
	edadtotal = 0
	controlf = 0 
	edadtotal = 0
	

	Mientras family <= 0
		
		Escribir "Por favor, ingrese un número de familias válido"
		Leer family
		
	FinMientras
	
	
	repetir 
		
		controlH = 0
		
		edadparcial = 0
		
		promParcial = 0
		promedio = 0
		
		Escribir "Ingrese el nùmero de hijos de la familia nùmero " controlf + 1
		Leer hijos
		
		Mientras hijos <= 0
			
			Escribir "Por favor, ingrese un número de hijos válido"
			Leer hijos
			
		FinMientras
		
		Repetir
			
			Escribir "Ingrese la edad del hijo número " controlH + 1
			Leer edad
			
			Mientras edad <= 0
				
				Escribir "Por favor, ingrese una edad válida"
				Leer edad
				
			FinMientras
			
			edadparcial =  edadparcial + edad
			
			controlH = controlH + 1
			
		Mientras Que controlH < hijos
		
		edadtotal = edadtotal + edadparcial
		promParcial = edadparcial / hijos
		
		Escribir "El promedio de edades de la familia " controlf + 1 " es de " promParcial " años"
		Escribir "-------------------------------------------------------------------"
		
		controlf = controlF + 1
		
	Mientras Que controlf <> family
	
	promedio = edadtotal / family
	
	Escribir "El promedio total de los hijos de todas las " family " familias es de " promedio " años"
	
	
	
FinAlgoritmo
