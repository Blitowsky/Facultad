Algoritmo sin_titulo
	
	//falta las comprobaciones para que el tren salga 
	
	
	Definir id, pasajeros, largoVagon, cantVagones, tren, libresPorVagon, totalLugaresLibres, contador Como Entero
	Definir carga, lleno, colocados Como logico
	
	
	Definir i Como Entero
	
	largoVagon = 6
	cantVagones = 2
	
	Dimension tren(largoVagon,cantVagones)
	
	startMatriz(tren, cantVagones, largoVagon)
	
	showMatriz(tren, cantVagones, largoVagon)
	
	carga = Verdadero
	lleno = Falso
	colocados = Falso
	
	
	Repetir
		
		Escribir "Ingrese la cantidad de pasajeros del siguiente grupo"
		
		pasajeros = entreParametros(0,1,11)		
		
		
		para i = 0 Hasta cantVagones -1 Hacer
			
			contarLugaresLibres(tren, i, largoVagon, libresPorVagon, totalLugaresLibres, cantVagones)
			
			si libresPorVagon >= pasajeros y !colocados
				
				colocados = Verdadero
				
				colocarPasajeros(tren, pasajeros, buscarPrimerLugarDisponible(tren,i, largoVagon), i, cantVagones, largoVagon)
				
			SiNo
				
				si totalLugaresLibres >= pasajeros
					
					colocarPasajeros(tren, pasajeros, buscarPrimerLugarDisponible(tren,i, largoVagon), -1, cantVagones, largoVagon)
					
				FinSi
				
			FinSi
			
		FinPara
		colocados = Falso
		
		showMatriz(tren, cantVagones, largoVagon)


	Mientras Que carga y !lleno y pasajeros <> 0
	
	
FinAlgoritmo

SubAlgoritmo colocarPasajeros(tren, pasajeros, primerDisponible, vagon, cantVagones, largoVagon)

	
	Definir i,j, id, contador Como Entero
	
	contador = 1
	id = Aleatorio(1,9)
	
	si vagon = -1
		
		
		Repetir
			
			para j = 0 Hasta cantVagones -1
				
				para i = 0 Hasta largoVagon-1
					
					si tren(i,j) = 0
						
						tren(i,j) = id
						contador = contador +1
						
					FinSi
					
					
				FinPara
				
			FinPara
			
		Mientras Que contador < pasajeros
		
	SiNo
		
		
		para i = primerDisponible Hasta primerDisponible + pasajeros -1
			
			tren(i,vagon) = id
			
		FinPara
		
	FinSi
	
	
	
	
FinSubAlgoritmo



SubAlgoritmo contarLugaresLibres(tren, vagon, largoVagon, libresPorVagon Por Referencia, totalLugaresLibres Por Referencia, cantVagones)
	
	Definir i,j, t Como Entero
	libresPorVagon = 0
	totalLugaresLibres = 0
	
	para i = 0 Hasta largoVagon -1
		
		si tren(i,vagon) = 0 Entonces
			
			libresPorVagon = libresPorVagon +1
			
		FinSi
		
		Para  j = 0 Hasta  cantVagones -1
			
			para t = 0 Hasta largoVagon-1
				
				si tren(t,j) = 0 Entonces
					
					totalLugaresLibres = totalLugaresLibres + 1
					
				FinSi
				
			FinPara
			
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo


Funcion primerDisponible = buscarPrimerLugarDisponible(tren,vagon, largoVagon)
	
	Definir i, primerDisponible Como entero
	Definir obtenido Como Logico
	
	obtenido = Falso
	
	para i = 0 Hasta largoVagon-1
		
		si tren(i,vagon) = 0 y !obtenido Entonces
			
			primerDisponible = i
			obtenido = Verdadero
			
		FinSi
		
	FinPara
	
	
FinFuncion

Funcion valor = entreParametros(valor, inicio, final)
	
	Leer valor
	
	Mientras valor < inicio o valor > final 
		
		Escribir "El número ingresado debe estar entre " inicio " y " final
		Leer valor
		
		
	FinMientras
FinFuncion

SubAlgoritmo startMatriz(matriz, cantVagones, largoVagon)
	
	Definir i,j Como Entero
	
	para j = 0 Hasta cantVagones -1
		
		para i = 0 Hasta largoVagon-1
			
			matriz(i,j) = 0
			
		FinPara
		
	FinPara
	
	
FinSubAlgoritmo

SubAlgoritmo showMatriz(matriz, cantVagones, largoVagon)
	
	Definir i,j Como Entero
	
	para j = 0 Hasta cantVagones-1
		
		para i = 0 Hasta largoVagon-1
			
			Escribir "Asiento " i +1 " - Grupo: " matriz(i,j)
			
		FinPara
		Escribir " "
	FinPara
	
	
FinSubAlgoritmo
	