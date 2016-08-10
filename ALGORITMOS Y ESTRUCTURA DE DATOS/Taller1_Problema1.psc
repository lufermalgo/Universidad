// Elaborar un algoritmo que entre un arreglo unidimensional de (n)
// elementos enteros y luego calcule e imprima:  
Algoritmo Problema1
	// Se solicita ingresar n cantidad de numeros 
	Escribir 'Ingrese la cantidad de datos que desea:' Sin Saltar
	Leer n
	// defino la longitud del vector de acuerdo al valor de n
	Dimension datos[n]
	Dimension usados[n]
	Dimension final[n]
	Dimension repetidos[n]
	// generamos numeros aleatorios en el vector 
	Para i<-1 Hasta n Hacer
		datos[i] <- Azar(50)
	FinPara
	Escribir ''
	Escribir 'El vector fue :'
	Escribir ''
	// muesro vector forma horizontal sin salto
	Para i<-1 Hasta n Hacer
		Escribir datos[i],' ' Sin Saltar
	FinPara
	Escribir ''
	// lleno el vector usado con valores que no se puedan comparar (valido para corregir errores con 0 ceros
	Para p<-1 Hasta n Hacer
		usados[p] <- -1
	FinPara
	
	Para i<-1 Hasta n Hacer //global
		vari <- datos[i]
		sum <- 0
		cont <- 0;
		Para k<-1 Hasta n Hacer // comparamos si el nuemro ya a sido usado en la cuenta
			Si vari=usados[k] Entonces
				sum <- sum+1
			FinSi
		FinPara
		
		Para u<-1 Hasta n Hacer // si no ha sido usado empieza a contar cuantas veces existe
			Si sum=0 Entonces
				escribir "valorPosicion ",vari " longVector ", datos[u];
				Si vari=datos[u] Entonces
					cont <- cont+1
				FinSi
				// lo anotanos en el vector usado
				usados[i] <- vari; 
				escribir "usados ",usados[i] " valorPosicion ",vari;
				final[i] <- cont
			FinSi
		FinPara
	FinPara
	Escribir ''
	// al final solo mostrara los datos que existan
	Escribir 'Números repetidos :'
	Escribir ''
	Escribir '#','    ','Rep'
	Para t<-1 Hasta n Hacer
		Si final[t]>0 Entonces
			Escribir '',usados[t], '    => ',final[t],' '
		FinSi
	FinPara
	Escribir ''
	// Número de pares e impares en el vector
	pares <- 0
	Para i<-1 Hasta n Hacer
		Si datos[i] MOD 2=0 Entonces
			// lo agregamos al contador 
			pares <- pares+1
		FinSi
	FinPara
	impares <- n-pares
	Escribir ''
	Escribir 'Cantidad de números pares :',pares
	Escribir 'Cantidad de números impares :',impares
	
	// e. El nÃºmero mayor.
	// f. El nÃºmero menor.
	
	numMayor <- datos[1];
	numMenor <- datos[1];
	
	Para x <- 1 Hasta n Hacer
		si datos[x] > numMayor Entonces
			numMayor <- datos[x]
		FinSi
		si datos[x] < numMenor Entonces
			numMenor <- datos[x]
		FinSi
	FinPara
	Escribir ''
	Escribir 'El numero mayor es :',numMayor;
	Escribir 'El numero menor es :',numMenor;
	
	
	
FinAlgoritmo

