import 'package:ecommerce_provider/providers/product_model.dart';
import 'package:ecommerce_provider/providers/products.dart';
import 'package:ecommerce_provider/views/widgets/product_item_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainShoppingScreen extends StatefulWidget {
  static const id = "/mainshoppingscreen";
  const MainShoppingScreen({super.key});

  @override
  State<MainShoppingScreen> createState() => _MainShoppingScreenState();
}

class _MainShoppingScreenState extends State<MainShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Shop'),
      ),
      body: SafeArea(child: ProductGridBuilder()),
    );
  }
}

class ProductGridBuilder extends StatelessWidget {
  const ProductGridBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<products>(context);
    List availProducts = productsData.availProducts;
    return GridView.builder(
        padding: EdgeInsets.all(25),
        itemCount: availProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 30,
            mainAxisSpacing: 10,
            mainAxisExtent: 300,
            childAspectRatio: 1 / 1),
        itemBuilder: (context, index) => ChangeNotifierProvider<ProductModel>(
              create: (context) => availProducts[index],
              child: ProductItemGrid(),
            ));
  }
}
