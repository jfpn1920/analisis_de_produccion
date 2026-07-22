Algoritmo analisis_de_produccion
	Definir opcion, totalProducciones Como Entero
	Definir i, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir suma, promedio, mayorCantidad, menorCantidad Como Real
	Definir completadas, enProceso, pendientes Como Entero
	Dimension id[100]
	Dimension producto[100]
	Dimension cantidad[100]
	Dimension fecha[100]
	Dimension turno[100]
	Dimension operario[100]
	Dimension estado[100]
	totalProducciones <- 0
	//----------------------------------------//
	//--|menu_principal_analisis_produccion|--//
	//----------------------------------------//
	Repetir
		Escribir "menu principal analisis de produccion"
		Escribir "1) registrar produccion"
		Escribir "2) editar produccion"
		Escribir "3) eliminar produccion"
		Escribir "4) buscar produccion"
		Escribir "5) listar producciones"
		Escribir "6) ver detalles de la produccion"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//--------------------------//
			//--|registrar_produccion|--//
			//--------------------------//
			1:
				Si totalProducciones < 100 Entonces
					totalProducciones <- totalProducciones + 1
					id[totalProducciones] <- totalProducciones
					Escribir "ingrese el nombre del producto:"
					Leer producto[totalProducciones]
					Escribir "ingrese la cantidad producida:"
					Leer cantidad[totalProducciones]
					Escribir "ingrese la fecha:"
					Leer fecha[totalProducciones]
					Escribir "ingrese el turno:"
					Leer turno[totalProducciones]
					Escribir "ingrese el nombre del operario:"
					Leer operario[totalProducciones]
					Escribir "ingrese el estado (completada / en proceso / pendiente):"
					Leer estado[totalProducciones]
					Escribir "produccion registrada correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas producciones."
				FinSi
			//-----------------------//
			//--|editar_produccion|--//
			//-----------------------//
			2:
				Escribir "editar produccion"
				Si totalProducciones = 0 Entonces
					Escribir "no hay producciones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalProducciones Hacer
						Escribir id[i], " | ", producto[i], " | ", cantidad[i], " | ", fecha[i], " | ", turno[i], " | ", operario[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la produccion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProducciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo producto:"
							Leer producto[i]
							Escribir "ingrese la nueva cantidad:"
							Leer cantidad[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese el nuevo turno:"
							Leer turno[i]
							Escribir "ingrese el nuevo operario:"
							Leer operario[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "produccion editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una produccion con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|eliminar_produccion|--//
			//-------------------------//
			3:
				Escribir "eliminar produccion"
				Si totalProducciones = 0 Entonces
					Escribir "no hay producciones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalProducciones Hacer
						Escribir id[i], " | ", producto[i], " | ", cantidad[i], " | ", fecha[i], " | ", turno[i], " | ", operario[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la produccion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProducciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalProducciones Entonces
								Para j <- i Hasta totalProducciones - 1 Hacer
									id[j] <- id[j+1]
									producto[j] <- producto[j+1]
									cantidad[j] <- cantidad[j+1]
									fecha[j] <- fecha[j+1]
									turno[j] <- turno[j+1]
									operario[j] <- operario[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalProducciones <- totalProducciones - 1
							Escribir "produccion eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una produccion con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|buscar_produccion|--//
			//-----------------------//
			4:
				Escribir "buscar produccion"
				Si totalProducciones = 0 Entonces
					Escribir "no hay producciones registradas."
				SiNo
					Escribir "ingrese el id de la produccion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProducciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", producto[i], " | ", cantidad[i], " | ", fecha[i], " | ", turno[i], " | ", operario[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una produccion con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|listar_producciones|--//
			//-------------------------//
			5:
				Escribir "listar producciones"
				Si totalProducciones = 0 Entonces
					Escribir "no hay producciones registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalProducciones Hacer
						Escribir id[i], " | ", producto[i], " | ", cantidad[i], " | ", fecha[i], " | ", turno[i], " | ", operario[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_produccion|--//
			//-----------------------------//
			6:
				Escribir "ver detalles de la produccion"
				Si totalProducciones = 0 Entonces
					Escribir "no hay producciones registradas."
				SiNo
					Escribir "ingrese el id de la produccion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProducciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la produccion"
							Escribir "id: ", id[i]
							Escribir "producto: ", producto[i]
							Escribir "cantidad: ", cantidad[i]
							Escribir "fecha: ", fecha[i]
							Escribir "turno: ", turno[i]
							Escribir "operario: ", operario[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una produccion con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalProducciones = 0 Entonces
					Escribir "no hay producciones registradas."
				SiNo
					suma <- 0
					mayorCantidad <- cantidad[1]
					menorCantidad <- cantidad[1]
					completadas <- 0
					enProceso <- 0
					pendientes <- 0
					Para i <- 1 Hasta totalProducciones Hacer
						suma <- suma + cantidad[i]
						Si cantidad[i] > mayorCantidad Entonces
							mayorCantidad <- cantidad[i]
						FinSi
						Si cantidad[i] < menorCantidad Entonces
							menorCantidad <- cantidad[i]
						FinSi
						Si estado[i] = "completada" Entonces
							completadas <- completadas + 1
						SiNo
							Si estado[i] = "en proceso" Entonces
								enProceso <- enProceso + 1
							SiNo
								Si estado[i] = "pendiente" Entonces
									pendientes <- pendientes + 1
								FinSi
							FinSi
						FinSi
					FinPara
					promedio <- suma / totalProducciones
					Escribir "estadistica general"
					Escribir "total de producciones: ", totalProducciones
					Escribir "cantidad total producida: ", suma
					Escribir "promedio de produccion: ", promedio
					Escribir "mayor produccion: ", mayorCantidad
					Escribir "menor produccion: ", menorCantidad
					Escribir "producciones completadas: ", completadas
					Escribir "producciones en proceso: ", enProceso
					Escribir "producciones pendientes: ", pendientes
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar analisis de produccion."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo