import 'fruta.dart';
import 'mamifero.dart';

main(List<String> args) {
  
  var h = Humano();
  h.comer(Banana());
  h.comer(Maca());

  var m = Macaco();
  m.comer(Banana());

}