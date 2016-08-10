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

Funcion Intercambio(a por valor, b Por valor)
	aux<- a
	a <- b
	b <- aux
	Escribir ""
	Escribir "INTERCAMBIO EN LA FUNCIÓN"
	Escribir "A = ", a
	Escribir "B = ", b
FinFuncion

Proceso Intercambio_Valor
	Li <- 1
	Ls <- 1000
	a <- LeerDato("Ingrese el primer valor: ", Li, Ls)
	b <- LeerDato("Ingrese el segundo valor : ", Li, Ls)
	Escribir ""
	Escribir "ANTES DEL INTERCAMBIO PROGRAMA PRINCIPAL"
	Escribir "A = ", a
	Escribir "B = ", b
	Escribir ""
	
	Intercambio(a, b)
	Escribir ""
	Escribir "DESPUES DEL INTERCAMBIO PROGRAMA PRINCIPAL"
	Escribir "A = ", a
	Escribir "B = ", b
FinProceso

