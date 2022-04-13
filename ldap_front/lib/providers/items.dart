import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Items with ChangeNotifier {
  List<dynamic> _entries = ["2eeeee22", "eeeeeee"];

  Future<void> fetchItems() async {
    Map news = Map();
    Map ss = Map();
    var client = http.Client();
    var url = Uri.http('localhost:9000', '/Users');
    var nl = [];
    var nls = [];
    try {
      var request = await client.get(url, headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers": "*",
      }).then((response) {
        news = json.decode(response.body) as Map<String, dynamic>;

        news.forEach((key, value) {
          if (value is List) {
            if (value.length > 3) {
              nl = value.toList();
            }
            //print(nl[0]["id"]);
          }
        });
        /*    news.entries.first.value.forEach((key, value) {
        
      }); */
      });
      for (var k in news.keys) {
        nl.add(k);
        nls.add(news[k]);
        //print("Key : $k, value : ${news[k]}");
      }

      _entries = nl;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
    print(nl);
  }

  List<dynamic> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._entries];
  }
}
