import 'package:bmi/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {required this.calculatedBMI,
      required this.feedbackMessage,
      required this.interpretation});
  final String? calculatedBMI;
  final String? interpretation;

  final String? feedbackMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          // Ensures the title is centered
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(interpretation!, style: kResultTextStyle),
                    Text(calculatedBMI!, style: kBMIStyle),
                    Text(feedbackMessage!, style: kBodyTextStyle)
                  ],
                ),
              ),
            ),
            BottomButton(
                bottomTextLabel: 'ReCalculate',
                onTapFunc: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                })
          ]),
    );
  }
}
