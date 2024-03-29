import 'package:flutter/material.dart';

class SizedBoxW extends StatelessWidget {
  const SizedBoxW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Constainer and Sizedbox'),
        // backgroundColor: Colors.amber,
      ),

      // sizedBox widget

      // body: SizedBox.square(
      //   dimension: 100,
      //   child: Center(
      //     child: Card(
      //       color: Colors.blue,
      //     )
      //   ),
      // ),

      // body: SizedBox.fromSize(
      //   size: Size(100, 100),
      //   child: Card(
      //     color: Colors.green,
      //     child: Center(child: Text("Hello World")),
      //   ),
      // )

      // body: const Center(
      //   child: SizedBox(
      //     height: 100,
      //     width: 100,
      //     child: Text('Hello World!'),
      //   ),
      // ),

      // body: const SizedBox.expand(
      //   child: Card(
      //     color: Colors.green,
      //     child: Center(child: Text("Hello World")),
      //   ),
      // ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            const SizedBox(
              width: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
