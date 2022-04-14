import 'dart:async';

void main(List<String> args) {
  var streamController = StreamController<List<String>>();

// cuerpo del stream
  streamController.stream.listen((data) {
    data.forEach((item) {
      print(item);
    });
  },
      onError: (error) => print('Capturando error: $error'),
      onDone: () => print('Se realizó el stream correctamente'));

// eventos agregados
  streamController.add(['Pedro', 'Carlos', 'Jose', 'Roberto']);
  streamController.addError('500');

  streamController.add(['Angel', 'Mario']);

  // close cierra el stream evitando que se puedan agregar mas eventos posteriormente
  streamController.close();
}
