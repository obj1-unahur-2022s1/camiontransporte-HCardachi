object knightRider {
	var property peso = 500
	var property peligrosity = 10
	method nivelPeligrosity() = peligrosity
	
	method totalBultos() = 1
	method sufrirConsecuencia() {}
}


object bumblebee {
	var property peso = 800
	const peligrosity = 15
	var property auto = true
	method nivelPeligrosity() {
		 if (auto)
		 	return peligrosity 
		 else 
		 	return (peligrosity * 2) 
	}
	method totalBultos() = 2
	method sufrirConsecuencia() { auto = false }
}

object paqueteLadrillos{
	const property pesou = 2
	const property peligrosity = 2
	var property cantidad = 0
	method nivelPeligrosity() = peligrosity
	method peso() = (pesou * cantidad)
	
	method totalBultos() { 
		var bultos = 0
		
		if (cantidad <= 100) {bultos = 1} 
		if (cantidad.between(101,300)) {bultos = 2}
		if (cantidad >= 301) {bultos = 3}
		
		return bultos
		}
		
	method sufrirConsecuencia() { cantidad += 12 }
}


object arena {
	var property peso = 0
	var property peligrosity = 1
	method nivelPeligrosity() = peligrosity
	
	method totalBultos() = 1
	method sufrirConsecuencia() { peso += 20 }
}

object bateriaAntiaerea {
	const peso = 300
	const peligrosity = 100
	var property misiles = true
	
	method peso() {
	 if (misiles)
	  return peso 
	 else 
	  return 200	
	} 
	method nivelPeligrosity() {
		if (misiles) 
			return peligrosity 
		else 
			return 0
	}
	method totalBultos() { 
		var totalBultos = 0
		if (misiles) {totalBultos = 2} 
		else {totalBultos = 1}
		  return totalBultos
		}
		
	method sufrirConsecuencia() { self.misiles(true) }
}

object contenedor {
const peso = 100
var property contiene = []
var aux
 method agregar(cosa) {contiene.add(cosa)}
 method quitar(cosa){contiene.remove(cosa)}
 method peso() = peso + contiene.sum( { x => x.peso()} ) 
 //method nivelPeligrosity() = if contiene.isEmpty() 0 else contiene.max( { x => x.nivelPeligrosity()} )
 method nivelPeligrosity() {
 	if (contiene.isEmpty())
 		return 0 
 	else 
 		{
 		aux = contiene.max( { x => x.nivelPeligrosity()} )
 		return aux.nivelPeligrosity()
 		}
 	}
 	method totalBultos() = 1 + contiene.sum({ c => c.totalBultos() })
	
	method sufrirConsecuencia() {
		contiene.forEach({ c => c.sufrirConsecuencia() })
	}
}

object residuosRadioactivos {
	var property peso = 0
	const  peligrosity = 200
	method nivelPeligrosity() = peligrosity
	method totalBultos() = 1
	method sufrirConsecuencia() {peso += 15}
}


object embalajeSeguridad {
var property contiene 
//method embalar (cosa) {contiene = cosa)}
//method desembalar (sa) {contiene(cosa)}
method peso() {
 	if (contiene == 0) 
 		return 0 
 	else 
 		return contiene.peso()
 	}
 	
 method nivelPeligrosity() = contiene.nivelPeligrosity() / 2
 method totalBultos() = 2
 method sufrirConsecuencia() {}


}


