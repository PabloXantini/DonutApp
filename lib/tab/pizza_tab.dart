import 'package:donut_app/models/product.dart';
import 'package:donut_app/components/menu_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final List pizzasOnSale = [
    [
      'Super Cheese',
      '129',
      'Little Ceasar\'s',
      'lib/images/pizza_cheese.png',
      Colors.orange,
    ],
    [
      'Chicago Classic',
      '219',
      'Peter Piper Pizza',
      'lib/images/pizza_champ.png',
      Colors.amber,
    ],
    [
      'Pepperoni',
      '256',
      'Pizza Hut',
      'lib/images/pizza_pepperoni.png',
      Colors.red,
    ],
    [
      'Great Pizza',
      '249',
      'Domino\'s',
      'lib/images/pizza_pim.png',
      Colors.blueAccent,
    ]
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3
      ),
      itemCount: pizzasOnSale.length, 
      itemBuilder: (context, index){
        return MenuTile(
          product: Product(
            flavorTitle: pizzasOnSale[index][0], 
            price: pizzasOnSale[index][1], 
            provider: pizzasOnSale[index][2], 
            imagePath: pizzasOnSale[index][3]
          ),
          tileColor: pizzasOnSale[index][4],
        );
      }
    );
  }
}