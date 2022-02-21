// ignore_for_file: prefer_const_constructors

import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transactions.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map(
            (trans) => Card(
              child: Row(
                children: [
                  Container(
                    // ignore: prefer_const_constructors
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 116, 36, 109),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "R\$ " + trans.value.toString(),
                      style: TextStyle(
                        color: Color.fromARGB(255, 91, 26, 102),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trans.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        DateFormat('d/MMM/y').format(trans.date),
                        style: TextStyle(
                          color: Color.fromARGB(255, 68, 76, 82),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
