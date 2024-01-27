import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  final String id;
  final String title;
  final String describtion;
  final String image;
  final double price;
  bool isFavourite;

  ProductModel(
      {required this.id,
      required this.describtion,
      required this.image,
      required this.title,
      required this.price,
      this.isFavourite = false});

      void toggleIsFavourite (){
        isFavourite =! isFavourite ;
        notifyListeners();
      }
}
