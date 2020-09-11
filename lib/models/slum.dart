import 'package:Food_supply_survey/models/user.dart';
import 'package:flutter/foundation.dart';

class Slum {
  final String name;
  final int id;
  final String desription;
  final List<User> user;

  Slum({
    @required this.name,
    @required this.id,
    @required this.desription,
    @required this.user,
  });
}
