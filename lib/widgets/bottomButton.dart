import 'dart:io';

import 'package:bmi_calculator/constants/enum.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const BottomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kButtonTextStyle,
          ),
        ),
        color: kMainColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: Platform.isIOS ? const EdgeInsets.only(bottom: 10.0) : null,
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
      ),
    );
  }
}
