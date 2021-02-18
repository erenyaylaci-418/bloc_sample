import 'package:bloc_sample/models/product.dart';

class ProductService {
  // ignore: deprecated_member_use
  static List<Product> products = new List<Product>();
  static ProductService _singleton = ProductService._internal();
  factory ProductService() {
    return _singleton;
  }
  ProductService._internal();
  static List<Product> getALL() {
    products.add(new Product(1, "Acer Laptop", 9000));
    products.add(new Product(2, "Hp Laptop", 9000));
    products.add(new Product(3, "Monster Laptop", 9000));
    products.add(new Product(4, "MSI Laptop", 9000));
    return products;
  }
}
