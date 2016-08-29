// Se procede a ordernar el vector con la tecnica de Quicksort
SubProceso ordenarQuicksort(A,N)
	i <- 1;
	j <- N;
	pivote <- redon(N / 2);
	Mientras i > j Hacer
		Mientras A[i] < pivote Hacer
			i <- i + 1;
		FinMientras
		Mientras A[j] > pivote Hacer
			j <- j - 1;
		FinMientras
		Si i <= j Entonces
			x <- A[j];
			A[j] <- A[i];
			A[i] <- x
			i <- i + 1;
			j <- j - 1;
		FinSi
	FinMientras
FinSubProceso

SubProceso busquedaBinaria(A,N)
	k <- 25;
	bajo<-1;
	alto<-N;
	centro<-redon((bajo + alto )/2);
	Mientras (bajo <= alto) y (A(centro) <> k) Hacer
		Si k < A(centro) Entonces
			alto <- centro - 1
		Sino
			bajo <- centro + 1
		Fin Si
		centro<-redon((bajo + alto )/2)
	Fin Mientras
	Si k = A(centro) Entonces
		escribir sin saltar "valor encontrado en la posición: ", centro
	Sino
		escribir "*** ERROR *** valor no encontrado"
	Fin Si
FinSubProceso

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

Algoritmo EncuentraEl25
	Definir A,N,k,pivote,centro Como Entero;
	Escribir Sin Saltar "Cual es la longitud del vector? ";
	leer N;
	Dimension A[N];
	Escribir "Ingrese los ", N " números que desea en el vector";
	definirVector(A,N);
	ordenarQuicksort(A,N);
	imprimirVector(A,N);
	busquedaBinaria(A,N);
FinAlgoritmo
