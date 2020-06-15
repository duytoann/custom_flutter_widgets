import 'package:customflutterwidget/presentation/page/dialog/custom_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// for CustomProgressIndicator
//      home: CustomProgressIndicator(),
    /// for CustomDialog
      home: CustomDialog(),
    );
  }
}


