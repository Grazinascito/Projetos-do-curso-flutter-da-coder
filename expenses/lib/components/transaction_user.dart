import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: "t1", title: "shopping 🧽", value: 330.25, date: DateTime.now()),
    Transaction(
        id: "t2", title: "mercado 🧽", value: 900, date: DateTime.now()),
    Transaction(
        id: "t3", title: "cachorro 🧽", value: 300, date: DateTime.now()),
  ];

  _addTransaction(String titleParam, double valueParam) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: titleParam,
      value: valueParam,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
