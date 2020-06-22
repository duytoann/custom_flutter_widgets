import 'package:flutter/material.dart';
import 'dart:math' as Math;

class DuaRingProgressPainter extends CustomPainter {
  /// [ratio] has double value between 0 to 1
  final double ratio;
  final double strokeWidth;
  final double progressPercent;
  final double startAngle;

  DuaRingProgressPainter({double strokeWidth, double ratio,this.startAngle, this.progressPercent})
      : this.strokeWidth = strokeWidth ?? 5,
        this.ratio = ratio ?? 40;

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);

    /// [constraintSide] offset for beyond of confine parts
    final Size constraintSide = size * ratio * 0.01 - Offset(this.strokeWidth, this.strokeWidth);

    /// [shortestSide] is a circle's diameter
    final shortestSide = Math.min(constraintSide.width, constraintSide.height);

    final radius = (shortestSide / 2);
    final progressAngle = progressPercent * Math.pi;
    Rect drawingRect = Rect.fromCircle(center: center, radius: radius);

    final greenArc = Paint()
      ..color = const Color(0xFF06b485)
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final blueArc = Paint()
      ..color = const Color(0xFF008cff)
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawArc(drawingRect, Math.pi + startAngle, progressAngle, false, greenArc);
    canvas.drawArc(drawingRect, startAngle, progressAngle, false, blueArc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    final oldPainter = (oldDelegate as DuaRingProgressPainter);
    return oldPainter.strokeWidth != this.strokeWidth ||
        oldPainter.ratio != this.ratio;
  }
}