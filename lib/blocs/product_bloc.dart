import 'dart:async';

import 'package:bloc_sample/data/product_service.dart';
import 'package:bloc_sample/models/product.dart';

class ProductBloc {
  // ignore: close_sinks
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  List<Product> getAll() {
    return ProductService.getALL();
  }
}

final productBloc = ProductBloc();
