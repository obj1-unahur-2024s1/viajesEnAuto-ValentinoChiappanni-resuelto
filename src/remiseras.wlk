import clientas.*

object roxana {
	method precioViaje(clienta,cantKm)= clienta.precioXKm() * cantKm
}

object gabriela{
	method precioViaje(clienta,cantKm)= self.recargoClienta(clienta)*cantKm
	
	method recargoClienta(clienta)= clienta.precioXKm()*1.2
	
}

object mariela {
	method precioViaje(clienta,cantKm)= 50.max(clienta.precioXKm() * cantKm)
}

object juana {
	method precioViaje(clienta,cantKm){
		return if (cantKm<= 8)100 else 200
	}
}

object lucia{
	var remiseraRemplazo = roxana
	method precioViaje(clienta,cantKm) = remiseraRemplazo.precioViaje(clienta,cantKm)
	method remiseraRemplazo(nuevaRemisera){
		remiseraRemplazo = nuevaRemisera
	}
}