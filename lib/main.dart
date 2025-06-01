import 'package:flutter/material.dart';
import 'package:DiceApp/gradientContainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 86, 20, 2),
          const Color.fromARGB(255, 72, 4, 4),
        ),
      ),
    ),
  );
}
