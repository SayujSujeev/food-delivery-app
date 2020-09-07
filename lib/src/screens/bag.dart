import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/src/helpers/style.dart';
import 'package:food_order_app/src/models/products.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: black),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: white,
          elevation: 0,
          centerTitle: true,
          title: CustomText(
            text: "Item Carts",
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "images/shopping-bag.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Positioned(
                    right: 7,
                    bottom: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: grey,
                                  offset: Offset(2, 1),
                                  blurRadius: 3)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: CustomText(
                            text: "2",
                            color: red,
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: white,
        body: ListView(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Container(
            //     height: 120,
            //     decoration: BoxDecoration(color: white, boxShadow: [
            //       BoxShadow(
            //           color: Colors.red[100],
            //           offset: Offset(3, 7),
            //           blurRadius: 30)
            //     ]),
            //     child: Row(
            //       children: <Widget>[
            //         Image.asset(
            //           "images/${product.image}",
            //           height: 120,
            //           width: 120,
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: <Widget>[
            //             RichText(
            //               text: TextSpan(children: [
            //                 TextSpan(
            //                     text: product.name + "\n",
            //                     style: TextStyle(color: black, fontSize: 20)),
            //                 TextSpan(
            //                     text: "Rs." + product.amount.toString() + "\n",
            //                     style: TextStyle(color: black, fontSize: 16,fontWeight: FontWeight.bold)),
            //               ]),
            //             ),
            //             SizedBox(
            //               width: 130,
            //             ),
            //
            //             IconButton(icon: Icon(Icons.delete),onPressed: null,)
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
