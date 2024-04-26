import remiseras.*
import clientas.*
object oficina {
	var primeraRemisera = roxana 
	var segundaRemisera = juana 
	method asignarRemiseras(remisera1, remisera2){
		self.cambiarPrimerRemiserarPor(remisera1)
		self.cambiarSegundoRemiseraPor(remisera2)
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera = remisera
	}
	method cambiarSegundoRemiseraPor(remisera){
		segundaRemisera = remisera
	}
	// Opcion sin variable
	method intercambiarRemiseras(){
		self.asignarRemiseras(segundaRemisera,primeraRemisera)
	}
	
	// Opcion con variable 
	method intercambiarRemiserasOpcion2(){
		const remiseraAIntercambiar = primeraRemisera
		primeraRemisera = segundaRemisera
		segundaRemisera = remiseraAIntercambiar
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		return if (self.esSegundaRemiseraMenorQuePrimera(cliente, kms) &&
			self.hayDiferenciaDe30Pesos(cliente, kms)
		){
			 segundaRemisera
		} else {
			 primeraRemisera
		}
	}
	method esSegundaRemiseraMenorQuePrimera(cliente, kms){
		return segundaRemisera.precioViaje(cliente,kms) < primeraRemisera.precioViaje(cliente,kms)
	}
	
	method hayDiferenciaDe30Pesos(cliente, kms){
		return (primeraRemisera.precioViaje(cliente,kms) - segundaRemisera.precioViaje(cliente,kms)) >= 30
	}
}

