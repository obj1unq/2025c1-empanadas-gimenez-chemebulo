//Escribir aqui los objetos
object gimenez {

    var fondo = 300000

    method cobrarSueldo(empleado) {    
        fondo = fondo - empleado.sueldo()
    }
}

object galvan {

    var sueldo = 15000

    method sueldo() {
        return sueldo  
    }

    method nuevoSueldo(nuevoValor) {
        sueldo = nuevoValor
    }
}

object baigorria {

    var sueldo = 0

    method sueldo() {
        return sueldo
    }

    method vender(alimento, cantidad) {
        sueldo = sueldo + (alimento.valorEnPlata() * cantidad)
    }
}

object empanada {
    method valorEnPlata() {
        return 15
    }
}