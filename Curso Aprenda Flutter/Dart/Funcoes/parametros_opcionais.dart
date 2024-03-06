// Parametros opcionais

import 'dart:math';

main() {
  int n1 = numAleatorio(); // Não passando um parâmetro
  print(n1);
  
  int n2 = numAleatorio(100); // Passando o parâmetro
  print(n2);
  
  imprimindoData(05, 12, 2015);
  imprimindoData(26, 12);
  imprimindoData(10);
}


/* Para deixar parâmetros opcionais em uma função basta deixar o parâmetro entre colchetes []. E caso queira deixar um valor padrão para o parâmetro, basta atribuir normalmente, igual ao exemplo abaixo:
*/
int numAleatorio([int maximo = 10]) {
  return Random().nextInt(maximo);
}

// Colocando parametros opcionais e obrigatorios juntos
imprimindoData(int dia, [int mes = 1, int ano = 1990]) {
  print("$dia/$mes/$ano");
}