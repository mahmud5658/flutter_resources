import 'package:flutter/material.dart';

class Wraps extends StatelessWidget {
  const Wraps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap widget'),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.green,
         child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.yellow,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.pink,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.purple,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}