Algoritmo sin_titulo
	
	Definir barco Como Caracter
	Definir largo, vectorAuxiliar Como Entero
	
	largo = 5
	
	Dimension barco(largo,largo), vectorAuxiliar(largo)
	iniciarMatrz(barco,largo)
	iniciarVector(vectorAuxiliar,largo)
	
	alternadoFilas(barco, largo,vectorAuxiliar)
	mostrarVector(vectorAuxiliar,largo)
	
	
FinAlgoritmo



Funcion tamañoContainer = calcularTamañoContainer(tipoContainer)
	
	Definir tamañoContainer Como Entero
	
	Segun tipo 
		
		"L": tamañoContainer = 1
		"R": tamañoContainer = 2
		"S": tamañoContainer = 3
		
	FinSegun
	
FinFuncion




SubAlgoritmo colocarContainer(barco,fila,largo)
	
	Definir i,j Como Entero
	Definir tipoContainer Como Caracter
	
	Escribir "Ingrese el tipo de container a ingresar"
	
	Leer tipoContainer
	
	si contarEspaciosLibres(barco,fila,largo) >= calcularTamañoContainer(tipoContainer)
		
		para i = columna Hasta calcularTamañoContainer(tipoContainer)
			
			barco(fila,i) = tipoContainer
			
		FinPara
		
	FinSi
	
FinSubAlgoritmo

Funcion espaciosLibres = contarEspaciosLibres(barco,fila,largo)
	
	Definir j,escpaciosLibres Como Entero
	escpaciosLibr= 0
	para j = 0 Hasta largo-1
		
		si barco(fila,j) = "O"
			espaciosLibres = espaciosLibres +1
			
		FinSi
		
	FinPara
	
FinFuncion
SubAlgoritmo alternadoFilas(barco, largo,vectorAuxiliar)
	
	Definir i,j,indice Como Entero
	Definir  signo Como logico
	
	signo = Verdadero
	
	indice = 0
	vectorAuxiliar(indice) = 0
	indice = indice +1
	
	Para i = 1 Hasta (largo-1)/2
		
		para j = 0 Hasta 1
			
			si signo 
				
				vectorAuxiliar(indice) = -1 * i ///Proa
				indice = indice +1
				signo = Falso
				
			SiNo
				
				vectorAuxiliar(indice) = i///Popa
				
				indice = indice +1
				signo = Verdadero
				
			FinSi
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarMatrz(matriz,largo)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta largo-1
		
		para j = 0 Hasta largo -1
			
			matriz(i,j) = "O"
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarVector(vector,largo)
	
	Definir i Como Entero
	
	para i = 0 Hasta largo-1
		
		vector(i) = 0
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarVector(vector,largo)
	
	Definir i Como Entero
	
	para i = 0 Hasta largo-1
		
		Escribir Sin Saltar vector(i) " ,"
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo mostrarMatrz(matriz,largo)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta largo-1
		
		para j = 0 Hasta largo -1
			
			Escribir Sin Saltar matriz(i,j) ""
			
		FinPara
		Escribir ""
	FinPara
	
FinSubAlgoritmo