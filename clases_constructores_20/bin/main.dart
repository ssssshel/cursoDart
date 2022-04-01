// LAS CLASES SON UN MODELO QUE DEFINE UN CONJUNTO DE VARIABLES Y METODOS APROPIADOS PARA OPERAR CON
// DICHOS DATOS
main(List<String> args) {
  // la variable animal es una nueva instancia de la clase Animales
  Animales animal = Animales('Aguila', 'Ave');

  Animales animalConDieta = Animales.conDieta('Gato', 'Felino', 'Carnivoro');

  Animales animalTipo = Animales.tipoAnimal('Felino');

  print('Animal: ${animal.nombre} - ${animal.tipo} ');
  print(
      'Animal y dieta: ${animalConDieta.nombre} - ${animalConDieta.tipo} - ${animalConDieta.dieta}');
  print('Animal tipo: ${animalTipo.nombre} - ${animalTipo.tipo} ');
}

class Animales {
  // CONSTRUCTOR
  // un constructor es una subrutina cuya misión es inicializar un objeto de una clase, en el
  // constructor se asignan los valores iniciales del nuevo objeto
  String nombre;
  String tipo;
  dynamic dieta;

// this hace referencia a la variable en primera instancia

// constructor clásico
  // Animales(String nombre, String tipo) {
  // this.nombre = nombre;
  // this.tipo = tipo;
  // }

  // constructor nuevo
  Animales(this.nombre, this.tipo) : dieta = null;

// constructor nombrado | permite instanciar mas constructores para la misma clase
  Animales.conDieta(this.nombre, this.tipo, this.dieta);

// constructor de redirección | redirige a otro constructor
  Animales.tipoAnimal(String tipoAnimal)
      : nombre = "Tigre",
        tipo = tipoAnimal;
}
