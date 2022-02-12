// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() onSelect;

  Resposta(this.texto, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black,
          primary: Colors.red,
          textStyle: TextStyle(
          fontSize: 17,
        )),
        child: Text(texto),
        onPressed: onSelect,
      ),
    );
  }
}
