Algoritmo E10
	
	///Entrada: 
	//Los usuarios deben ingresar si eligen piedra, papel y tijera
	///Datos de salida
	//El programa debe indicar el ganador
	
	Definir Piedra,papel,Tijera,partida, V1, V2,Victorias_De_V1,Victorias_De_V2,Empate Como Entero
	
	partida <- 1
	Piedra <- 1
	Papel <- 2
	Tijera <- 3
	Empate <- 0
	Victorias_De_V1 <- 0
	Victorias_De_V2 <- 0
	
	Mientras partida = 1 Hacer
		
		Escribir "Jugador 1: (1: Piedra, 2: Papel ,3: Tijera)"
		Leer V1
		
		Escribir "Jugador 2: (1: Piedra, 2: Papel, 3: Tijera )"
		Leer V2
		
		Si V1 <> V2 Entonces
			
			Si (V1 = 1 y v2 = 3 ) o ( V1 = 2 y V2 = 1 ) o (V1 = 3 y v2 = 2) Entonces
				
				Escribir "Ganador juagor 1 :)"
				Victorias_De_V1 <- Victorias_De_V1 + 1
				
			SiNo
				
				si (V2 = 1 y V1 = 3 ) o ( V2 = 2 y V1 = 1 ) o (V2 = 3 y V1 = 2) Entonces
					
					Escribir "Ganador Jugador 2 :)"
					Victorias_De_V2 <- Victorias_De_V2 + 1
					
				FinSi
			FinSi
			
		SiNo
			
			Escribir "***Empate***"
			Empate <- Empate + 1
			
		FinSi
		
		Escribir "Victorias del Jugador 1: " Victorias_De_V1
		Escribir "Victorias del Jugador 2 : " Victorias_De_V2
		Escribir "Empates por Partidas : " Empate
		Escribir "Desean Seguir Jugando 1: si o 0: No ? "
		Leer partida
	Fin Mientras
	
FinAlgoritmo
