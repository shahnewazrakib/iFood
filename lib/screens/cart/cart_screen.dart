import "package:flutter/material.dart";
import "package:ifood/screens/cart/cart_product.dart";
import "package:ifood/screens/cart/cart_top_bar.dart";
import "package:ifood/models/product_modal.dart";

class Cart extends StatelessWidget {
  const Cart({super.key});
  @override
  Widget build(BuildContext context) {
    final products = Products().items;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          const CartTopBar(),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 100,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return CartProduct(
                  name: products[index].name,
                  image: products[index].image,
                  price: products[index].price,
                  deliveryTime: products[index].deliveryTime,
                  topBorderRadius: index == 0 ? true : false,
                  bottomBorderRadius: index == 2 ? true : false,
                  hideBorder: index == 2 ? true : false,
                );
              },
            ),
          )
        ]),
      )),
    );
  }
}
