import 'package:flutter/material.dart';
import 'package:timber/about_products/product_detail.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/media/color.dart';

class BedProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productBar(context, "Bed Products"),
      body: BedList(),
    );
  }
}


class BedList extends StatefulWidget {
  @override
  _BedListState createState() => _BedListState();
}

class _BedListState extends State<BedList> {
  List recentProduct = [
    {
      'name': 'Nice Sofa',
      'pictures': 'assests/d9.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Comfort Bed',
      'pictures': 'assests/d8.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Strong Chair',
      'pictures': 'assests/d7.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/d6.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/bed1.png',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/d5.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/d4.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/d3.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/d2.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/d1.jpg',
      'oldPrice': 1000,
      'newPrice': 500,
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
          prodOldPrice: recentProduct[index]['oldPrice'],
          prodNewPrice: recentProduct[index]['newPrice'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPic;
  final prodOldPrice;
  final prodNewPrice;

  SingleProd({
    this.prodName,
    this.prodPic,
    this.prodOldPrice,
    this.prodNewPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductDetail(
                productName:prodName,
                productPic: prodPic,
                productNew: prodNewPrice,
                productOld: prodOldPrice,
              ))
              );
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
                  title: Text("\$$prodNewPrice", style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red),),
                  subtitle: Text("\$$prodOldPrice",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,decoration: TextDecoration.lineThrough),
                  ),
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
