import 'dart:ui';

import 'package:flutter/material.dart';

enum GenderType { male, female }

const kBottomContainerHeight = 80.0;
const Color kMainColor = Color(0xFFEB1555);
const Color kInactiveColor = Color(0xFF8D8E98);
const Color kActiveCardColor = Color(0XFF1D1E33);
const Color kInactiveCardColor = Color(0XFF111328);

const TextStyle kButtonTextStyle = TextStyle(
  fontSize: 22.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 34.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kYourResultTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kResultTextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);
const TextStyle kScoreTextStyle = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kResponseTextStyle = TextStyle(
  fontSize: 22.0,
);
