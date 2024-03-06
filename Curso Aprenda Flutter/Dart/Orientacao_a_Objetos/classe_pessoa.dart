class Pessoa {
  String? nome;
  int? idade;

  // Construtor
  Pessoa(this.nome, this.idade);

  // Método
  apresentarMensagem() {
    print("Olá, meu nome é ${nome} e tenho ${idade} anos.");
  }
}

main() {
  Pessoa pessoa1 = Pessoa("Alice", 32);
  var pessoa2 = Pessoa("Bob", 30);

  pessoa1.apresentarMensagem();
  pessoa2.apresentarMensagem();
}
