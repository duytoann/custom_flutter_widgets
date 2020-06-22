import 'package:flutter/material.dart';

class PaintingRectangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final left = 50.0;
    final top = 100.0;
    final right = 250.0;
    final bottom = 200.0;

    final rect = Rect.fromLTRB(left, top, right, bottom);
    final paint = Paint()
      ..color = Colors.lightGreen
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
