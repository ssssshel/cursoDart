class Triangulo {
  late double _altura;
  late double _base;

  set base(double base) {
    _base = base;
  }

  set altura(double altura) {
    _altura = altura;
  }

  double get area {
    return (_base * _altura) / 2;
  }
}
