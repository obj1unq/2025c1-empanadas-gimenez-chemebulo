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
  var dinero = 0
  var sueldo = 15000
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  
  method cobrarSueldo() {
    dinero += self.sueldo()
  }
  
  method gastar(cantidad) {
    dinero -= cantidad
  }
  
  method dinero() = dinero.max(0)
  
  method deuda() = dinero.min(0).abs()
}

object baigorria {
  var cantidadDeEmpanadasVendidas = 0
  var precioDeEmpanada = 15
  var totalCobrado = 0
  
  method precioDeEmpanada(_precioDeEmpanada) {
    precioDeEmpanada = _precioDeEmpanada
  }
  
  method venderEmpanadas(cantidad) {
    cantidadDeEmpanadasVendidas += cantidad
  }
  
  method sueldo() = cantidadDeEmpanadasVendidas * precioDeEmpanada
  
  method cobrarSueldo() {
    totalCobrado += self.sueldo()
    cantidadDeEmpanadasVendidas = 0
  }
  
  method totalCobrado() = totalCobrado
}