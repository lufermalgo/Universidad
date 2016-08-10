SubProceso crearVector(longVector,N)
	Para i<-1 Hasta N Con Paso 1 Hacer
		longVector[i] <- azar(50)+1;
	Fin Para
FinSubProceso

SubProceso asignarNegativoRepetidos(repetidos,N)
	Para i<-1 Hasta N Con Paso 1 Hacer
		repetidos[i] <- -1
	FinPara
FinSubProceso

SubProceso recorridoPadre(longVector,repetidos,N)
	Para i<-1 Hasta N Con Paso 1 Hacer
		a<-longVector[i];
		b<-0;
		c<-0;
		Para k<-1 Hasta n Hacer
			Si a=repetidos[k] Entonces
				c <- c+1
			FinSi
		FinPara
		Para x<-i Hasta N Con Paso 1 Hacer
			Si c=0 Entonces
				Si a=longVector[x] Entonces
					b<-b+1
				Fin Si
				Si b=2 Entonces
					repetidos[i] <- a;
				FinSi
			FinSi
		Fin Para
		
		Escribir a "= ",b;
	Fin Para
FinSubProceso

SubProceso contador<-conteoRepetidos(repetidos,N)
	contador<-0
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si repetidos[i]>0 Entonces
			contador <- contador+1
		FinSi
	FinPara
FinSubProceso

SubProceso escribirRepetidos(repetidos,contador,N)
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "";
		Escribir repetidos[i],' ' Sin Saltar
	Fin Para
	Escribir "Cantidad repetidos: ",contador;
FinSubProceso

Algoritmo taller1
	
	Definir a,b,c,contador,longVector,repetidos,N Como Entero;
		
	Escribir Sin Saltar "Ingrese la longitud del Vector: "
	Leer N;
	
	Dimension longVector[N];
	Dimension repetidos[N];
	
	crearVector(longVector,N);
	asignarNegativoRepetidos(repetidos,N)
	recorridoPadre(longVector,repetidos,N);
	contador<-conteoRepetidos(repetidos,N);
	escribirRepetidos(repetidos,contador,N);
	
	
FinAlgoritmo
