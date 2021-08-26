import 'package:bmi_calculator/style/constants.dart';
import 'package:flutter/cupertino.dart';

const boxHeight = 15.0;

class ReusableIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final double iconSize;

  ReusableIcon(
      {required this.icon, required this.label, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: boxHeight,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
