Future<void> run() async {
  try {
    print('Inicio P1');

  var msg = await processo3();
  print('Mensagem Recebida: $msg');

  await processo4();

  print('Fim P1');
  } catch (e) {
    print('Erro ao executar $e');
  }
}

Future<String> processo3() {
  print('Inicio P3');
  return Future<String>.value(
      Future.delayed(Duration(seconds: 3), () => 'Fim do p3'));
}

Future<String> processo4() {
  return Future<String>.value(Future.delayed(Duration(seconds: 3),
      () => throw Exception('Erro ao buscar processo p4')));
}