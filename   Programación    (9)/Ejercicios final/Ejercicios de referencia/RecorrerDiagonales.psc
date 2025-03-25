Algoritmo Recorrer_Todas_Las_Diagonales
		Definir matriz, m, n, i, j, d Como Entero
		Dimension matriz[4,6] // Matriz de ejemplo 4x6
		m <- 4 // Filas
		n <- 6 // Columnas
		
		// Llenar la matriz con valores de ejemplo
		Para i <- 0 Hasta m-1 Hacer
			Para j <- 0 Hasta n-1 Hacer
				matriz[i,j] <- i * n + j
			FinPara
		FinPara
		
		// Mostrar la matriz
		Escribir "Matriz:"
		Para i <- 0 Hasta m-1 Hacer
			Para j <- 0 Hasta n-1 Hacer
				Escribir Sin Saltar matriz[i, j], " "
			FinPara
			Escribir ""
		FinPara
		
		// 1. Recorrer diagonales ? (Paralelas a la diagonal principal)
		Escribir "Diagonales ? (Paralelas a la Principal):"
		
		// Diagonales desde la primera fila
		Para d <- 0 Hasta n-1 Hacer
			i <- 0
			j <- d
			Mientras i < m Y j < n Hacer
				Escribir Sin Saltar matriz[i, j], " "
				i <- i + 1
				j <- j + 1
			FinMientras
			Escribir ""
		FinPara
		
		// Diagonales desde la primera columna (sin repetir la principal)
		Para d <- 1 Hasta m-1 Hacer
			i <- d
			j <- 0
			Mientras i < m Y j < n Hacer
				Escribir Sin Saltar matriz[i, j], " "
				i <- i + 1
				j <- j + 1
			FinMientras
			Escribir ""
		FinPara
		
		// 2. Recorrer diagonales ? (Paralelas a la secundaria)
		Escribir "Diagonales ? (Paralelas a la Secundaria):"
		
		// Diagonales desde la última columna
		Para d <- 0 Hasta n-1 Hacer
			i <- 0
			j <- n-1-d
			Mientras i < m Y j >= 0 Hacer
				Escribir Sin Saltar matriz[i, j], " "
				i <- i + 1
				j <- j - 1
			FinMientras
			Escribir ""
		FinPara
		
		// Diagonales desde la primera fila (sin repetir la secundaria)
		Para d <- 1 Hasta m-1 Hacer
			i <- d
			j <- n-1
			Mientras i < m Y j >= 0 Hacer
				Escribir Sin Saltar matriz[i, j], " "
				i <- i + 1
				j <- j - 1
			FinMientras
			Escribir ""
		FinPara
FinAlgoritmo
