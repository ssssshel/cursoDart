// TIPOS DE DATOS

main() {
  //DATOS NUMÉRICOS
  int variableEntera = 10;
  double variableDecimal = 3.14;
  print('Datos numéricos: $variableEntera - $variableDecimal');

  //CADENAS DE TEXTO / CARACTERES
  String cadena = "Dart es genial";
  print('Como es dart?: $cadena');

  //DATOS BOOLENAOS
  bool encendido = true;
  encendido = false;
  print(encendido);

  //DATOS DINÁMICOS
  // las variables de tipo var conservan el valor de dato asignado al momento de declararse
  var algo = 3;

// las variables de tipo dynamic pueden cambiar su valor y nunca saltará algún error
  dynamic variableDinamica = 'hola';
  variableDinamica = variableEntera;
  variableDinamica = variableDecimal;
  variableDinamica = encendido;

  print('var: $algo - dynamic: $variableDinamica');
}
