// UN CLOSURE EN DART ES UN OBJETO DE UNA FUNCIÓN QUE TIENE ACCESO A VARIABLES EN SU AMBITO LÉXICO
// INCLUSO CUANDO LA FUNCIÓN SE USA FUERA DE SU AMBITO ORIGINAL

Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

mensaje() {
  String msg = 'hola';
  msgNuevo() {
    msg = 'Hola desde Dart';
    print(msg);
  }

  return msgNuevo();
}

main(List<String> args) {
  var add2 = makeAdder(2);
  assert(add2(3) == 4);

  var mensajes = mensaje();
  mensajes;
}
