import 'package:donut_app/components/product.dart';
import 'package:flutter/material.dart';

class CartController extends ChangeNotifier {
  // This is normally a list with the products stored in memory
  final List<Product> _productOnList = [];

  CartController();
  
  int get totalItems => _productOnList.length;
  List<Product> get products => _productOnList;

  int getTotalPrice(){
    int totalPrice = 0;
    for (var product in _productOnList) {
      totalPrice += int.parse(product.price);
    }
    return totalPrice;
  }

  void add(Product product){
    _productOnList.add(product);
    notifyListeners(); //Notify
  }
}