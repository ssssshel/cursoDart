// EL CONSTRUCTOR FACTORY NO SIEMPRE CREA UNA NUEVA INSTANCIA EN SU CLASE, ADEMÁS NO TIENEN
// ACCESO A THIS, SIRVE PARA OCULTAR LA LÓGICA FUNCIONAL DE UN A CLASE AL CLIENTE
void main(List<String> args) {
  var datos = {'nombre': 'Angel', 'apellido': 'Arteaga'};

  Persona persona = Persona.asignarDatos(datos);

  print('Persona: ${persona.nombre} ${persona.apellido}');
}

class Persona {
  // nullables variables
  String? nombre;
  String? apellido;

// constructor base
  Persona({this.nombre, this.apellido});

// constructor factory
  factory Persona.asignarDatos(Map jsonMap) {
    return Persona(nombre: jsonMap['nombre'], apellido: jsonMap['apellido']);
  }
}
