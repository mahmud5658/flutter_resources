import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inventory',
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 40,
        // centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.amber,
        // toolbarOpacity: .3,
        elevation: 6,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar(context, "This is message icon");
              },
              icon: const Icon(
                Icons.message,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {
                mySnackBar(context, "This is setting icon");
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
                mySnackBar(context, "This is notification icon");
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
