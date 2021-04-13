// Const
// constante tem que ser iniciada no momento da declaração

List<int> getValores() => const [1,2];

void main() {
  const nome = 'Gabriel';

  var a = getValores();
  var b = getValores();

  print(a == b);
  /*List<int> getValores() => [1,2]; ou List<int> getValores() => const [1,2];
  False se a variavel nao tiver o const, pois vai comparar o endereço de memoria.
  True se usar o const pois a segunda variavel ira ver que o valor é const e vai apontar para onde ela ja foi inicializada
  */

  var p1 = const Pessoa('Gabriel', 31);
  var p2 = const Pessoa('Gabriel', 31);

  print(p1 == p2);
}

class Pessoa {
  final String nome;
  final int idade;

  const Pessoa(this.nome, this.idade);
}