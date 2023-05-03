import "package:flutter/material.dart";
import "package:ifood/screens/home/home_hero_area.dart";
import "package:ifood/screens/home/home_top_bar.dart";
import "package:ifood/widget/bottom_navigation.dart";
import "package:ifood/models/product_modal.dart";
import "package:ifood/widget/product_card.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = Products().items;
    return GestureDetector(
      onTap: () {
        focusNode.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(),
                HomeHeroArea(
                    focusNode: focusNode, textController: textController),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0,
                            mainAxisExtent: 250),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        image: products[index].image,
                        name: products[index].name,
                        deliveryTime: products[index].deliveryTime,
                        rating: products[index].rating,
                        price: products[index].price,
                        isFav: products[index].isFav,
                      );
                    },
                  ),
                ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Navigation(),
      ),
    );
  }
}
