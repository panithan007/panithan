import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ze04/stylet.dart';

class DiceThrown extends StatefulWidget{
  const DiceThrown({super.key});

  State<DiceThrown> createState(){
    
    return _DiceThrownAction();
  }
}
class _DiceThrownAction extends State<DiceThrown>{
  
  var dicechange = '/imges/Dice/dice-1.png';
  final randoms = Random();
  var number = 1;
  
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset
          (dicechange,
          width: 200,),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed:() {
                setState(() {
                  number = randoms.nextInt(6) +1;
                   dicechange = '/imges/Dice/dice-$number.png';
                });
              },
          child: Stylet('Roll Dice'),)
        ]);
  }
}