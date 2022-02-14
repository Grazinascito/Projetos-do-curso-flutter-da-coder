import 'package:flutter/material.dart';
import 'questao.dart';
import 'respostas.dart';

class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas;
  final int incremente;
  final void Function(int) responder;

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

    List<Map<String, Object>>respostas = temPerguntaSelecionada?
    perguntas[incremente].cast()["respostas"] : [];

    List<Widget> minhaListaWidget =
    respostas
    .map((textResp) => Resposta(textResp["texto"]
    .toString(), () => responder(int.parse(textResp["pontos"]
    .toString()))))
    .toList();

    return Column(
        children: [
          Questao(perguntas[incremente]["pergunta"]),
          ...minhaListaWidget,
      ]);
  }
}