import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timber/media/background.dart';
import 'package:timber/landing_page/landing_page.dart';
import 'package:timber/auth/log_in.dart';
import 'package:timber/media/color.dart';
import 'package:timber/routing/routing_constant.dart';
import 'auth/image.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: ColorPick.color6,
        child: Stack(
          children: <Widget>[
//            BackGround(),
//            BackdropFilter(
//              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//              child: Container(
//                color: Colors.black.withOpacity(0),
//              ),
//            ),
            Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      "Timber group of Nepal",
                      textScaleFactor: 2,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: ColorPick.color7),
                    ),
                  ),
                  ImageAsset(),
//                  Expanded(child: ,)
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: RaisedButton.icon(
                          color: ColorPick.color7,
                          splashColor: Colors.brown,
                          onPressed: () {
//                            Navigator.of(context).push(MaterialPageRoute(
//                              builder: (context) => LogIn(),
//                            ));
                            Navigator.of(context).pushNamed(LogInRoute);
                          },
                          icon: Icon(Icons.account_box),
                          label: Text("Login"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: SizedBox(
                          width: 300,
                          height: 50,
                          child: RaisedButton.icon(
                            color: ColorPick.color7,
                            onPressed: () {
                              Navigator.of(context).pushNamed(SignUpRoute);

                            },
                            icon: Icon(Icons.supervised_user_circle),
                            label: Text('Sign up'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      FlatButton(
                        color: ColorPick.color7,
                        onPressed: () {
//                          Navigator.of(context).push(MaterialPageRoute(
//                            builder: (context) => LandingPage(),
//                          ));
//                        },
                          Navigator.of(context).pushNamed(SkipRoute);
                        },
                        child: Text(
                          'Skip',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
            ),
          ],
        ),
        width: screenWidth,
        height: screenHeight,
      ),
    );
  }
}
