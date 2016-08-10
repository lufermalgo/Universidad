Algoritmo  Venta
	Definir formapag, sw Como Caracter
	Definir vlrcompra, porcfin, vlrneto, vlrdesc, vlrincre, tldescont, tlpfin10, tlpfin15, tlpfin20, tlpfin30, tlfin Como Real
	Definir nccon, ncom15, ncom30, ncom60, ncom90 Como Entero
	Iniciar(sw , nccon , ncom15 , ncom30 , ncom60 , ncom90 , tldescont , tlpfin10 , tlpfin15 , tlpfin20 , tlpfin30 , tlfin)
	mientras sw = "S" Hacer
		vlrcompra <- leervlrcompra("Ingrese el valor de la compra:")
		formapag <- consultavalidar("Ingrese la forma de pago C(Contado) F(Financiado):","Ha ingresado un valor no valido Ingrese la forma de pago C(Contado) F(Financiado):","C", "F")
		Si formapag = "C" Entonces
			calculocontado(nccon,  vlrneto, tldescont, vlrcompra)
		Sino
			cancuo <- consultacancuo ("Ingrese el numero de cuotas 15/30/60/90:", "Ha ingresado un valor no valido. Ingrese el numero de cuotas 15/30/60/90:", 15, 30,60,90)
			porcfin <- calcularporc (cancuo)
			Si	cancuo =15 Entonces
				calfin15(ncom15, vlrneto, tlpfin10, vlrcompra, porcfin)
			Sino Si	cancuo =30 Entonces
					calfin30(ncom30, vlrneto, tlpfin15, vlrcompra, porcfin)
				Sino Si	cancuo =60 Entonces
						calfin60(ncom60, vlrneto, tlpfin20, vlrcompra, porcfin)
					Sino Si	cancuo =90 Entonces
							calfin90(ncom90, vlrneto, tlpfin30, vlrcompra, porcfin)							
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "Valor neto a pagar:" vlrneto;
		sw <- consultavalidar("¿Desea ingresar otra compra? S/N:", "Ha ingresado un valor no valido ¿Desea ingresar otra compra? S/N:", "S", "N")
	FinMientras
	tlfin <- caltotalf(tlpfin10 ,tlpfin15 , tlpfin20 , tlpfin30 )
	impresul(tldescont, tlpfin10 ,tlpfin15 , tlpfin20 , tlpfin30, tlfin, nccon, ncom15, ncom30, ncom60, ncom90)
FinAlgoritmo

Funcion  Iniciar(sw por referencia, nccon por referencia, ncom15 por referencia, ncom30 por referencia, ncom60 por referencia, ncom90 por referencia, tldescont por referencia, tlpfin10 por referencia, tlpfin15 por referencia, tlpfin20 por referencia, tlpfin30 por referencia, tlfin por referencia)
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
FinFuncion

Funcion vlrcompra <- leervlrcompra(mensaje)
	Escribir Sin Saltar mensaje;
	Leer vlrcompra
FinFuncion

Funcion validar <- consultavalidar(mensaje1, mensaje2, op1, op2)
	Escribir Sin Saltar mensaje1;
	Leer validar
	Mientras validar <> op1 y validar <> op2   Hacer
		Escribir Sin Saltar mensaje2;
		Leer validar
	FinMientras
FinFuncion

Funcion calculocontado(nccon por referencia, vlrneto por referencia, tldescont por referencia, vlrcompra)
	nccon<-nccon+1
	vlrdesc<-vlrcompra*20/100
	vlrneto<-vlrcompra-vlrdesc
	tldescont<-tldescont+vlrdesc
FinFuncion

Funcion cantdias <- consultacancuo (mensaje1, mensaje2, op1, op2,op3,op4)
	Escribir Sin Saltar mensaje1;
	Leer cantdias
	Mientras cantdias <> op1 y cantdias <> op2 y cantdias <> op3 y cantdias <> op4  Hacer
		Escribir Sin Saltar mensaje2;
		Leer cantdias
	FinMientras	
FinFuncion

Funcion porc <- calcularporc (cancuo)
	Segun  cancuo Hacer
	15: porc<-10
	30: porc<-15
	60: porc<-20
	90: porc<-30
	FinSegun
FinFuncion

Funcion calfin15(ncom15 por referencia, vlrneto por referencia, tlpfin10 por referencia, vlrcompra, porcfin)
	ncom15<-ncom15+1
	vlrincre<-vlrcompra*porcfin/100
	vlrneto<-vlrcompra+vlrincre
	tlpfin10<-tlpfin10+vlrincre
FinFuncion

Funcion calfin30(ncom30 por referencia, vlrneto por referencia, tlpfin15 por referencia, vlrcompra, porcfin)
	ncom30<-ncom30+1
	vlrincre<-vlrcompra*porcfin/100
	vlrneto<-vlrcompra+vlrincre
	tlpfin15<-tlpfin15+vlrincre
FinFuncion

Funcion calfin60(ncom60 por referencia, vlrneto por referencia, tlpfin20 por referencia, vlrcompra, porcfin)
	ncom60<-ncom60+1
	vlrincre<-vlrcompra*porcfin/100
	vlrneto<-vlrcompra+vlrincre
	tlpfin20<-tlpfin20+vlrincre
FinFuncion

Funcion calfin90(ncom90 por referencia, vlrneto por referencia, tlpfin30 por referencia, vlrcompra, porcfin)
	ncom90<-ncom90+1
	vlrincre<-vlrcompra*porcfin/100
	vlrneto<-vlrcompra+vlrincre
	tlpfin30<-tlpfin30+vlrincre	
FinFuncion

Funcion total <- caltotalf (tlpfin10 ,tlpfin15 , tlpfin20 , tlpfin30 )
	total<-tlpfin10+tlpfin15+tlpfin20+tlpfin30
FinFuncion

Funcion impresul(tldescont, tlpfin10 ,tlpfin15 , tlpfin20 , tlpfin30,tlfin,nccon,ncom15,ncom30,ncom60,ncom90 )
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
FinFuncion
	