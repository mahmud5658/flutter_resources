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
      // body: const Center(
      //   child: SizedBox(
      //     height: 50,
      //     width: 100,
      //     child: Text('Hello World!'),
      //   ),
      // ),
      body: Center(
        child: Container(
          // padding:EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.green,
              // shape: BoxShape.circle
              // borderRadius: BorderRadius.circular(20)
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 10,
                  color: Colors.black,
                )
              ]),
          child: Center(
            // child: Text(
            //   'Hello',
            //   style: TextStyle(fontSize: 20),
            // ),
            child: Container(
              margin: const EdgeInsets.all(10),
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
