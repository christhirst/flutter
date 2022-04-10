import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ldap_front/providers/product.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final product = Provider.of<Product>(context);
    return Consumer<Product>(
      builder: (ctx, value, child) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: GestureDetector(
            child: Image.network(
              value.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: Icon(
                value.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                value.toggleFavoriteStatus();
              },
            ),
            title: Text(
              value.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
