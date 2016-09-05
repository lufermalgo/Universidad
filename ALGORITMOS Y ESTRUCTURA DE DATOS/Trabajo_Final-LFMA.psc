//		Fecha:27-08-2016
//		Actividad: Trabajo final
//		Estudiante: Luis Fernando Maldonado Arango
//		Materia: Algoritmos y estructuras de datos 1
//		Profesor: John Jaime Orozco Arias
//		Católica del Norte. Fundación Universitaria
//
//		ACTIVIDAD: Trabajo final
//		Utilizando arreglos, escribir un programa en PseInt que muestre un
//		cuadrado mágico de orden impar (n) en un rango entre tres y once.
//		Se debe digitar por teclado el valor de (n).
//
//		Descripcion:
//		Algoritmo que crea una matiz de numeros impar de tamaño maximo de 11
//		se llena de forma aleatoria, se utiliza la tecnica del número 1 al centro de la primera fila
//		se crea función para validar que el cuadro magico realmente si sea magico.

// Esta funcion inicializa todas las posiciones de la matriz en ceros para los calculos
SubProceso inicializacionCero(Matriz,longMatriz)
	Escribir cuadro;
	Para i <- 1 Hasta longMatriz Con Paso 1 Hacer
		Para j <- 1 Hasta longMatriz Con Paso 1 Hacer
			Matriz[i,j] <- 0;
		FinPara
	FinPara
FinSubProceso

// Esta funcion es el menú que solicita al usuario ingresar la longitud de la matriz.
// adicional valida que los digitos ingresados sean número inpares.
SubProceso longMatriz<-LeerDato(msn)
    Repetir		
		Escribir Sin Saltar msn
		Leer longMatriz; 
		Limpiar Pantalla;
		Si longMatriz <= 11 Entonces		
			Si longMatriz Es Multiplo De 2 Entonces
				Escribir "*** ERROR *** El número debe ser impar";
			FinSi 
		Sino				
			Escribir "*** ERROR *** El valor deber ser: <= 11";
		FinSi
		//se repirte hasta que se digite un numero impar entre 3 y 11
	Hasta Que longMatriz <= 11 Y longMatriz Es Impar
FinSubProceso

// identificamos el centro de la matiz.
SubProceso posC<-calcularCentro(longMatriz)
	posC <- redon(longMatriz / 2);
FinSubProceso

// llenamos la matriz, iniciamos con la posición Fila 1 Columna 2, valor 1.
SubProceso crearVector(Matriz,longMatriz,cuadro,posF,posC,checkPoingFila,checkPointColumna)
	Para i <- 1 Hasta cuadro Con Paso 1 Hacer
		// se valida el valor de las variables posF y posC para que no superen el limite.
		si posF < 1 Entonces 
			posF <- longMatriz;
		FinSi	
		Si posC > longMatriz Entonces
			posC <- 1;						
		FinSi
		// si la posición de la matriz ya fue utilizada se ajusta la variable posF con el 
		// incremento de la variable checkPointFila a 1 
		Si Matriz[posF,posC] <> 0 Entonces			
			posF <- checkPoingFila + 1;
			// validamos que el valor de la variable posF no supere el limite.
			si posF > longMatriz Entonces
				posF <- 1;
			FinSi
			// asignamos a la variable posC el valor de la variable checkPointColumna, esto nos 
			// permite trabajar con el último valor validado.
			posC <- checkPointColumna;						
		FinSi					
		// llenamos el match en la matriz con el valor de la posición actual.
		Matriz[posF,posC] <- i; 
		// como control guardamos la posición actual tanto para la Fila como Columna.
		checkPoingFila <- posF; 
		checkPointColumna <- posC;
		// sumamos y restamos un punto a cada posición
		posF <- posF - 1;
		posC <- posC + 1;
	FinPara	
FinSubProceso

SubProceso imprimirPantalla(Matriz,longMatriz)
	//imprimir resultados
	Escribir "";
	Escribir  "El cuadrado magico de (",longMatriz," x ",longMatriz,"):";
	//ciclo para mostrar los resultados de la matiz
	espacio <- "";
	Para i<-1 Hasta longMatriz Con Paso 1 Hacer
		Para j<-1 Hasta longMatriz Con Paso 1 Hacer
			//se agragan espacios de acuerdo a la longitud del número para mejorar la visualización.
			espacio <- "";
			si Matriz[i,j] < 10 Entonces				
				espacio <- "  ";
			Sino
				si Matriz[i,j]< 100 Entonces					
					espacio <- " ";			
				FinSi
			FinSi
			Escribir Sin Saltar " ", espacio , Matriz[i,j]," ";
		FinPara
		Escribir "";
	FinPara
FinSubProceso

Proceso CuadroMagico
		
	// definir valirales como Enteros.
	Definir longMatriz,posF,posC,checkPoingFila,checkPointColumna Como Entero;
	// definicion de valiables globales
	posF <- 1;
	// punto de control para las posiciones
	checkPoingFila <- 0;
	checkPointColumna <- 0;
	// se solicita longitud de matriz.
	longMatriz<-LeerDato("Ingrese un número entre 3 y 11, este debe de ser impar: ");
	// Se define la longitud de la matriz A, para el caso el tamaño maximo de 11.
	Dimension Matriz[longMatriz,longMatriz];
	cuadro <- longMatriz * longMatriz
	inicializacionCero(Matriz,longMatriz);
	posC<-calcularCentro(longMatriz);
	crearVector(Matriz,longMatriz,cuadro,posF,posC,checkPoingFila,checkPointColumna);
	imprimirPantalla(Matriz,longMatriz);
FinProceso
