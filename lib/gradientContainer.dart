

import 'package:flutter/material.dart';
import 'package:understanding/dice_roller.dart';

final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        //to reuse the styled text configration without using the same text all the time we pass text as argument either named or positional
        child: Center(child: DiceRoller()),
  
    );
  }
}
