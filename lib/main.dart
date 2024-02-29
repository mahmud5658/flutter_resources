import 'package:flutter/material.dart';
import 'package:flutter_resources/constainer_sized.dart';

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
        primaryColor: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple
        ),
        // brightness: Brightness.dark,
      ),
      home: const ContainerSized(),
    );
  }
}
