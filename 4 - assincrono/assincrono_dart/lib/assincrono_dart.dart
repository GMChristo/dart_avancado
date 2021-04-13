void run() {
  print('inicio do p1');
  processo2();
  processo3()
      .then((mensagem) => 'Mensagem recebida: $mensagem')
      .then((mensagem) => print(mensagem))
      .whenComplete(() => print('P3 completo'));

  processo4().then((mensagem) => print(mensagem),
      onError: (err) => print('Mensagem de erro tratada $err')).whenComplete(() => print('P4 com onError completo'));
  
  processo4()
      .then(
        (mensagem) => print(mensagem),
      )
      .catchError((err) => print('Mensagemde Erro tratada: $err')).whenComplete(() => print('P4 com catchError completo'));
  
  print('Fim do p1');
}

void processo2() {
  print('inicio do p2');
  Future.delayed(Duration(seconds: 2), () {
    for (int i = 0; i < 5; i++) {
      print(i);
    }
    print('Fim do p2');
  });
}

Future<String> processo3() {
  return Future<String>.value(
      Future.delayed(Duration(seconds: 3), () => 'Fim do p3'));
}

Future<String> processo4() {
  return Future<String>.value(Future.delayed(Duration(seconds: 3),
      () => throw Exception('Erro ao buscar processo p4')));
}
