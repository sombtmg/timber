import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.only(left: 60, top: 20, right: 60),
          child: TextField(
            obscureText: true,
            onSubmitted: (String string) {
              setState(() {
                name = string;
              });
            },
            decoration: InputDecoration(
              enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white)),


//              hintText: 'Enter password',
//              hintStyle: TextStyle( color: Colors.white),
//              helperText: 'Enter your email',
//              helperStyle: TextStyle(color: Colors.white),
              labelText: 'email',
              labelStyle: TextStyle(color: Colors.white),
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              prefixText: ' ',
            ),
          ),
        ));
  }
}
