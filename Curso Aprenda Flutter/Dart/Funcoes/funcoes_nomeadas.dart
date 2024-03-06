// Parâmetros nomeados

main() {
  /* < Essas chamadas de função agora irão dar erro.
   * É preciso agora esclarecer o nome do parâmetro quando for passar > 
  saudarPessoa("João", 33);
  saudarPessoa("Percival", 95);
  saudarPessoa("Enzo", 15);
  */
  
  saudarPessoa(nome:"João", idade: 33);
  
  // Pode passar em qualquer posição, a ordem não importa;
  saudarPessoa(idade: 95, nome: "Percival");
  
  idadeFutura(anoFuturo: 2028);
}

// Para deixar um parâmetro nomeado, é preciso utilizar as chaves {};
// As interrogações ? servem para dizer que os parâmetros podem receber valores `null`
saudarPessoa({String? nome, int? idade}) {
  print("Olá $nome, nem parece que você tem $idade anos.");
}

// Misturando parâmetros opcionais, nomeados e com valores padrões
idadeFutura({String nome = 'Fulano', int? anoFuturo, int anoAtual = 2024}) {
  if (anoFuturo != null) {
    print("Sua idade no futuro será de ${anoFuturo - anoAtual} ANOS!");
  } else {
    print("Ano futuro não fornecido.");
  }
}