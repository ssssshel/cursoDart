main(List<String> args) {
  // OPEADORADORES ARITMÉTICOS
  double celsius, farenheit = 54;
  int a = 10, b = 2, residuo;

  celsius = (farenheit - 32) / 1.8;

  print('Grados Celsius: $celsius');

// INCREMENTO UNITARIO
  celsius++;
  print(celsius);

// SUMA
  celsius += 10;
  print(celsius);

// DECREMENTO UNITARIO
  celsius--;
  print(celsius);

// RESTA
  celsius -= 5;
  print(celsius);

// MÓDULO o RESIDUO
  residuo = a % b;
  print('Residuo: $residuo');
}
