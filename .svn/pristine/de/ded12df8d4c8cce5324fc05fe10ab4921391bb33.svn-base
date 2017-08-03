//import gladiadorHerencia.*
import gladiador.*
import armas.*

object fixture {
	method crearMirmiConHacha(){
		const hacha = new ArmaFilosa(2, 1)
		return new Mirmillon(20, hacha, escudo)
	}
	method crearDimaConMartillos(){
		const dima = new Dimachaerus(10) 
		dima.arma(new ArmaContundente(10))
		dima.arma(new ArmaContundente(20))
		return dima
	}
	
	method crearMirmiConCasco(){
		return new Mirmillon(20, new ArmaContundente(20), casco)
	}
	method crearDimaMuyArmado(){
		const dima = new Dimachaerus(10) 
		10.times{dima.arma(new ArmaFilosa(3,2))}
		return dima
	}
}