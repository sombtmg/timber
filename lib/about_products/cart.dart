import 'package:flutter/material.dart';
import 'package:timber/about_products/product_detail.dart';
import 'package:timber/bar/auth_bar.dart';
import 'package:timber/media/background.dart';

class Cart extends StatelessWidget {
  final proName;
  final proPic;
  final proNew;
  final proQuant;
  final proOld;

  Cart({this.proName, this.proPic, this.proNew, this.proQuant, this.proOld});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAuthBar(context, 'Cart'),
      body: Container(
        child: Card(
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => ProductDetail(
                        productName: proName,
                        productPic: proPic,
                        productNew: proNew,
                        productOld: proOld,
                      )));
            },
            title: Text(
              proName,
              style: TextStyle(color: Colors.black),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(proPic),
              
            ),
          ),
        ),
      ),
    );
  }
}
