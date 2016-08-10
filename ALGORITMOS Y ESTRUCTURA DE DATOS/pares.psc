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

// c. El número de valores pares.
SubProceso numPares<-conteoPares(longVector,N)
	numPares<-0;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si longVector[i] MOD 2=0 Entonces
			numPares <- numPares+1
		FinSi
	FinPara
FinSubProceso

SubProceso escribirResultados(numPares)
	Escribir "";
	Escribir Sin Saltar "c. El número de valores pares: ", numPares;
	Escribir "";
FinSubProceso

Algoritmo pares
	Definir longVector,numPpares Como Entero;
	
	Escribir Sin Saltar "Ingrese la longitud del vector: ";
	Leer N;
	
	Dimension longVector[N];
	
	definirVector(longVector,N);
	imprimirVector(longVector,N);
	numPares<-conteoPares(longVector,N)
	escribirResultados(numPares);
FinAlgoritmo
