import 'package:flutter/material.dart';
import 'package:timber/about_products/product_detail.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/categories/ind_categories/list/chair_products.dart';
import 'package:timber/media/color.dart';
class ChairCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productBar(context, "Chair Category"),
      body: ChairCategory(),
    );
  }
}
class ChairCategory extends StatefulWidget {
  @override
  _ChairCategoryState createState() => _ChairCategoryState();
}

class _ChairCategoryState extends State<ChairCategory> {
  List recentProduct = [
    {
      'name': 'Chair 1',
      'pictures': 'assests/c1.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Chair 2',
      'pictures': 'assests/chair1.png',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Chair 3',
      'pictures': 'assests/c2.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Chair 4',
      'pictures': 'assests/c3.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: recentProduct.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProd(
          prodName: recentProduct[index]['name'],
          prodPic: recentProduct[index]['pictures'],
//          prodOldPrice: recentProduct[index]['oldPrice'],
//          prodNewPrice: recentProduct[index]['newPrice'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPic;
//  final prodOldPrice;
//  final prodNewPrice;

  SingleProd({
    this.prodName,
    this.prodPic,
//    this.prodOldPrice,
//    this.prodNewPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ChairProducts()));
//                productName:prodName,
//                productPic: prodPic,
////                productNew: prodNewPrice,
////                productOld: prodOldPrice,
//              ))
//              );
            },
            child: GridTile(
              footer: Container(
                height: 60,
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prodName,
                    style: TextStyle(fontWeight: FontWeight.bold,color: ColorPick.color6),
                  ),
//                  title: Text("\$$prodNewPrice", style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red),),
//                  subtitle: Text("\$$prodOldPrice",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,decoration: TextDecoration.lineThrough),
//                  ),
                ),
              ),
              child: Image.asset(
                prodPic,
                fit: BoxFit.contain,
              ),
            ),
          )),
    );
  }
}
