class Camiseta {
  String tamanho = 'G';
  String _cor = 'Preta';
  String marca = 'Nike';

  String get cor => _cor;
  // void set cor(String cor) => _cor = cor;
  void set cor(String cor){
    if(cor == 'Verde'){
      throw Exception('Cor inválida');
    }
    _cor = cor;
  }

  String recuperaCor() {
    return _cor;
  }

  void alteraCor(String cor) {
    _cor = cor;
  } 
}

class Animal {
  String raca = 'York';
  String tamanho = 'P';
  String tipo = 'Cachorro';
}
