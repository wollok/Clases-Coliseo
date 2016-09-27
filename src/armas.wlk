class ArmaFilosa {
	var longitud
	var filo

	constructor(long, fi) {
		filo = fi 
		longitud = long
	}
	method poderAtaque() {
		return longitud * filo
	}
}

class ArmaContundente {
	var peso

	constructor(nuevoPeso) {
		peso = nuevoPeso
	}

	method poderAtaque() {
		return peso
	}
}

object casco {
	method defensa(unGladiador) {
		return 5
	}
}

object escudo {
	const defensa = 10
	method defensa(unGladiador) {
		return defensa + unGladiador.destreza() / 10
	}
}