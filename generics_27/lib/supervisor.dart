import 'package:generics_27/codigo.dart';

class Supervisor implements CodigoID<int> {
  String? nombre;
  String? area;

  Supervisor({this.nombre, this.area});

// CON GENERICS
  @override
  codigoEmpleado(int codigo) {
    return codigo;
  }

// SIN GENERICS
  // @override
  // codigoGerente(String codigo) {
  //   return null;
  // }

  // @override
  // codigoSupervisor(int codigo) {
  //   return codigo;
  // }
}
