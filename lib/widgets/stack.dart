import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
            child: Stack(
          children: [
            Center(
                child: Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            )),
            Center(
                child: Container(
              color: Colors.green,
              width: 150,
              height: 150,
            )),
            Positioned(
              bottom: 10,
              right: 20,
              child: Center(
                  child: Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              )),
            ),
          ],
        )),
      ),
    );
  }
}
