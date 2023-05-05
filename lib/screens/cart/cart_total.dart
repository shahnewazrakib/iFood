import 'package:flutter/material.dart';

class CartTotal extends StatelessWidget {
  CartTotal({super.key});

  final TextStyle textStyle = TextStyle(
      fontFamily: 'Inter', fontSize: 15.0, color: Colors.grey.shade500);
  final TextStyle priceStyle = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 15.0,
      color: Colors.grey.shade900);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Item total:',
              style: textStyle,
            ),
            Text('\$58.90', style: priceStyle)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery charge:',
              style: textStyle,
            ),
            Text('\$1.25', style: priceStyle)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax:',
              style: textStyle,
            ),
            Text('\$0.75', style: priceStyle)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Total:',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            Text(
              '\$60.90',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            )
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color.fromARGB(255, 255, 207, 49),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                padding: const EdgeInsets.symmetric(vertical: 10.0)),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Order Checkout',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade900),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.payment,
                  color: Colors.grey.shade900,
                )
              ],
            ))
      ],
    );
  }
}
