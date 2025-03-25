Algoritmo sin_titulo
	
	Definir tablero, coordenadas, alto, largo, opcionMenu, brazo1, brazo2, posXInicialB1 Como Entero 
	Definir posYInicialB1, posXInicialB2, posYInicialB2, cantMuestrasActual Como Entero
	
	Definir muestras Como Caracter
	Definir salir Como Logico
	salir = falso
	alto = 9
	largo = 9
	
	Dimension tablero(alto,largo), muestras((alto * largo)-2), coordenadas(largo,2), brazo1(2), brazo2(2)
	
	iniciarMatriz(tablero, alto, largo)
	iniciarMatriz(coordenadas, largo, 2)
	iniciarVector(muestras,(alto * largo)-2)
	
	mostrarMatriz(tablero, alto, largo)
	
	posXInicialB1 = 0
	posYInicialB1 = 0
	
	posXInicialB2 = largo 
	posYInicialB2 = largo 
	
	
	brazo1(0) = posXInicialB1
	brazo1(1) = posYInicialB1
	
	brazo2(0) = posXInicialB2
	brazo2(1) = posYInicialB2
	
	cantMuestrasActual = 0
	Escribir "El brazo 1 se encuentra en la posición (" brazo1(0) "," brazo1(0) ")"
	Escribir "El brazo 2 se encuentra en la posición (" brazo2(0) "," brazo2(0) ")"
	
	Repetir
		
		Escribir "Ingrese la opción del menú:"
		Escribir "1: Almacenar  2: Retirar  3: Mover  4: Listar  5: Apagar"
		Leer opcionMenu
		opcionMenu = entreParametros(opcionMenu,1,5)
		
		Segun opcionMenu
			
			1:almacenarMuestra(tablero,coordenadas,muestras, brazo1, brazo2, cantMuestrasActual, alto,largo)
			2:retirarMuestra(tablero, coordenadas, muestras, brazo1, brazo2)
			3:moverMuestra(tablero, muestras,coordenadas, brazo1,brazo2)
			4:listarMuestras(tablero, coordenadas, muestras, largo)
				
				
			5: salir = Verdadero
			
		FinSegun
		
		mostrarMatriz(tablero, alto, largo)
		Escribir "El brazo 1 se encuentra en la posición (" brazo1(0) "," brazo1(1) ")"
		Escribir "El brazo 2 se encuentra en la posición (" brazo2(0) "," brazo2(1) ")"

	Mientras Que !salir
	
	
	
FinAlgoritmo

SubAlgoritmo almacenarMuestra(tablero,coordenadas,muestras, brazo1, brazo2, cantMuestrasActual Por Referencia,alto, largo)
	
	Definir nombre Como Caracter
	Definir posX, posY, nroBrazo como entero
	
	Escribir "Ingrese el nombre de la muestra a ingresar"
	leer nombre

	Escribir "Ingrese la posición en X de la muestra"
	leer posX///validar
	
	Escribir "Ingrese la posición en Y de la muestra"
	leer posY///validar
	
	Escribir "Ingrese el número de brazo a utilizar"
	leer nroBrazo ///validar
	
	
	muestras(cantMuestrasActual) = nombre
	cantMuestrasActual = cantMuestrasActual + 1
	
	si nroBrazo = 1 Entonces
		brazo1(0) = posX 
		brazo1(1) = posY
	SiNo					///puedo usar una función para hacer esto
		brazo2(0) = posX
		brazo2(1) = posY
	FinSi
	Escribir cantMuestrasActual
	
	ingresarMuestra(tablero,muestras, nombre, cantMuestrasActual,posX,posY, alto, largo)
	
	coordenadas(cantMuestrasActual,0) = posX-1
	coordenadas(cantMuestrasActual, 1) = posY-1
	
	Escribir "La muestra: " nombre " fue colocada por el brazo número " nroBrazo " en la posición (" posX "," posY ")"
	
FinSubAlgoritmo


SubAlgoritmo ingresarMuestra(tablero,muestras, nombre, cantMuestrasActual,posX,posY, alto, largo)
	
	Definir i, espaciosOcupados Como Entero
	Definir exito Como Logico
	exito = Verdadero
	
	espaciosOcupados = (largo * alto) -3
	
	
	si muestras(cantMuestrasActual) = " "
		
		muestras(cantMuestrasActual) = nombre
		
	FinSi
	
	Escribir posX posY
	tablero(posX-1, posY-1) = cantMuestrasActual

	
FinSubAlgoritmo

SubAlgoritmo retirarMuestra(tablero, coordenadas, muestras, brazo1, brazo2)
	Definir nombre Como Caracter
	Definir posX, posY, nroBrazo como entero
	
	Escribir "Ingrese la coordenada X de la muestra a retirar"
	leer posX ///validar
	
	Escribir "Ingrese la coordenada Y de la muestra a retirar"
	leer posY ///validar
	
	Escribir "Ingrese el brazo a utilizar"
	leer nroBrazo ///validar
	
	si tablero(posX-1, posY-1) <> 0
		
		//parte de la validacion de posicion
		
	FinSi
	
	nombre = muestras(tablero(posX-1, posY-1))
	muestras(tablero(posX-1, posY-1)) = " "
	tablero(posX-1, posY-1) = 0
	
	si nroBrazo = 1 Entonces
		brazo1(0) = posX -1
		brazo1(1) = posY-1
	SiNo					///puedo usar una función para hacer esto
		brazo2(0) = posX-1
		brazo2(1) = posY-1
	FinSi
	
	
	Escribir "Se ha retirado la muestra: " nombre " de la posición (" posX "," posY ")"

FinSubAlgoritmo

SubAlgoritmo moverMuestra(tablero, muestras,coordenadas, brazo1,brazo2)
	
	Definir viejaPosX, viejaPosY, posX, posY, nroMuestra, nroBrazo, distanciaBrazo1, distanciaBrazo2 Como Entero
	Definir nombre como caracter
	nroBrazo = 1
	
	Escribir "Ingrese la coordenada X de la muestra a mover"
	leer viejaPosX ///validar
	
	Escribir "Ingrese la coordenada Y de la muestra a mover"
	leer viejaPosY ///validar
	
	Escribir "Ingrese la coordenada X de la posición de destino de la muestra"
	leer posX ///validar
	
	Escribir "Ingrese la coordenada Y de la posición de destino de la muestra"
	leer posY ///validar
	
	
	nroMuestra = tablero(viejaPosX-1, viejaPosY-1)

	nombre = muestras(tablero(posX-1, posY-1))
	
	coordenadas(nroMuestra,0) = posX
	coordenadas(nroMuestra,1) = posY
	
	tablero(viejaPosX-1, viejaPosY-1) = 0
	
	tablero(posX-1, posY-1) = nroMuestra	
	
	distanciaBrazo1 = abs(viejaPosX-brazo1(0)) + abs(viejaPosY-brazo1(1))
	distanciaBrazo2 = abs(viejaPosX-brazo2(0)) + abs(viejaPosY-brazo2(1))
	
	si (distanciaBrazo1 <= distanciaBrazo2) Entonces
		brazo1(0) = posX 
		brazo1(1) = posY
	SiNo					
		brazo2(0) = posX
		brazo2(1) = posY
	FinSi
	
	
FinSubAlgoritmo

SubAlgoritmo listarMuestras(tablero, coordenadas, muestras, largo)
	
	Definir i Como entero
	
	para i = 0 Hasta largo -1 Hacer
		
		si muestras(i) <> " "
			
			Escribir "La muestra número: " tablero(coordenadas(i,0),coordenadas(i,1)) " llamada " muestras(i)  " se encuentra en las coordenadas (" coordenadas(i,0) "," coordenadas(i,1) ")"
			
			
		FinSi
		
	FinPara
	
FinSubAlgoritmo


SubAlgoritmo mostrarMatriz(matriz, alto, largo)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta alto -1
		
		para j = 0 Hasta  largo -1
			
			si (i = 0 y j = 0) o (i = alto -1 y j = largo -1) Entonces
				
				Escribir  Sin Saltar "X "
				
			SiNo
				
				Escribir Sin Saltar matriz(i,j) " "
				
			FinSi
			
		FinPara
		Escribir  " " 
		
	FinPara
	
FinSubAlgoritmo


SubAlgoritmo iniciarMatriz(matriz, alto, largo)
	
	Definir i,j Como Entero
	
	para i = 0 Hasta alto -1
		
		para j = 0 Hasta  largo -1
			
			matriz(i,j) = 0
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo iniciarVector(vector,largo)
	
	Definir i Como Entero
	
	para i = 0 Hasta  largo -1
		
		vector(i) = " "
		
	FinPara
	
FinSubAlgoritmo



Funcion parametro = entreParametros(parametro,menor,mayor)
	
	Mientras (parametro < menor o parametro > mayor )
		
		Escribir "Por favor, ingrese un número entre " menor " y " mayor
		leer parametro
		
	FinMientras
	
FinFuncion


