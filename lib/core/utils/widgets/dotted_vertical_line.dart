import 'package:flutter/material.dart';

class DottedVerticalLine extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double dotSpacing;
  final double dotRadius;

  const DottedVerticalLine({
    Key? key,
    required this.height,
    this.width = 0.5,
    this.color = Colors.black,
    this.dotSpacing = 5.0,
    this.dotRadius = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _DottedVerticalLinePainter(
        color: color,
        dotSpacing: dotSpacing,
        dotRadius: dotRadius,
      ),
    );
  }
}

class _DottedVerticalLinePainter extends CustomPainter {
  final Color color;
  final double dotSpacing;
  final double dotRadius;

  _DottedVerticalLinePainter({
    required this.color,
    required this.dotSpacing,
    required this.dotRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    double y = 0;
    while (y < size.height) {
      canvas.drawCircle(Offset(size.width / 2, y), dotRadius, paint);
      y += dotSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
