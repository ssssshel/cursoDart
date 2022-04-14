import 'package:librerias_30/areas.dart' as areas;
// import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) {
  var circulo = areas.circulo(30);
  var cuadrado = areas.cuadrado(15);
  var triangulo = areas.triangulo(12, 18);

  print('Circulo: $circulo');
  print('Cuadrado: $cuadrado');
  print('Triángulo: $triangulo');
}
