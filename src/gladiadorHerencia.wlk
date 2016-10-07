import armas.*
import coliseo.*

class Gladiador {
	var destreza
	var fuerza
	var vida = 100
	
	method vida() {	return vida	}
	
	method puedeCombatir() {return vida > 0}
	
	method destreza() {return destreza}
	
	method curar(){
		vida = 100
	}

	method atacar(unGladiador) {
		unGladiador.recibirAtaque(self.poderAtaque())
	}
	method recibirAtaque(poderAtaque) {
		vida = vida - ( poderAtaque - self.defensa() )
	}

	method poderAtaque() {
		return fuerza + self.poderArmas()
	}
	
	method poderArmas()
	
	method defensa()

	method armarGrupoCon(gladiador) {
		const grupo = new Grupo(self.nombreGrupo(gladiador))
		grupo.agregarGladiador(self)
		grupo.agregarGladiador(gladiador)
		return grupo
	}
	
	method nombreGrupo(gladiador)
	
	method pelearContra(unGladiador) {
		self.atacar(unGladiador)
		unGladiador.atacar(self)
	}

	method masFuerte(){
		return self
	}
}

class Mirmillon inherits Gladiador {
	var arma
	var armadura

	constructor(laFuerza, unArma, unaArmadura) {
		fuerza = laFuerza 
		arma = unArma 
		armadura = unaArmadura
		destreza = 15
	}

	override method poderArmas() {
		return arma.poderAtaque()
	}

	override method defensa() {
		return armadura.defensa(self) + self.destreza()
	}
	
	method arma(armaNueva) {
		arma = armaNueva
	}

	method armadura(nueva) {
		armadura = nueva
	}

	override method nombreGrupo(gladiador) {
		return "Mirmillolandia"
	}
	
}

class Dimachaerus inherits Gladiador{
	var armas = [ ]

	constructor(unaDestreza) {
		destreza = unaDestreza
		fuerza = 10
	}

	method arma(nuevaArma) {
		armas.add(nuevaArma)
	}

	override method poderArmas() {
		return armas.sum({ unArma => unArma.poderAtaque() })
	}

	override method atacar(gladiador) {
		super(gladiador) 
		destreza = destreza + 1
	}

	override method defensa() {
		return destreza / 2
	}
	
	override method nombreGrupo(gladiador) {
		return "D-"+(self.poderAtaque()+gladiador.poderAtaque())
	}
}