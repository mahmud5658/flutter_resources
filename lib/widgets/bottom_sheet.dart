import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Text('Bottom Sheet', style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  enableDrag: true,
                  shape:const  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                    context: context,
                    builder: (context) {
                      return const Column(
                        children: [
                          ListTile(
                            title: Text("Orange"),
                            subtitle: Text("Abdullah"),
                          ),
                             ListTile(
                            title: Text("Banana"),
                            subtitle: Text("Akash"),
                          ),
                             ListTile(
                            title: Text("Apple"),
                            subtitle: Text("Banana"),
                          ),
                             ListTile(
                            title: Text("Grape"),
                            subtitle: Text("Bappy"),
                          ),
                        ],
                      );
                    });
              },
              child: const Text('Show Bottom Sheet')),
        ));
  }
}
