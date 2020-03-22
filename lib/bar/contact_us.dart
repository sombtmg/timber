import 'package:flutter/material.dart';
import 'package:timber/bar/product_bar.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productBar(context, "Contact Us"),
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 5),
                  child: Text(
                    "Contact Info",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                subtitle: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Corporate Office:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )),
                    Row(
                      children: <Widget>[
                        Icon(Icons.place),
                        Text("Kalimati, Kathmandu"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone_android),
                        Text("01-4670261"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email),
                        Text("info@timberdoors.com"),
                      ],
                    ),
                    Divider(),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Show Room: ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )),
                    Row(
                      children: <Widget>[
                        Icon(Icons.place),
                        Text("Badundara, Kathmandu"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone_android),
                        Text("01-4670261"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email),
                        Text("showroom@timberdoors.com"),
                      ],
                    ),
                    Divider(),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:5),
                          child: Text("Checkout Our App: ", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                        )),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assests/qrcode.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Image.asset(
                                      "assests/googleplay.png",
                                      height: 80.0,
                                      width: 80.0,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Image.asset(
                                      "assests/appstore.png",
                                      height: 80.0,
                                      width: 80.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
