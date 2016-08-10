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

// =======================================================================================

// b. El número de valores impares.
SubProceso numImpares<-conteoImpares(longVector,N)
	numImpares<-0;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si longVector[i] MOD 2=1 Entonces
			numImpares <- numImpares+1
		FinSi
	FinPara
FinSubProceso

SubProceso escribirResultados(numImpares)
	Escribir "";
	Escribir Sin Saltar "b. El número de valores impares: ", numImpares;
	Escribir "";
FinSubProceso

Algoritmo pares
	Definir longVector,numPpares Como Entero;
	
	Escribir Sin Saltar "Ingrese la longitud del vector: ";
	Leer N;
	
	Dimension longVector[N];
	
	definirVector(longVector,N);
	imprimirVector(longVector,N);
	numImpares<-conteoImpares(longVector,N)
	escribirResultados(numImpares);
FinAlgoritmo