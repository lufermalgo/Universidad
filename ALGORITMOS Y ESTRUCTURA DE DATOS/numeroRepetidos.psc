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

// ================================================================================

SubProceso asignarNegativoRepetidos(repetidos,N)
	Para i<-1 Hasta N Con Paso 1 Hacer // lleno el vector usado con valores que no se puedan comparar
		repetidos[i] <- -1
	FinPara
FinSubProceso

subproceso recorridoVector(longVector,repetidos,N)
	Para i<-1 Hasta N Con Paso 1 Hacer // Recorrido global
		valorPosicion<-longVector[i];
		numeroRepetidos<-0;
		control<-0;
		Para k<-1 Hasta N Con Paso 1 Hacer // comparamos si el nuemro ya a sido usado en la cuenta
			Si valorPosicion=repetidos[k] Entonces
				control<-control+1
			FinSi
		FinPara
		Para j<-i Hasta N Con Paso 1 Hacer  // si no ha sido usado empieza a contar cuantas veces existe
			Si control=0 Entonces
				Si valorPosicion=longVector[j] Entonces
					numeroRepetidos<-numeroRepetidos+1
				FinSi
				Si numeroRepetidos=2 Entonces
					repetidos[i]<-valorPosicion;
				FinSi
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso contador<-contarRepetidos(repetidos,N)
	contador<-0;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si repetidos[i]>0 Entonces
			contador<-contador+1
		FinSi
	FinPara
FinSubProceso

SubProceso escribirResultados(contador)
	Escribir "";
	Escribir Sin Saltar "Canitidad de números repetidos: ", contador;
	Escribir "";
FinSubProceso

Algoritmo taller1
	Definir longVector,repetidos,numeroRepetidos,valorPosicion,contador,control Como Entero;
	
	Escribir Sin Saltar "Ingrese la longitud del vector: ";
	Leer N;
	
	Dimension longVector[N];
	Dimension repetidos[N];
	
	definirVector(longVector,N);
	imprimirVector(longVector,N);
	asignarNegativoRepetidos(repetidos,N)
	recorridoVector(longVector,repetidos,N)
	contador<-contarRepetidos(repetidos,N)
	escribirResultados(contador);
FinAlgoritmo
