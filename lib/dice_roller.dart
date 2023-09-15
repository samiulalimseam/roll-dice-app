import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 1;
  void rollDice() {
// function body

    setState(() {
      if (activeDiceImage == 6) {
        activeDiceImage = 1;
      } else {
        activeDiceImage++;
      }
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
            child: Image.asset('assets/images/dice-$activeDiceImage.png',
                width: 200)),
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
