import 'package:donut_app/controllers/cart_controller.dart';
import 'package:donut_app/screens/my_cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({
    super.key,
  });

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final CartController controller = CartController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CartController>(context);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              //Align to left horizontly
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${controller.totalItems} items | \$${controller.getTotalPrice().toStringAsFixed(2)}', 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Delivery Charges Included',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800]
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyCart(), 
                )
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink[300]
            ), 
            child: Text(
              'View Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          )
        ],
      ),              
    );
  }
}