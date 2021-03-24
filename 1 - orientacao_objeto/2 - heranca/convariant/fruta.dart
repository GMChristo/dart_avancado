abstract class Fruta{
  String pegarX();
}

class Maca extends Fruta {
  @override
  String pegarX() {
    throw UnimplementedError();
  }
}
class Banana extends Fruta {
  @override
  String pegarX() {
    throw UnimplementedError();
  }

  String especificoBanana(){
    return 'X';
  }
}
