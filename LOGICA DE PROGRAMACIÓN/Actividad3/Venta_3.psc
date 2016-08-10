Algoritmo compras
	IniciarVariables(FR, NCC, TDC, TPF, TPCF10, TPCF15, TPCF20, TPCF30, NCC15, NCC30, NCC60, NCC90)
	Mientras mayusculas(FR) = "S" Hacer
		Limpiar Pantalla
		VC <- LeerValor("Valor de la compra: $", 1, 999999999)
		mostrarMenu
		FP <- LeerValor("Elija una opción (1-5): ", 1, 5)
		ProcesoVenta(FP, FPL, PD, PF, VD, VF, NP, NCC, TDC, TPF, TPCF10, TPCF15, TPCF20, TPCF30, NCC15, NCC30, NCC60, NCC90, VC)
		Resultado(FP, VC, FPL, PD, VD, NP, PF, VF, NP)
		FR <- LeerCadena("Ingresa nuevos datos [S/N]? ")
	Fin Mientras
	Resumen(TDC, TPCF10, TPCF15, TPCF20, TPCF30, TPF, NCC, NCC15, NCC30, NCC60, NCC90)
FinAlgoritmo

funcion IniciarVariables(FR por referencia,NCC Por Referencia,TDC Por Referencia,TPF Por Referencia,TPCF10 Por Referencia,TPCF15 Por Referencia,TPCF20 Por Referencia,TPCF30 Por Referencia,NCC15 Por Referencia,NCC30 Por Referencia,NCC60 Por Referencia,NCC90 Por Referencia)
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
	Repetir
		Escribir ""
		Escribir Sin Saltar textoMensaje
		Leer ValorCompra
		Si (ValorCompra < D1) | (ValorCompra > D2) Entonces
			Escribir ""
			Escribir "*** ERROR  *** debe ser entre ", D1, " y ", D2
			Escribir "Presione ENTER para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que (ValorCompra >= D1) & (ValorCompra <= D2)
FinFuncion

Funcion mostrarMenu
	Escribir "Forma de pago"
	Escribir "   1. Contado"
	Escribir "   2. Crédito a 15 días"
	Escribir "   3. Crédito a 30 días"
	Escribir "   4. Crédito a 60 días"
	Escribir "   5. Crédito a 90 días"
FinFuncion

Funcion Cad <- LeerCadena(Msg)
	Repetir
		Escribir ""
		Escribir Sin Saltar Msg
		Leer Cad
		Si Mayusculas(Cad) <> "S" y Mayusculas(Cad) <> "N"
			Escribir ""
			Escribir "*** ERROR  *** Dato no valido..."
			Escribir "Presione ENTER para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que Mayusculas(Cad)= "S" o Mayusculas(Cad)= "N"
FinFuncion

Funcion procesos(sw,  netop Por referencia, cuenta Por referencia, acumula Por referencia, valorcom, porc, valorporc Por referencia)
	valorporc <- (valorcom*porc)/100
	cuenta <- cuenta + 1
	acumula <- acumula + valorporc
	Si sw > 1 Entonces
		netop <- valorcom+valorporc
	Sino
		netop <- valorcom-valorporc
	FinSi
FinFuncion

Funcion ProcesoVenta(FP Por referencia, FPL Por referencia, PD Por referencia, PF Por referencia, VD Por referencia, VF Por referencia, NP Por referencia, NCC Por referencia, TDC Por referencia, TPF Por referencia, TPCF10 Por referencia, TPCF15 Por referencia, TPCF20 Por referencia, TPCF30 Por referencia, NCC15 Por referencia, NCC30 Por referencia, NCC60 Por referencia, NCC90 Por referencia, VC Por referencia)
	Segun FP Hacer
		1:
			FPL <- "Contado"
			PD <- 20
			procesos(FP, NP, NCC, TDC, VC, PD, VD)
		2:
			FPL <- "Crédito a 15 días"
			PF <- 10
			procesos(PF, NP, NCC15, TPCF10, VC, PF, VF)
		3:
			FPL <- "Crédito a 30 días"
			PF <- 15
			procesos(PF, NP, NCC30, TPCF15, VC, PF, VF)
		4:
			
			FPL <- "Crédito a 60 días"
			PF <- 20
			procesos(PF, NP, NCC60, TPCF20, VC, PF, VF)
		5:
			
			FPL <- "Crédito a 90 días"
			PF <- 30
			procesos(PF, NP, NCC90, TPCF30, VC, PF, VF)
	Fin Segun
FinFuncion

Funcion Resultado(FP, VC, FPL, PD, VD, NP, PF, VF, NP)
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