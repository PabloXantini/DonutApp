import 'package:donut_app/models/product.dart';
import 'package:donut_app/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuTile extends StatelessWidget {
  final dynamic tileColor;
  final Product product;

  const MenuTile({
    super.key,
    required this.product,
    this.tileColor,
  });

  @override
  Widget build(BuildContext context) {
      final controller = Provider.of<CartController>(context);
      return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: tileColor[100],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            //Tag of price
            Row(
              //Aligned to left
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  //This means that pad-left = pad-right and pad-top = pad-bottom
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12
                  ),
                  decoration: BoxDecoration(
                    color: tileColor[200],
                    borderRadius:  BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24)
                    )
                  ),
                  child: Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: tileColor[800],
                    ),
                  ),
                )
              ],
            ),
            //Image
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(
                vertical: 12,
                horizontal: 24
              ),
              child: Image.asset(product.imagePath),
            ),
            //Title section
            Text(
              product.flavorTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20 
              ),
            ),
            //Text Space
            const SizedBox(height: 4),
            //Provider name section
            Text(
              product.provider,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16
              ),              
            ),
            //Functionalities
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.pink[400],
                  ),
                  TextButton(
                    onPressed: ()=>{
                      controller.add(product)
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(2.0)
                    ),
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decoration: TextDecoration.underline
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}