import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontos;
  final void Function() reiniciarResultado;
  const Resultado(this.pontos, this.reiniciarResultado);

  String get fraseResultado {
    if (pontos < 8) {
      return "Sua pontuação foi $pontos, pode melhorar.";
    } else if (pontos < 12) {
      return "Sua pontuação foi $pontos. Parabéns, mas pode melhorar.";
    } else {
      return "Sua pontuação foi $pontos. Parabéns, você é muito bom!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
        ),
        const Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Quer jogar novamente?", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold) ),
        ),
           OutlinedButton.icon(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              backgroundColor: Colors.red,
              primary: Colors.white,
            
            ),
          onPressed: reiniciarResultado,
          label: const Text('Reiniciar'),
          icon: const Icon(Icons.restart_alt_sharp),
        ),
      ],
    );
  }
}
