import 'package:generics_27/gerente.dart';
import 'package:generics_27/supervisor.dart';

// LOS GENERICS SE UTILIZAN CUANDO SE REQUIERE QUE ALGUNA INTERFAZ O CLASE SEA DE UN DETERMINADO TIPO DE DATO
void main(List<String> args) {
  Gerente gerente = Gerente(nombre: 'Luis', tipoGerente: 'General');
  Supervisor supervisor = Supervisor(nombre: 'Fernando', area: 'Mecánica');

  print('${gerente.nombre} ${gerente.codigoEmpleado('gerente453')}');
  print('${supervisor.nombre} ${supervisor.codigoEmpleado(545451)}');
}
