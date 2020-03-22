import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';

class CarouselMain extends StatefulWidget {
  @override
  _CarouselMainState createState() => _CarouselMainState();
}

class _CarouselMainState extends State<CarouselMain> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 200,
        child: Carousel(
          boxFit: BoxFit.contain,

          images: [
            AssetImage('assests/01.jpg'),
            AssetImage('assests/02.jpg'),
            AssetImage('assests/04.jpg'),
            AssetImage('assests/03.webp'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 5.0,
          dotColor: ColorPick.color8,
          dotIncreasedColor: ColorPick.color6,
          indicatorBgPadding: 10.0,
        ),
      ),
    );
  }
}
