import "package:flutter/material.dart";

class ProductCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? deliveryTime;
  final double? rating;
  final double? price;
  final bool? isFav;
  const ProductCard({
    Key? key,
    this.image,
    this.name,
    this.deliveryTime,
    this.rating,
    this.price,
    this.isFav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              isFav ?? false ? Icons.favorite : Icons.favorite_border,
              size: 20,
              color: isFav ?? false ? Colors.red.shade400 : Colors.grey,
            ),
          ],
        ),
        Image.asset(
          '$image',
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '$name',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade900),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$deliveryTime',
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 12,
                  letterSpacing: 0.5),
            ),
            const SizedBox(
              width: 10.0,
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_border,
                  color: Colors.amber,
                  size: 18,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '$rating',
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          '\$$price',
          style: const TextStyle(
              fontFamily: 'Inter', fontSize: 22, fontWeight: FontWeight.w700),
        )
      ]),
    );
  }
}
