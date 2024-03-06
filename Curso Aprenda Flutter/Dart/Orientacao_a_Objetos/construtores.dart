class Data {
  int? dia;
  int? mes;
  int? ano;

  // Criando um construtor com parâmetros opcionais e com padrões
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  // Construtor normal:
  // Data(this.dia, this.mes, this.ano);

  String mensagemFormatada() {
    return "$dia/$mes/$ano";
  }
}

main() {
  var dataAniversario = new Data(3, 10, 2020);

  print("A data de aniversário é ${dataAniversario.mensagemFormatada()}");
  print(Data().mensagemFormatada()); // Maneira de chamar o objeto sem instaciar
  print(Data(28, 03).mensagemFormatada());
  print(Data(28).mensagemFormatada());
}
