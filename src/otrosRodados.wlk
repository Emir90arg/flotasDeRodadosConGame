import wollok.game.*
import colores.*
class  ChevroletCorsa {
	var property color
	var property position
	var property image = "autitorojo.png"
	var property posicionesPisadas = []
	
	method setImage(colorImagen){
		image = colorImagen
	}
		
	method capacidad(){
		return 4
	}	
	method velocidadMaxima() {
		return 150
	}
	method peso(){
		return 1300
	}
	method moveteIzquierda(){
		self.position(self.position().left(1))
	}
	
	method moveteArriba(){
		self.position(self.position().up(1))
		posicionesPisadas.add(position)
	}
	
	method moveteAbajo(){
		self.position(self.position().down(1))
	}
	method moveteDerecha(){
		self.position(self.position().right(1))
	}
	
	method moveteA(unaPosicion){
		self.position(unaPosicion)
	}
	method pasoPor(posicion){
		return posicionesPisadas.contains(posicion)
	}
	method pasoPorFila(numero){
		/*const posT = new Position(x = 0, y = numero) 
		return posicionesPisadas.map({posicion=> posicion.toString()}).contains(posT.toString())*/
		return posicionesPisadas.any({ posicion=> posicion.y() == numero})
	}
	method recorrioFilas(lista_de_numeros){		
		return posicionesPisadas.map({posicion=>posicion.y()})
	}
		
}
class RenaultKwid{
	var tieneTanqueAdicional = true
	const property color = "azul"
	
	method capacidad(){
		if(tieneTanqueAdicional) return 3
		else return 4
	}
	method velocidadMaxima(){
		if(tieneTanqueAdicional)return 110
		else return 120
	}
	method peso(){
		if (tieneTanqueAdicional) return 1350
		else return 1200
	}	
	method quitarTanqueAdicional() {
		tieneTanqueAdicional = not tieneTanqueAdicional
	}
}
class AutoEspecial{
	var property color
	var property capacidad
	var property peso
	var property velocidadMaxima	
}