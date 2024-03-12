import 'package:flutter/material.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  void responder() {
    print('Pergunta Respondida!!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual sua comida predileta?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),

        body: Column(
          children: [
            Text(perguntas[0]),

            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 01'),
            ),
            
            ElevatedButton(
              onPressed: () {
                print('Resposta 2 foi selecionada!');
              },
              child: const Text('Resposta 2'),
            ),

            ElevatedButton(
              onPressed: () => print('Resposta 3!!!'),
              child: const Text('Resposta 3'),
            ),

          ],
        ),
      ),
    );

  }
}
