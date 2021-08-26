import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Color scheme
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

//Icons
const kCardIconSize = 80.0;

//Bottom container
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kBottomContainerTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

//Text
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const kMajorTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

//Slider
const kSliderMin = 100.0;
const kSliderMax = 220.0;
const kSliderActiveColor = Color(0xFFF8F8FF);
const kSliderInactiveColor = Color(0xFF8D8E98);
const kSliderThumbColor = Color(0xFFEB1555);
const kSliderThumbOverlayColor = Color(0x29EB1555);
const kSliderThumbSize = RoundSliderThumbShape(
  enabledThumbRadius: 15,
);
const kSliderThumbOverlaySize = RoundSliderOverlayShape(
  overlayRadius: 30,
);

//Weight age cards
const kBottomCardIconSize = 55.0;
const kBottomCardIconBackgroundColor = Color(0xFF38394F);
const kBottomCardIconColor = Color(0xFFFFFFFF);

//Results page
const kResultsTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFFFFFFFF),
);
const kResultsMajorTextStyle = TextStyle(
  fontSize: 80,
  fontWeight: FontWeight.w900,
);
const kResultsTitleTextStyle = TextStyle(
  color: Color(0xFF42B880),
  fontSize: 22,
  fontWeight: FontWeight.w900,
);
const kResultsHeaderTextStyle = TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
