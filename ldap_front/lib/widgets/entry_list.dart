import 'package:flutter/material.dart';
import '../models/scim.dart';

class EntriesList extends StatelessWidget {
  final List<Entry> Entries;

  EntriesList(this.Entries);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              child: ExpansionTile(
                title: Text(
                  Entries[index].id,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      Entries[index].id,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: Entries.length,
        ));
  }
}
