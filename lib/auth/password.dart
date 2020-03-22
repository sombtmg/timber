import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
//          helperText: 'Enter a strong password',
//          helperStyle: TextStyle(color: Colors.white),
          labelText: 'password',
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
