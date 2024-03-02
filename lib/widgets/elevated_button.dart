import 'package:flutter/material.dart';

class ElevatedButtonw extends StatelessWidget {
  const ElevatedButtonw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    snackBar(context, "Elevated Button is Clicked");
                  },
                  child: const Text(
                    'Hello',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

snackBar(context, message) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}
