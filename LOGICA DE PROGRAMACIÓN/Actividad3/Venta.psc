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
	
Funcion ValorCompra <- LeerValor(textoMensaje, D1, D2)
	Escribir Sin Saltar textoMensaje
	Leer ValorCompra
FinFuncion
	
Funcion Menu <- LeerMenu(textoMensaje, D1, D2)
	Escribir "Forma de pago"
	Escribir "   1. Contado"
	Escribir "   2. Cr�dito a 15 d�as"
	Escribir "   3. Cr�dito a 30 d�as"
	Escribir "   4. Cr�dito a 60 d�as"
	Escribir "   5. Cr�dito a 90 d�as"
	Escribir Sin Saltar textoMensaje
	Leer Menu
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
		Escribir "Procentaje de financiaci�n       : ", PF "%"
		Escribir "Valor incremento por financiaci�n: $", VF
		Escribir "Valor neto a pagar               : $", NP
	Fin Si
	Escribir ""
FinFuncion

Funcion Resumen(TDC, TPCF10, TPCF15, TPCF20, TPCF30, TPF, NCC, NCC15, NCC30, NCC60, NCC90)
	Escribir ""
	Escribir "Total descontado a clientes                         : $", TDC
	Escribir "Total pagado por los clientes por financiaci�n a 10%: $", TPCF10
	Escribir "Total pagado por los clientes por financiaci�n a 15%: $", TPCF15
	Escribir "Total pagado por los clientes por financiaci�n a 20%: $", TPCF20
	Escribir "Total pagado por los clientes por financiaci�n a 30%: $", TPCF30
	Escribir "Total pagado por financiamiento                     : $", TPF
	Escribir "N�mero de compras realizadas al contado             :  ", NCC
	Escribir "N�mero de compras realizadas a Credito a 15 d�as    :  ", NCC15
	Escribir "N�mero de compras realizadas a Credito a 30 d�as    :  ", NCC30
	Escribir "N�mero de compras realizadas a Credito a 60 d�as    :  ", NCC60
	Escribir "N�mero de compras realizadas a Credito a 90 d�as    :  ", NCC90
FinFuncion

Funcion ProcesoVenta <- Calcular(FP, FPL Por Referencia, PD, PF Por Referencia, VD Por Referencia, VF Por Referencia, NP Por Referencia, NCC Por Referencia, TDC Por Referencia, TPF Por Referencia, TPCF10 Por Referencia, TPCF15 Por Referencia, TPCF20 Por Referencia, TPCF30 Por Referencia, NCC15 Por Referencia, NCC30 Por Referencia, NCC60 Por Referencia, NCC90 Por Referencia, VC)
	Segun FP Hacer
		1:
			PagoContado <- CalcuContado(FPL, PD, VD, NP, NCC, TDC, VC)
		2:
			Pago15dias <- Calcu15dias(FPL, PF, VF, NP, TPCF10, TPF, NCC15, VC)
		3:
			Pago30dias <- Calcu30dias(FPL, PF, VF, NP, TPCF15, TPF, NCC30, VC)
		4:
			Pago60dias <- Calcu60dias(FPL, PF, VF, NP, TPCF20, TPF, NCC60, VC)
		5:
			Pago90dias <- Calcu90dias(FPL, PF, VF, NP, TPCF30, TPF, NCC90, VC)
		De otro modo:
			Escribir Sin Saltar "Opci�n no v�lida, intenta de nuevo (1-5): "
			Leer FP
	Fin Segun
FinFuncion

Funcion PagoContado <- CalcuContado(FPL Por Referencia, PD Por Referencia, VD Por Referencia, NP Por Referencia, NCC Por Referencia, TDC Por Referencia, VC Por Valor)
	FPL <- "Contado"
	PD <- 20
	VD <- (VC*PD)/100
	NP <- VC-VD
	NCC <- NCC + 1
	TDC <- TDC + VD
FinFuncion

Funcion Pago15dias <- Calcu15dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF10 Por Referencia, TPF Por Referencia, NCC15 Por Referencia, VC Por Valor)
	FPL <- "Cr�dito a 15 d�as"
	PF <- 10
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF10 <- TPCF10 + VF
	TPF <- TPF + VF
	NCC15 <- NCC15 + 1
FinFuncion

Funcion Pago30dias <- Calcu30dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF15 Por Referencia, TPF Por Referencia, NCC30 Por Referencia, VC Por Valor)
	FPL <- "Cr�dito a 30 d�as"
	PF <- 15
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF15 <- TPCF15 + VF
	TPF <- TPF + VF
	NCC30 <- NCC30 + 1	
FinFuncion

Funcion Pago60dias <- Calcu60dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF20 Por Referencia, TPF Por Referencia, NCC60 Por Referencia, VC Por Valor)
	FPL <- "Cr�dito a 60 d�as"
	PF <- 20
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF20 <- TPCF20 + VF
	TPF <- TPF + VF
	NCC60 <- NCC60 + 1
FinFuncion

Funcion Pago90dias <- Calcu90dias(FPL Por Referencia, PF Por Referencia, VF Por Referencia, NP Por Referencia, TPCF30 Por Referencia, TPF Por Referencia, NCC90 Por Referencia, VC Por Valor)
	FPL <- "Cr�dito a 90 d�as"
	PF <- 30
	VF <- (VC*PF)/100
	NP <-  VC+VF
	TPCF30 <- TPCF30 + VF
	TPF <- TPF + VF
	NCC90 <- NCC90 + 1
FinFuncion

Proceso Compras
	IniciarVariables(FR, NCC, TDC, TPF, TPCF10, TPCF15, TPCF20, TPCF30, NCC15, NCC30, NCC60, NCC90)
	Mientras FR = "S" Hacer
		Limpiar Pantalla
		VC <- LeerValor("Valor de la compra: $", 1, 9999999999999999999)
		FP <- LeerMenu("Elija una opci�n (1-5): ", 1, 5)
		Repetir
			ProcesoVenta <- Calcular(FP, FPL, PD, PF, VD, VF, NP, NCC, TDC, TPF, TPCF10, TPCF15, TPCF20, TPCF30, NCC15, NCC30, NCC60, NCC90, VC)
		Hasta Que FP >=1 & FP <= 5
		Resultado(VC, FPL, PD, VD, NP, PF, VF, NP)
		Repetir
			Escribir Sin Saltar "Desea ingresar un registro m�s (S/N): "
			Leer FR
		Hasta Que FR = "S" O FR = "N"
		Resumen(TDC, TPCF10, TPCF15, TPCF20, TPCF30, TPF, NCC, NCC15, NCC30, NCC60, NCC90)
	Fin Mientras
FinProceso