import "package:flutter/material.dart";
import "package:ifood/screens/product-detail/product_about.dart";
import "package:ifood/screens/product-detail/product_ingedrient.dart";

class ProductOverview extends StatefulWidget {
  final String? name;
  final String? image;
  final String? deliveryTime;
  final double? rating;
  final double? price;
  const ProductOverview(
      {super.key,
      this.name,
      this.image,
      this.deliveryTime,
      this.rating,
      this.price});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  int? quantity = 1;

  final TextStyle infoTextStyle =
      const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Stack(children: [
            Column(children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
              )),
            ]),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                '${widget.image}',
                width: 200,
              ),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: const BoxDecoration(color: Color(0xFFF8F8F8)),
          child: Column(children: [
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '${widget.name}',
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${widget.deliveryTime}',
                      style: infoTextStyle,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border,
                      color: Colors.orange,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${widget.rating}',
                      style: infoTextStyle,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.energy_savings_leaf_outlined,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '310 kcal',
                      style: infoTextStyle,
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: 220,
              height: 42,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Text(
                        '\$${(widget.price! * quantity!).toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantity! > 1) {
                                    quantity = quantity! - 1;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 18,
                                color: Colors.grey.shade900,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text('$quantity',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade900)),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantity = quantity! + 1;
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
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Ingredients',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    child: ProductIngedrient(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProductAbout()
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}
