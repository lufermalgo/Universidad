Proceso Act1
	Escribir "Valor de la inversion del Socio A:"
	Leer N
	Escribir "Valor de la inversion del Socio B:"
	leer M
	Escribir "Valor de la inversion del Socio C:"
	leer X
	
	MonTotal <- N + M + X
	escribir "Valor del Monto Total de Inversion de los Socios:",MonTotal
	
	PorIverSociA <- N / MonTotal
	escribir "Valor del porcentaje de Inversion del Socio A:", PorIverSociA * 100 "%"
	
	PorIverSociB <- M / MonTotal
	escribir "Valor del porcentaje de Inversion del Socio B:", PorIverSociB * 100 "%"
	
	PorIverSociC <- X / MonTotal
	escribir "Valor del porcentaje de Inversion del Socio C:", PorIverSociC * 100 "%"
	
	escribir "Valor de las Ganancias del Año GA:"
	leer GA
	
	VC60 <- GA * 60 / 100
	escribir "El valor correspondiente al 60% de las ganancias:",VC60
	
	VC40 <- GA * 40 / 100
	escribir "El valor correspondiente al 40% de las ganancias:",VC40
	
	VC60SA <- VC60 * PorIverSociA 
	escribir "El valor del 60% de las ganancias que invierte el socio A:",VC60SA
	
	VC60SB <- VC60 * PorIverSociB
	escribir "El valor del 60% de las ganancias que invierte el socio B:",VC60SB
	
	VC60SC <- VC60 * PorIverSociC
	escribir "El valor del 60% de las ganancias que invierte el socio C:",VC60SC
	
	VTIDRSA <-VC60SA + N
	escribir "El valor total invertido por el socio A después de la nueva reinversión:",VTIDRSA
	
	VTIDRSB <- M + VC60SB
	escribir "El valor total invertido por el socio B después de la nueva reinversión:",VTIDRSB
	
	VTIDRSC <- X + VC60SC
	escribir "El valor total invertido por el socio C después de la nueva reinversión:",VTIDRSC
	
	VTISA <- VC40 * PorIverSociA
	escribir "El valor del 40% de las ganancias que le corresponde al socio A por utilidad:",VTISA
	
	VTISB <- VC40 * PorIverSociB
	escribir "El valor del 40% de las ganancias que le corresponde al socio B por utilidad:",VTISB
	
	VTISC <- VC40 * PorIverSociC
	escribir "El valor del 40% de las ganancias que le corresponde al socio C por utilidad:",VTISC
	
FinProceso
