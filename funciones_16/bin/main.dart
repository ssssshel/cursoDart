void main(List<String> args) {
  // UNA FUNCIÓN ES UNA SUBRUTINA QUE SE VA A EJECUTAR EN NUESTRO PROGRAMA PRINCIPAL
  // TAMBIEN SON OBJETOS DE PRIMERA CLASE PUESTO QUE NO REQUIREN ESTÁR DENTRO DE UNA CLASE COMO OCURRE EN OTROS LENGUAJES DE PROGRAMACIÓN
  print(holaMundo());
  sumar(20, multiplicacion(2, 7));
}

// Función normal
String holaMundo() {
  String hola = 'Hola mundo';
  return hola;
}

// Función con parametros obligatorios
sumar(int a, int b) {
  print('a + b = ${a + b}');
}

// Función con parametros opcionales
multiplicacion(int a, int b) {
  print('a x b = ${a * b}');
}
