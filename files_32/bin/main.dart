import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  // createSync crea de manera sincrona un archivo en la ruta especificada
  File('C:/Users/Cliente/Downloads/archivo.txt').createSync();

// se crea un objeto de tipo File para que pueda ser manipulado y especifica nuevamente la ruta dentro del constructor de la clase
  File file = File('C:/Users/Cliente/Downloads/archivo.txt');

  String contenido;

  if (await file.exists()) {
    // readAsString lee el contenido del archivo como String
    contenido = await file.readAsString();
    print(contenido);

// writeAsString agrega contenido al archivo en forma de String
    await file.writeAsString('Dart es un lenguaje genial');
    contenido = await file.readAsString();
    print(contenido);

// tambien se puede crear un sink del archivo para modificarlo
    var sink = file.openWrite();
    sink.write('Dart es grandioso');

    sink.close();
    contenido = await file.readAsString();
    print(contenido);

// lastModified muesta la fecha y hora de la ultima modificacion del archivo
    print(await file.lastModified());

    // BASE64

    // bytes a base64
    var base64 = base64Encode(file.readAsBytesSync());
    print(base64);

    // base64 a bytes(ASCII)
    var ascii = base64Decode(base64);
    print(ascii);

    // ASCII a String
    var baseDecode = AsciiDecoder();
    print(baseDecode.convert(ascii));
  }
}
