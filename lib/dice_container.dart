import 'package:flutter/material.dart';
import 'package:roll_the_dice/dice_roller.dart';

class DiceContainer extends StatelessWidget {
  const DiceContainer({super.key});

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, const Color.fromARGB(255, 88, 2, 2), Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
