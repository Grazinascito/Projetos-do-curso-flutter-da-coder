// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/respostas.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questao.dart';
import 'questionario.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  @override
  final _perguntas = const [
    {
      "pergunta": "Qual é o meu campeão favorito no lol?",
      "respostas": ["Morgana", "Zed", "Quinn", "Lee sin"]
    },
    {
      "pergunta": "Qual é a minha cor favorita?",
      "respostas": ["Rosa", "Preto", "Vermelho", "Cinza"]
    },
    {
      "pergunta": "Qual é o meu estilo musical favorito?",
      "respostas": ["R&B", "JAZZ", "HIP-HOP/RAP", "FUNK"]
    },
  ];

  var _incremente = 0;

    bool get temPerguntaSelecionada {
    return _incremente < _perguntas.length;
  }

  void _responder() {
    if(temPerguntaSelecionada){

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
          backgroundColor: Colors.red,
          title: Text('Perguntas App', style: TextStyle(color: Colors.white)),
        ),
        body: temPerguntaSelecionada? Questionario(
          perguntas: _perguntas, incremente: _incremente, responder: _responder
          ) : Resultado(),
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
