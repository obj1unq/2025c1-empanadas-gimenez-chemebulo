//Escribir aqui los objetos
object gimenez {
  var fondo = 300000
  
  method cobrarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
  }
  
  method fondo() = fondo
}

object galvan {
  var dinero = 0 // Debería poder manejar el dinero y la deuda con una variable saldo (o dinero).
  var deuda = 0
  var sueldo = 15000
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  
  method cobrarSueldo() { // ¿Funcionan los cambios?
    if (self.sueldo() >= deuda) {
      dinero = self.sueldo() - deuda
      deuda = 0
    } else {
      dinero = 0
      deuda -= self.sueldo()
    }

    // saldo += cuanto
  }
  
  method gastar(cuanto) {
    if (cuanto <= dinero) {
      dinero -= cuanto
    } else {
      deuda += cuanto - dinero
      dinero = 0
    }

    // saldo -= cuanto
  }
  
  method deuda() = deuda
  /*
  if saldo < 0 {
    saldo.abs()
  } else {
    0
  }

  // o sino simplemente, saldo.min(0).abs()

  */
  
  method dinero() = dinero

  /*
  if saldo > 0 {
    saldo
  } else {
    0
  }

  // o sino simplemente, saldo.max(0) no siendo necesario el abs().

  */

}

object baigorria {
  var sueldo = 0
  var totalCobrado = 0
  var precioDeEmpanada = 15
  var cantidadDeEmpanadas = 0
  
  method precioDeEmpanada(_precioDeEmpanada) {
    precioDeEmpanada = _precioDeEmpanada
  }
  
  method venderEmpanadas(cantidad) {
    cantidadDeEmpanadas += cantidad
    sueldo = cantidadDeEmpanadas * precioDeEmpanada 
  }
  
  method sueldo() = sueldo
  
  method cobrarSueldo() { // ¿Funcionan los cambios?
    totalCobrado += self.sueldo()
    sueldo = 0
    cantidadDeEmpanadas = 0
  }
  
  method totalCobrado() = totalCobrado
}