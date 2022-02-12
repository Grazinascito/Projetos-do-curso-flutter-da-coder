// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/respostas.dart';
import './questao.dart';

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

  void _responder() {
    if(temPerguntaSelecionada){

    setState(() {
      _incremente++;
    });
    }
  }

  bool get temPerguntaSelecionada {
    return _incremente < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPerguntaSelecionada?
     _perguntas[_incremente]["respostas"] as List<String> : [];

    List<Widget> minhaListaWidget =
        respostas.map((textResp) => Resposta(textResp, _responder)).toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Perguntas App', style: TextStyle(color: Colors.black)),
        ),
        body: temPerguntaSelecionada? Column(
          children: [
            Questao(_perguntas[_incremente]["pergunta"]),
            ...minhaListaWidget,
          ],
        ):
        Container( 
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,

              child: Text("Parabéns!!",
              style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
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
