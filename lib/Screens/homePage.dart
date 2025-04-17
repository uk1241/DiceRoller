import 'package:flutter/material.dart';
import 'dart:math';

/// This is the main widget for your home page.
/// It extends StatefulWidget because its state might change in the future (e.g., rolling dice).
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

/// The state class associated with homePage
class _homePageState extends State<homePage> {

  ///functionality to move dice
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

  void  updateDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) +1;
      rightDiceNumber =  Random().nextInt(6) +1;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      ///set gradient to the background
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.redAccent,
            Colors.black,
          ],
        ),
      ),
      child: Center(
        /// Center aligns its child (the Row) in the middle of the available space
        child: Row(
          /// Row places children widgets horizontally
          children: <Widget>[
            /// Expanded makes the child widget take up equal space along the main axis (horizontal here)
            Expanded(
              child: Padding(
                // Padding adds space around the IconButton
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  /// Function triggered when this button is pressed
                  onPressed: () {
                    /// You can add your dice-rolling logic here
                    updateDice()
                      print("Pressed Dice One $leftDiceNumber");

                  },
                  /// Using an image as the icon for this button
                  icon: Image.asset('lib/Images/dice$leftDiceNumber.png'),
                  ///Make sure this image exists and is correctly added in pubspec.yaml
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  onPressed: () {
                    /// Add logic here for the second button press
                    updateDice();
                    print("Pressed Dice Two");
                  },
                  icon: Image.asset('lib/Images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}