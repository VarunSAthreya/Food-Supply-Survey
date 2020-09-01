import 'package:flutter/material.dart';
import 'screens/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF0F0230),
        accentColor: Color(0xFF361767),
        backgroundColor: Color(0xFFEEEEEE),
        fontFamily: "Popins",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
