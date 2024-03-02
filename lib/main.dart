import 'package:flutter/material.dart';
import 'package:flutter_resources/widgets/grid_view.dart';
// import 'package:flutter_resources/widgets/list_builder.dart';
// import 'package:flutter_resources/widgets/elevated_button.dart';
// import 'package:flutter_resources/widgets/list_view.dart';
// import 'package:flutter_resources/widgets/column.dart';
// import 'package:flutter_resources/widgets/text_button.dart';
// import 'package:flutter_resources/widgets/container.dart';
// import 'package:flutter_resources/widgets/rows.dart';
// import 'package:flutter_resources/widgets/wrap.dart';
// import 'package:flutter_resources/widgets/sized_box.dart';

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
        brightness: Brightness.dark,
      ),
      home:  const GridViewW(),
    );
  }
}
