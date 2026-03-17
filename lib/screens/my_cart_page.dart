import 'package:donut_app/controllers/cart_controller.dart';
import 'package:donut_app/components/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    CartController controller = Provider.of<CartController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person, color: Colors.grey[800],),
            )
          ],
        ),
      body: controller.isEmpty ?
        Center(
          child: Text(
            'You cart is empty',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600]
            ),
          ),
        ) :
        Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index){
                  final item = controller.products[index];
                  return CartTile(item: item);
                }
              )
            )
          ],
        )
    );
  }
}