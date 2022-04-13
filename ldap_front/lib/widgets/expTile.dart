import 'package:flutter/material.dart';
import 'package:ldap_front/providers/items.dart';
import 'package:provider/provider.dart';

class ExpTile extends StatefulWidget {
  ExpTile({
    Key? key,
  }) : super(key: key);

  @override
  State<ExpTile> createState() => _ExpTileState();
}

class _ExpTileState extends State<ExpTile> {
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      final productsData = Provider.of<Items>(context).fetchItems();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Items>(context);
    final products = productsData.items;

    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(title: Text(products[index].toString()));
        });
  }
}
