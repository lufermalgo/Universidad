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
			Escribir "   2. Cr�dito a 15 d�as"
			Escribir "   3. Cr�dito a 30 d�as"
			Escribir "   4. Cr�dito a 60 d�as"
			Escribir "   5. Cr�dito a 90 d�as"
			// ingresar una opcion
			Escribir Sin Saltar "Elija una opci�n (1-5): "
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
				FPL <- "Cr�dito a 15 d�as"
				PF <- 10
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF10 <- TPCF10 + VF
				TPF <- TPF + VF
				NCC15 <- NCC15 + 1
			3:
				FPL <- "Cr�dito a 30 d�as"
				PF <- 15
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF15 <- TPCF15 + VF
				TPF <- TPF + VF
				NCC30 <- NCC30 + 1
			4:
				FPL <- "Cr�dito a 60 d�as"
				PF <- 20
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF20 <- TPCF20 + VF
				TPF <- TPF + VF
				NCC60 <- NCC60 + 1
			5:
				FPL <- "Cr�dito a 90 d�as"
				PF <- 30
				VF <- (VC*PF)/100
				NP <-  VC+VF
				TPCF30 <- TPCF30 + VF
				TPF <- TPF + VF
				NCC90 <- NCC90 + 1
			De otro modo:
				Escribir Sin Saltar "Opci�n no v�lida, intenta de nuevo (1-5): "
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
			Escribir "Procentaje de financiaci�n       : ", PF "%"
			Escribir "Valor incremento por financiaci�n: $", VF
			Escribir "Valor neto a pagar               : $", NP
		Fin Si
		Escribir ""
		Repetir
			Escribir Sin Saltar "Desea ingresar un registro m�s (S/N): "
			Leer FR
		Hasta Que FR = "S" O FR = "N"
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
	Fin Mientras
FinProceso