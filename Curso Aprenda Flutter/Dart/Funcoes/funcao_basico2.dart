import 'dart:math'; // Biblioteca Matemática
 
main() {
  int resultado = somar(2, 3);
  resultado *= 2;
  
  print("O dobro do resultado é $resultado");
  
  print("O resultado é ${somaNumerosAleatorios()}");
  
  print(mensagem('Testando uma função'));
}

// Se caso a função tiver um retorno (return) é preciso colocar o tipo de variável que irá retornar;
// Nesse nosso caso, ela irá retornar uma variável do tipo inteiro
int somar(int a, int b) {
  return a + b;
}

int somaNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}

// Aqui ela irá retornar um do tipo String
// Se eu tentar colocar um número para retornar, ele dará erro
String mensagem(String msg) {
  return "Essa é a mensagem digitada: $msg";
}