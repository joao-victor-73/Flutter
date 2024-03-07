import 'pessoa.dart'; // ou import './pesssoa.dart' <- Esses modos são para quando estão tudo na mesma pasta
// import '../pastaFora/pessoa.dart' <- Se o arquivo está fora da mesma pasta do programa principal

main() {
  var p1 = Pessoa();
  p1.nome = 'João';

  print("Meu nome é ${p1.nome}.");
}
