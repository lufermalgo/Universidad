SubProceso definirVector(longVector,N)
	//Definir i como entero;
	Para i<-1 Hasta N Con Paso 1 Hacer
		longVector[i] <- Azar(50)+1;
	FinPara
FinSubProceso

SubProceso imprimirVector(longVector,N)
	// muesro vector forma horizontal sin salto
	Escribir "";
	escribir Sin Saltar "El vector resultante es: ";
	Escribir "";
	Para i<-1 Hasta N Hacer
		Escribir longVector[i]," " Sin Saltar
	FinPara
	Escribir "";
FinSubProceso

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

SubProceso escribirResultados(finalizados8)
	Escribir "";
	Escribir Sin Saltar "Canitidad de números finalizados en 8: ", finalizados8;
	Escribir "";
FinSubProceso

Algoritmo taller1
	Definir longVector Como Entero;
	
	Escribir Sin Saltar "Ingrese la longitud del vector: ";
	Leer N;
	
	Dimension longVector[N];
	
	definirVector(longVector,N);
	imprimirVector(longVector,N);
	finalizados8<-terminadosEn8(longVector,N);
	escribirResultados(finalizados8);
FinAlgoritmo
