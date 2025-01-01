import 'package:flutter/material.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        titleTextStyle: TextStyle(
          color: Colors.cyan,
          fontSize: 24,
          backgroundColor: Colors.white,
        ),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      backgroundColor: Colors.black87,
    );
  }
}
