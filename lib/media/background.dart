import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      width: MediaQuery.of(context).size.width,
//      height: MediaQuery.of(context).size.height,
      child: Image.asset('assests/doorback.png'),
      color: Colors.black.withOpacity(1),
    );

  }
}
