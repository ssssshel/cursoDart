main(List<String> args) {
  // StringBuffer es una clase que permite concatenar cadenas de manera más eficiente
  StringBuffer buffer = StringBuffer();

// write concatena cadenas simples
  buffer.write('Dart es genial');

  // writeAll concatena arreglos sin tomar en cuenta los separadores
  buffer.writeAll(['Curso', 'Dart']);

  print(buffer.length);
  print(buffer);

// clear limpia el buffer
  buffer.clear();

  // isEmpty devuelve true si el buffer está vacio
  print(buffer.isEmpty);
}
