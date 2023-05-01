import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cart_controllers.dart';
import '../controllers/shopping_controllers.dart';

class ShopPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopify'),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: const Color.fromARGB(255, 192, 201, 200),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Container(
            color: Colors.white30,
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              children: [
                Text('data'),
                Obx(() => Container(
                      color: Colors.red,
                      child:
                          Text('${shoppingController.products[0].productName}'),
                    )),
                GetX<ShoppingController>(builder: (controller) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.products.length,
                        itemBuilder: (context, index) {
                          return Card(
                              margin: const EdgeInsets.all(8),
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                controller.products[index]
                                                    .productName,
                                                style: const TextStyle(
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                '${controller.products[index].price}',
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.teal),
                                        child: const Text('Add to cart',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      )
                                    ],
                                  )));
                        }),
                  );
                }),
                GetX<CartController>(builder: (controller) {
                  return SizedBox(
                      height: 200,
                      child: Text('Total Amount: ${controller.cartItems}'));
                }),
              ],
            ),
          ),
        ));
  }
}
