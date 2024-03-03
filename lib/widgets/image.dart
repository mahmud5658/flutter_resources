import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius: 20,
            color: Colors.black,spreadRadius: 5.0)
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
          // image: const DecorationImage(image: NetworkImage('http://yamataka01.web.fc2.com/02/15553-Ginger-cat-standing-white-background.jpg'),
          // fit: BoxFit.fill),
          image: const DecorationImage(image: AssetImage('assets/sumaya.jpg'),),
          ),
          // child: Image.network("http://yamataka01.web.fc2.com/02/15553-Ginger-cat-standing-white-background.jpg",
          // fit: BoxFit.fill,),
        ),
      ),
    );
  }
}