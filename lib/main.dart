import 'package:flutter/material.dart';
import 'package:tinder_clone/constants.dart';
import 'package:tinder_clone/pages/account_page.dart';
import 'package:tinder_clone/screens/welcome/welcome_screen.dart';
import 'package:tinder_clone/pages/root_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Meet Your Job',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: "Kollektif",
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
