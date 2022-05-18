/*
 * todoPesoPar() -> Podes usar el mensaje even() a un numero para saber es par
 * elDeNivel(nivel) -> Debias usar find (el que dejaste comentado). Porque filter?
 * objetosMasPeligrososQue(cosa) podias reutlizar el método objetosQueSuperanPeligrosidad(nivel)
 * tieneAlgoQuePesaEntre debias usar any()
 */
import cosas.*

object camion {
 const tara = 1000
 var carga = []
 
 method cargar(cosa) {carga.add(cosa)}
 method descargar(cosa){carga.remove(cosa)}
 //method todoPesoPar() {}
 
//si el peso de cada uno de los objetos cargados es un número par 
 method todoPesoPar() = carga.all({c => c.peso().even()})

 //method hayAlgunoQuePesa(peso)= carga.any().peso() == peso  
 method hayAlgunoQuePesa(peso) = carga.any({c => c.peso()== peso}) 	
 
 //method elDeNivel(nivel) = carga.find( {c => c.nivelPeligrosity() == nivel} ) 
 method elDeNivel(nivel)= carga.filter({c => c.nivelPeligrosity() == nivel}).first()  
 
method pesoTotal() = tara + carga.sum( {c => c.peso() } )

 
 method excedidoDePeso() = self.pesoTotal() > 2500
 
 method objetosQueSuperanPeligrosidad(nivel) = carga.filter( {c => c.nivelPeligrosity() > nivel} )
 
 //method objetosMasPeligrososQue(cosa) = carga.filter( {c => c.nivelPeligrosity() > cosa.nivelPeligrosity() } )
 method objetosMasPeligrososQue(cosa) = self.objetosQueSuperanPeligrosidad(cosa.nivelPeligrosity())
 
 method puedeCircularEnRuta(nivelMaximoPeligrosidad) = !self.excedidoDePeso() and !carga.any( {c => c.nivelPeligrosity() > nivelMaximoPeligrosidad} )	 


// ** AGREGADOS ENUNCIADO **
//(min, max)`: indica si el peso de alguna de las cosas que tiene el camión está en ese intervalo; 
 //method tieneAlgoQuePesaEntre(min, max) = carga.filter( {c => c.peso().between(min,max) } )
 method tieneAlgoQuePesaEntre(min, max) = carga.any( {c => c.peso().between(min,max) } )	

 // la cosa más pesada que tenga el camión. Ojo que lo que se pide es _la cosa_ y no su peso.
 method cosaMasPesada() = carga.max( { c => c.peso() })	

//devuelve una lista con _los pesos_ de cada cosa que tiene el camión.
 method pesos() = carga.map( {c => c.peso() } )
 
 
}
