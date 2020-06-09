import otrosRodados.*
import traffic.*
import pedidos.*

class Dependencia {
	
	var flota =[]
	var empleados 
	var property pedidos = []
	
	method agregarPedido(pedido){
		pedidos.add(pedido)
	}
	method quitarPedido(pedido){
		pedidos.remove(pedido)
	}	
	method  agregarAFlota(rodado){
 		flota.add(rodado)
	}
	method  quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	method  pesoTotalFlota(){
		return flota.sum({rodado => rodado.peso()})
	}
	method  estaBienEquipada() {
		return flota.size()>= 3 and flota.all({rodado => rodado.velocidadMaxima()>=100}) 
	}
	method  capacidadTotalEnColor(color){
		return (flota.filter({rodado=> rodado.color() == color})).sum({rodado=> rodado.capacidad()}) 
	}
	method  colorDelRodadoMasRapido(){
		return flota.max({rodado=> rodado.velocidadMaxima()}).color()
	}
	method setEmpleados(cantidad) {
		empleados = cantidad
	}
	method  capacidadFaltante(){
		return empleados -  flota.sum({rodado=> rodado.capacidad()})
	}
	method  esGrande(){
		return empleados >= 40 and flota.size() >= 5
	}
	method totalPasajerosdePedidos(){
		return pedidos.map({pedido=> pedido.cantidadPasajeros()}).sum()
	}	
	method puedeSatisfacerElPedido(pedido){
		return flota.any({rodado=> pedido.puedeSatisfacer(rodado)})
	}	
	method pedidosNoSatisfechos(){
		return pedidos.filter({pedido=> not self.puedeSatisfacerElPedido(pedido)})
	}
	method todosLosPedidosTienenColorIncomparible(color){
		return  pedidos.all({pedido=> pedido.existeColorIncompatible(color)})
	}
	method relajarTodosLosPedidos(){
		pedidos.forEach({pedido=> pedido.relajar()})
	}	
}





