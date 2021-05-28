import 'package:flutter/material.dart';
import 'package:planning_application/models/transaction.dart';
import 'package:planning_application/widgets/new_transaction.dart';
import 'package:planning_application/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'School fees',
      amount: 50.43,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount){
    setState(() {
      final newTx = Transaction(title: txTitle, amount: txAmount, id: DateTime.now().toString(), date: DateTime.now());
      _userTransaction.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(addTransaction: _addNewTransaction,),
      TransactionList(userTransaction: _userTransaction,)
    ],);
  }
}
