import 'package:flutter/material.dart';
import 'package:timber/media/color.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var cartProducts = [
    {
      'name': 'Nice Sofa',
      'pictures': 'assests/sofa1.png',
      'newPrice': 500,
      'quantity': 1,
      'size': "18X20 Inches"
    },
    {
      'name': 'Comfort Bed',
      'pictures': 'assests/bed1.png',
      'quantity': 1,
      'newPrice': 500,
      'size': "18X20 Inches"
    },
    {
      'name': 'Strong Chair',
      'pictures': 'assests/chair1.png',
      'newPrice': 500,
      'quantity': 1,
      'size': "18X20 Inches"
    },
    {
      'name': 'Flexible Table',
      'pictures': 'assests/table1.png',
      'newPrice': 500,
      'quantity': 1,
      'size': "18X20 Inches"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartProducts.length,
        itemBuilder: (context, index) {
          return GetCartProducts(
            cartProductName: cartProducts[index]["name"],
            cartProductPictures: cartProducts[index]["pictures"],
            cartProductPrice: cartProducts[index]["newPrice"],
            cartProductQuantity: cartProducts[index]["quantity"],
            cartProductSize: cartProducts[index]["size"],
          );
        });
  }
}

class GetCartProducts extends StatelessWidget {
  final cartProductName;
  final cartProductPictures;
  final cartProductPrice;
  final cartProductQuantity;
  final cartProductSize;

  GetCartProducts(
      {this.cartProductName,
      this.cartProductPictures,
      this.cartProductPrice,
      this.cartProductSize,
      this.cartProductQuantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          child: Image.asset(
            cartProductPictures,
            width: 80.0,
          ),
        ),
        title: Text(
          cartProductName,
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size: "),
                ),
                Padding(

                  padding: const EdgeInsets.all(15.0),
                  child: Text(cartProductSize, style: TextStyle(color: ColorPick.color6)),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "\$$cartProductPrice",
                style: TextStyle(
                    color: ColorPick.color6, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        trailing: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: IconButton(
                icon: Icon(Icons.arrow_drop_up),onPressed: (){},

              ),
            ),
//            Text("$cartProductQuantity", style: TextStyle(color: ColorPick.color6),),
//            IconButton(
//              icon: Icon(Icons.arrow_drop_down),onPressed: (){},

//            )
          ],
        ),
      ),
    );
  }
}
