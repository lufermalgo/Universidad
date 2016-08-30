// Se procede a ordernar el vector con la tecnica de Quicksort
SubProceso ordenarQuicksort(A,izq,der)
	i <- izq;
	j <- der;
	pivote <- A[izq];
	Mientras i < j Hacer
		Mientras A[i] <= pivote && i<j Hacer
			i <- i + 1;
		FinMientras
		Mientras A[j] > pivote Hacer
			j <- j - 1;
		FinMientras
		Si i < j Entonces
			x <- A[i];
			A[i] <- A[j];
			A[j] <- x;
		FinSi
	FinMientras
	A[izq]<-A[j];
	A[j]<-pivote;
	Si (izq<j-1) Entonces
		ordenarQuicksort(A,izq,j-1);
	FinSi
	Si (j+1<der) Entonces
		ordenarQuicksort(A,j+1,der);
	FinSi
FinSubProceso

SubProceso busquedaBinaria(A,izq,der)
	k <- 25;
	i<-izq;
	j<-der;
	match<-Falso;
	Mientras (match=Falso y i <= j) Hacer
		centro<-trunc((i+j)/2)
		Si k = A[centro] Entonces
			match <- Verdadero;
		Sino Si k < A[centro] Entonces
				j <- centro - 1;
			Sino
				i <- centro + 1;
			FinSi
		Fin Si
	Fin Mientras
	Si (match = Verdadero) Entonces
		Escribir "";
		escribir sin saltar "valor encontrado en la posición: ", centro
	Sino
		Escribir "";
		escribir "*** ERROR *** El número 25 no se encuentra en el vector."
	Fin Si
FinSubProceso

// Este SubProceso perimite hacer el llenado del vector
SubProceso definirVector(A,N) 
	Escribir "Ingrese los ", N " números que desea en el vector";
	Para i<-1 Hasta N Con Paso 1 Hacer
		leer A[i];
	FinPara
FinSubProceso

// Este SubProceso imprime el vector resultante en pantalla
SubProceso imprimirVector(A,N)
	Escribir "";
	escribir Sin Saltar "El vector resultante es: ";
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir A[i], " " Sin Saltar;
	FinPara
FinSubProceso

Algoritmo EncuentraEl25
	Definir A,N,k,pivote,centro Como Entero;
	Escribir Sin Saltar "Cual es la longitud del vector? ";
	leer N;
	Dimension A[N];
	definirVector(A,N);
	ordenarQuicksort(A,1,N);
	imprimirVector(A,N);
	busquedaBinaria(A,1,N);
	Escribir '';
FinAlgoritmo
