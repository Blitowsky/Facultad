Algoritmo sin_titulo

	Definir tama�o, array, busqueda Como Entero
	
	tama�o = pedirtama�o
	
	Dimension array(tama�o)
	
	generar_array(array, tama�o)
	
	busqueda = buscar_n�mero(array) 
	
	ubicar_posicion(array, tama�o, busqueda)
	
	
	
	
FinAlgoritmo

Funcion tama�o = pedirtama�o
	
	Definir tama�o Como Entero
	
	Escribir "Ingrese el tama�o de su arreglo"
	leer tama�o
	
	
FinFuncion

SubAlgoritmo generar_array(array, tama�o)
	
	Definir i Como Entero
	
	para i = 0 hasta tama�o - 1 Hacer
		
		Escribir "Ingrese la posici�n n�mero " i + 1 " de su arreglo"
		
		leer array(i)
		
		
	FinPara
	
	
FinSubAlgoritmo

Funcion  busqueda = buscar_n�mero(array)
	
	Definir  busqueda Como Entero
	
	Escribir "Ingrese un n�mero a ubicar en su arreglo"
	leer busqueda
	
FinFuncion

SubAlgoritmo ubicar_posicion(array, tama�o, busqueda)
	
	Definir i Como Entero
	Definir seencuentra Como Logico
	seencuentra = Falso
	
	para i = 0 hasta tama�o - 1 Hacer
		
		si busqueda = array(i) Entonces
			
			si seencuentra = falso Entonces
				Escribir Sin Saltar "su n�mero se encuentra en la posici�n n�mero " i + 1
				seencuentra = Verdadero
				
			SiNo
				
				Escribir Sin Saltar ", " i + 1
			FinSi
			
			
		FinSi

		
		
	FinPara
	Escribir ""

	
	si seencuentra = Falso Entonces
		
		Escribir "El n�mero " busqueda " no se encuentra en su array"
		
	FinSi

FinSubAlgoritmo



	