// UN TYPEDEF ES UN ALIAS DE TIPO FUNCIÓN QUE SE UTILIZA PARA DECLARAR CAMPOS Y TIPOS DE RETORNO

void main(List<String> args) {
  OperacionesMatematicas operacion;

  // operacion = suma;
  // print(operacion(12, 5));

  // operacion = multiplicacion;
  // print(operacion(12, 5));

  // operacion = resta;
  // print(operacion(12, 5));

  if (multiplicacion is FuncionMatematica<double> &&
      suma is FuncionMatematica<int>) {
    operacion = suma;
    print(operacion(12, 5));
    operacion = multiplicacion;
    print(operacion(12, 5));
  } else {
    throw 'Función inválida';
  }
}

typedef OperacionesMatematicas = Function(int a, int b);
typedef FuncionMatematica<T> = T Function(T a, T b);

int multiplicacion(int a, int b) => a * b;

int suma(int a, int b) => a + b;
