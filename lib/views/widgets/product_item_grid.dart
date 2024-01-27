import 'package:ecommerce_provider/providers/product_model.dart';
import 'package:ecommerce_provider/views/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItemGrid extends StatelessWidget {
  const ProductItemGrid({
    super.key,
  });
// final String image,title,id ;
  @override
  Widget build(BuildContext context) {
    final productdata = Provider.of<ProductModel>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailsScreen.id,
                arguments: productdata.id,
              );
            },
            child: Image.asset(productdata.image)),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
              onPressed: () {
                productdata.toggleIsFavourite();
              },
              icon: productdata.isFavourite
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
          title: Text(
            productdata.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 19),
          ),
          trailing:
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ),
      ),
    );
  }
}
