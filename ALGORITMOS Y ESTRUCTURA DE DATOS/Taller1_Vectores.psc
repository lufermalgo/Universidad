SubProceso definirVector(longVector,N) // lleno el vector con numeros al azar
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

// a partir de aquí comienza el desarrollo del problema 1
// Elaborar un algoritmo que entre un arreglo unidimensional de (n) elementos enteros y luego calcule e imprima:
//		a. Número de datos repetidos en el arreglo.
//		b. El número de valores impares.
//		c. El número de valores pares.
//		d. Cantidad de números terminados en 8.
//		e. El número mayor.
//		f. El número menor.

// a. Número de datos repetidos en el arreglo.

// lleno el vector usado con valores que no se puedan comparar, este SubProceso nos ayuda a rellenar el vector de "repetidos"
// con valor -1, yo lo llamo limpiar el vector con un valor que no puedo usar.
SubProceso asignarNegativoRepetidos(repetidos,N)
	Para i<-1 Hasta N Con Paso 1 Hacer 
		repetidos[i] <- -1
	FinPara
FinSubProceso

// El SubProceso tiene toda la logica para recorrer el vector, controlar si un numero ya lo hemos utilizado para el conteo y
// finalmente llevar los numeros que estan más de una vez a un nuevo vector "repetidos".
SubProceso recorridoVector(longVector,repetidos,N)
	Para i<-1 Hasta N Con Paso 1 Hacer // Recorrido global
		valorPosicion<-longVector[i];
		numeroRepetidos<-0;
		control<-0;
		Para k<-1 Hasta N Con Paso 1 Hacer // comparo si el número ya lo use en la cuenta
			Si valorPosicion=repetidos[k] Entonces
				control<-control+1
			FinSi
		FinPara
		Para j<-i Hasta N Con Paso 1 Hacer  // si no fue usado entonces comienzo cuenta
			Si control=0 Entonces
				Si valorPosicion=longVector[j] Entonces // si el valor de la condición es positiva entonces sumo 1 a la variable "numeroRepetido"
					numeroRepetidos<-numeroRepetidos+1
				FinSi
				Si numeroRepetidos=2 Entonces // si "numeroReptidos" es igual a 2, es decir, que esta más de 1 vez entonces lo llevo al vector "repetidos"
					repetidos[i]<-valorPosicion;
				FinSi
			FinSi
		FinPara
	FinPara
FinSubProceso

// Este SubProceso hace la cuenta de cuantos números estan repetidos en el vector original
SubProceso contador<-contarRepetidos(repetidos,N)
	contador<-0;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si repetidos[i]>0 Entonces
			contador<-contador+1
		FinSi
	FinPara
FinSubProceso

// b. El número de valores impares.
SubProceso numImpares<-conteoImpares(longVector,N)
	numImpares<-0;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si longVector[i] MOD 2=1 Entonces
			numImpares <- numImpares+1
		FinSi
	FinPara
FinSubProceso

// c. El número de valores pares.
SubProceso numPares<-conteoPares(longVector,N)
	numPares<-0;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si longVector[i] MOD 2=0 Entonces
			numPares <- numPares+1
		FinSi
	FinPara
FinSubProceso

// d. Cantidad de números terminados en 8.
SubProceso finalizados8<-terminadosEn8(longVector,N)
	Definir count Como Entero;
	finalizados8 <- 0;
	Para i<-1 Hasta N Hacer
		Resultado <- longVector[i] % 10;
		Si Resultado == 8 Entonces
			finalizados8 <- finalizados8+1
		Fin Si
	Fin Para
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

// Escribir los resultados en pantalla
SubProceso escribirResultados(finalizados8,contador,numPares,numImpares,numMayor,numMenor)
	Escribir "";
	Escribir Sin Saltar "a. Número de datos repetidos en el arreglo: ", contador;
	Escribir "";
	Escribir Sin Saltar "b. El número de valores impares: ", numImpares;
	Escribir "";
	Escribir Sin Saltar "c. El número de valores pares: ", numPares;
	Escribir "";
	Escribir Sin Saltar "d. Cantidad de números terminados en 8: ", finalizados8;
	Escribir "";
	Escribir Sin Saltar "e. El número mayor: ", numMayor;
	Escribir "";
	Escribir Sin Saltar "f. El número menor: ", numMenor;
	Escribir "";
FinSubProceso

Algoritmo taller1_vectores
	Definir longVector,repetidos,numeroRepetidos,valorPosicion,contador,control,numPpares Como Entero;
	
	Escribir Sin Saltar "Ingrese la longitud del vector: ";
	Leer N;
	
	Dimension longVector[N];
	Dimension repetidos[N];
	
	definirVector(longVector,N);
	imprimirVector(longVector,N);
	asignarNegativoRepetidos(repetidos,N);
	recorridoVector(longVector,repetidos,N);
	contador<-contarRepetidos(repetidos,N);
	numImpares<-conteoImpares(longVector,N);
	numPares<-conteoPares(longVector,N);
	finalizados8<-terminadosEn8(longVector,N);
	numMayor<-mayorMenor(longVector,N);
	numMenor<-menorMayor(longVector,N);
	escribirResultados(finalizados8,contador,numPares,numImpares,numMayor,numMenor);
FinAlgoritmo
