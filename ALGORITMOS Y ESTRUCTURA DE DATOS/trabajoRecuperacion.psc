//		ACTIVIDAD: Trabajo de recuperaci�n
//		Elaborar un programa en PseInt que lea una matriz de orden (m*n)
//		y que calcule la suma de los elementos sombreados seg�n el
//		siguiente ejemplo
//
//		Descripcion:
//		Se construye un algoritmo que recrea una matriz de dos valores n y m
//		se rellena con n�meros al azar y se calcula la suman de todas las filas y 
//		columnas pares de acuerdo al ejemplo dado.
//
//		Fecha:28-08-2016
//		Actividad: Trabajo de recuperaci�n
//		Estudiante: Luis Fernando Maldonado Arango
//		Materia: Algoritmos y estructuras de datos 1
//		Profesor: John Jaime Orozco Arias
//		Cat�lica del Norte. Fundaci�n Universitaria

// Esta funci�n la utilizo para solicitar los datos de entrada, es una funci�n reutilizable.
Funcion longMatirz <- LeerDato(msn)
	Escribir msn Sin Saltar
	Leer longMatirz
FinFuncion

// Esta funci�n llena de con n�meros al azar la matriz.
Funcion llenarMatriz(matriz,n,m)
	Para i<-1 Hasta n Hacer
		Para j<-1 Hasta m Hacer
			matriz[i,j]<-Azar(100)
		FinPara
	FinPara
FinFuncion

// Esta funci�n imprime en pantalla la matriz, se logra por medio de espacios dar alineaci�n a los n�meros. 
Funcion imprimirMatriz(matriz,n,m)
	Escribir ''
	Escribir 'El cuadrado magico de (',n,' x ',m,'):'
	Escribir ''
	alineacion <- ''
	Para i<-1 Hasta n Hacer
		Para j<-1 Hasta m Hacer
			alineacion <- ''
			Si matriz[i,j]<10 Entonces
				alineacion <- '  '
			Sino
				Si matriz[i,j]<100 Entonces
					alineacion <- ' '
				FinSi
			FinSi
			Escribir ' ',alineacion,matriz[i,j],' |' Sin Saltar
		FinPara
		Escribir ''
	FinPara
FinFuncion

// Esta funci�n suma todas las filas pares que tenga la matriz.
Funcion sfPares <- sumaFilaPares(matriz,n,m)
	// Se define la variable acumulativa "sfPares", se inicializa en 0.
	sfPares <- 0
	// Se incia loop sobre la fila de la matriz.
	Para x<-1 Hasta n Hacer
		// Se evalua si la posici�n de la fila es numero par, de lo contrario entra en el loop nuevamente.
		Si (x) MOD (2)=0 Entonces
			// si la posici�n de la fila es par entonces se ejecuta loop sobre la columna de la matriz.
			Para w<-1 Hasta m Hacer
				// Finalmente lleva a la variable acumulativa el valor de la posici�n.
				sfPares <- sfPares+matriz[x,w]
			FinPara
		FinSi
	FinPara
FinFuncion

// Esta funci�n suma todas las columnas pares que tenga la matriz.
Funcion scPares <- sumaColumnaPares(matriz,n,m)
	// Se define la variable acumulativa "scPares", se inicializa en 0.
	scPares <- 0
	// Se incia loop sobre la columna de la matriz.
	Para x<-1 Hasta m Hacer
		// Se evalua si la posici�n de la columna es numero par, de lo contrario entra en el loop nuevamente.
		Si (x) MOD (2)=0 Entonces
			// si la posici�n de la columna es par entonces se ejecuta loop sobre la columna de la matriz.
			Para w<-1 Hasta n Hacer
				// Finalmente lleva a la variable acumulativa el valor de la posici�n.
				scPares <- scPares+matriz[w,x]
			FinPara
		FinSi
	FinPara
FinFuncion

Algoritmo trabajoRecuperacion
	Definir n,m Como Entero
	n <- LeerDato('Ingrese la longitud para el vector n: ')
	m <- LeerDato('Ingrese la longitud para el vector m: ')
	Dimension matriz[n,m]
	llenarMatriz(matriz,n,m)
	imprimirMatriz(matriz,n,m)
	sfPares<-sumaFilaPares(matriz,n,m)
	scPares<-sumaColumnaPares(matriz,n,m)
	resultado<-sfPares+scPares
	Escribir '';
	Escribir Sin Saltar "El resultado de la suman de todas la posiciones pares es: ",resultado;
	Escribir '';	
FinAlgoritmo

