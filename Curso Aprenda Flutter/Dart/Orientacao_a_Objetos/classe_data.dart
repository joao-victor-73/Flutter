// Criando uma classe chamada Data:
/*classe é uma estrutura que define as características (atributos) 
e comportamentos (métodos) de um objeto. É uma espécie de modelo para criar objetos*/
class Data {
  int? dia;
  int? mes;
  int? ano;
}

main() {
  /* Um objeto é uma instância de uma classe. 
  Você pode criar vários objetos com base em uma única classe.*/

  // Instanciando a classe Data:
  var dataAniversario = new Data();
  dataAniversario.dia = 25;
  dataAniversario.mes = 12;
  dataAniversario.ano = 2014;

  // Outra forma de instanciar uma classe:
  // (OBS: O `new` não é necessário na hora de instanciar uma classe)
  Data dataCompra = Data();
  dataCompra.dia = 11;
  dataCompra.mes = 12;
  dataCompra.ano = 2025;

  // Eu tenho então 2 Objetos (dataAniversario e dataCompra) e uma classe

  print(
      "${dataAniversario.dia} / ${dataAniversario.mes} / ${dataAniversario.ano}");
  print("${dataCompra.dia} / ${dataCompra.mes} / ${dataCompra.ano} ");
}
