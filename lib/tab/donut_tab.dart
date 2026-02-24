//import 'package:donut_app/utils/donut_tile.dart';
import 'package:donut_app/components/product.dart';
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
      'Starbucks',
      "lib/images/donut_chocolate.png",
      Colors.brown,
    ],
    [
      'Strawberry',
      '89',
      'Krispy Kreme',
      "lib/images/donut_strawberry.png",
      Colors.red,
    ],
    [
      'Ice Cream',
      '95',
      "Dunkin' Donuts",
      "lib/images/donut_icecream.png",
      Colors.blue,
    ],
    [
      'Grape', 
      '70', 
      'Oxxo',
      "lib/images/donut_grape.png", 
      Colors.purple, 
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
        childAspectRatio: 2/3
      ),
      //Item quantity
      itemCount: donutOnSale.length,
      itemBuilder: (context, index) {
        return MenuTile(
          product: Product(
            flavorTitle: donutOnSale[index][0], 
            price: donutOnSale[index][1], 
            provider: donutOnSale[index][2], 
            imagePath: donutOnSale[index][3]
          ),
          tileColor: donutOnSale[index][4],
        );
      }
    );
  }
}