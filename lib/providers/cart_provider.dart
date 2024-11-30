import 'package:flutter/material.dart';
import '../models/game_model.dart';

class CartProvider with ChangeNotifier {
  final List<Game> _cartItems = [];

  List<Game> get cartItems => _cartItems;

  void addToCart(Game game) {
    _cartItems.add(game);
    notifyListeners();
  }

  void removeFromCart(Game game) {
    _cartItems.remove(game);
    notifyListeners();
  }
}
