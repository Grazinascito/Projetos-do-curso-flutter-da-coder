// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
   
  final texto;
  const Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
      child: Text(
        texto,
        style: TextStyle(fontSize: 23),
        textAlign: TextAlign.center,
      ),
    );
  }
}
