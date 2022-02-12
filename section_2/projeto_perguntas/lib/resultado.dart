import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({ Key? key }) : super(key: key);

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

                child: const Text("Parabéns!!",
                style: TextStyle(
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