import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {@required this.onPressed, @required this.title, @required this.color});

  final Function onPressed;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: color,
            child: FlatButton(
              onPressed: onPressed,
              padding: EdgeInsets.all(20.0),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
