main(List<String> args) {
  Map<int, String> mapAlumnos = {1: 'Jorge', 2: 'Luis', 3: 'Carla'};

// se itera sobre cada elemento dentro de mapAlumnos y se les imprime
  mapAlumnos.forEach((key, alumno) {
    print('$key $alumno');
  });

  // update actualiza el elemento indicado en el índice por el valor asignado como parametro
  mapAlumnos.update(2, (alumno) => 'Georgina');
  print(mapAlumnos);

// remove elimina el elemento según su clave
  mapAlumnos.remove(1);
  print(mapAlumnos);

// removeWhere elimina los elementos que coincidan con las condiciones expuestas
  mapAlumnos.removeWhere((key, alumno) => alumno == 'Georgina');
  print(mapAlumnos);
}
