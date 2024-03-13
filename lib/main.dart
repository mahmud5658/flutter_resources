import 'package:flutter/material.dart';
import 'package:flutter_resources/pages/home.dart';
import 'package:flutter_resources/utils/color.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColor.bgColor,
      ),
      home: const Home(),
    );
  }
}