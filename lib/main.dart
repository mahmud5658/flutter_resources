import 'package:flutter/material.dart';
import 'package:flutter_resources/ostad_record/home_activity.dart';



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
        // primarySwatch: Colors.amber,
        primaryColor: Colors.pink,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.purple),
        brightness: Brightness.light,
      ),
      home:  const HomeActivity(),
    );
  }
}
