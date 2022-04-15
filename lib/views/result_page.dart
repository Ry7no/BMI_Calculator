import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter_app/components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult, required this.resultText, required this.textColor, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final Color textColor;
  final String interpretation;

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
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                  'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: (){},
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      color: textColor,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Normal BMI range:\n 18.5 - 25kg/m2',
                    style: kSubTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttomTitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
