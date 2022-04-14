import 'dart:typed_data';

void main(List<String> args) {
  var lista8 = Int8List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
  var lista16 = Int16List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
  var lista64 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
  ];

  print(lista8.lengthInBytes);
  print(lista16.lengthInBytes);
  print(Uint64List.fromList(lista64).lengthInBytes);
}
