import 'dart:async';
import 'dart:io';
import 'dart:isolate';

// LA CLASE ISOLATE PERMITE TRABAJAR DE MANERA AISNCRONA CON RPOCESOS EN SEGUNDO PLANO
void main(List<String> args) async {
  print('Comenzando cronometro...');
  await start();
  print('Presiona enter para terminar');
  await stdin.first;
  stop();
  print('Cronometro terminado con éxito');
  exit(0);
}

// se define un nuevo objeto de la clase Isolate;
late Isolate isolate;

// SECUENCIAS Y EVENTOS DEL PROCESO
// inicio
// las clases receivePort junto a sendPort permiten la comunicación entre isolates
start() async {
  // se instancia un objeto de la clase ReceivePort
  ReceivePort receivePort = ReceivePort();

// isolate va a tomar como valor el nuevo objeto isolate que se va a crear, el primer parametro debe ser la primera función que se invoca al crear el isolate, ademas se debe incluír como parametro el objeto receivePort junto a su part sendPort
  isolate = await Isolate.spawn(cronometro, receivePort.sendPort);

// el objeto recievePort va a escuchar los eventos que se le asignen, en este caso la funcion manejoMensajes
  receivePort.listen(manejoMensajes);
}

// tarea principal
// la funcion cronometro tiene de parametro el objeto sendPort que va a enviar mensajes al receivePort
cronometro(SendPort sendPort) async {
  int segundos = 0;
  int minutos = 0;

  // tarea a realizar
  Timer.periodic(Duration(seconds: 1), (Timer timer) {
    segundos++;

    if (segundos == 60) {
      segundos = 0;
      minutos++;
    }

    String mensaje = '$minutos:$segundos';
    print(mensaje);

    // el objeto sendPort envía el mensaje al receivePort correspondiente
    sendPort.send(mensaje);
  });
}

manejoMensajes(dynamic data) {
  print('Tiempo transcurrido: $data ');
}

// fin del proceso
stop() {
  if (isolate != null) {
    print('Terminando cronometro');
    isolate.kill(priority: Isolate.immediate);
  }
}
