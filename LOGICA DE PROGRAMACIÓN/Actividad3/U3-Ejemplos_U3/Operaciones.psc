Funcion x <- LeerValor(msn, Li, Ls)
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

Funcion Res <- Sumar(a, b)
	Res <- a+b
FinFuncion

Funcion Res <- Restar(a, b)
	Res <- a-b
FinFuncion

Funcion Res <- Multiplicar(a, b)
	Res <- a*b
FinFuncion

Funcion Res <- Dividir(a, b)
	Si b = 0 Entonces
		Res <- -1
	Sino
		Res <- a/b
	FinSi
FinFuncion

Funcion Res <- Potencia(a, b)
	Res <- a^b
FinFuncion

Funcion Menu()
	Borrar Pantalla
	Escribir "---------------------"
	Escribir "|  MENU DE OPCIONES |"
	Escribir "---------------------"
	Escribir ""
	Escribir "1. Saumar"
	Escribir "2. Restar"
	Escribir "3. Multiplicar"
	Escribir "4. Dividir"
	Escribir "5. Potencia"
	Escribir "0. Salir"
	Escribir ""
FinFuncion

Funcion Res <- Validar(a, b, op)
	Segun Op Hacer
		1: Res <- Sumar(a,b)
		2: Res <- Restar(a,b)
		3: Res <- Multiplicar(a, b)
		4: Res <- Dividir(a, b)
		5: Res <- Potencia(a,b)
	FinSegun
FinFuncion

Funcion Visualizar(Res, Op, a, b)
	Segun Op Hacer
		1: Escribir a, " + ", b, " = ", Res
		2: Escribir a, " - ", b, " = ", Res
		3: Escribir a, " * ", b, " = ", Res
		4: Si b = 0 Entonces
				Escribir "*** ERROR *** No se puede dividir entre 0"
			Sino
				Escribir a, " / ", b, " = ", Res	
			FinSi
		5: Escribir a, " ^ ", b, " = ", Res
	FinSegun
	Escribir ""
FinFuncion

Proceso OperacionesBasicas
	Repetir
		Borrar Pantalla
		a <- LeerValor("Ingrese el primer valor: ", 0, 100)
		b <- LeerValor("Ingrese el segundo valor: ", 0, 100)
		Repetir
			Menu
			Op <- LeerValor("Seleccione su opción", 0, 5)
			Res <- Validar(a, b, op)
			Visualizar(Res, op, a, b)
			Op <- LeerValor("0. Salir,  1. Nueva operación",0 , 1)
		Hasta Que Op = 0
		Seg <- LeerValor("0. Salir,  1. Ingresar nuevos valores", 0, 1)
	Hasta Que Seg = 0
FinProceso
