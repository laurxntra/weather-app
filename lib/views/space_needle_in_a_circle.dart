import 'package:flutter/material.dart';

// Displays the Space Needle image inside a circular shape.
// Returns:
// A widget containing the Space Needle image in a circle
class SpaceNeedleInACircle extends StatelessWidget {
  const SpaceNeedleInACircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      // Descriptive of the Space Needle image for screen readers
      label: 'Space Needle in Seattle, Washington',
      // Clips the image into a circular shape
      child: ClipOval(
        child: Image.asset(
          // path to Space Needle Image
          'assets/spaceneedle.jpeg',
          // Fills the circular frame with the Space Needle
          fit: BoxFit.cover,
          // setting the width and height of the image
          width: 200,
          height: 200,
        ),
      ),
    );
    
  }
}