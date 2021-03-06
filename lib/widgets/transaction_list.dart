import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                ),
                child: Text(
                  '\$${transactions[index].amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(transactions[index].date),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ]),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
