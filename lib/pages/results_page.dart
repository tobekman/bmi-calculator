import 'package:bmi_calculator/customWidgets/bottom_button.dart';
import 'package:bmi_calculator/customWidgets/reusable_card.dart';
import 'package:bmi_calculator/style/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  late final String result;
  late final String bmi;
  late final String interpretation;

  ResultsPage(
      {required this.result, required this.bmi, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Your results',
              style: kResultsHeaderTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: kResultsTitleTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kResultsMajorTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kResultsTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RECALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
