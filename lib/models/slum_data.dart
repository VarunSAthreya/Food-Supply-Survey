import 'dart:collection';
import 'package:flutter/cupertino.dart';

import 'slum.dart';
import 'user.dart';

class SlumData extends ChangeNotifier {
  final List<Slum> _slum = [];

  int get slumCount {
    return _slum.length;
  }

  UnmodifiableListView<Slum> get users {
    return UnmodifiableListView(_slum);
  }

  void addSlum({
    String name,
    String description,
    int id,
    List<User> user,
  }) {
    _slum.add(Slum(
      name: name,
      desription: description,
      id: id,
      user: user,
    ));

    notifyListeners();
  }
}
