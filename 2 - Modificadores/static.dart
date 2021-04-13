// static
// Metodos e Atributos de classe

class Pessoa {
  static final String nome = 'João';

  String recuperaNomeCompleto() {
    return 'Gabriel Chrito';
  }

  static int calculaIdade(String data) {
    return 31;
  }
  static int soma(int a, int b){
    return a + b;
  }
}

void main() {
  print(Pessoa.nome);
  funcao1();
  print(Pessoa.nome);
  Pessoa.calculaIdade('');
}

funcao1(){
  var p =Pessoa();
  var p2 = Pessoa();

  //print(p.nome);
  print(p.recuperaNomeCompleto());

  //print(p2.nome);
  print(p2.recuperaNomeCompleto());

  // Pessoa.nome = 'Gabriel';
}