object knightRider {
	var property peso = 500
	var property peligrosity = 10
	method nivelPeligrosity() = peligrosity
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
}

object paqueteLadrillos{
	const property pesou = 2
	const property peligrosity = 2
	var property cantidad = 0
	method nivelPeligrosity() = peligrosity
	method peso() = (pesou * cantidad)
}


object arena {
	var property peso = 0
	var property peligrosity = 1
	method nivelPeligrosity() = peligrosity
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
}

object residuosRadioactivos {
	var property peso = 0
	const  peligrosity = 200
	method nivelPeligrosity() = peligrosity
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



}


