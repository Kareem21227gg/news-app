import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData themeType = ThemeData(
    primaryColor: Colors.red,
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.orange, 
      displayColor: Colors.blue, 
    ),
  );
}
