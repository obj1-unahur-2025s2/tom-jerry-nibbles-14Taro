object tom {
    var energia = 50
    
    method comer(unRaton) {
      energia = 1000.min(energia + 12 + unRaton.peso()) // el 1000.min es para que el valor maximo del resultado sea 1000 
      unRaton.serComido()
    }

    method energia() {
      return energia
    }

    method correr(distancia) {
      energia = 0.max(energia - (distancia / 2)) // el 0.max es para que el valor minimo del resultado sea 0
    }

    method velocidadMaxima() {
      return 5 + energia / 10
    }

    method puedeCazar(unaDistancia) {
      return energia >= unaDistancia / 2
    }

    method cazar(unRaton, unaDistancia) {
      if (self.puedeCazar(unaDistancia)){
        self.correr(unaDistancia)
        self.comer(unRaton)
      }
    }
}

object jerry {
    var edad = 2

    method peso(){
      return edad * 20
    }

    method cumplirAnios(){
      edad = edad + 1
    }

    method serComido() {} // no hace nada, pero es necesario para que Tom pueda comer a Jerry
}

object nibbles {
    method peso(){
      return 35
    }

    method serComido() {} // no hace nada, pero es necesario para que Tom pueda comer a Nibbles
}

object mickey {
    var estaSeco = true

    method peso(){
      if (estaSeco) {
        return 20
      } else {
        return 30
      }
    }

     method serComido(){
      estaSeco = false
    }
}