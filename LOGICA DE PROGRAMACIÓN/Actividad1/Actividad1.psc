Proceso EmpresaABC
	Escribir Sin Saltar "Inversi�n del socio A = $"
	leer N
	
	Escribir Sin Saltar "Inversi�n del socio B = $"
	leer M
	
	Escribir Sin Saltar "Inversi�n del socio C = $"
	leer X
		
	// a. El monto total que invirtieron los socios para crear la empresa tecnol�gica
	MT <- N + M + X 
	Escribir "El monto total que invirtieron los socios para crear la empresa tecnol�gica = $",MT
	// b. El porcentaje de inversi�n del socio A
	PIA <- N / MT 
	Escribir "El porcentaje de inversi�n del socio A = ",PIA*100 "%"
	// c. El porcentaje de inversi�n del socio B
	PIB <- M / MT 
	Escribir "El porcentaje de inversi�n del socio B = ",PIB*100 "%"
	// d. El porcentaje de inversi�n del socio C
	PIC <- X / MT 
	Escribir "El porcentaje de inversi�n del socio C = ",PIC*100 "%"
	
	Escribir Sin Saltar "Rentabilidad P = $"
	leer P
	
	// e. El valor correspondiente al 60% de las ganancias
	VCSP <- P * 0.60 
	Escribir "El valor correspondiente al 60% de las ganancias = $",VCSP
	// f. El valor correspondiente al 40% de las ganancias
	VCCP <- P * 0.40
	Escribir "El valor correspondiente al 60% de las ganancias = $",VCCP
	// g. El valor del 60% de las ganancias que invierte el socio A
	VSPA <- VCSP * PIA
	Escribir "El valor del 60% de las ganancias que invierte el socio A = $",VSPA
	// h. El valor del 60% de las ganancias que invierte el socio B
	VSPB <- VCSP * PIB
	Escribir "El valor del 60% de las ganancias que invierte el socio B = $",VSPB
	// i. El valor del 60% de las ganancias que invierte el socio C
	VSPC <- VCSP * PIC
	Escribir "El valor del 60% de las ganancias que invierte el socio C = $",VSPC
	// j. El valor total invertido por el socio A despu�s de la nueva reinversi�n
	VTRA <- VSPA + N
	Escribir "El valor total invertido por el socio A despu�s de la nueva reinversi�n = $",VTRA
	// k. El valor total invertido por el socio B despu�s de la nueva reinversi�n
	VTRB <- VSPB + M 
	Escribir "El valor total invertido por el socio B despu�s de la nueva reinversi�n = $",VTRB
	// l. El valor total invertido por el socio C despu�s de la nueva reinversi�n
	VTRC <- VSPC + X
	Escribir "El valor total invertido por el socio C despu�s de la nueva reinversi�n = $",VTRC
	// m. El valor del 40% de las ganancias que le corresponde al socio A por utilidad
	VCPUA <- VCCP * PIA
	Escribir "El valor del 40% de las ganancias que le corresponde al socio A por utilidad = $",VCPUA
	// n. El valor del 40% de las ganancias que le corresponde al socio B por utilidad
	VCPUB <- VCCP * PIB
	Escribir "El valor del 40% de las ganancias que le corresponde al socio B por utilidad = $",VCPUB
	// o. El valor del 40% de las ganancias que le corresponde al socio C por utilidad
	VCPUC <- VCCP * PIC
	Escribir "El valor del 40% de las ganancias que le corresponde al socio C por utilidad = $",VCPUC
FinProceso