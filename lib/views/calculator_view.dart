import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Calculator display
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "0",
            hintText: "Enter a number",
          ),
        )
        //Expand
        //Calculator buttons

      ],
    );
  }
}