import 'package:dice_app/Screens/homePage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('DiceApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.black,
        backgroundColor: Colors.red,
        scrolledUnderElevation: 5.0,
      ),
      body:homePage() ,
    ),
  ),);
}
