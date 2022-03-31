main(List<String> args) {
  var alumnos = ['Angel', 'Susana', 'Sergio', 'Hugo'];

// iteración sobre cada elemento de la lista
  alumnos.forEach((alumno) {
    print(alumno);
  });

  print('-------------------');

// reversed devuelve los elementos de la lista al reves
  print(alumnos.reversed);

  // first devuelve el primer elemento de la lista
  print(alumnos.first);

  // last devuelve el último elemento de la lista
  print(alumnos.last);
  print('-------------------');

// insert agrega un nuevo elemento en una posición determinada dentro de la lista
  alumnos.insert(3, 'Alejandra');
  print(alumnos);

  // insertAll agrega varios elementos en una posición determinada dentro de la lista
  alumnos.insertAll(2, ['Luis', 'Serena', 'Elena', 'Fran']);
  print(alumnos);
  print('-------------------');

// removeAt elimina un elemento según el índice de este
  alumnos.removeAt(2);

  // remove elimina un elemento según el valor de este
  alumnos.remove('Susana');

  // removeWhere realiza una iteración en la lista buscando el elemento que cumpla con la condición establecida dentro de la función parametro para eliminarlo
  // elimina los elementos de la lista que cumplan con la condición establecida
  alumnos.removeWhere((alumno) => alumno == 'Hugo');
  print(alumnos);
  print('-------------------');

// asMap devuelve cada elemento de la lista junto a su índice correspondiente
  print(alumnos.asMap());

  // join devuelve cada elemento de la lista unido al otro con el elemento establecido como parámetro del método
  print(alumnos.join('---'));

// where devuelve los elementos de la lista que cumplan con la condición establecida
  List alumnosConS = alumnos.where((alumno) => alumno.startsWith('S')).toList();
  print('Nuevos alumnos: $alumnosConS');
}
