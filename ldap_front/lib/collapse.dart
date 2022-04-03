import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  dynamic Element;
  MyStatefulWidget({Key? key, required this.Element}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final nn = const [
    {
      'quest': '22',
      'lll': '444',
      'ooo': 'ffff',
    },
    {
      'quest': 'dd',
      'lll': 'fgg',
      'ooo': 'aaa',
    },
  ];

  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: ExpansionTile(
              title: Text(
                "items.playerName",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "items.description",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          );
          ;
        }),
        ExpansionTile(
          title: Text('ddd expansion arrow icon'),
          subtitle: Text('Leading expansion arrow icon'),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(title: Text('This is tile number 3')),
            ListTile(title: Text('This is tile number 4')),
          ],
        ),
      ],
    );
  }
}
