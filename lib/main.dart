import "package:flutter/material.dart";
import 'package:ifood/screens/home/home_screen.dart';
import 'package:ifood/screens/map/flutter_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: const Color(0xFFFAFAFA),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/map': (context) => const Map()
        },
    );
  }
}
