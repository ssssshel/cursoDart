// METODOS ÚTILES PARA STRINGS

main(List<String> args) {
  String correo;
  String mensaje;

  correo = 'angelarteaga989gmail.com123';

//contains devuelve true si el string contiene el texto indicado
  print(correo.contains('@'));

  //endswith devuelve true si el string termina con el texto indicado
  print(correo.endsWith('.com'));

// condicional ternario (if else)
  mensaje = correo.contains('@') && correo.trim().endsWith('.com')
      ? 'Esto es un correo electrónico'
      : 'No es un correo electrónico';
  print('$correo: $mensaje');

// replaceall elimina el contenido del primer parametro y lo cambia por el del segundo
  print(correo.replaceAll('123', '').toLowerCase());
  print(correo.replaceAll('123', '').toUpperCase());

// length devuelve un número que indica la longitud de una cadena
  print("Longitud de correo: ${correo.length} ");

  //substring devuelve una porción del string
  print(correo.substring(2, 8));
}
