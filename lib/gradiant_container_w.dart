import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

const gradiantBegin = Alignment.topLeft;
const gradiantEnd = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: gradiantBegin, end: gradiantEnd),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
