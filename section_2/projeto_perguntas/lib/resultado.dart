import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontos;
  Resultado(this.pontos);

  String get fraseResultado {
    if (pontos < 8) {
      return "Sua pontuação foi $pontos, pode melhorar.";
    } else if (pontos < 12) {
      return "Sua pontuação foi $pontos. Parabéns, mas pode melhorar.";
    } else {
      return "Sua pontuação foi $pontos. Parabéns, voce é muito bom!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Text(
            fraseResultado,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
