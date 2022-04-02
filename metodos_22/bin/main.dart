// LOS METODOS SON FUNCIONES QUE PROPORCIONAN UN COMPORTAMIENTO A UN OBJETO
void main(List<String> args) {
  Operaciones operacion = Operaciones();
  operacion.multiplicacion(4, 5);
  operacion.sumar(75, 32);
}

class Operaciones {
  multiplicacion(int a, int b) {
    print('$a x $b = ${a * b}');
  }

  sumar(int a, int b) {
    print('$a + $b = ${a + b}');
  }
}
