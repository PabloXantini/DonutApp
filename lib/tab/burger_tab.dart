import 'package:donut_app/components/product.dart';
import 'package:donut_app/utils/menu_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final List burgersOnSale = [
    [
      'WooperJr',
      '99',
      'Burger King',
      'lib/images/burger_wj.png',
      Colors.yellow,
    ],
    [
      'BigMac',
      '90',
      'Burger King',
      'lib/images/burger_bigmac.png',
      Colors.red,
    ],
    [
      'Econo Angry',
      '245',
      'Burger King',
      'lib/images/burger_econo.png',
      Colors.deepOrange,
    ],
    [
      'Famous Star',
      '150',
      'Carls Jr',
      'lib/images/burger_carl.png',
      Colors.brown,
    ]
  ];
  BurgerTab({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3
      ),
      itemCount: burgersOnSale.length, 
      itemBuilder: (context, index){
        return MenuTile(
          product: Product(
            flavorTitle: burgersOnSale[index][0], 
            price: burgersOnSale[index][1], 
            provider: burgersOnSale[index][2], 
            imagePath: burgersOnSale[index][3]
          ),
          tileColor: burgersOnSale[index][4],
        );
      }
    );
  }
}