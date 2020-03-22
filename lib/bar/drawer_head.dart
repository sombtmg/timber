import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';

Widget drawerHead() {
  return Container(
    color: ColorPick.color6,
    child: DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('assests/user2.png'),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
              "User Name",
              style: TextStyle(
                color: Colors.black54,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  );
}
