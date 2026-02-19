import 'package:donut_app/utils/menu_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  final List pancakesOnSale = [
    [
      'Sweet Berries',
      '50',
      'Tere Cazola',
      'lib/images/pancake_berry.png',
      Colors.deepPurple,
    ],
    [
      'Honey Morning',
      '55',
      'Coffe Mike',
      'lib/images/pancake_honey.png',
      Colors.deepOrangeAccent,
    ],
    [
      'Caramel',
      '45',
      'Bleu',
      'lib/images/pancake_caramel.png',
      Colors.pinkAccent,
    ],
    [
      'Jolly Jam',
      '60',
      'Vivi\'s Cake and Coffe',
      'lib/images/pancake_jam.png',
      Colors.indigo,
    ]
  ];
  PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemCount: pancakesOnSale.length, 
      itemBuilder: (context, index){
        return MenuTile(
          flavorTitle: pancakesOnSale[index][0], 
          price: pancakesOnSale[index][1], 
          provider: pancakesOnSale[index][2], 
          imagePath: pancakesOnSale[index][3],
          tileColor: pancakesOnSale[index][4],
        );
      }
    );
  }
}