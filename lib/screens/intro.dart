import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
            ],
          ),
        ),
        alignment: Alignment.center,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Food Survey',
                  textScaleFactor: 3.0,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Hi Folks!',
                  textScaleFactor: 1.8,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mont',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We are here for a survey to raise funds for food supplies and ration kits to slums',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.35),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.forward,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                  splashColor: Theme.of(context).accentColor,
                  elevation: 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
