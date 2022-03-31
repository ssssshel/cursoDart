void main(List<String> args) {
  // LOS OPERADORES DE TIPO TEST SIRVEN PARA VERIFICAR SI UNA VARIABLE ES DE CIERTO TIPO, OBJETO O CLASE
  int cadena = 3;

// is representa es
  (cadena is String) ? print(cadena) : print('No es un String');

  // is! representa no es
  (cadena is! String) ? print(cadena) : print('Es un String');
}
