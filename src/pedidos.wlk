import otrosRodados.*
import dependencias.*

class Pedido {
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadPasajeros
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida(){
		return distanciaARecorrer/tiempoMaximo
	}
	method puedeSatisfacer(rodado){
		return rodado.velocidadMaxima() >= self.velocidadRequerida() + 10 and
		rodado.capacidad() >= cantidadPasajeros and
		not(coloresIncompatibles.contains(rodado.color()))
	}
	method acelerar() {
		tiempoMaximo = tiempoMaximo - 1
	}
	method relajar(){
		tiempoMaximo = tiempoMaximo + 1
	}
	method existeColorIncompatible(color){
		return coloresIncompatibles.contains(color)
	}
	
}
