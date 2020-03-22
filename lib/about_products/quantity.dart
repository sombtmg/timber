import 'package:flutter/material.dart';

class Quantity extends StatefulWidget {
  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "Quantity:",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
          SizedBox(
            child: IconButton(
              icon: Icon(Icons.indeterminate_check_box),
              onPressed: _decrement,
            ),
          ),
          SizedBox(
              child: Text(
                "$_counter",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
          SizedBox(
            child: IconButton(
              icon: Icon(Icons.add_box),
              onPressed: _increment,
            ),
          ),
        ],
      ),
    );
  }
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }
}
