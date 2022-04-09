import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  String? titleInput;
  String? amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void startAddNewTransaction(BuildContext ctx) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('CHART!'),
                  elevation: 5,
                ),
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //print(fetchAlbum().then((value) => print(value)));
        },
      ),
    );
  }
}
