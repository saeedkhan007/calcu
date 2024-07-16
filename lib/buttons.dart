import 'package:flutter/material.dart';

// creating Stateless Widget for buttons
class MyButton extends StatelessWidget {
// declaring variables
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

//Constructor
  MyButton(
      {this.color,
      this.textColor,
      required this.buttonText,
      this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
          backgroundColor: color,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
