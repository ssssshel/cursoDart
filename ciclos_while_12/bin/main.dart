void main(List<String> args) {
  // WHILE Y DO WHILE EJECUTAN UNA TAREA SIEMPRE QUE UNA CONDICIÓN SE CUMPLA, LA DIFERENCIA ENTRE AMBOS ES LA COLOCACIÓN DE LA CONDICIÓN EN EL ALGORITMO

  List<int> listaEnteros = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int contador = 0;

  print('WHILE');
  while (contador < listaEnteros.length) {
    print(
        '$contador x ${listaEnteros[contador]} = ${contador * listaEnteros[contador]}');
    contador++;
  }
  print('--------------------- \n DO WHILE');

  contador = 0;
  do {
    print(
        '$contador x ${listaEnteros[contador]} = ${contador * listaEnteros[contador]}');
    contador++;
  } while (contador < listaEnteros.length);
}
