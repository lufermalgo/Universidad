Funcion x <- LeerDato(msn, Li, Ls)
	Borrar Pantalla
	Repetir
		Escribir Sin Saltar msn
		Leer x
		Si (x<Li) | (x>Ls) Entonces
			Escribir "*** ERROR  *** El valor debe ser: >= ", Li, " y <= ",Ls
			Escribir "Presione una tecla para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que (x>=Li) & (x<=Ls)
FinFuncion

Funcion Fibonacci(n)
	Suma <-1
	Ultimo <- 0
	Penultimo <- 0
	Borrar Pantalla
	Para I <- 1 Hasta n
		Penultimo <- Ultimo
		Ultimo <- Suma
		Suma <- Ultimo + Penultimo
		Escribir sin saltar Suma, ",  "
	FinPara
FinFuncion

Proceso Serie_Fibonacci //Algoritmo principal
	Li <- 1
	Ls <- 50
	n <- LeerDato("Cuantos términos desea generar: ", Li, Ls)
	Fibonacci(n)
	Escribir ""
FinProceso
