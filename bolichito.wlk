import objetos.*
// no hace falta importar los materiales porque como importe objetos y mateeriales estan importados en ese archivo por caracter transitivo
// ya estan importados
import personas.*
import colores.*
import materiales.*


object bolichito {
    var objetoEnVidriera=remera
    var objetoEnMostrador=pelota

// Metodo de indicacion

    method objetoEnvidriera(unObjeto) {
        objetoEnVidriera=unObjeto
    }

    method objetoEnMostrador(unObjeto){
        objetoEnMostrador=unObjeto
    }
  
    // metodo de consulta
    method objetoEnVidriera()= objetoEnVidriera

    method objetoEnMostrador()= objetoEnMostrador

//sera brillante cuando los 2 objetos que tiene (uno en el mostrador y otro en la vidriera) sean ambos brillantes. 
    method esBrillante(){
        return objetoEnMostrador.material().esBrillante() and
         objetoEnVidriera.material().esBrillante()
    }

//es monocromático, lo cual será cierto si los 2 objetos que exhibe son del mismo color.
    method esMonocromatico(){
        return objetoEnMostrador.color()==objetoEnVidriera.color()
    }
//está equilibrado, lo cual será verdadero si el objeto del mostrador pesa más que el de la vidriera.

    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

//tiene algún objeto exhibido de un determinado color y además, si puede mejorar, 
//lo cual será cierto si está desequilibrado o es monocromático.

    method hayObjetoDeColor(unColor){
        return objetoEnMostrador.color()==unColor or
        objetoEnVidriera.color()==unColor
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() or 
        self.esMonocromatico()
    }

//puede ofrecerle algo a una persona determinada que se pasa como argumento, lo cual será verdadero cuando alguno de los objetos exhibidos le gusta a esa persona. 
//  P.ej. si el bolichito tiene la remera en la vidriera y la pelota en el mostrador,
//  entonces puede ofrecerle algo a Estefanía (la remera) y a Juan (la pelota) 
//  pero no a Luisa (porque no le gustan ni la remera ni la pelota).

    method puedeOfrecer(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) or
        unaPersona.leGusta(objetoEnVidriera)
    }
}