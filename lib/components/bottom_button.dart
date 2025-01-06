import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/result_page.dart';

class BottomButton extends StatelessWidget {
  final String bottomTextLabel;
  final VoidCallback onTapFunc;

  BottomButton({required this.bottomTextLabel, required this.onTapFunc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunc,
      // onTap: () {
      //   Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) => const ResultPage()),
      //   );
      // },
      child: Container(
        height: kBottomColorHeight,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            bottomTextLabel,
            style: kLargeButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
