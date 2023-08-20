// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobile_calculator/Screens/Calculator.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(
        // primarySwatch: Colors.black54,
        scaffoldBackgroundColor: Color.fromARGB(255, 14, 36, 51),
        // Color.fromARGB(255, 11, 52, 79),
      ),
      home: CalculatorScreen(),
    );
  }
}
