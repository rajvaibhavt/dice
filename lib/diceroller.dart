import 'package:flutter/material.dart';
import 'gradientcontainer.dart';
import'dart:math';
class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState(){
    return _DicerollerState();
  }
}



class _DicerollerState extends State<Diceroller> {
  var activeDiceImage = 'assets/images/dice-1.png';
void rollDice(){
  setState(() {
    final randomizer = Random();
    activeDiceImage = 'assets/images/dice-${randomizer.nextInt(6) + 1}.png';


  });


}

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min ,
      children: [
        Image.asset(activeDiceImage, width: 200),

        TextButton(onPressed: rollDice, child: Text('Roll Dice'),style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 28),
        ),),
      ],
    );
  }
}
