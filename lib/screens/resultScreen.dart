import 'package:bmi_calculator/constants/enum.dart';
import 'package:bmi_calculator/widgets/bottomButton.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String bmiResult;
  final String bmiScore;
  final String bmiResponse;

  const ResultScreen(
      {Key? key,
      required this.bmiResult,
      required this.bmiScore,
      required this.bmiResponse})
      : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: kYourResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    widget.bmiScore,
                    style: kScoreTextStyle,
                  ),
                  Text(
                    widget.bmiResponse,
                    style: kResponseTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
