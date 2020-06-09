import wollok.game.*
import colores.*
class  ChevroletCorsa {
	var property color
	var property position = game.at(0,0)
	var property image = "autitorojo.png"
	var property posicionesPisadas =  []
	
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
		posicionesPisadas.add(position)
	}
	
	method moveteArriba(){
		self.position(self.position().up(1))
		posicionesPisadas.add(position)
	}
	
	method moveteAbajo(){
		self.position(self.position().down(1))
		posicionesPisadas.add(position)
	}
	method moveteDerecha(){
		self.position(self.position().right(1))
		posicionesPisadas.add(position)
	}
	
	method moveteA(unaPosicion){
		self.position(unaPosicion)
		posicionesPisadas.add(position)
	}
	method pasoPor(posicion){
		return posicionesPisadas.contains(posicion)
	}
	method pasoPorColumna(numero){
		/*const posT = new Position(x = numero, y = 0) 
		return posicionesPisadas.map({posicion=> posicion.toString()}).contains(posT.toString())*/
		/*el comentado lo hice yo y el de abajo me ayudo un compañero no recordaba el mensaje position.x() */
		return posicionesPisadas.any({ posicion=> posicion.x() == numero})
	}
	method recorrioFilas(lista_de_numeros){		
	/*no lo pude resolver */
	
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