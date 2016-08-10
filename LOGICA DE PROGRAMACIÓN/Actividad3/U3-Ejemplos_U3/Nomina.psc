Funcion IniciarVariables(TotNom por referencia, MaySal Por Referencia, MenSal Por Referencia)
	TotNom <- 0
	MaySal <- 0
	MenSal <- 999999999
FinFuncion

Funcion x <- LeerValor(msn, Li, Ls)
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

Funcion Cad <- LeerCadena(msn)
	Borrar Pantalla
	Repetir
		Escribir Sin Saltar msn
		Leer Cad
		Si Cad = "" Entonces
			Escribir "*** ERROR  *** No puede quedar en blanco..."
			Escribir "Presione una tecla para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que (CAd <> "")
FinFuncion


Funcion HExt <- HorasExtras(HTra)
	Si HTra > 240 Entonces
		HExt <- HTra - 240
	Sino
		HExt <- 0
	FinSi
FinFuncion

Funcion VHExt <- ValorHorasExtra(HExt, Suel) 
	VHExt <- ((Suel/240)*HExt)+ ((Suel/240)*HExt * (35/100))
FinFuncion

Funcion Boni <- Bonificacion(Suel, Ls)
	Si Suel<Ls Entonces
		Boni <- 50000
	Sino
		Boni <- 0
	FinSi
FinFuncion

Funcion PorcentajeSSyPension(Suel Por Valor, PSS por Referencia, PPen Por Referencia)
	Si Suel  < 500000 entonces
		PSS <- 1/100
		PPen <- 0.5/100
	SiNo
		Si Suel < 1000000 Entonces
			PSS <- 2/100
			PPen <- 1/100
		SiNo
			Si Suel < 1500000 Entonces
				PSS <- 3/100
				PPen <- 1.5/100
			Sino
				Si Suel < 2000000 Entonces
					PSS <- 4/100
					PPen <- 2/100
				Sino
					Si Suel < 3000000 Entonces
						PSS <- 5/100
						PPen <- 2.5/100
					Sino
						PSS <- 6/100
						PPen <- 3/100
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion Res <- ValorDescuento(Val, Porc)
	Res <- Val*Porc
FinFuncion

Funcion Deve <- Devengado(Suel, Boni, VHExt)
	Deve <- Suel+Boni+VHExt
FinFuncion

Funcion Dedu <- Deducido(VSS, VPen)
	Dedu <- VSS+VPen
FinFuncion

Funcion Neto <- NetoPagar(Deve, Dedu)
	Neto <- Deve - Dedu
FinFuncion

Funcion TotNom <- SumarSueldo(Suel, TotNom)
	TotNom <- TotNom+Suel
FinFuncion

Funcion MayorMenorSalario(Suel por valor, Nom por valor, Ape Por Valor, NomMay por referencia, NomMen Por Referencia, MaySal Por Referencia, MenSal Por Referencia)
	Si Suel > MaySal Entonces
		MaySal <- Suel
		NomMay <- Nom+ " "+Ape
	FinSi
	Si Suel < MenSal Entonces
		MenSal <- Suel
		NomMen <- Nom+ " "+Ape
	FinSi
FinFuncion

Funcion MostrarDatos(Ced, Nom, Ape, Suel, HExt, VHExt, Boni, PSS, PPen, VSS, VPen, Deve, Dedu, Neto)
	Borrar Pantalla
	Escribir "DATOS DEL EMPLEADO"
	Escribir "Cédula : ", Ced
	Escribir "Nombres: ", Nom, " ", Ape
	Escribir "Sueldo : ", Suel
	Escribir ""
	Escribir "DEVENGADO"
	Escribir "Bonificación   : ", Boni
	Escribir "Horas Extras   : ",HExt,"  Valor Horas Extras: ", VHExt
	Escribir "Total Devengado: ", Deve
	Escribir ""
	Escribir "DEDUCIDOS"
	Escribir "Seguridad social: ", PSS, " Valor: ", VSS
	Escribir "Pensión         : ", PPen, " Valor: ", VPen
	Escribir "Total Deducido  : ", Dedu
	Escribir ""
	Escribir "Neto a pagar: $", Neto
	Escribir ""
	Escribir "Presione una tecla para continuar..."
	Leer tecla
FinFuncion

Funcion MostrarTotales(TotNom, MaySal, MenSal, NomMay, NomMen)
	Borrar Pantalla
	Escribir "ESTADISTICAS"
	Escribir "Total pagado en nomina    : $", TotNom
	Escribir "Empleado con mayor sueldo : ", NomMay, " Salario: ", MaySal
	Escribir "Empleado con menor salario: ", NomMen, " Salario: ", MenSal
FinFuncion

Proceso Nomina//Programa principal
	IniciarVariables(TotNom, MaySal, MenSal)
	Repetir
		Ced <- LeerValor("Ingrese la cedula del empleado: ", 1, 999999999999)
		Nom <- LeerCadena("Ingrese el nombre del empleado: ")
		Ape <- LeerCadena("Ingrese los apellidos del empleado: ")
		Suel <- LeerValor("Ingrese el sueldo del empleado: ", 616000, 10000000)
		Htra <- LeerValor("Ingrese las horas trabajadas", 0, 250)
		HExt <- HorasExtras(HTra)
		VHExt <- ValorHorasExtra(HExt, Suel)
		Boni <- Bonificacion(Suel, 900000)
		PorcentajeSSyPension(Suel, PSS, PPen)
		VSS <- ValorDescuento(Suel, PSS)
		VPen <- ValorDescuento(Suel, PPen)
		Deve <- Devengado(Suel, Boni, VHExt)
		Dedu <- Deducido(VSS, VPen)
		Neto <- NetoPagar(Deve, Dedu)
		TotNom <- SumarSueldo(Suel, TotNom)
		MayorMenorSalario(Suel, Nom, Ape, NomMay, NomMen, MaySal, MenSal)
		MostrarDatos(Ced, Nom, Ape, Suel, HExt, VHExt, Boni, PSS, PPen, VSS, VPen, Deve, Dedu, Neto)
		Op <- LeerValor("Ingrese: 0. Salir,  1. Para Continuar", 0, 1)
	Hasta Que Op = 0
	MostrarTotales(TotNom, MaySal, MenSal, NomMay, NomMen)
FinProceso
