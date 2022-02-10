// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _incremente = 0;

  final List<String> perguntas = [
    'Qual é a cor do sol',
    'Quantos lados tem o quadrado',
    'Ulala nanacita',
  ];

  void _responder() {
    if (_incremente < 0 || _incremente >= perguntas.length - 1) {
      setState(() {
        _incremente--;
      });
    } else {
      setState(() {
        _incremente++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas App'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_incremente]),
            ElevatedButton(
              child: Text("Resposta 1"),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text("Resposta 2"),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text("Resposta 3"),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
