import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';

class Button extends StatelessWidget {
  final String s;
  final String c;

  Button(this.s,{this.c});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: 45,
          width: 130,
      child: RaisedButton(
        child: Text(s),
        onPressed: () {},
        color: ColorPick.color7,
      ),
    ));
  }
}
