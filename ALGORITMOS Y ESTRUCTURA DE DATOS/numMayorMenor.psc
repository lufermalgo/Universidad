SubProceso definirVector(longVector,N)
	//Definir i como entero;
	Para i<-1 Hasta N Con Paso 1 Hacer
		longVector[i] <- Azar(50)+1;
	FinPara
FinSubProceso

SubProceso imprimirVector(longVector,N) // muesro vector forma horizontal sin salto
	Escribir "";
	escribir Sin Saltar "El vector resultante es: ";
	Escribir "";
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir longVector[i]," " Sin Saltar
	FinPara
	Escribir "";
FinSubProceso


// e. El número mayor.
SubProceso numMayor<-mayorMenor(longVector,N)
	numMayor<-longVector[1];
	Para x <- 1 Hasta N Con Paso 1 Hacer
		si longVector[x] > numMayor Entonces
			numMayor <- longVector[x]
		FinSi
	FinPara
FinSubProceso

// f. El número menor.
SubProceso numMenor<-menorMayor(longVector,N)
	numMenor<-longVector[1];
	Para x <- 1 Hasta N Con Paso 1 Hacer
		si longVector[x] < numMenor Entonces
			numMenor <- longVector[x]
		FinSi
	FinPara
FinSubProceso

SubProceso escribirResultados(numMayor,numMenor)
	Escribir "";
	Escribir Sin Saltar "e. El número mayor: ", numMayor;
	Escribir "";
	Escribir Sin Saltar "f. El número menor: ", numMenor;
	Escribir "";
FinSubProceso


Algoritmo numMayorMenor
	
	Definir longVector,repetidos,numeroRepetidos,valorPosicion,contador,control,numPpares,numMayor,numMenor Como Entero;
	
	Escribir Sin Saltar "Ingrese la longitud del vector: ";
	Leer N;
	
	Dimension longVector[N];
	Dimension repetidos[N];
	
	definirVector(longVector,N)
	imprimirVector(longVector,N)
	numMayor<-mayorMenor(longVector,N)
	numMenor<-menorMayor(longVector,N)
	escribirResultados(numMayor,numMenor)
	
FinAlgoritmo
