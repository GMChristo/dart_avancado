class Pessoa {
  String nome;
  int idade;

  //Construtor Default
  // Pessoa(this.nome, this.idade);

  //Construtor nomeado
  // Pessoa.soComNome(this.nome);

  //Construtor com parametros opcionais
  // Pessoa({this.nome, this.idade});
  // Pessoa(this.nome, [this.idade = 31]);

  Pessoa(this.nome, {this.idade});
  Pessoa.comIdadeOpcional(this.nome, [this.idade]);

}