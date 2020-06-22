import 'package:flutter/material.dart';

class PaintingCircle extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(150, 150);
    final radius = 100.0;
    final paint = Paint()
    ..strokeWidth = 4
    ..color = Colors.yellow
    ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}