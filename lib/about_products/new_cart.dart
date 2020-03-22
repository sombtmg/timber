import 'package:flutter/material.dart';
import 'package:timber/about_products/cart_products.dart';
import 'package:timber/bar/auth_bar.dart';
import 'package:timber/media/color.dart';

class NewCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAuthBar(context, "cart"),
      body: CartProducts(),
        bottomNavigationBar: Container(
        color: ColorPick.color7,
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              title: Text("Total Amount"),
              subtitle: Text("\$2000"),

            ),
          ),
          Expanded(
            child: MaterialButton(onPressed: (){},
            child: Text("Checkout",style: TextStyle(color: ColorPick.color8),),
            color: ColorPick.color6,),
          )
        ],
      ),
    ),
    );

  }
}



