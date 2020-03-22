////import 'package:flutter/material.dart';
////import 'package:timber/bar/product_bar.dart';
////
////class Categories extends StatelessWidget {
////  @override
////  Widget build(BuildContext context) {
////    final screenHeight = MediaQuery.of(context).size.height;
////    final screenWidth = MediaQuery.of(context).size.width;
////    return Scaffold(
////      appBar: productBar(context, 'Categories'),
////      body: Container(
////        height: screenHeight,
////        width: screenWidth,
////        child: ListView(
////        children: <Widget>[
////          Row(
////            children: <Widget>[Expanded(
////              child: Text(
////                "Bed"
////              ),
////            ),
////              DropdownButton<String>(
////
////              )
////            ],
////          )
////        ],
////        ),
////
////      ),
////    );
////  }
////}
//
//// Copyright 2017 The Chromium Authors. All rights reserved.
//// Use of this source code is governed by a BSD-style license that can be
//// found in the LICENSE file.
//
//
//import 'package:flutter/material.dart';
//import 'package:timber/bar/product_bar.dart';
//import 'package:timber/categories/ind_categories/bed_category.dart';
//import 'package:timber/media/color.dart';
//import 'package:timber/routing/routing_constant.dart';
//
//class ExpansionTileSample extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: productBar(context, "Categories"),
//      backgroundColor: ColorPick.color8,
//      body: ListView.builder(
//        itemBuilder: (BuildContext context, int index) =>
//            EntryItem(data[index]),
//        itemCount: data.length,
//      ),
//    );
//  }
//}
//
//// One entry in the multilevel list displayed by this app.
//class Entry {
//  Entry(this.title, [this.children = const <Entry>[]]);
//
//  final String title;
//
////  final String icon;
//  final List<Entry> children;
//}
//
//// The entire multilevel list displayed by this app.
//final List<Entry> data = <Entry>[
//  Entry(
//    'Beds',
//    <Entry>[
//      Entry('Type 1'),
//      Entry('Type 2'),
//      Entry('Type 3'),
//      Entry('Type 4'),
//    ],
//  ),
//  Entry(
//    'Doors',
//    <Entry>[
//      Entry('Type 1'),
//      Entry('Type 2'),
//      Entry('Type 3'),
//      Entry('Type 4'),
//    ],
//  ),
//  Entry(
//    'Sofas',
//    <Entry>[
//      Entry('Type 1'),
//      Entry('Type 2'),
//      Entry('Type 3'),
//      Entry('Type 4'),
//    ],
//  ),
//  Entry(
//    'Chairs',
//    <Entry>[
//      Entry('Type 1'),
//      Entry('Type 2'),
//      Entry('Type 3'),
//      Entry('Type 4'),
//    ],
//  ),
//  Entry(
//    'Tables',
//    <Entry>[
//      Entry('Type 1'),
//      Entry('Type 2'),
//      Entry('Type 3'),
//      Entry('Type 4'),
//    ],
//  ),
//  Entry(
//    'Windows',
//    <Entry>[
//
//      Entry('Type 1'),
//      Entry('Type 2'),
//      Entry('Type 3'),
//      Entry('Type 4'),
//    ],
//  ),
//];
//
//// Displays one Entry. If the entry has children then it's displayed
//// with an ExpansionTile.
//class EntryItem extends StatelessWidget {
//  final Entry entry;
//
//  const EntryItem(this.entry);
//
//  @override
//  Widget build(BuildContext context) {
//    return _buildTiles(entry);
//  }
//
//  Widget _buildTiles(Entry root) {
//    if (root.children.isEmpty)
//      return ListTile(
//        title: Text(
//          root.title,
//          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
//        ),
//        onTap: () {
////          Navigator.of(context).pushNamed(CateRoute);
//        },
//      );
//    return ExpansionTile(
//      backgroundColor: ColorPick.color8,
//      key: PageStorageKey<Entry>(root),
//      title: Row(
//        children: <Widget>[
////          Icon(Icons.grid_on),
//BedCategories()
////          Text(
////            root.title,
////            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
////          ),
//        ],
//      ),
//      children: root.children.map(_buildTiles).toList(),
//    );
//  }
//}
