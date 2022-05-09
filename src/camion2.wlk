import cosas2.*

object camion {
 const tara = 1000
 var carga = []
 
 method cargar(cosa) {carga.add(cosa)}
 method descargar(cosa){carga.remove(cosa)}
 method todoPesoPar() {
 	//si el peso de cada uno de los objetos cargados es un número par
 	return carga.forEach(carga.peso()%2 == 0)
 }
 method hayAlgunoQuePesa(peso)= carga.any().peso() == peso  	
 
 method elDeNivel(nivel) = carga.find( {c => c.nivelPeligrosity() == nivel} ) 
 
 method pesoTotal() = tara + carga.sum( {c => c.peso() } )
 
 method excedidoDePeso() = self.pesoTotal() > 2500
 
 method objetosQueSuperanPeligrosidad(nivel) = carga.filter( {c => c.nivelPeligrosity() == nivel} )
 
 method objetosMasPeligrososQue(cosa) = carga.filter( {c => c.nivelPeligrosity() > cosa.nivelPeligrosity() } )
 
 method puedeCircularEnRuta(nivelMaximoPeligrosidad) = !self.excedidoDePeso() and !carga.any( {c => c.nivelPeligrosity() > nivelMaximoPeligrosidad} )	 

// ** AGREGADOS ENUNCIADO **
//(min, max)`: indica si el peso de alguna de las cosas que tiene el camión está en ese intervalo; 
 method tieneAlgoQuePesaEntre(min, max) = carga.filter( {c => c.peso().between(min,max) } )
 	

 // la cosa más pesada que tenga el camión. Ojo que lo que se pide es _la cosa_ y no su peso.
 method cosaMasPesada() = carga.max( { c => c.peso() })	

//devuelve una lista con _los pesos_ de cada cosa que tiene el camión.
 method pesos() = carga.map( {c => c.peso() } )
 
 
}
