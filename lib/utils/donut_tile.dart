import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String donutImagePath;
  final String donutProvider;
  
  const DonutTile({
    super.key, 
    required this.donutFlavor, 
    required this.donutPrice, 
    this.donutColor, 
    required this.donutImagePath, 
    required this.donutProvider
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[100],
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
                    color: donutColor[200],
                    borderRadius:  BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24)
                    )
                  ),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: donutColor[800],
                    ),
                  ),
                )
              ],
            ),
            //Donut Image
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(
                vertical: 12,
                horizontal: 24
              ),
              child: Image.asset(donutImagePath),
            ),
            //Donut name text
            Text(
              donutFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20 
              ),
            ),
            //Text Space
            const SizedBox(height: 4),
            //Provider name section
            Text(
              donutProvider,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16
              ),              
            ),
            //Functionalities
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.pink[400],
                  ),
                  Text(
                    "Add",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline
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