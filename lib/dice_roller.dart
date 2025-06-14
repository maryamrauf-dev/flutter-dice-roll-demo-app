import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
 const  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}



class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  
  void rollDice() {
    setState(() {
      //currentDiceRoll=random.nextInt(6)+1;
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/image$currentDiceRoll.png', width: 200),
        
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 194, 98, 98),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text('Roll Dice'),
        ),
        
      ],
    );
  }
}
