import 'dart:async';

import 'package:bloc_sample/data/cart_service.dart';
import 'package:bloc_sample/models/cart.dart';
import 'package:flutter/foundation.dart';

class CartBloc {
  // ignore: close_sinks
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item) {
    CartService.addToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  void removeFromCart(Cart item) {
    CartService.removeToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  List<Cart> getCart() {
    return CartService.getCart();
  }
}

final cartBloc = CartBloc();
