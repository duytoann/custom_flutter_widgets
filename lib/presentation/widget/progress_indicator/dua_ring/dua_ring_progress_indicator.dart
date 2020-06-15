import 'package:customflutterwidget/presentation/widget/progress_indicator/dua_ring/dua_ring_progress_painter.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class DuaRingProgressIndicator extends StatefulWidget {
  DuaRingProgressIndicator({Key key}) : super(key: key);

  @override
  _DuaRingProgressIndicatorState createState() =>
      _DuaRingProgressIndicatorState();
}

class _DuaRingProgressIndicatorState
    extends State<DuaRingProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation1, _animation2, _animation3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    /// main circle
    _animation1 = Tween(begin: 0.0, end: 3.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 1.0, curve: Curves.easeIn),
      ),
    )..addListener(() => setState(() => <String, void>{}));

    /// starting animation for angle
    _animation2 = Tween(begin: -2 / 3, end: 1 / 2).animate(
      CurvedAnimation(
          parent: _controller, curve: Interval(0.5, 1.0, curve: Curves.linear)),
    )..addListener(() => setState(() => <String, void>{}));

    /// offset animation for angle
    _animation3 = Tween(begin: 0.25, end: 5 / 6).animate(
      CurvedAnimation(
          parent: _controller, curve: Interval(0.0, 1.0, curve: _MyCurve())),
    )..addListener(() => setState(() => <String, void>{}));
    _controller.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Matrix4 transform = Matrix4.identity()
      ..rotateZ((_animation1.value) * 5 * Math.pi / 6);
    return Transform(
      transform: transform,
      alignment: FractionalOffset.center,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: CustomPaint(
              child: Container(),
              painter: DuaRingProgressPainter(
                  ratio: 20,
                  startAngle: Math.pi * _animation2.value,
                  progressPercent: _animation3.value),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyCurve extends Curve {
  const _MyCurve();

  @override
  double transform(double t) {
    if (t <= 0.5) {
      return 2 * t;
    } else {
      return 2 * (1 - t);
    }
  }
}