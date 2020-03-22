import 'package:flutter/material.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/media/color.dart';
import 'package:timber/routing/routing_constant.dart';

class NewCategories extends StatelessWidget {
//  List<String> categor = ['Beds', 'Doors', 'Sofas', 'Chairs', 'Tables'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productBar(context, "Categories"),
      body: Container(
        color: ColorPick.color8,
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(BedRoute);
              },
              leading: Icon(Icons.block),
              title: Text(
                "Bed",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(DoorRoute);
              },
              leading: Icon(Icons.block),
              title: Text(
                "Doors",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(SofaRoute);
              },
              leading: Icon(Icons.block),
              title: Text(
                "Sofa",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(ChairRoute);
              },
              leading: Icon(Icons.block),
              title: Text(
                "Chairs",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(TableRoute);
              },
              leading: Icon(Icons.block),
              title: Text(
                "Tables",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(WindowRoute);
              },
              leading: Icon(Icons.block),
              title: Text(
                "Windows",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
