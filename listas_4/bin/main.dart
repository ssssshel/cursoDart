main(List<String> args) {
  // LAS LISTAS EN DART SON COLECCIONES DE OBJETOS
  // se definen: List <tipo de dato> nombreLista = []
  List<int> listaEnteros = [1, 4, 6, 10, 11];
  List<String> listaPaises = ['Perú', 'México', 'Brasil'];
  List listaDinamica = [];

  print(listaEnteros);

  // así se accede a un elemento específico según su posición dentro de la lista
  print(listaPaises[1]);

// add agrega un único objeto al final de la lista
  listaEnteros.add(300);
  listaEnteros.add(12);

// addAll agrega varios objetos al final de la lista
  listaPaises.addAll(['Argentina', 'Chile']);

  listaDinamica.addAll([true, false, 3.1416, 1, "Dart es genial"]);

  print(listaEnteros);
  print(listaPaises);
  print(listaDinamica);
}
