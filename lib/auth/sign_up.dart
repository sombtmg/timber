import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timber/auth/re_password.dart';
import 'package:timber/bar/auth_bar.dart';
import 'package:timber/media/color.dart';

import 'package:timber/auth/user_name.dart';
import '../media/button.dart';
import 'email.dart';
import 'password.dart';
import 'image.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAuthBar(context, "SignUp"),
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
                  Email(),
//
                  Password(),
                  RePassword(),
                  SizedBox(
                    height: 30,
                  ),
                  Button("SignUp"),

                  SizedBox(
                    height: 10,
                  ),

                  Row(children: <Widget>[
                    SizedBox(
                      width: 60,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ));
  }
}
