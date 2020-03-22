import 'package:flutter/material.dart';
import 'package:timber/bar/app_drawer.dart';
import 'package:timber/bar/drawer_items.dart';
import 'package:timber/auth/image.dart';

import 'drawer_head.dart';
import '../my_homepage.dart';
import '../media/color.dart';

Widget getAuthBar(BuildContext context, String name) {
  return AppBar(
    elevation: 0,
    backgroundColor: ColorPick.color6,
    leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop(MaterialPageRoute(
            builder: (context) => AppDrawer(),
          ));
        }),
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
        Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),


  );
}
//    leading: Drawer(
//      child: AppDrawer(),
////      child: ListView(
////        padding: EdgeInsets.zero,
////        children: <Widget>[
////          drawerHead(),
////          drawerItems(
////            icon: Icons.home,
////            text: "Home",
////          ),
////        ],
////      ),
//    ),

//     leading: IconButton(
//
//        icon: Icon(
//          Icons.menu,
//          color: Colors.white,
//        ),
//        onPressed: () {
//          Navigator.of(context).push(MaterialPageRoute(
//            builder: (context) => AppDrawer(),
//          ));
//        }),
