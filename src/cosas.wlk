/*
 * 
 */
/* Revisar todo lo siguiente
 * knightRider:  Mal uso del var property
 * bumblebee: Mal uso del var property
 * paqueteLadrillos: Mal uso del var property
 * arena: Regular Mal uso del var property
 * Contenedor: Revisar comentarios, por el atributo aux ¿Porqué lo pusite?
 * embalajeSeguridad: El método peso() esta MAL
 */

object knightRider {
	/*
	 * El peso y la peligrosidad no eran var property eran métodos
	 * Además si definite peligrosity como var property para que escribiste el metodo nivelPeligrosity()
	 */
	var property peso = 500
	var property peligrosity = 10
	method nivelPeligrosity() = peligrosity
}


object bumblebee {
	/* peso no es var Property */
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
	/* pesou y peligrosity no debería ser var properties */
	const property pesou = 2
	const property peligrosity = 2
	var property cantidad = 0
	method nivelPeligrosity() = peligrosity
	method peso() = (pesou * cantidad)
}


object arena {
	/* peligrosity no es var property */
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
/* Este atributo aux esta de mas. Lo deberías incluir en el metodo no es un atributo del objecto */
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
 		return contiene.max( { x => x.nivelPeligrosity()} ).nivelPeligrosity()
 
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
	/*
	* el if es este método esta mal.Esta comparando un objeto contra un numero
	* Además es innecesarios
	*/
 	
 		return contiene.peso()
 	}
 	
 method nivelPeligrosity() = contiene.nivelPeligrosity() / 2



}


