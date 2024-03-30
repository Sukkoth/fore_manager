import 'package:flutter/material.dart';

class MyColors {
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color primaryColor = Color(0xFFDDFF94);
  static const Color secondaryColor = Color(0xFF1E1E1E);
  static const Color secondaryLightColor = Color(0xFF292929);
  static const Color teritiaryColor = Color(0xFF414040);
}

class CVariables {
  static List colorOptions = [
    {'name': 'Red', 'color': Colors.red},
    {'name': 'Blue', 'color': Colors.blue},
    {'name': 'Green', 'color': Colors.green},
    {'name': 'Yellow', 'color': Colors.yellow},
    {'name': 'Orange', 'color': Colors.orange},
    {'name': 'Purple', 'color': Colors.purple},
    {'name': 'Teal', 'color': Colors.teal},
    {'name': 'Pink', 'color': Colors.pink},
    {'name': 'Cyan', 'color': Colors.cyan},
    {'name': 'Indigo', 'color': Colors.indigo},
    {'name': 'Amber', 'color': Colors.amber},
    {'name': 'Lime', 'color': Colors.lime},
    {'name': 'Deep Purple', 'color': Colors.deepPurple},
    {'name': 'Deep Orange', 'color': Colors.deepOrange},
    {'name': 'Light Blue', 'color': Colors.lightBlue},
    {'name': 'Light Green', 'color': Colors.lightGreen},
    {'name': 'Brown', 'color': Colors.brown},
    {'name': 'Grey', 'color': Colors.grey},
    {'name': 'Blue Grey', 'color': Colors.blueGrey},
  ];
}

enum ButtonColor {
  primary,
  secondary,
  tertiary,
}
