// LOS MIXINS PERMITEN REUTILIZAR EL CÓDIGO DE UNA CLASE EN JERARQUÍAS DE VARIAS CLASES

// PADRE
abstract class Animal {
  animal() => print('Soy un animal');
}

// HIJOS
abstract class Mamifero extends Animal {
  mamifero() => print('Soy un mamífero');
}

abstract class Ave extends Animal {
  ave() => print('Soy un ave');
}

abstract class Pez extends Animal {
  pez() => print('Soy un pez');
}

// PROPIEDADES
abstract class Caminar {
  caminar() => print('Puedo caminar');
}

abstract class Nadar {
  nadar() => print('Puedo nadar');
}

abstract class Volar {
  volar() => print('Puedo volar');
}

// SUBHIJOS
class Murcielago extends Mamifero with Caminar, Volar {
  murcielago() => print('Soy un Murcielago');
}

class Pato extends Ave with Caminar, Volar, Nadar {
  pato() => print('Soy un Pato');
}

class Tiburon extends Pez with Nadar {
  tiburon() => print('Soy un Tiburón');
}

void main(List<String> args) {
  Murcielago murcielago = Murcielago();
  murcielago.murcielago();
  murcielago.mamifero();
  murcielago.caminar();
  murcielago.volar();
}
