// EJERCICIO 4: HALLAR PERIMETRO Y ÁREA DE UN CIRCULO

import 'dart:math';

void main(List<String> args) {
  OperacionesCirculo operaciones = OperacionesCirculo(3);
  print('---CASO 1---\n');
  print(
      'Radio = ${operaciones.getRadioCirculo()}\nPerímetro= ${operaciones.getPerimetroCirculo()}\nÁrea= ${operaciones.getAreaCirculo()}');

  operaciones.setRadioCirculo(5);
  print('---CASO 2---\n');
  print(
      'Radio = ${operaciones.getRadioCirculo()}\nPerímetro= ${operaciones.getPerimetroCirculo()}\nÁrea= ${operaciones.getAreaCirculo()}');
}

class OperacionesCirculo {
  double radioCirculo = 0;

  OperacionesCirculo(this.radioCirculo);

  void setRadioCirculo(double radioCirculo) {
    this.radioCirculo = radioCirculo;
  }

  double getRadioCirculo() {
    return radioCirculo;
  }

  double getPerimetroCirculo() {
    double perimetro = 2 * pi * radioCirculo;
    return perimetro;
  }

  double getAreaCirculo() {
    double area = pi * (radioCirculo * radioCirculo);
    return area;
  }
}

// ---CASO 1---

// Radio = 3.0
// Perímetro= 18.84955592153876
// Área= 28.274333882308138
// ---CASO 2---

// Radio = 5.0
// Perímetro= 31.41592653589793
// Área= 78.53981633974483