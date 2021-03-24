import 'animal.dart';

class Cachorro extends Animal{

  String nome;

  @override
  int calculaIdadeHumana() {
    return idade * 7;
  }

}