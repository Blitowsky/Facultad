Algoritmo sin_titulo
	
	Definir tablero, estado Como Caracter
	Definir barcos, disparosRealizados, hundimientos, intentos, puntos, alto, ancho, posX,posY, i Como Entero
	Definir barcoDoble, gano Como Logico
	
	alto = 3
	ancho = 4
	puntos = 0
	hundimientos = 0
	barcoDoble = Falso
	gano = Falso
	
	Dimension tablero(alto,ancho), barcos(4,2), disparosRealizados(8,2)
	
	inicarMatriz(tablero, alto, ancho)
	inicarMatriz2(disparosRealizados, 8, 2)
	
	mostrarMatriz(tablero, alto, ancho)
	
	Escribir "-------------- Defensor -----------------"
	
	para i = 0 Hasta 3
		
		si i < 2 Entonces
			
			Escribir "Ingrese la posición X de la mitad nro " i+1 " del barco doble"
			Leer posX
			Escribir "Ingrese la posición Y de la mitad " i+1 " del barco doble"
			Leer posY
			asignarBarcos(barcos,tablero, posX, posY, i,"D")

		SiNo
			
			
			Escribir "Ingrese la posición X del barco simple nro " i - 1
			Leer posX
			Escribir "Ingrese la posición X del barco simple nro " i - 1
			Leer posY
			asignarBarcos(barcos,tablero, posX, posY, i,"S")
		FinSi
		mostrarMatriz(tablero, alto, ancho)
		
	FinPara
	
	//Borrar Pantalla
	Escribir "-------------- Atacante -----------------"
	
	
	para i = 0 Hasta 7
		
			
			si !gano
				
				Escribir "Turno número " i + 1
				
				Escribir "Ingrese la posición X de la casilla a atacar"
				Leer posX
				
				Escribir "Ingrese la posición Y de la casilla a atacar"
				leer posY
				
				si buscarCoincidencia(disparosRealizados,posX,posY, 2)
					
					Escribir "Ya había atacado esta casilla"
					
					
				FinSi
				
				
				
				si buscarCoincidencia(barcos, posX, posY,1)
					mostrarMatriz(tablero, alto, ancho)
					Segun tablero(posX-1,posY-1)
						
						"D": 
							Escribir !buscarCoincidencia(disparosRealizados, posX, posY,2)
							si !buscarCoincidencia(disparosRealizados, posX, posY,2)
								
								puntos = puntos + 2
								Escribir puntos
								si !barcoDoble
									estado = "Averiado"
									barcoDoble = Verdadero
									
								SiNo
									estado = "Hundido"
									hundimientos = hundimientos +1
									
								FinSi
								
							FinSi
							Escribir estado
							
							
						"S":
							si !buscarCoincidencia(disparosRealizados, posX, posY,2)
								
								puntos = puntos + 1
								hundimientos = hundimientos +1
								
							FinSi
							Escribir "Hundido"
							
						"O": Escribir "Agua"
							
							
					FinSegun
					
				FinSi
				Escribir  hundimientos
				
				agregarDisparoRealizado(disparosRealizados, posX, posY, i)
			
				
			FinSi
			
			
			si i+1 >= 4 Entonces
				
				si hundimientos  = 3 Entonces
					
					gano = Verdadero
					
					
				FinSi
				
			FinSi
			
		
	FinPara
	
	si !gano
		
		Escribir "Se alcanzó la cantidad máxima de intentos"
		
		si puntos = 5
			
			Escribir "Ganó el atacante" 
			Escribir "cuenta con mas del 80% del puntaje"
			
		SiNo
			
			Escribir "Ganó el defensor"
			Escribir "El atacante no logró obtener mas del 80% del puntaje"
			
		FinSi
	SiNo
		
		Escribir "El atacante logró hundir todos los barcos"

		
	FinSi
	


	
FinAlgoritmo



SubAlgoritmo agregarDisparoRealizado(disparosRealizados, posX, posY, turno)
	
	disparosRealizados(turno,0) = posX -1
	disparosRealizados(turno,1) = posY -1
	
	
FinSubAlgoritmo

SubAlgoritmo asignarBarcos(barcos,tablero, posX, posY, nroBarco, tipoBarco)
	
	
	si tipoBarco = "D" y nroBarco = 1
		
		
		Mientras barcos(0,0) - posX -1 <> -1 y !(barcos(0,0) - posX -1 = 0)
			
			Escribir "La posición x de la segunda mitad del barco doble debe estar contigua a la primera"
			leer posX
			Escribir barcos(0,0) " - " posX -1
			
		FinMientras
		
		
		Mientras abs(barcos(0,1) - posY-1) <> 1
			
			Escribir "La segunda mitad del barco doble debe estar contigua a la primera"
			Escribir abs(barcos(0,1) - posY)
			leer posY
			
		FinMientras		
		
	FinSi
	barcos(nroBarco,0) = posX- 1
	barcos(nroBarco,1) = posY- 1
	
	tablero(posX-1,posY-1) = tipoBarco
	
FinSubAlgoritmo

Funcion coincidencia = buscarCoincidencia(matriz,posX,posY, funcionalidad)
	
	Definir i, max Como entero
	Definir coincidencia como logico
	coincidencia = falso
	
	si funcionalidad = 1 Entonces
		
		max = 3
		
	SiNo
		
		max = 7
		
	FinSi
	

	para i = 0 Hasta max
		
		
		si matriz(i,0) = posX - 1 y matriz(i,1) = posY - 1
			
			coincidencia = Verdadero
			
		FinSi
		
	FinPara
	
	
FinFuncion

SubAlgoritmo inicarMatriz(tablero, alto, ancho)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta alto - 1
		
		para j = 0 Hasta ancho -1 
			
			tablero(i,j) = "O"
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo inicarMatriz2(disparosRealizados, alto, ancho)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta alto - 1
		
		para j = 0 Hasta ancho -1 
			
			disparosRealizados(i,j) = -1
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(tablero, alto, ancho)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta alto-1
		
		para j = 0 Hasta ancho-1
			
			Escribir Sin Saltar tablero(i,j) " " 
			
		FinPara
		Escribir  " "
		
	FinPara
	
FinSubAlgoritmo