import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar Widget'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  action: SnackBarAction(label: "Undo",textColor: Colors.blue, onPressed: (){}),
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(milliseconds: 3000),
                  backgroundColor: Colors.amber,
                  content: const Text(
                    "This is snack bar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Show Snack Bar'))),
    );
  }
}
