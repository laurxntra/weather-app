import 'package:flutter/material.dart';

// Displays the current temperature
// Parameters:
// - tempInFahrenheit: The temperature in fahrenheit
// Returns:
// A widget that shows the temperature
class BigTemp extends StatelessWidget {
  // temperature to be displayed
  final int tempInFahrenheit;

  // Constructor for BigTemp widget
  const BigTemp({super.key, required this.tempInFahrenheit});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      // Accessible desription for the temperature 
      label: 'Current temperature is $tempInFahrenheit degrees Fahrenheit.',
      // Allows for visual text to not be spoken for screen readers -- only label is read
      excludeSemantics: true,
      child: Center(
      child: Text(
        // Displays the temperature as text
        '$tempInFahrenheit °F',
        style: const TextStyle(
          // text size is 36
          fontSize: 36,
          // text is bolded
          fontWeight: FontWeight.bold,
          // the color of the text is black
          color: Colors.black,
        ),
      ),
    ),
    );
  }
}