import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice/final_variables.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-3.png';
  void rollDice() {
// function body
    var diceNumber = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceNumber.png';
    });

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Button Clicked"),
    ));
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5),
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset(activeDiceImage, width: 200)),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.cyanAccent,
              backgroundColor: Colors.amber[600]),
          onPressed: rollDice,
          child: const Text(
            'Roll the dice',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
