import 'fruta.dart';

abstract class Mamifero {
  void comer(covariant Fruta fruta);
}

class Humano extends Mamifero {
  void comer(Fruta fruta){}
}

class Macaco extends Mamifero {
  void comer(Banana banana){
    banana.especificoBanana();
  }
}
