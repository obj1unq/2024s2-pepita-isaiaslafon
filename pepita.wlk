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
	var energia = 30
 
	//Orden común.
	method comer(comida) {
		energia += comida.energiaQueAporta() / 2
	}
	
	//Orden común.
	method volar(distancia) {
		energia -= 20 + distancia * 2
		
	}
	
	//Getter / Consulta.
	method energia() {
		return energia
	}

}

object roque{
	var ave = pepita
	var cenas = 0

	//Orden común porque actualiza las cenas.
	method ave(_ave){
		ave = _ave
		cenas = 0 //Reinicia las cenas al cambiar de Ave!
	}

	//Getter!
	method cenas(){
		return cenas		
	}

	method alimentar(alimento){
		ave.comer(alimento)
		cenas += 1
	}
}