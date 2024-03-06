/*

As expressões de flecha, ou funções de flecha, são uma característica do Dart 
(e de algumas outras linguagens de programação) que oferece uma sintaxe mais 
concisa para a definição de funções. Elas são especialmente úteis para funções 
anônimas e para expressões de uma única linha.

A forma geral da expressão de flecha é: 
                            retorno => expressao;
    onde retorno é o que a função retorna, e expressao é a expressão que a função executa.
*/

main() {
  var valores = [2.80, 8.00, 90.71, 25.50, 100.00];

  var valoresAltosFn = (double valor) => valor >= 50.00;
  /*
  A expressão de flecha está sendo usada para criar uma função que retorna 
  um valor booleano (true ou false). Essa função avalia se o valor dentro da lista [valores] é
  maior ou igual a 50.00 (valoresAltos).
  */

  /* A vantagem das expressões de flecha é a sua concisão e clareza,
  especialmente quando a função é simples e consiste em apenas uma linha de código.*/

  var valoresAltos = valores.where(valoresAltosFn);
  print(valoresAltos);
}
