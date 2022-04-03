import 'package:flutter/material.dart';

class Listwidget extends StatelessWidget {
  Listwidget(this.ltext, {Key? key}) : super(key: key);
  final String ltext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        ltext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
