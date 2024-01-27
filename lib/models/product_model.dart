class ProductModel{

  final String id ;
  final String title ;
  final String describtion ;
  final String image ;
  final double price ;
  bool isFavourite ;

  ProductModel({required this.id,required this.describtion,required this.image,required this.title,required this.price,this.isFavourite =false});
}