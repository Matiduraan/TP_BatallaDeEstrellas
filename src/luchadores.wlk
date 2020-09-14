object pamela {
	var energia = 6000
	var inventario = ['Algodon', 'Cinta de papel','Cinta de papel','Agua oxigenada']
	
	method gritoDeBatalla(){
		return 'Acá pasó la Pamela'
	}
	
	method inventario(){
		return inventario
	}
	
	method lucha(rival){
		energia += 400
	}
	
	method energia(nuevaEnergia){
		energia = nuevaEnergia
	}
	
	method energia(){
		return energia
	}
	
	method quitarDelInventario(objeto){
		inventario.remove(objeto)
	}
}


object pocardo {
	var energia = 5600
	var inventario = ['Guitarra', 'Curitas', 'Cotonetes']
	
	method gritoDeBatalla(){
		return '¡Siente el poder de la música!'
	}
	
	method inventario(){
		return inventario
	}
	
	method energia(nuevaEnergia){
		energia = nuevaEnergia
	}
	
	method energia(){
		return energia
	}
	
	method lucha(rival){
		energia += 500
	}
	
	method quitarDelInventario(objeto){
		inventario.remove(objeto)
	}
	
}

object tulipan {
	var energia = 8400
	var inventario = ['Rastrillo', 'Maceta', 'Maceta','Manguera']
	
	method gritoDeBatalla(){
		return 'Hora de cuidar a las plantas'
	}
	
	method inventario(){
		return inventario
	}
	
	method energia(nuevaEnergia){
		energia = nuevaEnergia
	}
	
	method quitarDelInventario(objeto){
		inventario.remove(objeto)
	}
	
	method energia(){
		return energia
	}
	
	method lucha(rival){
		rival.energia(rival.energia()/2)
		
	}
	
}

object toro {
	var energia = 7800
	var inventario = []
	
	method gritoDeBatalla(){
		return 'No se metan con el toro'
	}
	
	method inventario(){
		return inventario
	}
	
	method quitarDelInventario(objeto){
		inventario.remove(objeto)
	}
	
	method energia(nuevaEnergia){
		energia = nuevaEnergia
	}
	
	method energia(){
		return energia
	}
	
	method lucha(rival){
		rival.energia(rival.energia() - 200 * rival.inventario().size())
		if (!inventario.contains(rival.inventario().last())) {
			inventario.add(rival.inventario().last())
		}
		rival.quitarDelInventario(rival.inventario().last())
		
	}
	
}