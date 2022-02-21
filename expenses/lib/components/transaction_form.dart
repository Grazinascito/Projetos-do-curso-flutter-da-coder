import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Título",
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: "Valor (R\$)",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Nova Transação"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                primary: Colors.white,
                backgroundColor: Color.fromARGB(255, 170, 110, 180),
              ),
              onPressed: () {
                final titleParam = titleController.text;
                final valueParam = double.tryParse(valueController.text) ?? 0.0;

                onSubmit(titleParam, valueParam);
              },
            ),
          ],
        ),
      ),
    );
  }
}
