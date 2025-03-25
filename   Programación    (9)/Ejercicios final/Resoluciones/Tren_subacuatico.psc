Algoritmo Tren_subacuatico
	
	Definir tren, id Como Caracter
	Definir pasajeros, lugares Como Entero
	
	Dimension tren(6,2), lugares(2)
	
	crear_tren(tren)
	mostrar_tren(tren)
	
	crear_lugares(lugares)
	cantidad_lugares(lugares, tren)
	
	
	pasajeros = pedir_pasajeros
	id = generador_id
	asignator(tren, lugares, pasajeros, id)
	mostrar_tren(tren)

	pasajeros = pedir_pasajeros
	id = generador_id
	asignator(tren, lugares, pasajeros, id)
	mostrar_tren(tren)

	Escribir lugares(0) 
	Escribir lugares(1)
	

FinAlgoritmo

Funcion id = generador_id
	
	Definir id Como Caracter
	
	id = ConvertirATexto(Aleatorio(1,9999))
	
FinFuncion

SubAlgoritmo asignator(tren, lugares, pasajeros, id)
	
	Definir i, j, contador, suma_lugares Como Entero
	Definir asignado Como Logico
	contador = 0
	asignado = Falso
	
	
	para i = 0 Hasta 1 Hacer
		
		si lugares(i) >= pasajeros y asignado = Falso Entonces
			
			para j = 0 Hasta 5
				
				si tren(j,i) = "x" y contador <> pasajeros
					
					tren(j,i) = id
					contador = contador + 1
					
				FinSi
				
			FinPara
			asignado = Verdadero
			lugares(i) = lugares(i) - pasajeros 
			
		SiNo
			suma_lugares = lugares(1) + lugares(0) 
			
			si suma_lugares > pasajeros
				
				
				
			FinSi
			
			
		FinSi
		
		
	FinPara
	
FinSubAlgoritmo


SubAlgoritmo cantidad_lugares(lugares, tren)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta 1 Hacer
		
		para j = 0 Hasta 5
			
			si tren(j,i) = "x"
				
				lugares(i) = lugares(i) + 1
				
			FinSi
			
		FinPara
		
		
	FinPara
	
	
FinSubAlgoritmo


Funcion pasajeros = pedir_pasajeros
	
	Definir pasajeros Como Entero
	
	Escribir "Ingrese la cantidad de pasajeros del grupo"
	leer pasajeros
	
FinFuncion


SubAlgoritmo crear_tren(tren)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta 5 Hacer
		
		para j = 0 Hasta 1
			
			tren(i,j) = "x"
			
		FinPara
		
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo crear_lugares(lugares)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta 1 Hacer
		
		lugares(i) = 0
		
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrar_tren(tren)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta 5 Hacer
		
		para j = 0 Hasta 1
			
			Escribir Sin Saltar "   " tren(i,j)
			
		FinPara
		
		Escribir ""
		
		
	FinPara
	
FinSubAlgoritmo