import 'dart:math';

void executar({required Function fnPar, required Function fnImpar}) {
  var sorteado = Random().nextInt(10);
  print('O valor sorteado foi $sorteado');
  sorteado % 2 == 0 ? fnPar() : fnImpar(); // Esse é uma maneira de se fazer um if / else de maneira mais curta

  /* < OUTRA MANEIRA PARA FAZER ESSA VALIDAÇÃO >
  if (sorteado % 2 == 0) {
    fnPar();
  }else {
    fnImpar();
  }
  */
}

main() {
  var minhaFnPar = () => print('Eita! O valor é par!');
  var minhaFnImpar = () => print('Legal! O valor é ímpar!');

  executar(fnImpar: minhaFnImpar, fnPar: minhaFnPar);
}
