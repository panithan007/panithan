import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:ze04/stylet.dart';

class Gcontainer extends StatelessWidget{
  Gcontainer({super.key});

  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(221, 11, 236, 225),
          Color.fromARGB(221, 218, 97, 97)
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft
        )
      ),
        child: Center(
          child: Stylet()
    )
    );
    
  }

}