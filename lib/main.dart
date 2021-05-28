import 'package:flutter/material.dart';
import 'package:planning_application/widgets/user_transaction.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  // String titleInput;
  // String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planning App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Text('Chart'),
              elevation: 5,
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}


