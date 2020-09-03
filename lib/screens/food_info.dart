import 'package:Food_supply_survey/models/user_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, int> foodInfo =
        Provider.of<UserData>(context, listen: false).foodInfoCounter();
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'Food Info',
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
                          buildList(
                              context, 'Rice in Kg per day', foodInfo['rice']),
                          const SizedBox(height: 5),
                          buildList(
                              context, 'Dal in Kg per day', foodInfo['dal']),
                          const SizedBox(height: 5),
                          buildList(context, 'Ceralic', foodInfo['ceralic']),
                          const SizedBox(height: 5),
                          buildList(context, 'Amul powder', foodInfo['amul']),
                          const SizedBox(height: 5),
                          buildList(context, 'Nandini Milk TetraPacks',
                              foodInfo['milk']),
                          const SizedBox(height: 5),
                          buildList(context, 'Bread', foodInfo['bread']),
                          const SizedBox(height: 5),
                          buildList(context, 'Tiger/Parle G Biscuits',
                              foodInfo['biscuits']),
                          const SizedBox(height: 5),
                          buildList(
                              context, 'Canned Veggies', foodInfo['veggis']),
                          const SizedBox(height: 5),
                          buildList(
                              context, 'Canned Fruits', foodInfo['fruits']),
                          const SizedBox(height: 5),
                          buildList(
                              context, 'Medicine Packs', foodInfo['medicine']),
                          const SizedBox(height: 5),
                          buildList(context, 'Calcium Sandoz Tablets',
                              foodInfo['calcTab']),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                key,
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '$val',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
