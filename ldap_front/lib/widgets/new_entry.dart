import 'package:flutter/material.dart';

class NewEntry extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewEntry(this.addTx);

  void submitData() {
    final entredTitle = titleController.text;
    final enteredAmount = amountController.text;
    if (entredTitle.isEmpty || enteredAmount.isEmpty) {
      return;
    }

    addTx(
      entredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              onSubmitted: (_) => submitData(),
            ),
            ElevatedButton(onPressed: submitData, child: const Text('Enter'))
          ],
        ),
      ),
    );
  }
}
