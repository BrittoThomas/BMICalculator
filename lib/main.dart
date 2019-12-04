import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';
import 'result_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          accentColor: Color(0xFFEB1555),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
      home: InputPage(),
    );
  }
}
