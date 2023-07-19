import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = Random().nextInt(6) + 1;
      currentDiceRoll2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/dice-$currentDiceRoll1.png', width: 100),
            Image.asset('assets/images/dice-$currentDiceRoll2.png', width: 100),
          ],
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Start'),
        ),
      ],
    );
  }
}
