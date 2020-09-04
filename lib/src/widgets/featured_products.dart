import 'package:flutter/material.dart';
import 'package:food_order_app/src/commons.dart';
import 'package:food_order_app/src/models/products.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

List<Product> productsList = [
  Product(name: "Salad", price: 200, rating: 4.2, vendor: "GoodFoods", wishList: true,image: "1.jpg"),
  Product(name: "Chiken Taccos", price: 350, rating: 4.7, vendor: "GoodFoods", wishList: false,image: "5.jpg"),
  Product(name: "Chiken Taccos", price: 350, rating: 4.7, vendor: "GoodFoods", wishList: false,image: "5.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                height: 240.0,
                width: 200.0,
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 8,
                  )
                ]),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "images/${productsList[index].image}",
                      height: 140,
                      width: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            text: productsList[index].name,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: productsList[index].wishList ? Icon(
                                Icons.favorite,
                                size: 18,
                                color: red,
                              ) : Icon(
                                Icons.favorite_border,
                                size: 18,
                                color: red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                color: grey,
                                size: 14.0,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 16,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: CustomText(text: "Rs.${productsList[index].price}",weight: FontWeight.bold,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
