Algoritmo Batalla_naval
	
	Definir alto, ancho, barco_doble Como Entero
	Definir tablero, tablero_ataque Como Caracter
	
	alto = 3
	ancho = 4
	
	Dimension tablero(alto,ancho), tablero_ataque(alto,ancho), barco_doble(4)

	ancho = ancho - 1
	alto = alto - 1
	
	Escribir ancho
	Escribir alto
	
	
	
	iniciar_tablero(tablero, alto, ancho)
	iniciar_tablero_ataque(tablero_ataque, alto, ancho)
	mostrar_tablero(tablero)
	colocar_barco_doble(tablero,alto, ancho, barco_doble)
	mostrar_tablero(tablero)
	colocar_barco_simple(tablero, alto, ancho)
	atacar(tablero, tablero_ataque, barco_doble, alto, ancho)
	
	
	
FinAlgoritmo 

SubAlgoritmo colocar_barco_doble(tablero, alto, ancho, barco_doble)
	
	Definir fila, columna Como Entero
	Definir direccion, fila_temp Como Caracter
	Definir puesto Como Logico
	puesto = Falso
	
	Escribir "Escriba la fila del primer sector del barco doble"
	Leer fila_temp
	fila = convertir_a_fila(fila_temp)
	
	barco_doble(0) = fila
	
	
	Escribir "Escriba la columna del primer sector del barco doble"
	
	Leer columna
	
	
	Mientras columna < 1 o columna > ancho Hacer
		
		Escribir "Ingrese un a columna dentro del rango del tablero"
		Leer columna
		
	FinMientras
	
	barco_doble(1) = columna

	columna = columna - 1
	
	tablero(fila, columna) = "B"
	
	
	
	Mientras puesto = Falso Hacer
		
		Escribir ""
		Escribir "En que dirección quiere colocar el segundo sector del barco:"
		
		Escribir "U = arriba"
		Escribir "D = abajo"
		Escribir "L = izquierda" 
		Escribir "R = derecha"
		
		Leer direccion
		
		Segun Mayusculas(direccion) Hacer
			
			"U":
				
				si fila <> 0 Entonces
					
					tablero(fila - 1, columna) = "B"
					
					barco_doble(2) = fila - 1
					barco_doble(2) = columna
					puesto = Verdadero
					
				FinSi
				
				
			"D":
				
				si fila <> alto Entonces
					
					tablero(fila + 1, columna) = "B"
					
					barco_doble(2) = fila + 1
					barco_doble(2) = columna
					
					puesto = Verdadero
					
				FinSi
				
				
			"L":
				si columna <> 0 Entonces
					
					tablero(fila, columna - 1) = "B"
					
					barco_doble(2) = fila
					barco_doble(2) = columna - 1
					
					puesto = Verdadero
					
				FinSi
				
				
			"R":
				si columna <> ancho Entonces
					
					tablero(fila, columna + 1) = "B"
					
					barco_doble(2) = fila
					barco_doble(2) = columna + 1
					
					puesto = Verdadero
					
				FinSi
				
		FinSegun
		
		si puesto = Falso Entonces
			
			Escribir ""
			Escribir "La dirección ingresada escapa del tablero, ingrese otra"
			
		FinSi
	FinMientras

	
FinSubAlgoritmo

SubAlgoritmo colocar_barco_simple(tablero, alto, ancho)
	
	Definir i, fila, columna Como Entero
	Definir fila_temp Como Caracter
	
	para i = 0 Hasta 1 Hacer
		
		
		Escribir ""
		Escribir "Ingrese la fila del barco número: " i + 1
		Leer fila_temp
		fila = convertir_a_fila(fila_temp)
		
		Escribir "Ingrese la columna del barco"
		leer columna
		
		Mientras columna < 1 o columna > ancho Hacer
		
			Escribir "Ingrese un a columna dentro del rango del tablero"
			Leer columna
		
		FinMientras
		
		columna = columna - 1
		
		mientras tablero(fila, columna) = "B"
			
			Escribir ""
			Escribir "La posición seleccionada ya contiene un barco, ingrese nuevamente la posición"
			Escribir ""
			Escribir "Ingrese la fila del barco número: " i + 1
			
			Leer fila_temp
			fila = convertir_a_fila(fila_temp)
			
			Escribir "Ingrese la columna del barco"
			leer columna
			
			Mientras columna < 1 o columna > ancho Hacer
				
				Escribir "Ingrese un a columna dentro del rango del tablero"
				Leer columna
				
			FinMientras
			
			columna = columna - 1
			
		FinMientras
		
		tablero(fila, columna) = "B"
		
		mostrar_tablero(tablero)
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo atacar(tablero, tablero_ataque, barco_doble, alto, ancho)
	
	Definir fila_temp Como Caracter
	Definir columna, i, fila, contador, puntos Como entero
	Definir doble, victoria Como Logico
	
	victoria = Falso
	doble = Falso
	contador = 0
	puntos = 0
	
	mostrar_tablero_ataque(tablero_ataque, alto, ancho)
	
	para i = 0 Hasta  7 Hacer
		Repetir
			
			Escribir "Ingrese la posición a donde planea atacar"
			
			Escribir ""
			
			
			Escribir "Fila"
			Leer fila_temp
			fila = convertir_a_fila(fila_temp)
			
			Escribir "Columna"
			leer columna
			
			Mientras columna < 1 o columna > ancho Hacer
				
				Escribir "Ingrese un a columna dentro del rango del tablero"
				Leer columna
				
			FinMientras
			
			columna = columna - 1
			
			si tablero_ataque(fila, columna) <> "O"
				
				Escribir ""
				Escribir "Ha ingresado una posición ingresada anteriormente, elija nuevamente"
				
			FinSi
			
			
			si tablero(fila, columna) = "B"
				
				tablero_ataque(fila, columna) = "X"
				
				puntos = puntos + calculadora_puntaje(fila, columna, barco_doble)
				
				
				si doble = falso y calculadora_puntaje(fila, columna, barco_doble) = 2 Entonces
					
					Escribir "Averiado" puntos
					
				SiNo
					
					Escribir "Hundido" puntos
					
				FinSi
				
				doble = esdoble(fila, columna, barco_doble)

				
				contador = contador + 1
			SiNo
				tablero_ataque(fila, columna) = "A"
				
			FinSi
			
			si contador = 4 Entonces
				
				victoria = Verdadero
				
			FinSi
			
			mostrar_tablero_ataque(tablero_ataque, alto, ancho)
			
		Mientras Que victoria = falso 
	FinPara

	
FinSubAlgoritmo

Funcion doble = esdoble(fila, columna, barco_doble)
	
	Definir doble Como Logico
	Definir i Como Entero
	
	para i = 0 Hasta 3 Hacer
		
		si fila = barco_doble(0) y columna = barco_doble(1) Entonces
			
			puntos = 2 
			
		SiNo
			
			si fila = barco_doble(2) y columna = barco_doble(3) Entonces
				
				doble =  Verdadero
				
			FinSi
			
			
		FinSi
		
		
		
	FinPara
	
FinFuncion

Funcion puntos = calculadora_puntaje(fila, columna, barco_doble)
	
	Definir i, puntos Como Entero
	
	para i = 0 Hasta 3 Hacer
		
		Escribir columna
		Escribir barco_doble(1)
		
		si fila = barco_doble(0) y columna = barco_doble(1) Entonces
			
			puntos = 2 
			Escribir fila
			Escribir barco_doble(0)
			
		SiNo
			
			si fila = barco_doble(2) y columna = barco_doble(3) Entonces
				
				puntos = 2 
				
				
			SiNo
				
				puntos = 1
				
			FinSi
			
			
		FinSi
		
		
		
	FinPara
	
	
FinFuncion


SubAlgoritmo menufinal(aciertos, victoria)
	
	si victoria = Verdadero 
		
		
		
	FinSi
	
FinSubAlgoritmo

Funcion fila = convertir_a_fila(letra)
	Definir fila Como Entero
	
	Segun Mayusculas(letra) Hacer
		
		"A": fila = 0
		"B": fila = 1
		"C": fila = 2
			
	FinSegun
	
FinFuncion


SubAlgoritmo iniciar_tablero(tablero, alto, ancho)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta alto Hacer
		
		para j = 0 Hasta ancho Hacer
			
			tablero(i,j) = "A"
			
		FinPara
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciar_tablero_ataque(tablero_ataque, alto, ancho)
	
	Definir i, j Como Entero
	
	para i = 0 Hasta alto Hacer
		
		para j = 0 Hasta ancho Hacer
			
			tablero_ataque(i,j) = "O"
			
		FinPara
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrar_tablero(tablero)
	
	Definir i, j, referencia_arriba Como Entero
	Definir referencia_izquierda Como Caracter	
	
	Dimension referencia_arriba(4), referencia_izquierda(3)
	
	referencia_arriba(0) = 1
	referencia_arriba(1) = 2
	referencia_arriba(2) = 3
	referencia_arriba(3) = 4
	
	referencia_izquierda(0) = "A"
	referencia_izquierda(1) = "B"
	referencia_izquierda(2) = "C"
	
	
	Escribir Sin Saltar "   "
	para i = 0 Hasta 3 Hacer
		
		Escribir Sin Saltar  "  " referencia_arriba(i)
		
	FinPara
	Escribir ""
	para i = 0 Hasta 2 Hacer
		Escribir Sin Saltar referencia_izquierda(i) " | "
		
		para j = 0 Hasta 3 Hacer
			
			Escribir Sin Saltar " " tablero(i,j) " "
			
		FinPara
		Escribir Sin Saltar " |"
		Escribir ""
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrar_tablero_ataque(tablero_ataque, alto, ancho)
	
	Definir i, j, referencia_arriba Como Entero
	Definir referencia_izquierda Como Caracter	
	
	Dimension referencia_arriba(4), referencia_izquierda(3)
	
	
	para i = 0 Hasta ancho Hacer
		
		referencia_arriba(i) = i + 1
		
	FinPara
	
	referencia_izquierda(0) = "A"
	referencia_izquierda(1) = "B"
	referencia_izquierda(2) = "C"
	
	
	Escribir Sin Saltar "   "
	para i = 0 Hasta 3 Hacer
		
		Escribir Sin Saltar  "  " referencia_arriba(i)
		
	FinPara
	Escribir ""
	para i = 0 Hasta 2 Hacer
		Escribir Sin Saltar referencia_izquierda(i) " | "
		
		para j = 0 Hasta 3 Hacer
			
			Escribir Sin Saltar " " tablero_ataque(i,j) " "
			
		FinPara
		Escribir Sin Saltar " |"
		Escribir ""
	FinPara
	
FinSubAlgoritmo
