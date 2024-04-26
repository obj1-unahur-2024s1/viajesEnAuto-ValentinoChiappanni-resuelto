object ludmila{
	method precioXKm() = 18 
}

object anaMaria {
	var estaEstable = true
	method precioXKm() = if(estaEstable)30 else 25
	method cambiarEstado() {
		estaEstable = !estaEstable
	}
}

object teresa {
	var precioActualKm = 22
	method precioXKm() = precioActualKm
	method precioActualKm (nuevoValor){
		precioActualKm = nuevoValor
	}
}

object melina{
	var remplazoClienta = ludmila 
	method precioXKm() = 0.max(remplazoClienta.precioXKm() - 3)
	method remplazoClienta(nuevaClienta){
		remplazoClienta = nuevaClienta
	}
}