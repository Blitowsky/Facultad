Algoritmo sin_titulo
	
	Definir entrada,frase, letra Como Caracter
	Definir cuantasconsonantes Como Entero
	entrada = pedirentrada
	Dimension frase(longitud(entrada))
	vectorizar(frase, entrada)
	contador_consonantes(frase, entrada, cuantasconsonantes, letra)
	codificador(frase, entrada)
	mostrar_vector(frase, entrada)
	
	
	Escribir ""
	Escribir "La consonante es " letra
	Escribir "La cantidad de veces que se repite es: " cuantasconsonantes
	
FinAlgoritmo

Funcion entrada = pedirentrada
	
	Definir entrada Como Caracter
	
	Escribir "Ingrese una frase terminada en un punto"
	leer entrada
	
FinFuncion


SubAlgoritmo vectorizar(frase, entrada)
	
	Definir i Como Entero
	Definir nueva Como Caracter
	
	para i = 0 Hasta Longitud(entrada) - 1 Hacer
		
		frase(i) = subcadena(entrada, i,i)
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo codificador(frase, entrada)
	
	Definir i Como Entero
	
	para i = 0 Hasta Longitud(entrada) - 1 Hacer
		
		segun Mayusculas(frase(i)) Hacer
			
			"A":frase(i) = "@"
			"E":frase(i) = "#"
			"I":frase(i) = "$"
			"O":frase(i) = "%"
			"U":frase(i) = "*"
			" ":frase(i) = "-"
		FinSegun
		
	FinPara 
	
FinSubAlgoritmo

SubAlgoritmo mostrar_vector(frase, entrada)
	Definir i Como Entero
	
	para i = 0 Hasta Longitud(entrada) - 1 Hacer
		
		Escribir Sin Saltar frase(i)
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo contador_consonantes(frase, entrada, cuantasconsonantes Por Referencia, letra Por Referencia)
	
	Definir consonante, vocales Como Caracter
	Definir i, contador_1, contador_2 Como Entero
	Dimension vocales(5)
	
	consonante = frase(0)
	contador_1 = 1
	contador_2 = 0
	
	para i = 1 Hasta Longitud(entrada) - 1 Hacer
		
		
		si consonante == frase(i) Entonces
			
			contador_2 = 0
			contador_2 = contador_2  + 1
			
		FinSi
		
		
		si contador_1 < contador_2 Entonces
			
			consonante = frase(i)
			contador_1 = contador_2
			
			
		FinSi
	
		
		
		
		
	FinPara
	
	cuantasconsonantes = contador_2
	letra = consonante
	
	
FinSubAlgoritmo
	