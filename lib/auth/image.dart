import 'dart:ui';

import 'package:flutter/material.dart';
class ImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage photo = AssetImage('assests/white.png',);
    Image image = Image(image: photo, height: 300, width: 300);
    return Container(child: image,);
  }
}