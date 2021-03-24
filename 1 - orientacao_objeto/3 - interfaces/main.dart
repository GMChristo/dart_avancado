import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

main(List<String> args) {
  
  Uno uno = Uno();
  Gol gol = Gol();
  
  print(uno.calculaVelocidadeMaxima());
  print(uno.calcularQuantidadeDeRodas());


  Carro carro = Uno();
  print(carro.calculaVelocidadeMaxima());
  // print(carro.calcularQuantidadeDeRodas()); nao funciona pq carro eh do tipo Carro

  Carro carro2 = Gol();
  print(carro2.calculaVelocidadeMaxima());

  mostraVelocidadeMaxima(uno);
  mostraVelocidadeMaxima(gol);

}

mostraVelocidadeMaxima(Carro carro){
  print('quantidade de portas é: ${carro.portas}');
  print('Velocidade maxima de: ${carro.calculaVelocidadeMaxima()}');
}