import 'package:flutter/material.dart';
class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column widgets'),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.green,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
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