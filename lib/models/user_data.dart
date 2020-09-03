import 'dart:collection';
import 'package:flutter/foundation.dart';

import 'user.dart';

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

  Map<String, int> proflieInfoCounter() {
    Map<String, int> profileInfo = {};

    int infant = 0;
    int children = 0;
    int old = 0;
    int adultM = 0;
    int adultF = 0;
    int adultO = 0;

    for (int i = 0; i < _user.length; i++) {
      if (_user[i].age < 2) {
        infant++;
      } else if (_user[i].age < 18) {
        children++;
      } else if (_user[i].age < 70) {
        switch (_user[i].gender) {
          case "Male":
            adultM++;
            break;
          case "Female":
            adultF++;
            break;
          default:
            adultO++;
        }
      } else {
        old++;
      }
    }

    profileInfo['infant'] = infant;
    profileInfo['children'] = children;
    profileInfo['old'] = old;
    profileInfo['adultM'] = adultM;
    profileInfo['adultF'] = adultF;
    profileInfo['adultO'] = adultO;

    return profileInfo;
  }
}
