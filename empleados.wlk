//Escribir aqui los objetos
object gimenez {

    var fondo = 300000

    method cobrarSueldo(empleado) {    
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo(empleado.sueldo())
    }
}

object galvan {

    var dinero = 0
    var deuda = 0
    var sueldo = 15000

    method sueldo() {
        return sueldo  
    }

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method cobrarSueldo(_sueldo) {
        if (_sueldo >= deuda) {
            dinero = _sueldo - deuda
            deuda = 0
        } else {
            dinero = 0
            deuda = deuda - _sueldo
        }
    }

    method gastar(cuanto) {
        if (cuanto <= dinero) {
            dinero = dinero - cuanto
        } else {
            deuda = deuda + (cuanto - dinero)
            dinero = 0
        }
    }

    method deuda() {
        return deuda
    }

    method dinero() {
        return dinero
    }
}

object baigorria {

    var sueldo = 0
    var cantidadDeEmpanadas = 0
    var totalCobrado = 0

    method venderEmpanadas(cantidad) {
        cantidadDeEmpanadas = cantidadDeEmpanadas + cantidad
        sueldo = 15 * cantidadDeEmpanadas
    }

    method sueldo() {
        return sueldo
    }

    method cobrarSueldo(_sueldo) {
        totalCobrado = totalCobrado + _sueldo
        sueldo = 0
        cantidadDeEmpanadas = 0
    }

    method totalCobrado() {
        return totalCobrado
    }
}

// Probando sincronizacion.