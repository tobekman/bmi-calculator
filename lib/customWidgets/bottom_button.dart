import 'package:bmi_calculator/style/constants.dart';
import 'package:flutter/cupertino.dart';

class BottomButton extends StatelessWidget {
  late final String buttonText;
  late final VoidCallback onPressed;

  BottomButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(
          bottom: 20,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: kBottomContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
