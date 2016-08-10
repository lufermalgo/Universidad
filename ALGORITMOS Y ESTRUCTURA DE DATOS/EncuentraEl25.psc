SubProceso definirVector(A,N) 
	Para i<-1 Hasta N Con Paso 1 Hacer
		leer A[i];
	FinPara
FinSubProceso

SubProceso imprimirVector(A,N)
	Escribir "";
	escribir Sin Saltar "El vector resultante es: ";
	Escribir "";
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir A[i], " " Sin Saltar;
	FinPara
FinSubProceso

SubProceso buscarNumero(A,N)
	match<-25;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si match = A[i]	Entonces
			Escribir "";
			Escribir "Se encontro el número 25 en la posición: ",i
		FinSi
	FinPara
FinSubProceso

Algoritmo EncuentraEl25
	Definir A,N,t Como Entero;
	Escribir Sin Saltar "Cual es la longitud del vector? ";
	leer N;
	Dimension A[N];
	Escribir "Ingrese los ", N " números que desea en el vector";
	definirVector(A,N);
	imprimirVector(A,N);
	buscarNumero(A,N);
FinAlgoritmo
