// HERENCIA

void main(List<String> args) {
  Carro carro = Carro();
  carro.velocidad('300 km/h');
  carro.turbo = true;
  carro.infoCarro();

  Trailer trailer = Trailer();
  trailer.cilindros = 16;
  trailer.combustible = 'Diesel';
  trailer.remolque = true;
  trailer.dobleRemolque = true;

  trailer.velocidad('150 km/h');
  trailer.infoTrailer();
  print('Trailer: ${trailer.cilindros}, ${trailer.combustible}');
}

// clase padre
class Automovil {
  late int cilindros;
  late int ruedas;
  late int puertas;
  late String combustible;

  void velocidad(String velocidad) {
    print('Velocidad: $velocidad');
  }
}

// clase hijo Carro
class Carro extends Automovil {
  late bool turbo;

  void infoCarro() {
    print('Turbo: $turbo');
  }

// sobreescritura de métodos
  @override
  void velocidad(String velocidad) {
    super.velocidad(velocidad);
    print('Sobreescritura de métodos');
  }
}

// clase hijo Trailer
class Trailer extends Automovil {
  late bool remolque;
  late bool dobleRemolque;

  void infoTrailer() {
    print('Remolque: $remolque\nDoble Remolque: $dobleRemolque');
  }
}
