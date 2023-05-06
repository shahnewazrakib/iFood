import 'package:flutter/material.dart';
import "package:ifood/models/ingredient_modal.dart";

class ProductIngedrient extends StatelessWidget {
  ProductIngedrient({super.key});
  final items = Ingredients().items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisExtent: 100, crossAxisSpacing: 20.0),
      itemBuilder: (context, index) {
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(children: [
              Image.asset(
                '${items[index].image}',
              ),
              Text(
                '${items[index].name}',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.grey.shade900),
              )
            ]),
          ),
        );
      },
    );
  }
}
