// ignore_for_file: prefer_const_constructors

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_user.dart';
import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';

import 'components/transaction_list.dart';

void main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Despesas Pessoais"),
            backgroundColor: Color.fromARGB(255, 170, 110, 180)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
              child: Text("Gráfico"),
              elevation: 5,
              color: Color.fromARGB(255, 170, 110, 180),
            ),
          ),
          TransactionUser(),
        ],
    ));
  }
}
