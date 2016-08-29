Proceso busqueda_binaria
	escribir "ingrese posiciones del vector"
	leer n
	dimension vector(n)
	Para i<-1 Hasta n con paso 1 hacer
		escribir sin saltar "digite valor de la posición:  ", i
		leer vector(i)
	Fin Para
	escribir sin saltar "digite valor a buscar: "
	leer k
	bajo<-1
	alto<-n
	central<-redon((bajo + alto )/2)
	Mientras (bajo <= alto) y (vector(central) <> k) Hacer
		Si k < vector(central) Entonces
			alto <- central - 1
		Sino
			bajo <- central + 1
		Fin Si
		central<-redon((bajo + alto )/2)
	Fin Mientras
	Si k = vector(central) Entonces
		escribir sin saltar "valor encontrado en la posición: ", central
	Sino
		escribir "valor no encintrado"
	Fin Si
FinProceso