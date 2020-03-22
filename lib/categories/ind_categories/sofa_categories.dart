import 'package:flutter/material.dart';
import 'package:timber/about_products/product_detail.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/categories/ind_categories/list/sofa_products.dart';
import 'package:timber/media/color.dart';
class SofaCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productBar(context, "Sofa Category"),
      body: SofaCategory(),
    );
  }
}

class SofaCategory extends StatefulWidget {
  @override
  _SofaCategoryState createState() => _SofaCategoryState();
}

class _SofaCategoryState extends State<SofaCategory> {
  List recentProduct = [
    {
      'name': 'Sofa 1',
      'pictures': 'assests/s1.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Sofa 2',
      'pictures': 'assests/s11.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Sofa 3',
      'pictures': 'assests/s10.jpg',
//      'oldPrice': 1000,
//      'newPrice': 500,
    },
    {
      'name': 'Sofa 4',
      'pictures': 'assests/s14.jpg',
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
              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> SofaProducts()));

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
