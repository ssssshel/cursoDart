void main(List<String> args) {
  var hoy = DateTime.now();

  print('=================');
  print(hoy);
  print('Año: ${hoy.year} - Mes: ${hoy.month} - Día: ${hoy.day}');

  var nuevaFecha = hoy.add(Duration(days: 10, hours: 20));

  print('=================');
  print(nuevaFecha);
  print(
      'Año: ${nuevaFecha.year} - Mes: ${nuevaFecha.month} - Día: ${nuevaFecha.day}');

  var diferencia = nuevaFecha.difference(hoy);

  print('=================');
  print(diferencia);
  print('Días: ${diferencia.inDays} Horas: ${diferencia.inHours}');

// isBefore
  print(
      'La fecha nueva es menor al día de hoy ? : ${nuevaFecha.isBefore(hoy)}');

  // isAfter
  print('La fecha nueva es mayor al día de hoy ? : ${nuevaFecha.isAfter(hoy)}');

// zona Horaria
  print(hoy.timeZoneName);
}
