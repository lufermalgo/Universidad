Proceso Compras
	IniciarVariables(FR, NCC, TDC, TPF, TPCF10, TPCF15, TPCF20, TPCF30, NCC15, NCC30, NCC60, NCC90)
	Mientras FR = "S" Hacer
		Limpiar Pantalla
		VC <- LeerValor("Valor de la compra: $", 1, 1000)
		Menu
		FP <- LeerMenu("Elija una opción (1-5): ", 1, 5)
		ProcesoVenta(FP, FPL, PD, PF, VD, VF, NP, NCC, TDC, TPF, TPCF10, TPCF15, TPCF20, TPCF30, NCC15, NCC30, NCC60, NCC90, VC)
		Resultado(VC, FPL, PD, VD, NP, PF, VF, NP)
		FR <- LeerOpcion("Desea ingresar un registro más (S/N): ", "S", "N" )
	Fin Mientras
	Resumen(TDC, TPCF10, TPCF15, TPCF20, TPCF30, TPF, NCC, NCC15, NCC30, NCC60, NCC90)
FinProceso

Funcion IniciarVariables(FR por referencia,NCC Por Referencia,TDC Por Referencia,TPF Por Referencia,TPCF10 Por Referencia,TPCF15 Por Referencia,TPCF20 Por Referencia,TPCF30 Por Referencia,NCC15 Por Referencia,NCC30 Por Referencia,NCC60 Por Referencia,NCC90 Por Referencia)
	FR <- "S"
	NCC <- 0
	TDC <- 0
	TPF <- 0
	TPCF10 <- 0
	TPCF15 <- 0
	TPCF20 <- 0
	TPCF30 <- 0
	NCC15 <- 0
	NCC30 <- 0
	NCC60 <- 0
	NCC90 <- 0
FinFuncion

Funcion OP <- LeerOpcion(textoMensaje, D1, D2)
	Repetir
		Escribir Sin Saltar textoMensaje
		Leer OP
		Si (OP<>D2) & (OP<>D1)
			Escribir "*** ERROR  *** El valor debe ser: S/N"
			Escribir "Presione una tecla para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que (OP=D1) | (OP=D2)
FinFuncion

Funcion VC <- LeerValor(textoMensaje, D1, D2)
	Borrar Pantalla
	Repetir
		Escribir Sin Saltar textoMensaje
		Leer VC
		Si (VC<D1) | (VC>D2) Entonces
			Escribir "*** ERROR  *** El valor debe ser: >= ", D1, " y <= ",D2
			Escribir "Presione una tecla para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que (VC>=D1) & (VC<=D2)
FinFuncion
	
Funcion Menu() 
	Escribir "Forma de pago"
	Escribir "   1. Contado"
	Escribir "   2. Crédito a 15 días"
	Escribir "   3. Crédito a 30 días"
	Escribir "   4. Crédito a 60 días"
	Escribir "   5. Crédito a 90 días"
FinFuncion

Funcion FP <- LeerMenu(textoMensaje, D1, D2)
	Repetir
		Escribir Sin Saltar textoMensaje
		Leer FP
		Si (FP<D1) | (FP>D2) Entonces
			Escribir "*** ERROR  *** El valor debe ser: >= ", D1, " y <= ",D2
			Escribir "Presione una tecla para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que (FP>=D1) & (FP<=D2)
FinFuncion

Funcion Resultado(VC, FPL, PD, VD, NP, PF, VF, NP)
	Escribir ""
	Escribir "Valor de la compra               : $", VC
	Escribir "Forma de pago                    : ", FPL
	Si FP = 1 Entonces
		Escribir "Porcentaje de descuento          : ", PD "%"
		Escribir "Valor descuento                  : $", VD
		Escribir "Valor neto a pagar               : $", NP
	Sino
		Escribir "Procentaje de financiación       : ", PF "%"
		Escribir "Valor incremento por financiación: $", VF
		Escribir "Valor neto a pagar               : $", NP
	Fin Si
	Escribir ""
FinFuncion

Funcion Resumen(TDC, TPCF10, TPCF15, TPCF20, TPCF30, TPF, NCC, NCC15, NCC30, NCC60, NCC90)
	Escribir ""
	Escribir "Total descontado a clientes                         : $", TDC
	Escribir "Total pagado por los clientes por financiación a 10%: $", TPCF10
	Escribir "Total pagado por los clientes por financiación a 15%: $", TPCF15
	Escribir "Total pagado por los clientes por financiación a 20%: $", TPCF20
	Escribir "Total pagado por los clientes por financiación a 30%: $", TPCF30
	Escribir "Total pagado por financiamiento                     : $", TPF
	Escribir "Número de compras realizadas al contado             :  ", NCC
	Escribir "Número de compras realizadas a Credito a 15 días    :  ", NCC15
	Escribir "Número de compras realizadas a Credito a 30 días    :  ", NCC30
	Escribir "Número de compras realizadas a Credito a 60 días    :  ", NCC60
	Escribir "Número de compras realizadas a Credito a 90 días    :  ", NCC90
FinFuncion

Funcion ProcesoVenta(FP, FPL Por Referencia, PD, PF Por Referencia, VD Por Referencia, VF Por Referencia, NP Por Referencia, NCC Por Referencia, TDC Por Referencia, TPF Por Referencia, TPCF10 Por Referencia, TPCF15 Por Referencia, TPCF20 Por Referencia, TPCF30 Por Referencia, NCC15 Por Referencia, NCC30 Por Referencia, NCC60 Por Referencia, NCC90 Por Referencia, VC)
	Segun FP Hacer
		1:
			CalcuContado(FPL, PD, VD, NP, NCC, TDC, VC)
		2:
			Calcu15dias(FPL, PF, VF, NP, TPCF10, TPF, NCC15, VC)
		3:
			Calcu30dias(FPL, PF, VF, NP, TPCF15, TPF, NCC30, VC)
		4:
			Calcu60dias(FPL, PF, VF, NP, TPCF20, TPF, NCC60, VC)
		5:
			Calcu90dias(FPL, PF, VF, NP, TPCF30, TPF, NCC90, VC)
		De otro modo:
			Escribir Sin Saltar "Opción no válida, intenta de nuevo (1-5): "
			Leer FP
	Fin Segun
FinFuncion

Funcion CalcuContado(FPL Por Referencia, PD Por Referencia, VD Por Referencia, NP Por Referencia, NCC Por Referencia, TDC Por Referencia, VC Por Valor)
	FPL <- "Contado"
	PD <- 20
	VD <- (VC*PD)/100
	NP <- VC-VD
	NCC <- NCC + 1
	TDC <- TDC + VD
FinFuncion

Funcion Calcu15dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF10 Por Referencia, TPF Por Referencia, NCC15 Por Referencia, VC Por Valor)
	FPL <- "Crédito a 15 días"
	PF <- 10
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF10 <- TPCF10 + VF
	TPF <- TPF + VF
	NCC15 <- NCC15 + 1
FinFuncion

Funcion Calcu30dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF15 Por Referencia, TPF Por Referencia, NCC30 Por Referencia, VC Por Valor)
	FPL <- "Crédito a 30 días"
	PF <- 15
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF15 <- TPCF15 + VF
	TPF <- TPF + VF
	NCC30 <- NCC30 + 1	
FinFuncion

Funcion Calcu60dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF20 Por Referencia, TPF Por Referencia, NCC60 Por Referencia, VC Por Valor)
	FPL <- "Crédito a 60 días"
	PF <- 20
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF20 <- TPCF20 + VF
	TPF <- TPF + VF
	NCC60 <- NCC60 + 1
FinFuncion

Funcion Calcu90dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF30 Por Referencia, TPF Por Referencia, NCC90 Por Referencia, VC Por Valor)
	FPL <- "Crédito a 90 días"
	PF <- 30
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF30 <- TPCF30 + VF
	TPF <- TPF + VF
	NCC90 <- NCC90 + 1
FinFuncion