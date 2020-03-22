import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';
import 'package:timber/routing/routing_constant.dart';

class ScrollBody extends StatelessWidget {
  final String imageVal;
  final String heading;

  ScrollBody(
    this.imageVal,
    this.heading,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(

      padding: const EdgeInsets.all(2.0),
      child: Material(
        child: InkWell(

          onTap: () {
            Navigator.of(context).pushNamed(BedRoute);
          },
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imageVal,

                //width: 200.0,
                height: 70.0,
              ),
              subtitle: Text(
                heading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorPick.color6
                ),

//              textScaleFactor: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

////Widget    ScrollBody(String imageVal, String heading, String subHeading)
// class    ScrollBody extends StatelessWidget {
//   final String imageVal;
//   final String heading;
//   final String subHeading;
//
//      ScrollBody({
//     this.imageVal,
//     this.heading,
//     this.subHeading
//   });
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Card(
//       child: Wrap(
//         children: <Widget>[
//           Image.network(imageVal),
//           ListTile(
//             title: Text(heading),
//             subtitle: Text(subHeading),
//           )
//         ],
//       ),
//     );
//   }
// }
