// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'questionario.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  final _perguntas = const [
    {
      "pergunta": "Qual é o meu campeão favorito no lol?",
      "respostas": [
        {"texto": "Morgana", "pontos": 1},
        {"texto": "Zed", "pontos": 5},
        {"texto": "Quinn", "pontos": 10},
        {"texto": "Lee sin", "pontos": 3},
      ]
    },
    {
      "pergunta": "Qual é a minha cor favorita?",
      "respostas": [
        {"texto": "Rosa", "pontos": 5},
        {"texto": "Preto", "pontos": 10},
        {"texto": "Vermelho", "pontos": 1},
        {"texto": "Cinza", "pontos": 3},
      ]
    },
    {
      "pergunta": "Qual é o meu estilo musical favorito?",
      "respostas": [
        {"texto": "R&B", "pontos": 10},
        {"texto": "JAZZ", "pontos": 5},
        {"texto": "HIP-HOP/RAP", "pontos": 3},
        {"texto": "FUNK", "pontos": 1},
      ]
    },
  ];

  var _incremente = 0;
  var _pontosTotais = 0;

  bool get temPerguntaSelecionada {
    return _incremente < _perguntas.length;
  }

  void _responder(int pontos) {
    if (temPerguntaSelecionada) {
      setState(() {
        _incremente++;
        _pontosTotais += pontos;
      });
    }

    print(_pontosTotais);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Perguntas App', style: TextStyle(color: Colors.white)),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                incremente: _incremente,
                responder: _responder)
            : Resultado(_pontosTotais),
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
