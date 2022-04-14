import 'package:generics_27/codigo.dart';

class Gerente implements CodigoID<String> {
  String? nombre;
  String? tipoGerente;

  Gerente({this.nombre, this.tipoGerente});

// CON GENERICS
  @override
  codigoEmpleado(String codigo) {
    return '$codigo-${nombre!.substring(0, 3).toUpperCase()}';
  }

// SIN GENERICS
  // @override
  // codigoGerente(String codigo) {
  //   return '$codigo-${nombre!.substring(0, 3).toUpperCase()}';
  // }

  // @override
  // codigoSupervisor(int codigo) {
  //   return null;
  // }

}
