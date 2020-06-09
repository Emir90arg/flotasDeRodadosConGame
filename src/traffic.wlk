object traffic {
	var interiorDeTraffic
	var motorDeTraffic	
	const color = "blanco"
	
	method tipoDeInterior(){
		return interiorDeTraffic
	}
	method configurarInterior(interior){
		interiorDeTraffic = interior
	}
	method configurarMotor(motor){
		motorDeTraffic = motor
	}
	method peso(){
		return interiorDeTraffic.peso() + motorDeTraffic.peso() + 4000
	}
	method velocidadMaxima(){
		return motorDeTraffic.velocidadMaxima()
	}
	method capacidadDePasajeros() {
		return interiorDeTraffic.capacidad()
	}
}
object interiorComodo{	
	method capacidad(){
		return 5
	}
	method peso(){
		return 700
	}
}
object interiorPopular{	
	method capacidad(){
		return 12
	}
	method peso(){
		return 1000
	}
}
object motorPulenta{	
	method velocidadMaxima(){
		return 130
	}
	method peso(){
		return 800
	}
}
object motorBataton{	
	method velocidadMaxima(){
		return 80
	}
	method peso(){
		return 500
	}
}