import 'package:flutter/material.dart';

class ProductItemGrid extends StatelessWidget {
  const ProductItemGrid({super.key, required this.image, required this.title, required this.id});
final String image,title,id ;
  @override
  Widget build(BuildContext context) {
    return GridTile(child: Image.asset(image),
    footer: GridTileBar(
      backgroundColor: Colors.black54,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
      title: Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 19),),
      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
    ),);
  }
}
