/* 
  - List
  - Set
  - Map
*/
main() {
  //List
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2)); // Acessando elemento da lista no índice 2
  print(aprovados[0]); // Acessando elemento da lista no índice 0
  print(aprovados.length); // Tamanho da lista

  aprovados.add('Charles'); // Adicionando elemento na List
  print("Lista de Aprovados atualizado: $aprovados");

  aprovados[4] = "Carlos"; // Adicionando elemento na List

  // REMOVENDO ELEMENTO DA LISTA
  aprovados.remove(0);
  aprovados.removeAt(4);
  aprovados.removeLast();
  print("Lista de Aprovados atualizado: $aprovados");

  aprovados.clear();
  print("Lista de Aprovados atualizado: $aprovados");

  // Map
  var telefones = {
    'João': '+55 (11) 98765-4321',
    'Maria': '+55 (21) 12345-6789',
    'Pedro': '+55 (85) 45455-8989',
    'João': '+55 (11) 77777-7777',
  };

  print(telefones is Map);
  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.keys);
  print(telefones.values);
  print(telefones.entries);

  // Set
  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  print(times is Set);
  times.add('Palmeiras');
  times.add('Palmeiras');
  times.add('Palmeiras');
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
  print(times);
}
