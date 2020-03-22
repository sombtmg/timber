import 'package:flutter/material.dart';
import 'package:timber/about_products/new_cart.dart';
import 'package:timber/about_products/product_drawer.dart';
import 'package:timber/bar/contact_us.dart';
import 'package:timber/bar/drawer_head.dart';
import 'package:timber/categories/categories.dart';
import 'package:timber/categories/category.dart';
import 'package:timber/media/color.dart';
import 'package:timber/media/gallery.dart';
import 'package:timber/routing/routing_constant.dart';

import 'drawer_items.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Drawer(
        child: Container(
          color: ColorPick.color8,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              drawerHead(),
//              InkWell(
//                onLongPress: () {
//                  Navigator.of(context).push(new MaterialPageRoute(
//                      builder: (context) => NewCategories()));
//                },
//                child: drawerItems(
//                  icon: Icons.home,
//                  text: "Home",
//                ),
//              ),
//              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => NewCategories()));
                },
                child: drawerItems(
                  icon: Icons.grid_on,
                  text: "Categories",
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => ProductDrawer()));

                },
                child: drawerItems(
                  icon: Icons.shopping_basket,
                  text: "Products",
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => NewCart()));
                },
                child: drawerItems(
                  icon: Icons.shopping_cart,
                  text: "Cart",
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => Gallery()));
                },
                child: drawerItems(
                  icon: Icons.photo_album,
                  text: "Gallery",
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context)=> ContactUs()
                  ));
                },
                child: drawerItems(
                  icon: Icons.contact_phone,
                  text: "Contact us",
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
