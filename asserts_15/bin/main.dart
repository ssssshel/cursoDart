void main(List<String> args) {
  // ASSERTS PERMITEN VERIFICAR SI UNA CONDICIÓN SE ESTÁ CUMPLIENDO, SOLO FUNCIONA EN MODO DEBUG
  for (var i = 1; i < 11; i++) {
    print('Número: $i');
    assert(i < 5);
  }
}
