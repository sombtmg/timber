import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';

Widget drawerItems({IconData icon, String text, GestureTapCallback onTap}){
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon, color: ColorPick.color6,),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text, style: TextStyle(color: Colors.black54, fontSize: 18),
        )
        )],
    ),
  );
}