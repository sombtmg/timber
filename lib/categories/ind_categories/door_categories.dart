import 'package:flutter/material.dart';
import 'package:timber/about_products/product_detail.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/categories/ind_categories/list/door_products.dart';
import 'package:timber/media/color.dart';

class DoorCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productBar(context, "Door Category"),
      body: DoorCategory(),
    );
  }
}

class DoorCategory extends StatefulWidget {
  @override
  _DoorCategoryState createState() => _DoorCategoryState();
}

class _DoorCategoryState extends State<DoorCategory> {
  List recentProduct = [
    {
      'name': 'Door 1',
      'pictures': 'assests/b1.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Door 2',
      'pictures': 'assests/b4.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Door 3',
      'pictures': 'assests/b2.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Door 4',
      'pictures': 'assests/b3.jpg',
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
          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> DoorProducts()));

//              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductDetail(
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
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: ColorPick.color6),
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
