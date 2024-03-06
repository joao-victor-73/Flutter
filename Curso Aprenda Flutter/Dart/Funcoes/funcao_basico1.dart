import 'dart:math'; // Biblioteca Matemática
  
main() {
  somaComPrint(2, 5);
  
  int c = 4;
  int d = 5;
  somaComPrint(c, d);
  
  somaDoisNumerosQuaisquer();
}

// Quando uma função não da um return, pode-se colocar um void
void somaComPrint(int a, int b) {
  print(a + b);
}

somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  
  print("Os valores sorteados foram: $n1 e $n2.");
  print(n1 + n2);
}