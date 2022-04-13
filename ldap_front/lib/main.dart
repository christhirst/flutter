import 'package:flutter/material.dart';

import 'package:ldap_front/widgets/expTile.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import 'package:ldap_front/providers/items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Items(),
        ),
      ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text("wwww"),
            ),
            body: ExpTile(),
          ),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          }),
    );
  }
}




       
  /*             
              
               Column(
                children: const <Widget>[
                  SizedBox(height: 20.0),
                  ExpansionTile(
                    title: Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ExpansionTile(
                        title: Text(
                          'Sub title',
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Text('data'),
                          )
                        ],
                      ),
                      ListTile(
                        title: Text('data'),
                      )
                    ],
                  ),
                ],
              ), */