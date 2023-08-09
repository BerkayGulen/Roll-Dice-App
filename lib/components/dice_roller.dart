import 'dart:math';
import 'package:flutter/material.dart';

Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceRollNumber = 1;


  void rollDice() {
    setState(() {
      diceRollNumber = randomizer.nextInt(6) + 1;
      print("random number: $diceRollNumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$diceRollNumber.png",
          width: 300,
        ),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
                fontSize: 28,
                color: Colors.white
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
