Algoritmo E03
	
	Definir dado, sumas, i, contador Como Entero
	Definir cumple Como Logico
	Dimension dado(5), sumas(2)
	cumple = Falso
	contador = 0
	
	Repetir
		
		generar_dado(dado)
		sumador(dado,sumas)
		cumple = comparador(sumas)
		contador = contador + 1
		
	Mientras Que cumple = Falso
	
	
	para  i = 0 Hasta  4 Hacer
		
		escribir Sin Saltar dado(i)
		
	FinPara
	Escribir ""
	Escribir sumas(0)," , " sumas(1)
	
	Escribir "Se necesitaron: " contador " iteraciones para ganar el juego"
	
	
	
	
FinAlgoritmo

SubAlgoritmo generar_dado(dado)
	
	Definir i Como Entero
	
	para  i = 0 Hasta  4 Hacer
		
		dado(i) = Aleatorio(1,6)
		
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo sumador(dado, sumas)
	
	Definir i Como Entero
	
	para i = 0 Hasta 1 Hacer
		sumas(i) = 0
	FinPara
	
	para i = 0 Hasta 1 Hacer
		sumas(0) = sumas(0) + dado(i)
	FinPara
	para i = 2 Hasta 4 Hacer
		sumas(1) = sumas(1) + dado(i)
	FinPara
	
FinSubAlgoritmo

Funcion cumple = comparador(sumas)
	Definir cumple Como Logico 
	
	si sumas(0) = sumas(1) Entonces
		
		cumple = Verdadero
		
	FinSi
	
	
FinFuncion
