Algoritmo  DistribuirSumaAsegurada
    Definir suma, parte_aseguradora, parte_socio1, parte_socio2, parte_especial Como Real
	
    Escribir "Ingrese la suma asegurada: "
    Leer suma
	
    parte_aseguradora = 0
    parte_socio1 = 0
    parte_socio2 = 0
    parte_especial = 0
	
    Si suma <= 100000 Entonces
        parte_aseguradora = suma * 0.80
        parte_socio1 = suma * 0.10
        parte_socio2 = suma * 0.10
	FinSi
	
	
		Si suma <= 120000 Entonces
			parte_aseguradora = 100000 * 0.80
			parte_socio1 = 100000 * 0.10 + (suma - 100000) / 2
			parte_socio2 = 100000 * 0.10 + (suma - 100000) / 2
			
		Sino
			parte_aseguradora = 100000 * 0.80
			parte_socio1 = 100000 * 0.10 + 10000
			parte_socio2 = 100000 * 0.10 + 10000
			parte_especial = suma - 120000
	FinSi
		
		Escribir "Parte aseguradora: ", parte_aseguradora
		Escribir "Parte socio 1: ", parte_socio1
		Escribir "Parte socio 2: ", parte_socio2
		
		Si parte_especial > 0 Entonces
			Escribir "Parte especial: ", parte_especial
		FinSi
FinAlgoritmo

