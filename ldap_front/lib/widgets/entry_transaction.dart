import 'package:flutter/material.dart';
import 'package:ldap_front/models/scim.dart';
import './new_entry.dart';
import './entry_list.dart';
import '../models/scim.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Entry> _userTransactions = [
    Entry(id: "eee", metaString: "rrr"),
    Entry(id: "sss", metaString: "qqq")
  ];

  void _addNewTransaction(String txTitle, String txAmount) {
    final newTx = Entry(id: txTitle, metaString: txAmount);

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewEntry(_addNewTransaction),
        EntriesList(_userTransactions)
      ],
    );
  }
}
