import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:gs_covid19_food_supply_easy/models/user.dart';

class UserData extends ChangeNotifier {
  final List<User> _user = [];
  int get taskCount {
    return _user.length;
  }

  UnmodifiableListView<User> get users {
    return UnmodifiableListView(_user);
  }

  void addUser({
    String aadhar,
    String name,
    String gender,
    int age,
    int rice,
    int dal,
    String specialFood1,
    String specialFood2,
  }) {
    _user.add(User(
      aadhar: aadhar,
      name: name,
      gender: gender,
      age: age,
      rice: rice,
      dal: dal,
      specialFood1: specialFood1,
      specialFood2: specialFood2,
    ));
    notifyListeners();
  }
}
