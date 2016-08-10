Proceso Logica
	Definir ISA, ISB, ISC, Gan, InvT, PISA, PISB, PISC, VlrG60, VlrG40, PVlrGSA, PVlrGSB, PVlrGSC, VlrTISA, VlrTISB, VlrTISC, USA, USB, USC Como Real
	Escribir Sin Saltar "Ingrese el valor invertido por el socio A:";
	Leer ISA;
	Escribir Sin Saltar "Ingrese el valor invertido por el socio B:";
	Leer ISB;
	Escribir Sin Saltar "Ingrese el valor invertido por el socio C:";
	Leer ISC;
	Escribir Sin Saltar "Ingrese el valor de ganancias del año:";
	Leer Gan;
	InvT <- ISA+ISB+ISC
	PISA <- ISA/InvT*100
	PISB <- ISB/InvT*100
	PISC <- ISC/InvT*100
	VlrG60 <- Gan*60/100
	VlrG40 <- Gan*40/100
	PVlrGSA <- VlrG60*PISA/100
	PVlrGSB <- VlrG60*PISB/100
	PVlrGSC <- VlrG60*PISC/100
	VlrTISA <- PVlrGSA+ISA
	VlrTISB <- PVlrGSB+ISB
	VlrTISC <- PVlrGSC+ISC
	USA <- VlrG40*PISA/100
	USB <- VlrG40*PISB/100
	USC <- VlrG40*PISC/100
	Escribir "El monto total que invirtieron los socios para crear la empresa tecnológica: " InvT;
	Escribir "El porcentaje de inversión del socio A: " PISA;
	Escribir "El porcentaje de inversión del socio B: " PISB;
	Escribir "El porcentaje de inversión del socio C: " PISC;
	Escribir "El valor correspondiente al 60% de las ganancias: " VlrG60;
	Escribir "El valor correspondiente al 40% de las ganancias: " VlrG40;
	Escribir "El valor del 60% de las ganancias que invierte el socio A: " PVlrGSA;
	Escribir "El valor del 60% de las ganancias que invierte el socio B: " PVlrGSB;
	Escribir "El valor del 60% de las ganancias que invierte el socio C: " PVlrGSC;
	Escribir "El valor total invertido por el socio A después de la nueva reinversión: " VlrTISA;
	Escribir "El valor total invertido por el socio B después de la nueva reinversión: " VlrTISB;
	Escribir "El valor total invertido por el socio C después de la nueva reinversión: " VlrTISC;
	Escribir "El valor del 40% de las ganancias que le corresponde al socio A por utilidad: " USA;
	Escribir "El valor del 40% de las ganancias que le corresponde al socio B por utilidad: " USB;
	Escribir "El valor del 40% de las ganancias que le corresponde al socio C por utilidad: " USC;
FinProceso