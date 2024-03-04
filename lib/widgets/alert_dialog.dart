import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDialog(context);
          },
          child: const Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('This is Alert Dialog'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text("This is Abdullah Al Mahmud"),
                Text("Daffodil International University.")
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel')),
            TextButton(onPressed: () {}, child: const Text('Approve'))
          ],
        );
      });
}
