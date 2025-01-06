import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
      // Optionally, you could have additional theme settings or configurations here
    );
  }
}
