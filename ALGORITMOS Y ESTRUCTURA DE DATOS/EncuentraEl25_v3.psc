//		ACTIVIDAD: Trabajo unidad 2
//		3. Elabore un programa en PseInt que lea una lista (n) de números naturales desde el 
//		teclado y se desea saber si entre esos números se encuentra el número 25. Si el número 
//		es encontrado visualizar su posición en la lista. Desarrollar el programa por búsqueda 
//		secuencial y por búsqueda binaria.
//
//		Descripcion:
//		Algoritmo que crea un vector de entrada manual de (n) elementos, realiza ordenamiento de dicho
//		vector con el método QuickSort, una vez el vector este ordenado procede a buscar el número 25
//		con el método de búsqueda binaria, finalmente se imprimer el resultado informando en que posición
//		del vector esta ubicado dicho número.
//
//		Fecha:30-08-2016
//		Actividad: Trabajo unidad 2
//		Autor: Luis Fernando Maldonado Arango
//		Materia: Algoritmos y estructuras de datos 1
//		Profesor: John Jaime Orozco Arias
//		Católica del Norte. Fundación Universitaria

// Se procede a ordernar el vector con la tecnica de Quicksort
// este es el método más eficiente y de menos lineas que se puede utlizar.
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

// Esta función realiza la busqueda del número 25 con el método busqueda binaria.
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
