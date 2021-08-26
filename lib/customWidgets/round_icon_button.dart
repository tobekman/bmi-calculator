import 'package:bmi_calculator/style/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RectangleIconButton extends StatelessWidget {
  late final VoidCallback onPressed;
  late final IconData icon;
  late final Color iconColor;

  RectangleIconButton(
      {required this.onPressed, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: kBottomCardIconSize,
        height: kBottomCardIconSize,
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: kBottomCardIconBackgroundColor,
      elevation: 0,
      child: Icon(
        icon,
        color: iconColor,
        size: 30,
      ),
    );
  }
}
