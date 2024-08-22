object pepita {
	var energia = 100
 
	//Orden
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	//Orden
	method volar(distancia) {
		energia = energia - 10 - distancia
		
	}
	
	//Getter / Consulta
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	//Getter
	method madurez() {
		return madurez
	}
	
	//Setter
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez += 1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon{

}
