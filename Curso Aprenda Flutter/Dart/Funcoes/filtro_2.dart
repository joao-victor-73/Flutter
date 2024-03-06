main() {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  // 'notasBoasFn' e 'notasMuitoBoasFn' são funções anonimas
  /* 
  Essão funções são criadas usando expressões de função de flecha. 
  Essas funções retornam 'true' se a nota atender a determinados critérios 
  (maior ou igual a 7 para notasBoasFn e maior ou igual a 8.8 para notasMuitoBoasFn)
  */
  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;

  /*
  Duas variáveis (notasBoas e notasMuitoBoas) são criadas usando o método where 
  para filtrar as notas com base nas funções definidas anteriormente
  */
  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  /*
  Em resumo, a função percorrerá dentro da lista ´nota´ um valor maior ou igual a 7. 
  Se o resultado for encontrado, ele retornará true e
  */

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);

  /*
  print(notasBoasFn);
  print(notasMuitoBoasFn);
  */
}
