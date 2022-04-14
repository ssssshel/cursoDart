library areas_perimetros;

import 'dart:math';

double triangulo(double base, double altura) {
  return (base * altura) / 2;
}

double cuadrado(double lado) => lado * lado;

double circulo(double radio) => pi * pow(radio, 2);
