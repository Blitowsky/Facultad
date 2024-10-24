Algoritmo Practica_tp3_01
	
	Definir N1, N2, N3, medio Como Entero
	
	Escribir "Ingrese los 3 números diferentes a analizar"
	Leer N1,N2,N3
	
	Mientras  N1 = N2 o N2 = N3 o N3 = N1
		
		Escribir "Ha ingresado dos o mas números iguales intente nuevamente"
		Leer N1,N2,N3
		
	FinMientras
	
	si (N1 < N2 y N2 < N3) o (N1 > N2 y N2 > N3) Entonces
		
		medio = N2
		
	SiNo
		
		Si (N1 < N3 y N3 < N2) o (N1 > N3 y N3 > N2) 
			
			medio = N3
			
		SiNo
			
			medio = N1
			
		FinSi
		
	FinSi
	
	Escribir "El número intermedio es: " medio
	
	
FinAlgoritmo
