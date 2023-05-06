import 'package:flutter/material.dart';
import "package:ifood/models/product_modal.dart";
import 'package:ifood/screens/product-detail/product_detail_topbar.dart';
import 'package:ifood/screens/product-detail/product_overview.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String? name;
  String? image;
  String? deliveryTime;
  double? rating;
  double? price;
  bool? isFav;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && args is Map<dynamic, Product>) {
      name = args['product']?.name;
      image = args['product']?.image;
      deliveryTime = args['product']?.deliveryTime;
      rating = args['product']?.rating;
      price = args['product']?.price;
      isFav = args['product']?.isFav;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover)),
          child: SafeArea(
              child: Column(children: [
            ProductDetailTopBar(
              isFav: isFav,
            ),
            ProductOverview(
              name: name,
              image: image,
              deliveryTime: deliveryTime,
              rating: rating,
              price: price,
            )
          ])),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.grey.shade900,
        ),
      ),
    );
  }
}
