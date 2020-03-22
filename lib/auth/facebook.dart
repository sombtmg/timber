import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';

class FaceBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 130,
      height: 45,
      child: RaisedButton.icon(
        shape: StadiumBorder(),
        color: ColorPick.color7,
        onPressed: () {},
        icon: Image.asset(
          'assests/fb.png',
          width: 42.0,
          height: 42.0,
        ),
        label: Text('Sign in'),
      ),
    );
  }
}
