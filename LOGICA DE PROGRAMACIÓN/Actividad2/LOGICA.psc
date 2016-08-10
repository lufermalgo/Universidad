Proceso Venta
	Definir formapag, sw Como Caracter
	Definir vlrcompra, porcfin, vlrneto, vlrdesc, vlrincre, tldescont, tlpfin10, tlpfin15, tlpfin20, tlpfin30, tlfin Como Real
	Definir nccon, ncom15, ncom30, ncom60, ncom90 Como Entero
	sw<-"S"
	nccon<-0
	ncom15<-0
	ncom30<-0
	ncom60<-0
	ncom90<-0
	tldescont<-0
	tlpfin10<-0
	tlpfin15<-0
	tlpfin20<-0
	tlpfin30<-0
	tlfin<-0
	mientras sw = "S" Hacer
		Escribir Sin Saltar "Ingrese el valor de la compra:";
		Leer vlrcompra
		Escribir Sin Saltar "Ingrese la forma de pago C(Contado) F(Financiado):";
		Leer formapag
		Mientras formapag <> "C" y formapag <> "F"   Hacer
			Escribir Sin Saltar "Ha ingresado un valor no valido Ingrese la forma de pago C(Contado) F(Financiado):";
			Leer formapag
		FinMientras
		Si formapag = "C" Entonces
			nccon<-nccon+1
			vlrdesc<-vlrcompra*20/100
			vlrneto<-vlrcompra-vlrdesc
			tldescont<-tldescont+vlrdesc
		Sino
			Escribir Sin Saltar "Ingrese el numero de cuotas 15/30/60/90:";
			Leer cancuo
			Mientras cancuo <> 15 y cancuo <> 30 y cancuo <> 60 y cancuo <> 90  Hacer
				Escribir Sin Saltar "Ha ingresado un valor no valido. Ingrese el numero de cuotas 15/30/60/90:";
				Leer cancuo
			FinMientras			
			Segun  cancuo Hacer
				15: porcfin<-10
				30: porcfin<-15
				60: porcfin<-20
				90: porcfin<-30	
			FinSegun
			Si	cancuo =15 Entonces
				ncom15<-ncom15+1
				vlrincre<-vlrcompra*porcfin/100
				vlrneto<-vlrcompra+vlrincre
				tlpfin10<-tlpfin10+vlrincre
			Sino Si	cancuo =30 Entonces
					ncom30<-ncom30+1
					vlrincre<-vlrcompra*porcfin/100
					vlrneto<-vlrcompra+vlrincre
					tlpfin15<-tlpfin15+vlrincre
				Sino Si	cancuo =60 Entonces
						ncom60<-ncom60+1
						vlrincre<-vlrcompra*porcfin/100
						vlrneto<-vlrcompra+vlrincre
						tlpfin20<-tlpfin20+vlrincre
					Sino Si	cancuo =90 Entonces
							ncom90<-ncom90+1
							vlrincre<-vlrcompra*porcfin/100
							vlrneto<-vlrcompra+vlrincre
							tlpfin30<-tlpfin30+vlrincre								
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "Valor neto a pagar:" vlrneto;
		Escribir Sin Saltar "¿Desea ingresar otra compra? S/N:";
		Leer sw
		Mientras sw <> "S" y sw <> "N"   Hacer
			Escribir Sin Saltar "Ha ingresado un valor no valido ¿Desea ingresar otra compra? S/N:";
			Leer sw
		FinMientras
	FinMientras
	tlfin<-tlpfin10+tlpfin15+tlpfin20+tlpfin30
	Escribir "El total descontado a los clientes " tldescont;
	Escribir "El total pagado por los clientes por financiación del 10% " tlpfin10;
	Escribir "El total pagado por los clientes por financiación del 15% " tlpfin15;
	Escribir "El total pagado por los clientes por financiación del 20% " tlpfin20;
	Escribir "El total pagado por los clientes por financiación del 30% " tlpfin30;
	Escribir "El total pagado por financiamiento " tlfin;
	Escribir "El número de compras realizadas al contado " nccon;
	Escribir "El número de compras realizadas a Crédito a 15 días " ncom15;
	Escribir "El número de compras realizadas a Crédito a 30 días " ncom30;
	Escribir "El número de compras realizadas a Crédito a 60 días " ncom60;
	Escribir "El número de compras realizadas a Crédito a 90 días " ncom90;
FinProceso
