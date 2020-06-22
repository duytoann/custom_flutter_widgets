import 'dart:math' as math;
import 'package:flutter/material.dart';

class PaintingOval extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(50, 100, 250, 200);
    final paint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 4;

    canvas.drawOval(rect, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}