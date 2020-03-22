import 'package:flutter/material.dart';
import 'package:timber/about_products/product_detail.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/media/color.dart';

class TableProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productBar(context, "Table Products"),
      body: TableList(),
    );
  }
}


class TableList extends StatefulWidget {
  @override
  _TableListState createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  List recentProduct = [
    {
      'name': 'Nice Sofa',
      'pictures': 'assests/t1.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Comfort Table',
      'pictures': 'assests/t6.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Strong Chair',
      'pictures': 'assests/t7.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/t8.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/t2.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/t10.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/t11.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/t12.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/t13.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/t5.jpg',
      'oldPrice': 26000,
      'newPrice': 20000,
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
                  title: Text("\$$prodNewPrice", style: TextStyle(fontWeight: FontWeight.w200,color: Colors.red),),
                  subtitle: Text("\$$prodOldPrice",style: TextStyle(fontWeight: FontWeight.w200,color: Colors.black54,decoration: TextDecoration.lineThrough),
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

