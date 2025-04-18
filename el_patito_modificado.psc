// Calcula varios promedios hasta que el usuario decida terminar

Algoritmo PromedioMultiple
	
	Definir n, i, dato, acum Como Real
	Definir prom Como Real
	Definir continuar Como Caracter
	
	continuar <- "si"
	
	Mientras continuar = "si" Hacer
		
		Escribir "Ingrese la cantidad de datos:"
		Repetir
			Leer n
			Si n <= 0 Entonces
				Escribir "El n�mero debe ser positivo y distinto de cero."
			Fin Si
		Hasta Que n > 0
		
		acum <- 0
		
		Para i <- 1 Hasta n Hacer
			Escribir "Ingrese el dato ", i, ":"
			Repetir
				Leer dato
				Si dato < 0 Entonces
					Escribir "El dato debe ser positivo."
				Fin Si
			Hasta Que dato >= 0
			acum <- acum + dato
		Fin Para
		
		prom <- acum / n
		Escribir "El promedio es: ", prom
		
		Escribir "�Desea calcular otro promedio? (si/no):"
		Leer continuar
		continuar <- Minusculas(continuar)
		
	FinMientras
	
	Escribir "�Programa finalizado!"
	
	FinAlgoritmo

