import 'package:flutter/material.dart';

class PaintingLine extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final point1 = Offset(50, 50);
    final point2 = Offset(100, 200);
    final paint = Paint()
    ..color = Colors.black
    ..strokeWidth = 4
    ..style = PaintingStyle.stroke;

    canvas.drawLine(point1, point2, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
  return true;
  }
}