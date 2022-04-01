void main(List<String> args) {
  List<String> listaPaises = ['Perú', 'México', 'Canadá', 'Colombia'];
  int numero = 10;

// EJEMPLO PAISES
  for (int posicion = 0; posicion < listaPaises.length; posicion++) {
    print('Países: ${listaPaises[posicion]}');
  }

// EJEMPLO TABLA DE MULTIPLICAR 10
  for (int i = 0; i <= 10; i++) {
    print('$i x $numero = ${i * numero}');
  }
}
