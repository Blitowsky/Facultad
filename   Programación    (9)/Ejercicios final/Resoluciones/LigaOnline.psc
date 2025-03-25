Algoritmo sin_titulo
	
	Definir tabla, cantEquipos Como Entero
	Definir listaEquipos Como Caracter
	
	Escribir "Ingrese la cantidad de equipos de la liga"
	Leer cantEquipos
	cantEquipos = mayorA(cantEquipos,1)	
	
	
	
	Dimension listaEquipos(cantEquipos), tabla(cantEquipos,4)
	iniciarListaEquipos(listaEquipos,cantEquipos)

	
	iniciarMatriz(tabla, cantEquipos)
	mostrarMatriz(tabla, listaEquipos, cantEquipos)
	generarFixture(tabla,listaEquipos,cantEquipos)
	mostrarMatriz(tabla, listaEquipos, cantEquipos)

	
	
	
FinAlgoritmo

SubAlgoritmo generarFixture(tabla, listaEquipos,cantEquipos)
	
	Definir equipoActual,i,j como entero
	
	equipoActual = 0
	
	para i = 0 Hasta cantEquipos -1
		
		para j = 0 Hasta  cantEquipos -1
			
			si j > i Entonces
				
				Escribir "Ingrese el resultado del partido: " listaEquipos(i) " vs " listaEquipos(j)
				cargarDatos(tabla, listaEquipos, i, j)
				
			FinSi
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo cargarDatos(tabla, listaEquipos, indiceEquipoA, indiceEquipoB)
	
	Definir golesA,golesB Como Entero
	
	Escribir "Goles hechos por: " listaEquipos(indiceEquipoA)
	Leer golesA
	golesA = mayorA(golesA,0)
	
	
	Escribir "Goles hechos por: " listaEquipos(indiceEquipoB)
	Leer golesB
	golesB = mayorA(golesB,0)
	
	
	
	tabla(indiceEquipoA,0) = tabla(indiceEquipoA,0) + calcularPuntos(golesA, golesB)
	tabla(indiceEquipoB,0) = tabla(indiceEquipoB,0) + calcularPuntos(golesB, golesA)
	
	conteoGoles(tabla, listaEquipos, indiceEquipoA, golesA, golesB)
	conteoGoles(tabla, listaEquipos, indiceEquipoB, golesB, golesA)
	
	tabla(indiceEquipoA,3) = calcularDiferenciaGoles(indiceEquipoA, golesA, golesB)
	tabla(indiceEquipoB,3) = calcularDiferenciaGoles(indiceEquipoB, golesB, golesA)

	
	
FinSubAlgoritmo

Funcion  parametro = mayorA(parametro, aPartirDe)
	
	Mientras parametro < aPartirDe
		
		Escribir "El número debe ser mayor a: " aPartirDe
		leer parametro
		
	FinMientras
	
FinFuncion

Funcion puntos = calcularPuntos(golesA, golesB)
	
	Definir puntos Como Entero
	
	si golesA < golesB
		
		puntos = 0
		
	SiNo
		
		si golesA == golesB
			
			puntos = 1
			
		SiNo
			
			puntos = 3
			
		FinSi
		
	FinSi
	
	
FinFuncion

SubAlgoritmo conteoGoles(tabla, listaEquipos, indiceEquipo, golesA, golesB)
	
	tabla(indiceEquipo,1) = tabla(indiceEquipo,1) + golesA
	tabla(indiceEquipo,2) = tabla(indiceEquipo,2) + golesB
	
FinSubAlgoritmo

Funcion diferenciaGoles = calcularDiferenciaGoles(indiceEquipo, golesA, golesB)
	
	Definir diferenciaGoles Como Entero
	
	diferenciaGoles = golesA - golesB
	
FinFuncion

///--------------------------------------------------------------------------------------\\\

SubAlgoritmo iniciarListaEquipos(listaEquipos, cantEquipos)
	
	Definir i Como Entero
	Definir equipo Como Caracter
	
	para i = 0 Hasta cantEquipos - 1
		
		Escribir "Ingrese el equipo número: " i+1
		Leer equipo
		
		listaEquipos(i) = Minusculas(equipo)
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarMatriz(tabla, cantEquipos)
	Definir  i,j Como Entero
	
	para i = 0 Hasta cantEquipos -1
		
		para j = 0 Hasta 3
			
			tabla(i,j) = 0
			
		FinPara
		
	FinPara

FinSubAlgoritmo

SubAlgoritmo mostrarMatriz(tabla, listaEquipos, cantEquipos)
	
	Definir  i,j Como Entero
	
	para i = 0 Hasta cantEquipos -1
		Escribir Sin Saltar listaEquipos(i) " :"
		para j = 0 Hasta 3
			
			
			si j = 3 y tabla(i,j) > 0 Entonces
				
				Escribir Sin Saltar "+" tabla(i,j) " "
				
			SiNo
				
				Escribir Sin Saltar tabla(i,j) " "
				
			FinSi
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubAlgoritmo
	