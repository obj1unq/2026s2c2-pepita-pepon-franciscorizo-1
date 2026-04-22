object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia/10
	}

	method cansada() {
		return energia < 30
	}
	
	method energia() {
		return energia
	}
}
object pepon {
  var energia = 30 
  method energia() {
	return energia
  } 
  method comer(comida) {
	energia = energia + (comida.energiaQueAporta() / 2) 
  }
  method volar(kilometros) {
	energia = energia - 20 - (2 * kilometros)
  }
  method cansada(pepon) {
	return energia < 34
  } 
}
object rebeca {
  var aveActual = pepita
  var cenas = 0
  method aveActual() {
	return aveActual
  } 
  method elegirAve(ave) {
	aveActual = ave 
  }
   method alimentar(comida) {
	   aveActual.comer(comida)
	   cenas = cenas + 1 
   }
   method cenas() {
	return cenas
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
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}