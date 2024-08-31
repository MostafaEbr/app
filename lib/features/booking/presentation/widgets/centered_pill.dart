import 'package:flutter/material.dart';

class CenteredPillClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double centerY = size.height / 1.5; // Calculate the center height

    // Start at the top left
    path.moveTo(0, 0);

    // Draw line to middle left
    path.lineTo(0, centerY - 20); // Draw up to just before the rounded corner

    // Draw top left rounded corner
    path.quadraticBezierTo(size.width / 14, centerY, 0, centerY + 10);

    // Continue the right side line
    path.lineTo(0, size.height);

    // Draw the bottom line to the bottom right
    path.lineTo(size.width, size.height);

    // Draw the right side up
    path.lineTo(size.width, centerY + 20); // Draw up to just before the rounded corner

    // Draw top right rounded corner
    path.quadraticBezierTo(size.width/1.08 , centerY, size.width, centerY - 10);

    // Complete the path back to the starting point
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
