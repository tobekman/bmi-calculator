import 'package:bmi_calculator/app/calculator_brain.dart';
import 'package:bmi_calculator/customWidgets/bottom_button.dart';
import 'package:bmi_calculator/customWidgets/icon_content.dart';
import 'package:bmi_calculator/customWidgets/reusable_card.dart';
import 'package:bmi_calculator/customWidgets/round_icon_button.dart';
import 'package:bmi_calculator/pages/results_page.dart';
import 'package:bmi_calculator/style/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

enum Gender { MALE, FEMALE, NULL }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.NULL;
  double height = 160;
  double weight = 70;
  int age = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    child: ReusableIcon(
                      icon: Ionicons.man_sharp,
                      label: 'MALE',
                      iconSize: kCardIconSize,
                    ),
                    color: selectedGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    child: ReusableIcon(
                      icon: Ionicons.woman_sharp,
                      label: 'FEMALE',
                      iconSize: kCardIconSize,
                    ),
                    color: selectedGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: kMajorTextStyle,
                      ),
                      Text(
                        'CM',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: kSliderActiveColor,
                      inactiveTrackColor: kSliderInactiveColor,
                      thumbColor: kSliderThumbColor,
                      thumbShape: kSliderThumbSize,
                      overlayShape: kSliderThumbOverlaySize,
                      overlayColor: kSliderThumbOverlayColor,
                    ),
                    child: Slider(
                      value: height,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue;
                        });
                      },
                      min: kSliderMin,
                      max: kSliderMax,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kMajorTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RectangleIconButton(
                            icon: Ionicons.add_sharp,
                            iconColor: kBottomCardIconColor,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RectangleIconButton(
                            icon: Ionicons.remove_sharp,
                            iconColor: kBottomCardIconColor,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kMajorTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RectangleIconButton(
                            icon: Ionicons.add_sharp,
                            iconColor: kBottomCardIconColor,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RectangleIconButton(
                            icon: Ionicons.remove_sharp,
                            iconColor: kBottomCardIconColor,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          BottomButton(
            buttonText: 'CALCULATE',
            onPressed: () {
              CalculatorBrain calculatorBrain = CalculatorBrain(height, weight);
              String bmi = calculatorBrain.getBMI();
              String result = calculatorBrain.getResult();
              String interpretation = calculatorBrain.getInterpretation();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                      result: result, bmi: bmi, interpretation: interpretation),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
