// Se procede a ordernar el vector con la tecnica de Quicksort
SubProceso ordenarQuicksort(A,N,centro)
	i <- 1;
	j <- N;
	pivote <- centro;
	
	Mientras i < j Hacer
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

// identificamos el centro de la matiz.
SubProceso centro<-calcularCentro(N)
	centro <- redon(N / 2);
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

// Este SubProceso hace la busqueda del numero en cuestión
SubProceso posicion<-buscarNumero(A,N)
	match<-25;
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si A[i] = match 	Entonces
			posicion<-i;
		FinSi
	FinPara
FinSubProceso

// Este SubProceso imprime el resultado
SubProceso escribriResultado(posicion)
	Si posicion <> 0 entonces
		Escribir "";
		Escribir "Se encontro el número 25 en la posición: ",posicion;
	Sino
		Escribir "";
		Escribir "No se encontro el número 25 en ninguna posición";
	FinSi
FinSubProceso

Algoritmo EncuentraEl25
	Definir A,N,P Como Entero;
	Escribir Sin Saltar "Cual es la longitud del vector? ";
	leer N;
	Dimension A[N];
	escribir posicion;
	Escribir "Ingrese los ", N " números que desea en el vector";
	definirVector(A,N);
	centro<-calcularCentro(N);
	ordenarQuicksort(A,N,centro);
	imprimirVector(A,N);
	posicion<-buscarNumero(A,N);
	escribriResultado(posicion);
FinAlgoritmo
