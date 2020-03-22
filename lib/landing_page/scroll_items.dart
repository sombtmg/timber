import 'package:flutter/material.dart';
import 'package:timber/landing_page/scroll_body.dart';
import 'scroll_categories.dart';

import '../media/color.dart';

class ScrollItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ScrollBody(

            'assests/bed.png',
            "Beds",
          ),
          ScrollBody(
            'assests/door.png',
            "Doors",
          ),
          ScrollBody(
            'assests/sofa.png',
            "Sofas",
          ),
          ScrollBody(
            'assests/chair.png',
            "Chairs",
          ),
          ScrollBody(
            'assests/table.png',
            "Tables",
          ),
          ScrollBody(
            'assests/window.png',
            "Windows",
          ),
        ],
      ),
    );
  }
}








//
//class HorizontalItems extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Card(
//        child: InkWell(
//          splashColor: Colors.blue.withAlpha(30),
//          onTap: () {
//            print('Card tapped.');
//          },
//          child: Container(
//            width: 300,
//            height: 100,
//            child: Text('A card that can be tapped'),
//          ),
//        ),
//      ),
//    );
//  }
//}

