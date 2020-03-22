import 'package:flutter/material.dart';
class DropDown extends StatefulWidget {

  @override
  _DropDown createState() => _DropDown();
}

class _DropDown extends State<DropDown> {
  String dropdownValue = '18X20 INCHES';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down, ),

      iconSize: 28,
      elevation: 16,
      style: TextStyle(color: Colors.black),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['18X20 INCHES', '17X19 INCHES', '16X18 INCHES',]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
