import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../styles/theme.dart';

class FloatingIconCard extends StatelessWidget {
  FloatingIconCard(
      {@required this.value,
      @required this.title,
      @required this.onAddPressed,
      @required this.onSubPressed,
      this.subTitle});

  final int value;
  final String title;
  final String subTitle;
  final Function onAddPressed;
  final Function onSubPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: kTextStyle,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              value.toString(),
              style: kTextVStyle,
            ),
            Text(subTitle != null ? subTitle : ''),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: onSubPressed,
              child: Icon(FontAwesomeIcons.minus),
            ),
            SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: onAddPressed,
              child: Icon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ],
    );
  }
}
