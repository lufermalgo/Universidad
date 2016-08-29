Proceso ordenamiento_burbuja
	escribir sin saltar "ingrese posiciones del vector"
	leer n
	dimension vector(n)
	Para i<-1 Hasta n con paso 1 hacer
		escribir sin saltar "digite valor de la posición:  ", i
		leer vector(i)
	Fin Para
	Para i<-1 hasta (n-1) con paso 1 Hacer
		para j<-1 hasta (n-1) con paso 1 Hacer
			si vector(j)>vector(j+1) Entonces
				temp<-vector(j)
				vector(j)<-vector(j+1)
				vector(j+1)<-temp
			FinSi
		FinPara
	FinPara
	escribir "se imprime el vector ordenado:  "
	Para i<-1 Hasta n con paso 1 hacer
		escribir sin saltar vector(i),"  "
	Fin Para
FinProceso
