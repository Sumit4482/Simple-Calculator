import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final String buttonText;
  Color buttonColor;
  Function? callback;
  // ignore: use_key_in_widget_constructors
  Button({required this.buttonText, required this.buttonColor, this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 70, height: 70),
        child: ElevatedButton(
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 22),
          ),
          onPressed: () => callback!(buttonText),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            primary: buttonColor,
          ),
        ),
      ),
    );
  }
}
