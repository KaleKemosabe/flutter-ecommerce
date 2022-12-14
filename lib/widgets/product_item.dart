import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ProductDetailScreen(title),
          ),
          );
        },
        child: Image.network(imageUrl, fit: BoxFit.cover,),
      ),
      footer: GridTileBar(backgroundColor: Colors.black87, leading: IconButton(icon: Icon(Icons.favorite)), title: Text(title, textAlign: TextAlign.center,), trailing: IconButton(icon: Icon(Icons.shopping_cart,), onPressed: () {},)),
    );
  }
}