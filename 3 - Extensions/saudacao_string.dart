import 'pessoa.dart';

extension SaudacaoString on String {
  
  String saudacao() {
    return 'Olá $this bem vindo ao dart!';
  }
}


extension PessoaSaudacao on Pessoa {
  String saudacao() {
    return 'Olá ${this.nome} bem vindo ao dart!';
  }
}