main() {
  var n1 = 2;
  var n2 = 4.56;
  var t1 = "Texto";
  // t1 = 3;

  var t2 = "Testando";
  var t3 = " a ";
  String t4 = "concatenação ";
  int n3 = 4;

  print(n1 + n2);

  print(n1.runtimeType);
  print(n2.runtimeType);
  print(t1.runtimeType);

  print(n1 is int);
  print(n1 is String);

  print("=" * 30);
  print(t2 + t3 + t4 + (n3).toString()); // Convertendo valor inteiro para String
}
