import 'dart:async';

void run() {
  print('Streams teste');

  var streamController = StreamController();
  var portaDeEntrada = streamController.sink;
  var portaDeSaida = streamController.stream.asBroadcastStream();

  // portaDeSaida.listen((valor) => print('${DateTime.now()} bolinha $valor'));
  // portaDeSaida.listen((valor) => print('${DateTime.now()} Outro cara olhando o cano: bolinha $valor'));
  portaDeSaida.where((value) => (value % 2) == 0).listen((value) => print('Bolinha par $value'));
  portaDeSaida
  .skip(2)
  .where((value) => (value % 2) == 1)
  .map((value) => 'Bolinha impar $value')
  .listen((value) => print(value));

  // Future.delayed(Duration(seconds: 3), () => portaDeEntrada.add(1));
  // portaDeEntrada.add(2);
  // portaDeEntrada.add(3);
  // portaDeEntrada.add(4);
  // portaDeEntrada.add(5);

  List.generate(20, (i) => i++).forEach((valor) => portaDeEntrada.add(valor));

}