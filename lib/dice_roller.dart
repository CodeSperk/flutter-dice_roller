import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDice = diceRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDice.png', width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 103, 106, 3),
            padding: const EdgeInsets.fromLTRB(24, 4, 24, 4),
          ),
          child: Text(
            'Roll',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ],
    );
  }
}
