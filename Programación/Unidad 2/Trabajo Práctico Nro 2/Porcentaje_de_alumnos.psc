Algoritmo Porcentaje_de_alumnos
	
	
	Escribir "ingrese la cantidad de alumnos, sin puntos ni comas."
	leer alumnos
	
	Mientras redon(alumnos) <> alumnos o alumnos < 0 Hacer
		Repetir
			Escribir "!!!ERROR!!!" 
			Escribir "ha ingresado un número no entero."
			Escribir "ingrese la cantidad de alumnos nuevamente."
			leer alumnos
		Hasta Que redon(alumnos) == alumnos 
	Fin Mientras
	
	Escribir "ingrese la cantidad de alumnas, sin puntos ni comas."
	Leer alumnas
	
	Mientras redon(alumnas) <> alumnas o alumnas < 0 Hacer
		Repetir
			Escribir "!!!ERROR!!!" 
			Escribir "ha ingresado un número no entero."
			Escribir "ingrese la cantidad de alumnas nuevamente."
			leer alumnas
		Hasta Que redon(alumnas) == alumnas 
	Fin Mientras
	
	total <- alumnos + alumnas
	
	Si total == 0 Entonces
		Escribir "no se ingresaron alumnos ni alumnas."
	SiNo
		porciento_alumnos <- alumnos *100 / total
		porciento_alumnas <- alumnas *100 / total
		
		Escribir "porcentaje alumnos ", redon(porciento_alumnos)
		Escribir "porcentaje alumnas ", redon(porciento_alumnas)
	Fin Si
FinAlgoritmo
