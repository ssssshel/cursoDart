void main(List<String> args) {
  // CONTINUE SE SALTA PASOS DE INSTRUCCIONES, MIENTRAS QUE BREAK ANULA SENTENCIAS DE CONTROL COMO FOR EJECUTANDOLAS SOLO UNA VEZ POR EJEMPLO

  print('CONTINUE');
  for (int i = 0; i <= 10; i++) {
    print('Número: $i');
    continue;
    print('-----------');
  }

  print('------------- \nBREAK');
  for (int i = 0; i <= 10; i++) {
    print('Número: $i');
    break;
    print('-----------');
  }
}
