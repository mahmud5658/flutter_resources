import 'package:flutter/material.dart';

class AppColor {
  static Color bgColor = Colors.green.shade300;

  static List<BoxShadow> shadows = [
    BoxShadow(
      color: Colors.white.withOpacity(.5),
      spreadRadius: -5,
      offset: const Offset(-5, -5),
      blurRadius: 25,
    ),
    BoxShadow(
      color: Colors.green.shade900.withOpacity(.2),
      spreadRadius: 2,
      offset: const Offset(7, 7),
      blurRadius: 20,
    ),
  ];
}
