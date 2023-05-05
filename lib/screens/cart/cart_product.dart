import "package:flutter/material.dart";
import 'package:flutter_dash/flutter_dash.dart';

class CartProduct extends StatefulWidget {
  final String? image;
  final String? name;
  final double? price;
  final String? deliveryTime;
  final bool? topBorderRadius;
  final bool? bottomBorderRadius;
  final bool? hideBorder;
  const CartProduct(
      {Key? key,
      this.image,
      this.name,
      this.price,
      this.deliveryTime,
      this.topBorderRadius,
      this.bottomBorderRadius,
      this.hideBorder})
      : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: widget.topBorderRadius!
                  ? const Radius.circular(20)
                  : Radius.zero,
              topRight: widget.topBorderRadius!
                  ? const Radius.circular(20)
                  : Radius.zero,
              bottomLeft: widget.bottomBorderRadius!
                  ? const Radius.circular(20)
                  : Radius.zero,
              bottomRight: widget.bottomBorderRadius!
                  ? const Radius.circular(20)
                  : Radius.zero,
            ),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Flexible(
              flex: 1,
              child: Image.asset('${widget.image}'),
            ),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.name}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${widget.deliveryTime}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 12,
                            letterSpacing: 0.5),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${(widget.price! * quantity).toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 0),
                                elevation: 0.0,
                                backgroundColor: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (quantity > 1) {
                                          quantity--;
                                        }
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      size: 18,
                                      color: Colors.grey.shade900,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text('$quantity',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey.shade900)),
                                  const SizedBox(width: 8),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        quantity++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      size: 18,
                                      color: Colors.grey.shade900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ]),
        ),
        Visibility(
          visible: !widget.hideBorder!,
          child: const Dash(
            length: 320,
            dashColor: Color.fromARGB(255, 199, 199, 199),
          ),
        )
      ],
    );
  }
}
