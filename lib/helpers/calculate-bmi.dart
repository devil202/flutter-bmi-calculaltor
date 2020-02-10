import 'package:flutter/material.dart';
import 'dart:math';

class CalculateBmi {
  CalculateBmi(
      {@required this.weight, @required this.age, @required this.height}) {
    _bmi = (weight / pow(height / 100, 2));
  }

  final int weight, age, height;
  double _bmi;

  double getBmi() {
    return _bmi;
  }

  String getStaus() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterPolation() {
    if (_bmi > 25) {
      return 'Your BMI is a bit higger that normal you should excersise more';
    } else if (_bmi >= 18.5) {
      return 'Your BMI is perfect keep it up like this!';
    } else {
      return 'Your BMI is quite low you should eat more!';
    }
  }
}
