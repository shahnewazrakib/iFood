import "package:flutter/material.dart";

class Category extends StatelessWidget {
  final String name;
  const Category({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.amber.shade400,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        name,
        style: const TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 12),
      ),
    );
  }
}
