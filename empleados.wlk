//Escribir aqui los objetos
object gimenez {

    var fondo = 300000

    method cobrarSueldo(empleado) {    
        fondo = fondo - empleado.sueldo()
    }
}

object galvan {

    var dinero = 0
    var deuda = 0
    var sueldo = 15000

    method sueldo() {
        return sueldo  
    }

    method nuevoSueldo(nuevoValor) {
        sueldo = nuevoValor
    }

    method cobrar() {
        dinero = dinero + sueldo - deuda
    // planteo un if 
    }

    method gastar(cantidad) {
        deuda = deuda + cantidad - dinero
    }

    method deuda() {
        return deuda
    }

    method dinero() {
        return dinero
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