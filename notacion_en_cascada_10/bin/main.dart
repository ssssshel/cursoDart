void main(List<String> args) {
  // LA NOTACIÓN EN CASCADA PERMITE AÑADIR METODOS CONSECUTIVOS

  List<int> listaEnteros = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  listaEnteros
    ..clear()
    ..add(10)
    ..addAll([11, 12, 13])
    ..removeAt(1)
    ..insert(3, 35);

  print(listaEnteros);
}
