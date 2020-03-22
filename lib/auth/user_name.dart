import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 60, top: 20, right: 60),
      child: TextField(
//        maxLength: 10,
        decoration: InputDecoration(
          enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white)),
//          hintText: 'Enter username',
//          hintStyle: TextStyle( color: Colors.white),
//          helperText: 'Enter more than 5 character.',
//          helperStyle: TextStyle(color: Colors.white),
          labelText: 'username',
          labelStyle: TextStyle(color: Colors.white),
          border: new UnderlineInputBorder(
            borderSide: new BorderSide(color: Colors.red),

          ),
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
