import 'package:customflutterwidget/presentation/widget/progress_indicator/dua_ring/dua_ring_progress_indicator.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Progress Loading'),
          centerTitle: true,
        ),
        body: DuaRingProgressIndicator());
  }
}
