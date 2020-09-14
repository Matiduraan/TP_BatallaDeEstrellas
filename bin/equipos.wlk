import luchadores.*

object equipoUno {
	const integrantes = [pamela,tulipan]

	method integrantes(){
		return integrantes
	}
	
	method energiaDelEquipo(){
		return integrantes.map({integrante => integrante.energia()}).sum()
	}
	
	method equipoVictorioso(){
		return (integrantes.filter({integrante => integrante.energia() > 0})).map({integrante => integrante.gritoDeBatalla()})
		
	}
}

object equipoDos {
	const integrantes = [toro,pocardo]
	
	method integrantes(){
		return integrantes
	}
	
	method energiaDelEquipo(){
		return integrantes.map({integrante => integrante.energia()}).sum()
	}
	
	method equipoVictorioso(){
		return integrantes.filter({integrante => integrante.energia() > 0}).forEach({integrante => integrante.gritoDeBatalla()})
		
	}
}
