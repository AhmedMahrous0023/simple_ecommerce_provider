import 'package:ecommerce_provider/providers/products.dart';
import 'package:ecommerce_provider/views/screens/main_shopping_screen.dart';
import 'package:ecommerce_provider/views/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.pink,
              centerTitle: true,
              titleTextStyle: TextStyle(fontSize: 30),
              )),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context)=>products(),
        child: MainShoppingScreen()),
      routes: {
        MainShoppingScreen.id: (context) => MainShoppingScreen(),
        ProductDetailsScreen.id: (context) => ProductDetailsScreen()
      },
    );
  }
}
