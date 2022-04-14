void main(List<String> args) {
  Congresista congresista = Congresista('Congresista 1', 'Partido a');
  congresista.setNuevoCongresista('Congresista 1', 'Partido 1');
  print(congresista.congreso);
}

class Congresista {
  late String nombreCongresista;
  late String nombrePartido;
  List congreso = ['Congresista demo'];

  Congresista(this.nombreCongresista, this.nombrePartido);

  void setNuevoCongresista(String nombreCongresista, String nombrePartido) {
    this.nombreCongresista = nombreCongresista;
    this.nombrePartido = nombrePartido;
    String congresista = ('${this.nombreCongresista} | ${this.nombrePartido}');

    congreso.add(congresista);
  }

  List getPartidoPolitico() {
    return congreso;
  }
}
