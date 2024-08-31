import colores.*
import materiales.*


object remera {
  method color()=rojo
  method material()=lino
  method peso()=800
}

object pelota {
  method color()=pardo
  method material()=cuero
  method peso()=1300
}
  
object biblioteca {
  method color()=verde
  method material()=madera
  method peso()=8000
}

object munieco {
  var peso=1000 // atributo
  method color()=celeste
  method material()=vidrio

// metodo de indicacion
//por convencion utilizaremo el nombre del metodo igual que la variable
  method peso(unPeso){
    peso=unPeso
  }
  // metodo de consulta, devuelve el valor que tiene el atributo peso
  method peso()=peso
}
//- un _arito_ celeste de cobre, que pesa 180 gramos.
object arito {
  var peso= 180
  method color()=celeste
  method material()=plata
  method peso()=peso
}

object placa {
  var peso=5000
  var color=rojo
  method material()=cobre

  method peso(unPeso){
    peso=unPeso
  }

  method color(unColor){
    color=unColor
  }
  // metodo de consulta, devuelve el valor que tiene el atributo peso
  method peso()=peso
  method color()=color
}

//un _banquito_ de madera que pesa 1700 gramos.   Al principio es naranja, pero puede cambiar de color.   El naranja es un color fuerte.
object banquito {
  var peso=1700
  var color=naranja
  method material()=madera
  method peso()=peso
  method color()=color

  method peso(unPeso){
    peso=unPeso
  }

  method color(unColor) {
    color=unColor
  }

}

/*una _cajita_ roja de cobre, que tiene un objeto adentro. 
  Este objeto puede ser cualquiera de los definidos previamente, y puede cambiar.
  El peso de la cajita es de 400 gramos más el peso de lo que tiene adentro.*/

  object cajita {
    var contiene=''
    var color=rojo
    var peso=400
//Metodos de consulta
    method contiene()=contiene
    method color()=color  
    method peso()=peso

//Metodos de indicacion

    method peso(unPeso) {
      peso=unPeso
    }

    method meterObjeto(unObjeto) {
      contiene=unObjeto
      peso+=unObjeto.peso() // si ya tiene un objeto, antes de actualizar el peso le tengo que restar el peso de lo que ya tiene ¿como lo hago?
    }  


  }