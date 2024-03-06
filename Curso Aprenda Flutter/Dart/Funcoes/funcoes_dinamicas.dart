// Como passar variáveis diferentes para uma função:

main() {
  juntar(1, 9);
  juntar("Boa ", "Tarde");
  juntar("O valor de PI é ", 3.1415);
}

// Se não for especificado um tipo de variável nos parâmetros, por padrão virá como dynamic;
// Nessa função foi especificado um como dynamic e o outro sem dizer o que é, e você verá que é dynamic também;
juntar(dynamic a, b) {
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}