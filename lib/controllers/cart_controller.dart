import 'package:donut_app/models/product.dart';
import 'package:flutter/material.dart';

class CartItem {
  final Product product;
  int quantity = 0;

  CartItem({
    required this.product
  });
}

class CartController extends ChangeNotifier {
  // This is normally a list with the products stored in memory
  final List<CartItem> _cartList = [];

  CartController();
  
  bool get isEmpty => _cartList.isEmpty;
  
  List<CartItem> get products => _cartList;

  int get totalItems {
    return _cartList.fold(0, (total, item)=> total + item.quantity);
  }

  int getTotalPrice(){
    int totalPrice = 0;
    for (var item in _cartList) {
      totalPrice += int.parse(item.product.price) * item.quantity;
    }
    return totalPrice;
  }

  void add(Product product){
    for (var item in _cartList){
      if(item.product.flavorTitle == product.flavorTitle){
        item.quantity++;
        notifyListeners();
        return;
      }
    }
    _cartList.add(CartItem(product: product));
    notifyListeners(); //Notify
  }
}