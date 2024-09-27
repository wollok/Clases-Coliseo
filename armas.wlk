class ArmaFilosa {
	var longitud
	var filo

	method poderAtaque() = longitud * filo

}

class ArmaContundente {
	var peso

	method poderAtaque() = peso
}

object casco {
	method defensa(unGladiador) = 5
}

object escudo {
	const defensa = 10
	method defensa(unGladiador) =
		 defensa + unGladiador.destreza() / 10

}