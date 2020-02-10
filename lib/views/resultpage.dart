import 'package:bmi_calculator/widgets/bottom-button.dart';
import 'package:bmi_calculator/widgets/reusable-card.dart';
import 'package:flutter/material.dart';
import '../styles/theme.dart';

class _ResultPageState extends State<ResultPage> {
  _ResultPageState(
      {@required this.bmi,
      @required this.bmiStatus,
      @required this.bmiInterPolation});
  final double bmi;
  final String bmiStatus;
  final String bmiInterPolation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result Page'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTextVStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        bmiStatus.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: kResultMainText,
                      ),
                      Text(
                        bmiInterPolation,
                        style: kTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                kInactiveColor,
              ),
            ),
            BottomButton(
              onPressed: _navigateToBack,
              title: 're calculate bmi',
              color: kButtonColor,
            ),
          ],
        ));
  }

  _navigateToBack() {
    Navigator.pop(context);
  }
}

class ResultPage extends StatefulWidget {
  final double bmi;
  final String bmiStatus;
  final String bmiInterPolation;

  ResultPage({
    @required this.bmi,
    @required this.bmiStatus,
    @required this.bmiInterPolation,
  });

  @override
  _ResultPageState createState() => _ResultPageState(
        bmi: bmi,
        bmiStatus: bmiStatus,
        bmiInterPolation: bmiInterPolation,
      );
}
