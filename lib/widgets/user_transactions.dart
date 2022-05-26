import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/transaction_list.dart';
import './new_transactions.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'weekly groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'weekly groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'weekly groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'weekly groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'weekly groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'weekly groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
      title: txtitle,
      amount: txamount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    ));
  }
}
