import 'package:flutter/material.dart';

class BigTemp extends StatelessWidget {
  final int tempInFahrenheit;
  const BigTemp({super.key, required this.tempInFahrenheit});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$tempInFahrenheit°F',
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}