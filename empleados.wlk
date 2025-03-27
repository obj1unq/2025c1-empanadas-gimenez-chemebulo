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

    var cantidadDeEmpanadas = 0
    var totalCobrado = 0

    method sueldo() {
        return 15 * cantidadDeEmpanadas
    }

    method cobrarSueldo() {
        totalCobrado = totalCobrado + (15 * cantidadDeEmpanadas)
        cantidadDeEmpanadas = 0
    }

    method vender(cantidad) {
        cantidadDeEmpanadas = cantidadDeEmpanadas + cantidad
    }

    method totalCobrado() {
        return totalCobrado
    }
}