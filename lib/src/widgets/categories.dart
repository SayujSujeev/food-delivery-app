import 'package:flutter/material.dart';
import 'package:food_order_app/src/models/category.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

import '../helpers/style.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image:  "salad.png"),
  Category(name: "Steak", image:  "steak.png"),
  Category(name: "Fast food", image:  "sandwich.png"),
  Category(name: "Deserts", image:  "ice-cream.png"),
  Category(name: "See food", image:  "fish.png"),
  Category(name: "Juice", image:  "pint.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red[50],
                          offset: Offset(4, 6),
                          blurRadius: 20.0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset(
                        "images/${categoriesList[index].image}",
                        width: 50.0,
                      ),
                    )),
                SizedBox(height: 5,),
                CustomText(text: categoriesList[index].name,size: 14.0,color: black,)
              ],
            ),
          );
        },
      ),
    );
  }
}
