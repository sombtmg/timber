import 'package:flutter/material.dart';
import 'package:timber/about_products/cart.dart';
import 'package:timber/about_products/new_cart.dart';
import 'package:timber/media/color.dart';
import 'package:timber/routing/routing_constant.dart';

Widget productBar(BuildContext context, String name) {
  return AppBar(
    elevation: 0,
    backgroundColor: ColorPick.color6,
    title: Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.black12,
          backgroundImage: AssetImage(
            'assests/white.png',
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        tooltip: "search poducts",
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.shopping_cart),
        tooltip: "view cart",
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NewCart()));
        },
      ),
    ],
  );
}
