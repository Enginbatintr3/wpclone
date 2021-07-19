import 'package:flutter/cupertino.dart';
import 'package:wpuserinterface/models/time.dart';

class User {
  late String name;
  late Time time;
  late String message;
  IconData iconData1;
  IconData iconData2;

  User(
      {required this.name,
      required this.time,
      required this.message,
      required this.iconData1,
      required this.iconData2});
}
