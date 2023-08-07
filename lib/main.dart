import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/gradient_container.dart';

void main(){
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(Color.fromARGB(255, 26, 2, 80),Color.fromARGB(255, 97, 20, 120)),
    ),
  ));
}