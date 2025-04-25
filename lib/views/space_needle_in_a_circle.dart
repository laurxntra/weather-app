import 'package:flutter/material.dart';

class SpaceNeedleInACircle extends StatelessWidget {
  const SpaceNeedleInACircle({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/spaceneedle.jpeg',
        fit: BoxFit.cover,
        width: 200,
        height: 200,
      ),
    );
  }
}