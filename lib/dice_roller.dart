import 'package:flutter/material.dart';

class DiceRoller extends StatelessWidget {
  const DiceRoller({super.key});

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
      child: Center(child: Image.asset('assets/images/dice-1.png', width: 200)),
    );
  }
}
