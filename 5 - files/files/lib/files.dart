import 'dart:convert';
import 'dart:io';

void run() {
  var file = File('lib/file.txt');

  print('iniciando');
  //Assincrono
  // file.readAsString().then((str) => print(str));

  //Sincrono
  // var str = file.readAsStringSync();
  // print(str);

  // file.readAsLines().then((linhas) => linhas.forEach((l) => print('linha: $l')));
  // var linhas = file.readAsLinesSync();
  // linhas.forEach((l) => print('linha: $l'));

  // var stream = file.openRead();
  // stream
  //     .transform(utf8.decoder)
  //     .listen((value) => print('Todo o conteudo: $value'));

  var stream2 = file.openRead();
  stream2
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .listen((value) => print('Linha X: $value'),
      onError: (e) => print('$e Erro ao ler o arquivo'),
      onDone: () => print('Finalizou a leitura'),
      );

  File('lib/file2.txt').writeAsString('Curso especialista Dart e Flutter').then((file) => print(file.lengthSync()));

  File('lib/file3.txt').writeAsStringSync('Curso Especialista Dart e Flutter');
  print('escrevendo file3');

  var writeFile = File('lib/file4.txt').openWrite();
  writeFile.write('Bolinha1');
  writeFile.write('\n');
  writeFile.write('Bolinha2');

  print('finalizando');
}
