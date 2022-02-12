import 'package:flutter/material.dart';
import 'questao.dart';
import 'respostas.dart';

class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas;
  final int incremente;
  final void Function() responder;

  const Questionario({
    required this.perguntas,
    required this.incremente,
    required this.responder
  });

  bool get temPerguntaSelecionada {
    return incremente < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPerguntaSelecionada?
    perguntas[incremente]["respostas"] as List<String> : [];

    List<Widget> minhaListaWidget =
    respostas.map((textResp) => Resposta(textResp, responder)).toList();

    return Column(
        children: [
          Questao(perguntas[incremente]["pergunta"]),
          ...minhaListaWidget,
      ]);
  }
}