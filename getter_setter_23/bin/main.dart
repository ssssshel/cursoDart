// GET Y SET SON METODOS QUE SIRVEN PARA ESTABLECER Y OBTENER UNO O MÁS VALORES

import 'triangulo.dart';

void main(List<String> args) {
  Triangulo triangulo = Triangulo();

  triangulo.base = 20;
  triangulo.altura = 10;

  print('Área: ${triangulo.area}');
}
