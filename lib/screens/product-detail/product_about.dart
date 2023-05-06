import "package:flutter/material.dart";

class ProductAbout extends StatelessWidget {
  const ProductAbout({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          'About',
          style: TextStyle(
              fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Food is any substance consumed to provide nutritional support and energy to an organism.[2][3] It can be raw, processed or formulated and is consumed orally by animals for growth, health or pleasure. Food is mainly composed of water, lipids, proteins and carbohydrates. Minerals (e.g. salts) and organic substances (e.g. vitamins) can also be found in food.[4] Plants, algae and some microorganisms use photosynthesis to make their own food molecules.[5] Water is found in many foods and has been defined as a food by itself.[6] Water and fiber have low energy densities, or calories, while fat is the most energy dense component.[3] Some inorganic (non-food) elements are also essential for plant and animal functioning',
          style: TextStyle(
            fontFamily: 'Poppins',
            height: 1.8,
            color: Colors.grey.shade700,
          ),
        )
      ],
    );
  }
}
