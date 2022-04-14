// Uri ES UNA CLASE QUE PERMITE GESTIONAR, EDITAR Y MANIPULAR URIS

void main(List<String> args) {
  var uri = 'https://dart.dev/get- dart';

  var encodeFull = Uri.encodeFull(uri);
  var decodeFull = Uri.decodeFull(uri);

  print('encodeFull: $encodeFull');
  print('decodeFull: $decodeFull');

  var encode = Uri.encodeComponent(uri);
  var decode = Uri.decodeComponent(uri);

  print('encode: $encode');
  print('decode: $decode');

  var url = Uri.parse(uri);

  print(url.host);
  print(url.scheme);
  print(url.path);

  var url2 = Uri(scheme: 'https', host: 'dione.dev', path: '/general');

  print(url2);
}
