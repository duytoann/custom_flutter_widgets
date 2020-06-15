import 'package:customflutterwidget/presentation/widget/dialog/alert_dialog/custom_alert_dialog.dart';
import 'package:flutter/material.dart';
class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Dialog'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                'Click here to show dialog',
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(10),
              onPressed: (){
                showDialog(context: context,
                builder: (context) => CustomAlertDialog(
                  title: 'Joker',
                  description: 'Smile, because it confuses people. Smile, because it’s easier than explaining what is killing you inside.',
                  buttonText: 'Okay',
                ),
                );
              },
            ),
          ),
        ));
  }
}