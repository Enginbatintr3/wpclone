import 'package:flutter/material.dart';
import 'package:wpuserinterface/models/time.dart';
import 'package:wpuserinterface/models/user.dart';

List<User> users = [
  User(
    time: Time(clock: 8.34, day: "Yesterday"),
    name: "Kenan",
    message: "Merhaba Yeğen",
    iconData1: Icons.arrow_back,
    iconData2: Icons.call,
  ),
  User(
    time: Time(clock: 8.36, day: "Yesterday"),
    name: "Ismael",
    message: "Merhaba Yeğen",
    iconData1: Icons.arrow_back,
    iconData2: Icons.call,
  ),
  User(
    time: Time(clock: 8.32, day: "Yesterday"),
    name: "Halil Abi",
    message: "Nasılsın",
    iconData1: Icons.arrow_back,
    iconData2: Icons.call,
  ),
];
