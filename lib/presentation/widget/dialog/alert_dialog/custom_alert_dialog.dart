import 'package:customflutterwidget/presentation/widget/dialog/alert_dialog/const.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  CustomAlertDialog({@required this.title,@required this.description,@required this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context){
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: Const.avatarRadius + Const.padding,
            bottom: Const.padding,
            left: Const.padding,
            right: Const.padding,
          ),
          margin: EdgeInsets.only(top: Const.avatarRadius),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Const.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
             SizedBox(height: 16.0,),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0,),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: Const.padding,
          right: Const.padding,
          child: CircleAvatar(
            radius: Const.avatarRadius,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage('assets/images/joker.jpg',),
            ),
          ),
        ),
      ],
    );
  }
}
