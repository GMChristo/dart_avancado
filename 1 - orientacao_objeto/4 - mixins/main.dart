import 'joao.dart';

main(List<String> args) {
  var j = Joao();
  j.cantar();
  j.dancar();
  j.habilidade();
  print(j.habilidade());

  Joao()
    ..cantar()
    ..dancar()
    ..habilidade();
}
