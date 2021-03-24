import 'animal.dart';
import 'cachorro.dart';

main(List<String> args) {
  
  var cachorro = Cachorro();
  cachorro.tamanho = 'G';
  cachorro.idade = 10;
  print(cachorro.calculaIdadeHumana());

  var animal = Animal();
  animal.idade = 10;
  print(animal.calculaIdadeHumana());

}