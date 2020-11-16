import 'package:flutter/material.dart';
import 'screens/onbording.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home_screen.dart';
import 'utilities/Stheme.dart';

void main() async {
  Widget _screen = OnBoarding();
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');

  if (seen == null || seen == false) {
    _screen = OnBoarding();
  } else {
    _screen = HomeScreen();
  }

  runApp(Flutter003(_screen));
}

class Flutter003 extends StatelessWidget {
  final Widget _screen;
  Flutter003(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.themeType,
      home: this._screen,
    );
  }
}
