import 'package:flutter/material.dart';
import 'package:timber/bar/app_drawer.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/landing_page/scroll_categories.dart';
import 'package:timber/media/color.dart';

import '../bar/app_bar.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPick.color4,
      appBar: productBar(context, "Home Page"),

//      appBar: AppBar(
//        elevation: 0,
//
//        title: Row(
//          children: <Widget>[
//            CircleAvatar(
//              backgroundColor: Colors.black12,
//              backgroundImage: AssetImage(
//                'assests/white.png',
//              ),
//            ),
//            SizedBox(
//              width: 15,
//            ),
//            Text(
//              "Landing Page ",
//              style: TextStyle(color: Colors.white),
//            ),
//          ],
//        ),
//        backgroundColor: Colors.black45,
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.search),
//            tooltip: "search poducts",
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.shopping_cart),
//            tooltip: "view cart",
//            onPressed: () {},
//          ),
//        ],
//      ),

      drawer: AppDrawer(),
      body: ScrollCategories(),
    );
  }
}
