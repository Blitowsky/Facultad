Algoritmo Ejercicio_8
	
	///Entrada:
	//El usuario ingresa un n�mero N
	
	///Salida: 
	//El programa entrega si la suma de los d�gitos en posiciones pares y
	//la suma de los d�gitos en posiciones impares son iguales o no.
	
	Definir N, lon, control, lugar, i,sumapar, sumaimpar Como Entero
	Definir posicion Como Real
	Definir caden Como Caracter
	
	Escribir "Ingrese N"
	Leer N
	
	sumaimpar = 0
	sumapar = 0
	control = 0
	caden = convertiratexto(N)
	Lon = Longitud(caden)
	


	para i = Lon Hasta 1
		control =control + ConvertirANumero(   SubCadena(caden,i-1,i-1)   )
		
		si i mod 2 == 0 Entonces
			sumaimpar = sumaimpar + control
		SiNo
			sumapar = sumapar + control
		FinSi
		
		control = 0
		
	FinPara
	
	si sumaimpar == sumapar Entonces
		
		Escribir "La suma de sus d�gitos pares y la suma de sus d�gitos impares es igual"
		
	SiNo
		
		Escribir "La suma de sus d�gitos pares y la suma de sus d�gitos impares no es igual"
		
	FinSi
	

FinAlgoritmo
