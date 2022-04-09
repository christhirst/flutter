import 'package:flutter/material.dart';
import 'package:ldap_front/models/scim.dart';
import './new_entry.dart';
import './entry_list.dart';
import '../models/scim.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List getd() {
  Map news = Map();
  Map ss = Map();
  var client = http.Client();
  var url = Uri.http('localhost:9000', '/Users');
  var nl = [];
  try {
    client.get(url, headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Headers": "*",
    }).then((response) {
      news = json.decode(response.body) as Map<String, dynamic>;
      news.forEach((key, value) {
        if (value is List) {
          if (value.length > 3) {
            nl = value.toList();
            print(value.length);
          }
          print(nl);
        }
      });
      /*    news.entries.first.value.forEach((key, value) {
        
      }); */
    });
  } catch (error) {
    throw (error);
  }
  return nl;
}

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  List _userTransactions = getd();

  void _addNewTransaction(String txTitle, String txAmount) {
    //final newTx = Entry(id: txTitle, metaString: txAmount);

    setState(() {
      _userTransactions = getd();
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
