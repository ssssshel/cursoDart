import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
  print('Realizando petición');
  print('..............');

  // try {
  String respuesta = await getStatusCode();
  print(respuesta);
  // } catch (e) {
  //   print('Ocurrió un error');
  // }
}

Future<dynamic> getStatusCode() async {
  // jsonEncode convierte un objeto a JSON
  // String data = jsonEncode({"": ""});

// COMPLETER ES UNA CLASE QUE PERMITE RECOGER RESPUESTAS ANTE SOLICITUDES ASINCRONAS DE MANERA SENCILLA
  Completer completer = Completer<String>();

  try {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users/300');

    http.Response response = await http.get(url);
    // response = await http.post('url', body: data);

    if (response.statusCode == 200) {
      print('Petición elaborada correctamente');
      print(response.statusCode);

      // jsonDecode convierte json a formato string
      final jsonData = jsonDecode(response.body);
      Map<String, dynamic> mapDatos = jsonData;

      print('Nombre: ${mapDatos['name']}');
      print('Teléfono: ${mapDatos['phone']}');

      completer.complete(
          'Se ha realizado correctamente la petición HTTP. Código ${response.statusCode}');
    } else {
      completer.completeError(
          'Error de servidor. Código de error: ${response.statusCode}');
    }
  } catch (error) {
    completer.completeError('Sin conexión a internet');
  }
  return completer.future;
}
