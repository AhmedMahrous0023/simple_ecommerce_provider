import 'package:ecommerce_provider/models/product_model.dart';
import 'package:ecommerce_provider/views/widgets/product_item_grid.dart';
import 'package:flutter/material.dart';

class MainShoppingScreen extends StatefulWidget {
  const MainShoppingScreen({super.key});

  @override
  State<MainShoppingScreen> createState() => _MainShoppingScreenState();
}

class _MainShoppingScreenState extends State<MainShoppingScreen> {

  List<ProductModel>availProducts =[
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            itemCount: availProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 10,
              mainAxisExtent: 300,
              childAspectRatio: 1/1),
             itemBuilder: (context,index)=>ProductItemGrid(
              id:availProducts[index].id ,
              image: availProducts[index].image,
              title: availProducts[index].title,
             )),
        )),
    );
  }
}