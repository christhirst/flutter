import 'package:flutter/material.dart';
import 'package:ldap_front/models/scim.dart';
import './new_entry.dart';
import './entry_list.dart';
import '../models/scim.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

dynamic getd() {
  Map news = Map();
  var client = http.Client();
  var url = Uri.http('localhost:9000', '/Users');

  client.get(url, headers: {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "*",
  }).then((response) {
    news = json.decode(response.body);
    print(news.entries.first.key);
    //print(news.entries.first.value);
    for (var i in news.entries.first.value) {
      print(i);
    }
  });

  return news;
}

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
