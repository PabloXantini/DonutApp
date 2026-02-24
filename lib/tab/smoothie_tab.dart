import 'package:donut_app/components/product.dart';
import 'package:donut_app/utils/menu_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final List smoothiesOnSale = [
    [
      'Strawberry',
      '40',
      'Frutastic',
      'lib/images/smoothie_strawberry.png',
      Colors.purple,
    ],
    [
      'Coconut Shake',
      '48',
      'Green Station',
      'lib/images/smoothie_coconut.png',
      Colors.grey,
    ],
    [
      'Hawaiann Fresh',
      '35',
      'Frutki',
      'lib/images/smoothie_pineapple.png',
      Colors.green,
    ],
    [
      'Mint',
      '44',
      'Frutilunch',
      'lib/images/smoothie_mint.png',
      Colors.blue,
    ]
  ];
  SmoothieTab({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3
      ),
      itemCount: smoothiesOnSale.length, 
      itemBuilder: (context, index){
        return MenuTile(
          product: Product(
            flavorTitle: smoothiesOnSale[index][0], 
            price: smoothiesOnSale[index][1], 
            provider: smoothiesOnSale[index][2], 
            imagePath: smoothiesOnSale[index][3]
          ),
          tileColor: smoothiesOnSale[index][4],
        );
      }
    );
  }
}