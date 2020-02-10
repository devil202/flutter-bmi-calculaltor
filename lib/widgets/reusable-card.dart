import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(this.element, this.color);
  final Widget element;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: element,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
