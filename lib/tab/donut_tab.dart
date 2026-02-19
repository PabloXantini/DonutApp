//import 'package:donut_app/utils/donut_tile.dart';
import 'package:donut_app/utils/menu_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  //List of donuts
  final List donutOnSale = [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    [
      'Chocolate',
      '100',
      Colors.brown,
      "lib/images/donut_chocolate.png",
      'Starbucks',
    ],
    [
      'Strawberry',
      '89',
      Colors.red,
      "lib/images/donut_strawberry.png",
      'Krispy Kreme',
    ],
    [
      'Ice Cream',
      '95',
      Colors.blue,
      "lib/images/donut_icecream.png",
      "Dunkin' Donuts",
    ],
    [
      'Grape', 
      '70', 
      Colors.purple, 
      "lib/images/donut_grape.png", 
      'Oxxo'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Fit elements inside the grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Column quantity
        crossAxisCount: 2,
        //Aspect ratio
        childAspectRatio: 1/1.5
      ),
      //Item quantity
      itemCount: donutOnSale.length,
      itemBuilder: (context, index) {
        return MenuTile(
          flavorTitle: donutOnSale[index][0],
          price: donutOnSale[index][1],
          provider: donutOnSale[index][4],
          imagePath: donutOnSale[index][3],
          tileColor: donutOnSale[index][2],
        );
      }
    );
  }
}