Proceso Compras
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
	Mientras FR = "S" Hacer
		Limpiar Pantalla
		Escribir Sin Saltar "Valor de la compra: $"
		Leer VC
			Escribir "Forma de pago"
			Escribir "   1. Contado"
			Escribir "   2. Crédito a 15 días"
			Escribir "   3. Crédito a 30 días"
			Escribir "   4. Crédito a 60 días"
			Escribir "   5. Crédito a 90 días"
			// ingresar una opcion
			Escribir Sin Saltar "Elija una opción (1-5): "
			Leer FP	
			// inicia proceso
	Repetir
		Segun FP Hacer
			1:
				FPL <- "Contado"
				PD <- 20
				VD <- (VC*PD)/100
				NP <- VC-VD
				NCC <- NCC + 1
				TDC <- TDC + VD
			2:
				FPL <- "Crédito a 15 días"
				PF <- 10
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF10 <- TPCF10 + VF
				TPF <- TPF + VF
				NCC15 <- NCC15 + 1
			3:
				FPL <- "Crédito a 30 días"
				PF <- 15
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF15 <- TPCF15 + VF
				TPF <- TPF + VF
				NCC30 <- NCC30 + 1
			4:
				FPL <- "Crédito a 60 días"
				PF <- 20
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF20 <- TPCF20 + VF
				TPF <- TPF + VF
				NCC60 <- NCC60 + 1
			5:
				FPL <- "Crédito a 90 días"
				PF <- 30
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF30 <- TPCF30 + VF
				TPF <- TPF + VF
				NCC90 <- NCC90 + 1
			De otro modo:
				Escribir Sin Saltar "Opción no válida, intenta de nuevo (1-5): "
				Leer FP
		Fin Segun
	Hasta Que FP >=1 Y FP <= 5
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
		Repetir
			Escribir Sin Saltar "Desea ingresar un registro más (S/N): "
			Leer FR
		Hasta Que FR = "S" O FR = "N"
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
	Fin Mientras
FinProceso