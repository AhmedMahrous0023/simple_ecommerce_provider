import 'package:ecommerce_provider/providers/product_model.dart';
import 'package:flutter/material.dart';

class products with ChangeNotifier{

  List<ProductModel>_availProducts =[
    ProductModel(
      id: "1",
       describtion: "sas",
        image: "images/image1.jpg",
         title: "iphone 1",
          price: 285.55),
          ProductModel(
      id: "2",
       describtion: "dsd",
        image: "images/image2.jpg",
         title: "iphone 2",
          price: 156.55),
          ProductModel(
      id: "3",
       describtion: "fvgf",
        image: "images/image3.jpg",
         title: "iphone 3",
          price: 984.55),
          ProductModel(
      id: "4",
       describtion: "fsfsfa",
        image: "images/image4.jpg",
         title: "iphone 4",
          price: 74.55),
          ProductModel(
      id: "5",
       describtion: "qwwqqw",
        image: "images/image5.png",
         title: "Nokia ",
          price: 352.55),
           ProductModel(
      id: "6",
       describtion: "dsdssss",
        image: "images/image6.jpg",
         title: "Samsung ",
          price: 442.55),
  ];

List<ProductModel> get availProducts=>_availProducts ;

}