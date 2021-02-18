import 'package:bloc_sample/models/cart.dart';

class CartService {
  // ignore: deprecated_member_use
  static List<Cart> cartItems = new List<Cart>();
  static CartService _singleton = CartService._internal();
  factory CartService() {
    return _singleton;
  }
  CartService._internal();
  // ignore: missing_return
  static void addToCart(Cart item) {
    cartItems.add(item);
  }

  // ignore: missing_return
  static void removeToCart(Cart item) {
    cartItems.remove(item);
  }

  static List<Cart> getCart() {
    return cartItems;
  }
}
