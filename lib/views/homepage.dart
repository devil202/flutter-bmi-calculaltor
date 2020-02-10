import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/item.dart';
import '../widgets/reusable-card.dart';
import 'resultpage.dart';
import '../styles/theme.dart';
import '../widgets/floating-button-card.dart';
import '../helpers/calculate-bmi.dart';
import '../widgets/bottom-button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleCardColor = kInactiveColor;
  Color femaleCardColor = kInactiveColor;
  int height = 165;
  int age = 20;
  int weight = 65;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateCardSelection('male');
                  });
                },
                child: ReuseableCard(
                  CreateElement(
                    'male'.toUpperCase(),
                    FontAwesomeIcons.male,
                  ),
                  maleCardColor,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateCardSelection('female');
                  });
                },
                child: ReuseableCard(
                  CreateElement(
                    'female'.toUpperCase(),
                    FontAwesomeIcons.female,
                  ),
                  femaleCardColor,
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReuseableCard(
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'height'.toUpperCase(),
                      style: kTextStyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kTextVStyle,
                        ),
                        Text('cm'),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (updatedHeight) {
                          setState(() {
                            height = updatedHeight.toInt();
                          });
                        })
                  ],
                ),
                kInactiveColor,
              ),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReuseableCard(
                FloatingIconCard(
                  value: age,
                  title: 'Age'.toUpperCase(),
                  onAddPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                  onSubPressed: () {
                    setState(() {
                      age--;
                    });
                  },
                ),
                kInactiveColor,
              ),
            ),
            Expanded(
              child: ReuseableCard(
                FloatingIconCard(
                  value: weight,
                  title: 'Weight'.toUpperCase(),
                  subTitle: 'Kg',
                  onAddPressed: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onSubPressed: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
                kInactiveColor,
              ),
            ),
          ]),
        ),
        BottomButton(
          onPressed: _navigateToResultPage,
          title: 'calculate bmi',
          color: kButtonColor,
        ),
      ],
    );
  }

  _navigateToResultPage() {
    CalculateBmi bmiObject =
        CalculateBmi(weight: weight, age: age, height: height);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => ResultPage(
          bmi: bmiObject.getBmi(),
          bmiStatus: bmiObject.getStaus(),
          bmiInterPolation: bmiObject.getInterPolation(),
        ),
      ),
    );
  }

  void updateCardSelection(String slectedCard) {
    if (slectedCard.toLowerCase() == 'male') {
      femaleCardColor = kInactiveColor;
      maleCardColor =
          maleCardColor == kActiveColor ? kInactiveColor : kActiveColor;
    } else {
      maleCardColor = kInactiveColor;
      femaleCardColor =
          femaleCardColor == kActiveColor ? kInactiveColor : kActiveColor;
    }
  }
}
