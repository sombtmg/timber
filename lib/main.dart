import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';
import 'package:timber/routing/routing_constant.dart';
import './my_homepage.dart';
import 'routing/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timber',
      theme: ThemeData(
          buttonColor: ColorPick.color7,
          backgroundColor: ColorPick.color6,
          accentColor: Colors.grey,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: ColorPick.color7,
//            displayColor: ColorPick.color6

              )),


      debugShowCheckedModeBanner: false,

      home: MyHomePage(),


      initialRoute: MyHomePageRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
