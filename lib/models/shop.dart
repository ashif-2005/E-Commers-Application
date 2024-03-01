import 'package:e_commers/models/product.dart';
import 'package:flutter/material.dart';

class shop extends ChangeNotifier{
  List<product> _shop = [
    product(
      name: "Milk",
      price: 100,
      description: "Item Description...",
      address: "asstes/Milk.png"
    ),
    product(
      name: "Maggie",
      price: 150,
      description: "Item Description...",
      address: "asstes/maggie.png"
    ),
    product(
      name: "Oreo",
      price: 500,
      description: "Item Description...",
      address: "asstes/oreo.png"
    ),
    product(
      name: "Pringles",
      price: 1500,
      description: "Item Description...",
      address: "asstes/Pringles.png"
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