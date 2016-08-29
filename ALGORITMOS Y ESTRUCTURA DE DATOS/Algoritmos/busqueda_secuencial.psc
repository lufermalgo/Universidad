Proceso busqueda_secuencial
	escribir "ingrese posiciones del vector"
	leer n
	dimension vector(n)
	Para i<-1 Hasta n con paso 1 hacer
		escribir sin saltar "digite valor de la posición:  ", i
		leer vector(i)
	Fin Para
	escribir sin saltar "digite valor a buscar: "
	leer k
	Para i<-1 Hasta n Con Paso 1 Hacer
		Si vector(i) = k Entonces
			escribir sin saltar "elemento encontrado en la posición: ", i
			
		Fin Si
	Fin Para
FinProceso
