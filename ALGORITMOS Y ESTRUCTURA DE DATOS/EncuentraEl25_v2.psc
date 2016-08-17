
// Este SubProceso perimite hacer el llenado del vector
SubProceso definirVector(A,N) 
	Para i<-1 Hasta N Con Paso 1 Hacer
		leer A[i];
	FinPara
FinSubProceso

// Este SubProceso imprime el vector resultante en pantalla
SubProceso imprimirVector(A,N)
	Escribir "";
	escribir Sin Saltar "El vector resultante es: ";
	Escribir "";
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir A[i], " " Sin Saltar;
	FinPara
FinSubProceso

// Este SubProceso hace la busqueda del numero en cuestión
SubProceso P<-buscarNumero(A,N)
	match<-25;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si match = A[i]	Entonces
			P<-i;
		FinSi
	FinPara
FinSubProceso

// Este SubProceso imprime el resultado
SubProceso escribriResultado(P)
	si P <> 0 entonces
		Escribir "";
		Escribir "Se encontro el número 25 en la posición: ",P;
	Sino
		Escribir "";
		Escribir "No se encontro el número 25 en ninguna posición";
	FinSi
FinSubProceso

Algoritmo EncuentraEl25
	Definir A,N,P Como Entero;
	P<-0;
	Escribir Sin Saltar "Cual es la longitud del vector? ";
	leer N;
	Dimension A[N];
	Escribir "Ingrese los ", N " números que desea en el vector";
	definirVector(A,N);
	imprimirVector(A,N);
	posicion<-buscarNumero(A,N);
	escribriResultado(P);
FinAlgoritmo
