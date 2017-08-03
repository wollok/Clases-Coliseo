import armas.*

class Mirmillon {
	const destreza = 15
	var vida = 100
	var fuerza
	var arma
	var armadura

	constructor(laFuerza, unArma, unaArmadura) {
		fuerza = laFuerza arma = unArma armadura = unaArmadura
	}

	method vida() {
		return vida
	}

	method destreza() {
		return destreza
	}

	//?
	method fuerza(nuevaFuerza) {
		fuerza = nuevaFuerza
	}

	method fuerza() {
		return fuerza
	}

	method poderAtaque() {
		return arma.poderAtaque() + fuerza
	}

	method defensa() {
		return armadura.defensa(self) + self.destreza()
	}

	method arma(armaNueva) {
		arma = armaNueva
	}

	method arma() {
		return arma
	}

	method armadura(nueva) {
		armadura = nueva
	}
	method atacar(unGladiador) {
		unGladiador.recibirAtaque(self.poderAtaque())
	}
	method recibirAtaque(poderAtaque) {
		vida = vida - ( poderAtaque - self.defensa() )
	}
	method pelearContra(unGladiador) {
		self.atacar(unGladiador)
		unGladiador.atacar(self)
	}
}

class Dimachaerus {
	var destreza
	const fuerza = 10
	var armas = [ ]
	var vida = 100

	constructor(unaDestreza) {
		destreza = unaDestreza
	}

	method vida() {
		return vida
	}

	method darArma(nuevaArma) {
		armas.add(nuevaArma)
	}

	method quitarArma(arma) {
		armas.remove(arma)
	}

	method poderAtaque() {
		return fuerza + armas.sum({ unArma => unArma.poderAtaque() })
	}

	method atacar(unGladiador) {
		unGladiador.recibirAtaque(self.poderAtaque())
		destreza = destreza + 1
	}

	method recibirAtaque(poderAtaque) {
		vida = vida - ( poderAtaque - self.defensa() )
	}
	method defensa() {
		return destreza / 2
	}
	method pelearContra(unGladiador) {
		self.atacar(unGladiador)
		unGladiador.atacar(self)
	}
}