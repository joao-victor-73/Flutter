import '../model/carro.dart';

main() {
  var carro1 = new Carro(180);

  while (!carro1.estaNoLimite()) {
    print("A Velocidade atual é ${carro1.acelerar()} KM/h.");
  }

  print(
      "O Carro chegou no máximo com velocidade ${carro1.velocidadeAtual} KM/h.");

  while (carro1.velocidadeAtual > 0) {
    print("A Velocidade é atual é ${carro1.frear()} KM/h.");
  }

  print("O carro parou com velocidade ${carro1.velocidadeAtual} KM/h.");
}
