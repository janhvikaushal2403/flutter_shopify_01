import 'package:get/get.dart';
import '../models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

   addToCart(Product products) {
    cartItems.add(products);
  }
  
}
