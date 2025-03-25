Algoritmo sin_titulo
	
	Definir i,j, parametro, otroParametro, alto, ancho Como Entero
	Definir cambio Como Logico
	
	alto = 9
	ancho = 9
	

	
	cambio = Falso
	parametro = alto/ encontrarDivisor(alto)
	otroparametro = ancho / encontrarDivisor(ancho)
	
	para i = 1 Hasta alto -2
		
		para j = 0 Hasta ancho -1
			
			
			si j % otroparametro = 0 y j % encontrarDivisor(ancho) = 0 Entonces
				
				cambio = !cambio
				
			FinSi
			
			escritura(parametro,otroparametro,i,j,cambio, alto)
			
		FinPara
		Escribir ""
	FinPara
	
	
FinAlgoritmo

SubAlgoritmo escritura(parametro,otroparametro,i,j, cambio, alto)
	Definir letra Como Caracter

	si i % parametro = 0 y i % encontrarDivisor(alto) = 0 Entonces
		
		letra = "A"
		cambio = cambiarEstado(cambio)
		
	FinSi
	si cambio 
		
		letra = "A"
		
	SiNo
		
		letra = "S"
		
	FinSi
	Escribir Sin Saltar " " letra " "
	
	
FinSubAlgoritmo

Funcion divisor = encontrarDivisor(numero)
	Definir divisor como entero
	
	si numero % 3 = 0 
		
		divisor = 3
	SiNo
		
		divisor = 2
		
	FinSi
	
	
FinFuncion

Funcion  estado = cambiarEstado(estadoActual)
	Definir estado Como Logico
	
	si estadoActual Entonces
		
		estado = Falso
		
	SiNo
		
		estado = Verdadero
		
	FinSi
	
	
FinSubAlgoritmo

