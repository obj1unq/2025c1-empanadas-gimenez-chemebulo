//Escribir aqui los objetos
object pepita {
    var energia = 100

    method comer(alimento){
        energia = energia + alimento.energiaQueAporta()
    }

    method energia(){
        return energia 
    }

    method volar(distancia){
        energia = energia - 10 - distancia  
    } 
}