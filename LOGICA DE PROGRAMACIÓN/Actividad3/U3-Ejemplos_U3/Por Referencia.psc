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

Funcion Intercambio(a por Referencia, b Por Referencia)
	aux<- a
	a <- b
	b <- aux
FinFuncion

Proceso Intercambio_Referencia
	Li <- 1
	Ls <- 1000
	a <- LeerDato("Ingrese el primer valor: ", Li, Ls)
	b <- LeerDato("Ingrese el segundo valor : ", Li, Ls)
	Escribir "ANTES DEL INTERCAMBIO"
	Escribir "A = ", a
	Escribir "B = ", b
	Escribir ""
	
	Intercambio(a,b)
	Escribir "DESPUES DEL INTERCAMBIO"
	Escribir "A = ", a
	Escribir "B = ", b
FinProceso

