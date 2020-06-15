import 'package:customflutterwidget/presentation/page/progress_indicator/custom_progress_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomProgressIndicator(),
    );
  }
}


