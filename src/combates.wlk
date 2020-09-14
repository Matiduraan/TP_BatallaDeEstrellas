import equipos.*

object guerra {
	
	var luchadores1
	var luchadores2
	
	method luchadores1(equipo){
		luchadores1 = equipo
	}
	
	method luchadores2(equipo){
		luchadores2 = equipo
	}
	
	method lucha(){
		luchadores1.integrantes().forEach({integranteEquipoUno => luchadores2.integrantes().forEach({integranteEquipoDos => integranteEquipoUno.lucha(integranteEquipoDos)})})
		luchadores2.integrantes().forEach({integranteEquipoDos => luchadores1.integrantes().forEach({integranteEquipoUno => integranteEquipoDos.lucha(integranteEquipoUno)})})
		if (luchadores1.energiaDelEquipo()>=luchadores2.energiaDelEquipo()){
			return luchadores1.equipoVictorioso()
		}else{
			return luchadores2.equipoVictorioso()
		}
	}

}
