import 'package:flutter/material.dart';
import '../styles/theme.dart';

class CreateElement extends StatelessWidget {
  CreateElement(this.title, this.icon);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: kTextStyle,
        ),
      ],
    );
  }
}
