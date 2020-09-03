import 'package:Food_supply_survey/models/user_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, int> profileInfo =
        Provider.of<UserData>(context, listen: false).proflieInfoCounter();
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
              children: [
                const Text(
                  'Profile Info',
                  textScaleFactor: 3.0,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Popins',
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        buildList(context, 'Infant', profileInfo['infant']),
                        const SizedBox(height: 5),
                        buildList(context, 'Children', profileInfo['children']),
                        const SizedBox(height: 5),
                        buildList(context, 'Adult Male', profileInfo['adultM']),
                        const SizedBox(height: 5),
                        buildList(
                            context, 'Adult Female', profileInfo['adultF']),
                        const SizedBox(height: 5),
                        buildList(
                            context, 'Adult Other', profileInfo['adultO']),
                        const SizedBox(height: 5),
                        buildList(context, 'Old', profileInfo['old']),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildList(BuildContext context, String key, int val) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: Text(
            key,
            textScaleFactor: 1.3,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          trailing: Text(
            '$val',
            textScaleFactor: 1.3,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
