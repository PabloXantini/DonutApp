import 'package:donut_app/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  final CartItem item;

  const CartTile({
    super.key,
    required this.item
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CartController>(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 4, offset: const Offset(0, 2)),
        ]
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: Image.asset(item.product.imagePath, fit: BoxFit.contain,),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.product.flavorTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '\$${item.product.price}',
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            )
          ),
          Text(
            'x${item.quantity}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          IconButton(
            onPressed: (){
              
            },
            icon: Icon(Icons.delete, color: Colors.red) 
          )
        ],
      ),
    );
  }
}