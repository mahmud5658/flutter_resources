import 'package:flutter/material.dart';

// ignore: camel_case_types
class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

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

      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //       const SizedBox(
      //         width: 100,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //       ),
      //     ],
      //   ),
      // ),
      // container widget

      // body: Center(
      //   child: Container(
      //     // padding:EdgeInsets.all(10),
      //     height: 100,
      //     width: 100,
      //     decoration: const BoxDecoration(
      //         color: Colors.green,
      //         // shape: BoxShape.circle
      //         // borderRadius: BorderRadius.circular(20)
      //         borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(20),
      //           bottomRight: Radius.circular(20),
      //         ),
      //         boxShadow: [
      //           BoxShadow(
      //             blurRadius: 20,
      //             spreadRadius: 10,
      //             color: Colors.black,
      //           )
      //         ]),
      //     child: Center(
      //       // child: Text(
      //       //   'Hello',
      //       //   style: TextStyle(fontSize: 20),
      //       // ),
      //       child: Container(
      //         margin: const EdgeInsets.all(10),
      //         color: Colors.blue,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
