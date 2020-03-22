import 'package:flutter/material.dart';
import 'package:timber/about_products/cart.dart';
import 'package:timber/about_products/drop_down.dart';
import 'package:timber/bar/app_bar.dart';
import 'package:timber/bar/app_drawer.dart';
import 'package:timber/bar/product_bar.dart';
import 'package:timber/media/color.dart';

class ProductDetail extends StatefulWidget {
  final productName;
  final productPic;
  final productNew;
  final productOld;

  ProductDetail(
      {this.productName, this.productPic, this.productNew, this.productOld});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _counter = 0;

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

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: getAppBar(context, "Product Details"),
      drawer: AppDrawer(),
      body: new ListView(
        children: <Widget>[
          Container(
            height: screenHeight * 0.4,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productPic),
              ),
              footer: Container(
                color: ColorPick.color5.withOpacity(0.3),
                child: ListTile(
                  leading: Text(
                    widget.productName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.productOld}",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productNew}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //color and quantity row
          Container(
            color: ColorPick.color8,
            height: screenHeight * 0.07,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Size",
                          textScaleFactor: 1.1,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
//                      Expanded(
//                        child: TextField(),
//                      ),

                      Expanded(
                        child: DropDown(),
                        flex: 2,
                      ),
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
                )
              ],
            ),
          ),
          Divider(
            height: 2,
          ),
          //==============buy now button ====================
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {

                  },
                  child: Text("Buy Now"),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: ColorPick.color6,
                ),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => Cart(
                            proName:widget.productName,
                            proPic: widget.productPic,
                            proNew: widget.productNew,
                            proQuant: _counter,
                        proOld: widget.productOld,
                          )));
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: ColorPick.color6,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Divider(
            height: 2,
          ),
          //============Text==============================[
          ListTile(
            title: Text(
              "About product\n",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
                "The Sven charme tan sofa is your new BFF. The tufted bench seat supports super long Netflix® marathons, and overstuffed cushions and round bolsters have your back no matter what position you chill in. Over time, the full-aniline leather will develop a beautiful vintage patina. Sturdy and adaptable, this tan leather sofa is the focal point in any room, and will easily adapt to your future decor whims. Natural color variations, wrinkles and creases are part of the unique characteristics of this leather. It will develop a relaxed vintage look with regular use."),
          ),
          Divider(),
        ],
      ),
    );
  }
}
