import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down Button"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 70,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
        ),
      )
    );
  }
}
