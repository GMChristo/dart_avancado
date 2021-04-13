import 'saudacao_string.dart';
import 'pessoa.dart';

void main(){
  String nome = 'Gabriel';
  print(nome.saudacao());

  Pessoa p = Pessoa();
  p.nome = 'Gabriel Christo';

  print(p.saudacao());
}
