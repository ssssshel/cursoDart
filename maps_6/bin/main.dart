main(List<String> args) {
  // UN MAPA ES UNA COLECCIÓN DE CLAVE VALOR, SIMILAR A LOS OBJETOS EN JS O LOS DICCIONARIOS EN PYTHON
  // se define Map<tipoDatoClave, tipoClaveValor> nombreMap = {clave: valor}

  Map<String, int> mapStringInt = {'cien': 100, 'tres': 3};
  Map<String, String> diccionarioDatos = {
    'pelota': 'Objeto redondo denominado juguete',
    'dart': 'Lenguaje de programación genial',
    'flutter': 'Framework de google para apps móviles'
  };

  Map<int, String> map = {};

  // addAll permite agregar nuevos objetos clave/valor dentro del mapa
  map.addAll({1: 'México'});
  map.addAll({800: 'Colombia'});

  map.addAll({34: 'Rep. Dominicana', 404: 'Argentina', 30: 'Perú'});

  print(mapStringInt['cien']);
  print(diccionarioDatos['pelota']);
  print(map);
}
