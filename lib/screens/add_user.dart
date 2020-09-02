import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_data.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_text_filed.dart';

class AddUser extends StatefulWidget {
  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  String name;
  String aadhar;
  String gender = "Gender";
  int age = -1;
  int dal;
  int rice;
  String specialFood1 = "Special Food 1";
  String specialFood2 = "Special Food 2";

  List<String> getFoodList() {
    if (age < 2 && age > 0) {
      return ['Cerelac', 'Amul powder', 'Nandini Milk TetraPacks'];
    } else if (age < 18 && age > 0) {
      return [
        'Bread',
        'Tiger/Parle G',
        'Nandini Milk TetraPacks',
        'Canned Fruits',
        'Canned Veggies'
      ];
    } else if (age < 70 && age > 0) {
      switch (gender) {
        case 'Male':
          return ['Canned Fruits', 'Canned Veggies', 'Nandini Milk TetraPacks'];
        case 'Female':
          return [
            'Canned Fruits',
            'Canned Veggies',
            'Nandini Milk TetraPacks',
            'Calcium Sandoz Tablets'
          ];
        case 'Other':
          return [
            'Canned Fruits',
            'Canned Veggies',
            'Nandini Milk TetraPacks',
            'Calcium Sandoz Tablets'
          ];
        default:
          return ['Enter Gender'];
      }
    } else if (age > 70) {
      return [
        'Canned Fruits',
        'Canned Veggies',
        'Nandini Milk TetraPacks',
        'Medicine Packs'
      ];
    }
    return ['Enter Vaild age'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Complete the Survey',
                  textScaleFactor: 2,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontFamily: 'Popins',
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                CustomTextField(
                  title: 'Enter Your Name',
                  labelText: 'Name',
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (newText) {
                    name = newText.toString();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Enter Your Aadhar',
                  labelText: 'Aadhar',
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.number,
                  onChanged: (newText) {
                    aadhar = newText.toString();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Enter Your Age',
                  labelText: 'Age',
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.number,
                  onChanged: (newText) {
                    setState(() {
                      age = int.parse(newText.toString());
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Rice needed per day in grams',
                  labelText: 'Rice',
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.number,
                  onChanged: (newText) {
                    setState(() {
                      rice = int.parse(newText.toString());
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Dal needed per day in grams',
                  labelText: 'Dal',
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.number,
                  onChanged: (newText) {
                    setState(() {
                      dal = int.parse(newText.toString());
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomDropDown(
                  list: const ['Male', 'Female', 'Other'],
                  title: "Select your Gender",
                  value: gender,
                  onChanged: (val) {
                    setState(() {
                      gender = val.toString();
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomDropDown(
                  list: getFoodList(),
                  title: "Select Required Special Food",
                  value: specialFood1,
                  onChanged: (val) {
                    setState(() {
                      specialFood1 = val.toString();
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomDropDown(
                  list: getFoodList(),
                  title: "Select Required Special Food",
                  value: specialFood2,
                  onChanged: (val) {
                    setState(() {
                      specialFood2 = val.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ],
            ),
          ),
          child: FlatButton(
            onPressed: () {
              Provider.of<UserData>(context, listen: false).addUser(
                name: name,
                aadhar: aadhar,
                age: age,
                gender: gender,
                dal: dal,
                rice: rice,
                specialFood1: specialFood1,
                specialFood2: specialFood1,
              );
              Navigator.pop(context);
            },
            child: const Text(
              'Submit',
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
