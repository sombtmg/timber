import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timber/bar/app_bar.dart';
import 'package:timber/bar/auth_bar.dart';
import 'package:timber/media/background.dart';
import 'package:timber/media/color.dart';
import 'package:timber/auth/facebook.dart';
import 'package:timber/auth/gmail.dart';
import 'package:timber/my_homepage.dart';
import 'package:timber/auth/user_name.dart';
import '../media/button.dart';
import 'password.dart';
import 'image.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAuthBar(context, "Login"),
        body: Container(
          color: ColorPick.color6,
          child: Stack(
            children: <Widget>[
//              BackGround(),
//              BackdropFilter(
//                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                child: Container(
//                  color: Colors.black.withOpacity(0),
//                ),
//              ),
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                    width: 40,
                  ),
                  ImageAsset(),
                  UserName(),
//
                  Password(),
                  SizedBox(
                    height: 30,
                  ),
                  Button("Login"),

                  SizedBox(
                    height: 10,
                  ),

                  Row(children: <Widget>[
                    SizedBox(
                      width: 60,
                    ),
                    FaceBook(),
                    SizedBox(
                      width: 30,
                    ),
                    GMail(),
                  ]),
                ],
              ),
            ],
          ),
        ));
  }
}
