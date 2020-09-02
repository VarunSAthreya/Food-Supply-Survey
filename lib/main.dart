import 'package:flutter/material.dart';
import 'package:gs_covid19_food_supply_easy/models/user_data.dart';
import 'package:provider/provider.dart';
import 'screens/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserData(),
      child: MaterialApp(
        title: 'GS Food Survey App',
        theme: ThemeData(
          primaryColor: const Color(0xFF0F0230),
          accentColor: const Color(0xFF361767),
          backgroundColor: const Color(0xFFEEEEEE),
          fontFamily: "Mont",
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    );
  }
}
