void main(List<String> args) {
  // DART ES UN LENGUAJE DE ALCANCE LÉXICO, ESTO QUIERE DECIR QUE EL ALCANCE DE LAS VARIABLES SE
  //DETERMINA SIMPLEMENTE POR LA DISPOSICIÓN DEL CÓDIGO
  bool nivel1 = true;

  if (nivel1) {
    bool nivel2 = true;
    if (nivel2) {
      bool nivel3 = true;
      if (nivel3) {
        print(nivel1);
        print(nivel2);
        print(nivel3);
      }
    }
  }

// DEBIDO AL ALCANCE LÉXICO nivel2 SE NOTIFICA COMO NO DECLARADO EN ESTA INSTANCIA
  // print(nivel2);
}
