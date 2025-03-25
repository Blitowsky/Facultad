Algoritmo sin_titulo
	
	Definir cartasRepartidas, listaJugadoresyPuntos, jugadores, turno,i, opciones Como Entero
	Definir todosTerminaron, jugadorEncontrado Como Logico
	todosTerminaron = Falso
	jugadorEncontrado = Falso
	jugadores = 0
	opciones = 0
	turno = 1
	
	Escribir "Ingrese la cantidad de jugadores"
	jugadores = entreParametros(jugadores,2,5)
	
	Dimension cartasRepartidas(jugadores,21), listaJugadoresyPuntos(jugadores)
	iniciarMatriz(cartasRepartidas,jugadores,21)
	iniciarVector(listaJugadoresyPuntos,jugadores)

	Repetir
		
		para i = 0 Hasta jugadores -1
			
			mostrarMatriz(cartasRepartidas,jugadores,21)
			recorrerJugadores1(listaJugadoresyPuntos,jugadores, i+1,1, jugadorEncontrado,todosTerminaron)
			
			si jugadorEncontrado
				
				jugadorEncontrado = Falso
				Escribir "Turno del jugador " i+1
				Escribir "Su puntaje es: " sumarPuntosJugador(cartasRepartidas, i,jugadores)
				Escribir "Plantarse : 1 // Pedir otra carta : 2"
				opciones = entreParametros(opciones,1,2)
				si opciones = 1 Entonces
					
					recorrerJugadores1(listaJugadoresyPuntos,jugadores, i+1,2, jugadorEncontrado, todosTerminaron)
					
				SiNo
					
					cartasRepartidas(i,turno) = Aleatorio(1,12)
					
					Escribir "Obtuvo la carta con valor: " cartasRepartidas(i,turno)
					Escribir "Su puntaje es: " sumarPuntosJugador(cartasRepartidas, i,jugadores)
					
					si 	21 < sumarPuntosJugador(cartasRepartidas, i,jugadores)
						
						Escribir "Ha superado los 21 puntos, ha perdido"
						recorrerJugadores1(listaJugadoresyPuntos,jugadores, i+1,2, jugadorEncontrado, todosTerminaron)
						
					FinSi
					
				FinSi
				
			SiNo
				
				recorrerJugadores1(listaJugadoresyPuntos,jugadores, i+1,3, jugadorEncontrado, todosTerminaron)
				
			FinSi
			
		FinPara
		turno = turno +1
		
	Mientras Que !todosTerminaron
	mostrarResultados(listaJugadoresyPuntos, cartasRepartidas, jugadores)
	
FinAlgoritmo

SubAlgoritmo mostrarResultados(lista, cartasRepartidas, jugadores)
	
	Definir i, step,candidatos,ganador Como Entero
	Definir desierto como logico
	desierto = Falso
	Dimension candidatos(jugadores)
	iniciarVector(candidatos,jugadores)
	
	para step = 0 Hasta 2
		
		para i = 0 Hasta jugadores -1
			Segun step Hacer
				0:
					si sumarPuntosJugador(cartasRepartidas,i,jugadores) > 21
					
					Escribir "Jugador " i+1 ": perdió por pasarse de 21"
					
					SiNo
						
						candidatos(i) = lista(i)
						
					FinSi
					
				1:
					si candidatos(i) <> 0 y i <> 0
						
						si candidatos(i-1) < candidatos(i)
							
							candidatos(i-1) = 0
							
						SiNo
							
							candidatos(i) = 0
							
						FinSi
						
					FinSi
					
				2:
					si candidatos(i) <> 0 y i <> 0
						
						si candidatos(i) = candidatos(i-1)
							
							desierto = Verdadero
							
						FinSi
						
					SiNo
						ganador = candidatos(i) 
						
						
					FinSi
					
			FinSegun
			
		FinPara
		
		
	FinPara
	Escribir "El jugador: " ganador " es el ganador"
	
	
	
FinSubAlgoritmo

Funcion puntos = sumarPuntosJugador(matriz, jugador,jugadores)
	
	
	Definir j como entero
	Definir puntos Como Entero
	puntos = 0
	
	
	para j = 0 Hasta 20
		
		puntos = puntos + matriz(jugador,j)
		//Escribir puntos "_"
		
	FinPara
	
FinFuncion

SubAlgoritmo recorrerJugadores1(lista,jugadores, jugadorBuscado,accion, jugadorEncontrado Por Referencia, todosTerminaron Por Referencia)
	
	
	Definir i, jugadoresRestantes Como Entero
	jugadoresRestantes = 0
	
	jugadorEncontrado = Falso
	
	
	para i = 0 Hasta jugadores -1
		
		jugadoresRestantes = jugadoresRestantes + lista(i)
		si lista(i) = jugadorBuscado Entonces
			Segun accion
				
				1: jugadorEncontrado = Verdadero
				2: lista(i) = 0
					
				
			FinSegun
			
		FinSi
		si jugadoresRestantes = 0
			
			todosTerminaron = Verdadero
			
		FinSi
		
	FinPara

	
FinSubAlgoritmo

Funcion valor = entreParametros(valor,inicio,final)
	
	leer valor 
	
	mientras valor < inicio o valor > final 
		
		
		Escribir "El valor debe estar entre " inicio " y " final
		leer valor
		
		
	FinMientras
	
FinFuncion

SubAlgoritmo iniciarMatriz(matriz,alto,largo)
	
	Definir i,j Como Entero
	
	
	para i = 0 Hasta alto -1
		
		para j = 0 Hasta largo -1
			
			si j = 0 Entonces
				
				matriz(i,j) = Aleatorio(1,12)
				
			SiNo
				
				matriz(i,j) = 0
				
			FinSi
			
		FinPara
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarVector(vector,largo)
	
	
	Definir i Como Entero
	
	para i = 0 Hasta largo -1
		
		vector(i) = i +1
		
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarVector(vector,largo)
	
	
	Definir i Como Entero
	Escribir ""
	para i = 0 Hasta largo -1
		
		Escribir Sin Saltar vector(i) " , "
		
	FinPara
	Escribir ""
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(matriz,alto,largo)
	
	Definir i,j Como Entero
	
	
	para i = 0 Hasta alto -1 
		
		para j = 0 Hasta largo -1
			
			Escribir Sin Saltar matriz(i,j) " "
			
		FinPara
		Escribir ""
	FinPara
	
FinSubAlgoritmo
	