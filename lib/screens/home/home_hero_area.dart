import "package:flutter/material.dart";
import 'package:ifood/screens/home/home_category.dart';

class HomeHeroArea extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController textController;
  const HomeHeroArea(
      {super.key, required this.focusNode, required this.textController});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          "Find good",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: Colors.grey[900]),
        ),
        Text(
          "Food around you",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: Colors.grey[900]),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(5, 5),
              ),
            ],
          ),
          child: TextFormField(
            focusNode: focusNode,
            controller: textController,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[900],
              ),
              suffixIcon: Icon(
                Icons.filter_list_sharp,
                color: Colors.grey[900],
              ),
              hintText: 'Search your fav food',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  fontSize: 15),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/map');
          },
          child: Row(
            children: const [
              Text(
                'Location',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.orange,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: const [
            Category(name: 'Sea Meal'),
            Category(name: 'Hot Sale'),
            Category(name: 'Popularity'),
            Category(name: 'New Added'),
            Category(name: 'Best buy')
          ]),
        )
      ],
    );
  }
}
