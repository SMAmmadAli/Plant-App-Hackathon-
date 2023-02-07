import 'package:flutter/material.dart';
import 'package:hackathon/screens/final_screen.dart';
import 'package:hackathon/screens/home.dart';
import 'package:hackathon/screens/product_screen.dart';
import 'package:hackathon/screens/singleItem_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
