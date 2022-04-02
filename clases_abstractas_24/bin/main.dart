// UNA CLASE ABSTRACTA ES AQUELLA DE LA QUE NO SE PUEDEN DELCARAR INSTANCIAS
// SU FINALIDAD ES SERVIR COMO CLASE BASE PARA OTRAS CLASES A LAS QUE GENERALMENTE
// SE LES CONOCE COMO CLASES CONCRETAS

void main(List<String> args) {
  Carro carro = Carro();
  carro.cilindros = 4;
  carro.velocidad();

  Trailer trailer = Trailer();
  trailer.velocidad();
}

// clase abstracta
abstract class Automovil {
  late int ruedas;
  late int cilindros;

  void velocidad();
}

// clase concreta Carro
class Carro implements Automovil {
  @override
  late int ruedas;

  @override
  late int cilindros;

  @override
  void velocidad() {
    print('200 km/h');
  }
}

// clase concreta Trailer
class Trailer implements Automovil {
  @override
  late int cilindros;

  @override
  late int ruedas;

  @override
  void velocidad() {
    print('150 km/h');
  }
}
