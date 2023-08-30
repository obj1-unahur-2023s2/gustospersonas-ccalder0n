//personas
object rosa
{
	method leGusta(objeto)
	{
		return 2000 >= objeto.peso()
	}
}

object estefania
{
	method leGusta(objeto)
	{
		return objeto.color().esColorFuerte()
	}
}

object juan
{
	method leGusta(objeto)
	{
		return not (objeto.color().esColorFuerte()) or (1200 > objeto.peso() and objeto.peso() > 1800)
	}
}

object luisa
{
	method leGusta(objeto)
	{
		return objeto.brilla()
	}
}

//bolichito
object bolichito
{
	var vidriera = cajita
	var mostrador = banquito
	
	method ponerEnVidriera(objeto){ vidriera = objeto }
	
	method ponerEnMostrador(objeto){ mostrador  = objeto }
	
	method esBrillante(){ return vidriera.material().brilla() and mostrador.material().brilla() }
	
	method esMonocromatico(){ return vidriera.color() == mostrador.color() }
	
	method estaDesequilibrado(){ return vidriera.peso() < mostrador.peso() }
	
	method tieneAlgoDeColor(color){ return vidriera.color() == color or mostrador.color() == color }
	
	method puedeMejorar(){ return self.esMonocromatico() or self.estaDesequilibrado() }
	
	method puedeOfrecerleAlgoA(persona){ return persona.leGusta(vidriera) or persona.leGusta(mostrador)}
}

//objetos
object remera
{
	method color(){ return rojo }
	
	method material(){ return lino }
	
	method peso(){ return 800 }
}

object pelota
{
	method color(){ return pardo }
	
	method material(){ return cuero }
	
	method peso(){ return 1300 }
}

object biblioteca
{
	method color(){ return verde }
	
	method material(){ return madera }
	
	method peso(){ return 8000 }
}

object muneco
{
	var peso = 0
	
	method color(){ return celeste }
	
	method material(){ return vidrio }
	
	method peso(){ return peso}
	
	method cambiarPeso(nuevoPeso){ peso = nuevoPeso }
}

object placa
{
	var peso = 0
	var color = rojo
	
	method color(){ return color }
	
	method material(){ return cobre }
	
	method peso(){ return peso }
	
	method cambiarColor(nuevoColor){ color = nuevoColor }
	
	method cambiarPeso(nuevoPeso){ peso = nuevoPeso }
}


object arito
{
	method color(){ return celeste }
	
	method material(){ return cobre }
	
	method peso(){ return 180 }
}

object banquito
{
	var color = naranja
	
	method color(){ return color }
	
	method material(){ return madera }
	
	method peso(){ return 1700 }
	
	method cambiarColor(nuevoColor){ color = nuevoColor }
}

object cajita
{
	var objeto = placa
	
	method color(){ return rojo }
	
	method material(){ return cobre }
	
	method peso(){ return 400 + objeto.peso() }
	
	method guardarObjeto(obj){ objeto = obj }
}

//colores
object rojo
{
	method esColorFuerte(){ return true }
}

object verde
{
	method esColorFuerte(){ return true }
}

object celeste
{
	method esColorFuerte(){ return false }
}

object pardo
{
	method esColorFuerte(){ return false }
}

object naranja
{
	method esColorFuerte(){ return true }
}

//materiales
object cobre
{
	method brilla(){ return true }
}

object vidrio
{
	method brilla(){ return true }
}

object lino
{
	method brilla(){ return false }
}

object madera
{
	method brilla(){ return false }
}

object cuero
{
	method brilla(){ return false }
}