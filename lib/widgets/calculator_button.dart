import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CalculatorButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: text == '=' ? Colors.white : Colors.black,
          backgroundColor:
              text == '=' ? Colors.pinkAccent : Theme.of(context).canvasColor,
          padding: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
