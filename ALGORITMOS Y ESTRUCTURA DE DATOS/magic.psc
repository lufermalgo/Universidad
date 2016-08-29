Algoritmo CuadroMagico
	
	Dimension A[3,3];
	Dimension analizador[8];
	band <- Verdadero;
	k <- 0;
	
	Para i <- 1 Hasta 3 Hacer
		para j <- 1 Hasta 3 Hacer
			A[i,j] <- Azar(100)
		FinPara
	FinPara
	
	Para i <- 1 Hasta 8 Hacer
		analizador[i] <- 0
	FinPara
	
	Para i <- 1 Hasta 3 Hacer
		k <- k + 1 
		Para j <- 1 Hasta 3 Hacer
			analizador[k] <- analizador[k] + A[i,j]
			analizador[k + 3] <- analizador[k + 3] + A[j, i]
		FinPara
	FinPara
	
	Para i <- 1 Hasta 3 Hacer
		analizador[7] <- analizador[7] + A[i, i]
		analizador[8] <- analizador[8] + A[i, 4-i]
	FinPara
		
	Mientras band = Verdadero y i < 7 Hacer
		i <- 0
		Para i <- 1 Hasta 7 Hacer
			si analizador[i] <> analizador[i + 1] Entonces
				band <- Falso
			FinSi
			i <- i + 1
		FinPara
		
	FinMientras
	
	si band = Verdadero Entonces
		Escribir "La matriz es magica"
	Sino
		Escribir "La matiz NO es magica"
	FinSi
FinAlgoritmo
