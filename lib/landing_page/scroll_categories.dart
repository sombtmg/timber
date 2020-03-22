import 'package:flutter/material.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/landing_page/carousel_main.dart';
import 'package:timber/about_products/recent_products.dart';
import 'package:timber/landing_page/landing_page.dart';
import 'package:timber/landing_page/scroll_items.dart';
import 'package:timber/media/color.dart';

class ScrollCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
//          productBar(context, "Landing Page"),

          CarouselMain(),
          Padding(
              padding: const EdgeInsets.all(8.0),

              child: Text(
                "Categories",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: ColorPick.color6, fontWeight: FontWeight.bold),
              )),
          ScrollItems(),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recent Products",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: ColorPick.color6, fontWeight: FontWeight.bold),
              )),
          Container(
            height: 380,
            child: RecentProducts(),
          )
        ],
      ),
    );
  }
}
