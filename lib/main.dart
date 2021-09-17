import 'package:flutter/material.dart';
import 'package:fluttergdac/pages/character_listing_screen.dart';
import 'package:fluttergdac/screens/home/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio(),
    );
  }
}


