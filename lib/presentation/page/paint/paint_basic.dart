import 'package:customflutterwidget/presentation/widget/pain/painting_arc.dart';
import 'package:customflutterwidget/presentation/widget/pain/painting_path.dart';
import 'package:customflutterwidget/presentation/widget/pain/painting_point.dart';
import 'package:flutter/material.dart';

class PaintBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint Basic'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(300, 300),
//          painter: PaintingPoint(),
//          painter: PaintingPath(),
          painter: PaintingArc(),
        ),
      ),
    );
  }
}
