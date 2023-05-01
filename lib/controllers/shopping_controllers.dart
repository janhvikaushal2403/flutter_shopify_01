import 'dart:ffi';

import 'package:get/get.dart';

import '../models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(id: 1, productName: 'Lenovo', price: 45000),
      Product(id: 2, productName: 'Dell', price: 40000),
      Product(id: 3, productName: 'hp', price: 55000)
    ];
    products.value = productResult;
  }
}
