Algoritmo sin_titulo
	
	Definir lon1, lon2, lon3, hipotenusa Como Real
	Definir esTriangulo Como Logico
	Definir tipo Como Caracter
	
	esTriangulo = Falso
	
	Leer lon1, lon2, lon3
	
	
	esTriangulo = triangular(lon2, lon3, lon1)
	
	esTriangulo = triangular(lon1, lon3, lon2)
	
	esTriangulo = triangular(lon2, lon1, lon3)
	


	
	si esTriangulo = Falso
		
		Escribir "Los lados ingresados NO forman un triángulo"
		
	SiNo
		
		tipo = tipoTriangulo(lon1, lon2, lon3)
		
		Escribir "Los lados ingresados forman un triángulo de tipo " tipo
		
	FinSi
	
	
	
FinAlgoritmo

Funcion esTriangulo = triangular(C1, C2, H)
	
	Definir esTriangulo Como Logico
	
	si H >= C2 y H >= C1 Entonces
		
		si C1 + C2 > H Entonces
			
			esTriangulo = Verdadero
			
		FinSi
		
	FinSi
	
FinFuncion

Funcion tipo = tipoTriangulo(C1,C2, C3)
	
	Definir tipo Como Caracter
	
	si C1 = C2 y C2 = C3 Entonces
		
		tipo = "equilátero"
		
	SiNo
		
		si C1 = C2 o C2 = C3 o C1 = C3 Entonces
			
			tipo = "Isósceles"
			
			
		SiNo
			
			tipo = "escaleno"
			
		FinSi
		
	FinSi
	
FinFuncion
	