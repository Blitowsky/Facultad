Algoritmo E01
	
	Definir array, deficientes, regulares, buenos, excelentes Como Entero
	
	deficientes = 0
	regulares = 0
	buenos = 0
	excelentes = 0
	
	Dimension array(100) 
	
	generador(array)
	
	calificador(deficientes, regulares, buenos, excelentes, array)
	
	Escribir "Los alumnos deficientes son: " deficientes
	Escribir "Los alumnos regulares son: " regulares
	Escribir "Los alumnos buenos son: " buenos
	Escribir "Los alumnos excelentes son: " excelentes
	
	Escribir deficientes + regulares + buenos + excelentes
	
FinAlgoritmo



SubAlgoritmo generador(array)
	
	Definir i Como Entero
	
	para i = 0 Hasta 99 Hacer
		
		array(i) = aleatorio(0,20)
		
	FinPara
	
	
	
FinSubAlgoritmo

SubAlgoritmo calificador(a Por Referencia,b Por Referencia,c Por Referencia,d Por Referencia, array)
	
	Definir i Como Entero
	
	para i = 0 Hasta 99 Hacer
		
		si array(i)<=5 Entonces
			
			a = a + 1
			
		FinSi
		
		si array(i)>5 y array(i) <= 10 Entonces
			
			b = b + 1
			
		FinSi
		
		si array(i)>10 y array(i) <= 15 Entonces
			
			c = c + 1
			
		FinSi
		
		si array(i)>=16 Entonces
			
			d = d + 1
			
		FinSi
		
	FinPara	
	
FinSubAlgoritmo
	