import 'package:e_commers/models/product.dart';
import 'package:flutter/material.dart';

class shop extends ChangeNotifier{
  List<product> _shop = [
    product(
      name: "Product 1",
      price: 99.9999,
      description: "Item Description..."
    ),
    product(
      name: "Product 2",
      price: 999.9999,
      description: "Item Description..."
    ),
    product(
      name: "Product 3",
      price: 9999.9999,
      description: "Item Description..."
    ),
    product(
      name: "Product 4",
      price: 99999.9900,
      description: "Item Description..."
    )
  ];
  
  final List<product> _cart = [];

  List<product> get Shop => _shop;

  List<product> get Cart => _cart;
  
  void addToCart(product item){
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(product item){
    _cart.remove(item);
    notifyListeners();
  }
}