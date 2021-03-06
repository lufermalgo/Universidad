

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

SubProceso P<-buscarNumero(A,N)
	match<-25;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si match = A[i]	Entonces
			P<-i;
		FinSi
	FinPara
FinSubProceso

SubProceso escribriResultado(P)
	si P <> 0 entonces
		Escribir "";
		Escribir "Se encontro el n�mero 25 en la posici�n: ",P;
	Sino
		Escribir "";
		Escribir "No se encontro el n�mero 25 en ninguna posici�n";
	FinSi
FinSubProceso

Algoritmo EncuentraEl25
	Definir A,N,P Como Entero;
	P<-0;
	Escribir Sin Saltar "Cual es la longitud del vector? ";
	leer N;
	Dimension A[N];
	Escribir "Ingrese los ", N " n�meros que desea en el vector";
	definirVector(A,N);
	imprimirVector(A,N);
	posicion<-buscarNumero(A,N);
	escribriResultado(P);
FinAlgoritmo
