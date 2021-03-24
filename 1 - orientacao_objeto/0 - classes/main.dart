import 'camiseta.dart';

main(List<String> args) {
  Camiseta camiseta = Camiseta();
  camiseta.alteraCor('Vermelho');
  print(camiseta.recuperaCor());

  //altera pelo setter
  camiseta.cor = 'Verde';
  //recupera pelo getter
  print(camiseta.cor);

}